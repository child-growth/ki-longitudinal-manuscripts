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
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight        11      13
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                    2      13
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     16511   26665
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                10154   26665
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     10624   16689
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 6065   16689
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5320    8518
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 3198    8518
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
![](/tmp/86a6e284-b347-4c2f-99e2-653db00e8ae5/0c82ede3-7316-4d00-a7a9-1b75ea96cfc2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/86a6e284-b347-4c2f-99e2-653db00e8ae5/0c82ede3-7316-4d00-a7a9-1b75ea96cfc2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/86a6e284-b347-4c2f-99e2-653db00e8ae5/0c82ede3-7316-4d00-a7a9-1b75ea96cfc2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.7888740   -0.9150911   -0.6626569
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -2.1942613   -2.4340082   -1.9545144
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -1.0030769   -1.2939170   -0.7122369
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -2.1812500   -2.8210203   -1.5414797
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.7958444   -0.9072501   -0.6844388
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -2.4945192   -2.7953644   -2.1936741
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.5171304   -0.6817030   -0.3525578
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -2.2787500   -3.6302840   -0.9272160
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.0263559   -1.2219417   -0.8307702
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.3342857   -3.9682864   -2.7002851
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.8042256   -1.0267540   -0.5816971
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -1.7968512   -2.1447815   -1.4489209
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1787906   -0.3468049   -0.0107762
Birth       ki1000108-IRC              INDIA                          Low birthweight              NA                -0.9222541   -1.3708243   -0.4736840
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -1.4287734   -1.6462317   -1.2113151
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              NA                -2.6681338   -3.0066988   -2.3295689
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.6417143   -1.0717036   -0.2117250
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight              NA                -2.6714286   -2.9208890   -2.4219682
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -1.0306842   -1.0997171   -0.9616513
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -2.5147069   -2.6948540   -2.3345597
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.5005899   -0.5894084   -0.4117713
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.9118451   -2.0389626   -1.7847277
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.5875173   -0.6624507   -0.5125838
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -1.7710101   -1.8668087   -1.6752116
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.6628549   -0.7366612   -0.5890486
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -1.7201298   -1.8474021   -1.5928576
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.6852132   -0.7637896   -0.6066367
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -1.9425084   -2.0687818   -1.8162349
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -1.0680991   -1.7216163   -0.4145820
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight              NA                -3.0751825   -3.8907371   -2.2596278
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.3122250   -0.3321250   -0.2923251
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.6852513   -1.7463787   -1.6241239
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2771526    0.1948511    0.3594541
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -1.5606132   -1.8707895   -1.2504370
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.3615552   -0.3883507   -0.3347597
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              NA                -1.8678483   -1.9231529   -1.8125437
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0772528   -0.1130877   -0.0414178
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -1.7641200   -1.9001904   -1.6280496
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.4251800   -0.4541868   -0.3961733
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -2.3846964   -2.4066825   -2.3627103
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.0181389   -1.0662274   -0.9700504
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -2.4107208   -2.4725726   -2.3488689
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -1.0518735   -1.1779426   -0.9258044
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -1.7999069   -2.0356676   -1.5641462
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0849819   -0.0616481    0.2316119
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                -1.0292070   -1.5781295   -0.4802846
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -1.1098034   -1.2378019   -0.9818050
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.5131499   -1.8171873   -1.2091125
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.4794046   -0.5931704   -0.3656387
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -1.0052878   -1.4271242   -0.5834514
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -1.2328857   -1.3369774   -1.1287939
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -2.4999444   -2.9251575   -2.0747314
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -1.0018256   -1.1286414   -0.8750098
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -1.5381602   -2.2447939   -0.8315264
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.2511205   -1.3908548   -1.1113862
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -2.4651852   -2.9676305   -1.9627399
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -1.3060825   -1.4539676   -1.1581974
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.2950522   -2.6965708   -1.8935337
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -1.0650497   -1.2030294   -0.9270701
6 months    ki1000108-IRC              INDIA                          Low birthweight              NA                -1.9216203   -2.2995032   -1.5437375
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -1.7361351   -1.8691631   -1.6031070
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                -2.7121293   -2.9076981   -2.5165605
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -1.4433908   -2.0510560   -0.8357256
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight              NA                -3.2410000   -4.1049865   -2.3770135
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -1.1531142   -1.2543660   -1.0518624
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -2.1717005   -2.2574392   -2.0859617
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.1469538   -1.2456071   -1.0483006
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.0493611   -2.2103452   -1.8883769
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.8989929   -0.9794861   -0.8184996
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -1.7193103   -1.8542211   -1.5843995
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -1.0047957   -1.0816051   -0.9279864
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -1.8171768   -1.9519083   -1.6824453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.5103792   -0.5598733   -0.4608852
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -1.3290857   -1.6069737   -1.0511978
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7789279   -0.8378241   -0.7200317
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -1.6527404   -1.8113237   -1.4941571
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.1246459   -1.2102451   -1.0390468
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -1.8877723   -2.0239969   -1.7515477
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.7361438   -0.7622808   -0.7100068
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.7862636   -1.8564947   -1.7160325
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -1.6928772   -1.7657174   -1.6200371
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -2.7552073   -3.0474339   -2.4629807
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.7973575   -0.8274625   -0.7672525
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                -1.7912038   -1.8566999   -1.7257076
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -1.0414431   -1.0841403   -0.9987459
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -2.0783517   -2.2234388   -1.9332645
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -1.0101429   -1.0350909   -0.9851949
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -1.9114950   -1.9406806   -1.8823095
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.1369171   -1.1820719   -1.0917623
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -1.9707987   -2.0440096   -1.8975877
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -1.8409386   -1.9729603   -1.7089169
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -2.4515514   -2.7747877   -2.1283150
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0124224   -0.1620995    0.1869442
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                -0.1000000   -0.6968023    0.4968023
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -1.8427818   -1.9785825   -1.7069812
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.9834057   -2.3129535   -1.6538580
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -1.2504030   -1.3744054   -1.1264006
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -1.5347292   -2.0093323   -1.0601261
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -1.6705518   -1.7849830   -1.5561206
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -3.2615703   -3.9526055   -2.5705352
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -1.6277107   -1.7659670   -1.4894544
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -1.9128568   -2.5461560   -1.2795576
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -2.5160714   -2.6720371   -2.3601058
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.2281250   -3.6659520   -2.7902980
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -2.5046487   -2.6113026   -2.3979948
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -3.1068243   -3.3445926   -2.8690561
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -1.6778426   -1.7775028   -1.5781824
24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -2.2924466   -2.5131040   -2.0717892
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -2.4463331   -2.6113332   -2.2813330
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                -3.0132599   -3.2623014   -2.7642184
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.9893237   -2.1088307   -1.8698166
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.7686458   -2.9493852   -2.5879064
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -1.4578360   -1.5508026   -1.3648693
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -2.0637478   -2.2327290   -1.8947666
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -1.2745665   -1.3641679   -1.1849651
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -1.9584567   -2.1297914   -1.7871219
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -1.4667810   -1.5322192   -1.4013429
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -2.0582904   -2.2332801   -1.8833006
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.7611180   -1.8570621   -1.6651739
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -2.2229199   -2.3939438   -2.0518959
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.5233517   -1.5827818   -1.4639215
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.2261844   -2.3965926   -2.0557763
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -2.8925262   -2.9775097   -2.8075427
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -3.6827578   -3.9246246   -3.4408910
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -1.9719197   -2.0087464   -1.9350931
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                -2.7361746   -2.8099166   -2.6624325
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -2.3443862   -2.3909732   -2.2977992
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -3.0739067   -3.2302490   -2.9175643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -1.7875724   -1.8191458   -1.7559989
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -2.4121787   -2.4500556   -2.3743019
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.6400357   -1.6830992   -1.5969721
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -2.1485924   -2.2163223   -2.0808624


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
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.8811538   -2.5124807   -1.2498270
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1221939    0.0348987    0.2094890
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6698147   -0.6979800   -0.6416494
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2435386   -0.2827491   -0.2043282
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1730553   -1.2010671   -1.1450436
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2099370   -1.3283799   -1.0914941
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1725551   -1.2902116   -1.0548985
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5382678   -0.6507290   -0.4258067
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3112593   -1.4187830   -1.2037355
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0625692   -1.1907379   -0.9344005
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3354922   -1.3585835   -1.3124010
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3509354   -1.3927945   -1.3090764
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9805000   -2.1071132   -1.8538868
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8536468   -1.9781962   -1.7290974
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2841403   -1.4044291   -1.1638514
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7505025   -1.8714436   -1.6295614
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6512658   -1.7868828   -1.5156488
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0204485   -2.0480970   -1.9928000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7744364   -1.8128124   -1.7360604


### Parameter: ATE


agecat      studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4053873   -1.6770537   -1.1337210
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -1.1781731   -1.8809490   -0.4753972
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -1.6986748   -2.0193304   -1.3780192
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.7616196   -3.1231364   -0.4001027
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -2.3079298   -2.9714135   -1.6444461
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.9926256   -1.4077351   -0.5775162
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.7434635   -1.2227628   -0.2641643
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -1.2393604   -1.6428326   -0.8358883
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -2.0297143   -2.5268273   -1.5326013
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -1.4840227   -1.6464608   -1.3215846
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4112553   -1.5663639   -1.2561467
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1834928   -1.3054578   -1.0615279
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -1.0572749   -1.2046534   -0.9098965
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.2572952   -1.4070277   -1.1075626
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -2.0070833   -3.0547479   -0.9594188
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.3730263   -1.4372912   -1.3087613
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.8377658   -2.1589901   -1.5165416
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.5062931   -1.5678021   -1.4447841
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.6868673   -1.8276321   -1.5461024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.9595164   -1.9935231   -1.9255096
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.3925818   -1.4701611   -1.3150026
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7480334   -1.0159728   -0.4800940
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -1.1141889   -1.6849419   -0.5434359
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.4033464   -0.7335232   -0.0731696
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.5258833   -0.9639974   -0.0877691
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -1.2670588   -1.7052921   -0.8288254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.5363346   -1.2531692    0.1805001
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -1.2140647   -1.7355787   -0.6925506
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.9889697   -1.4156392   -0.5623002
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.8565706   -1.2570397   -0.4561015
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.9759942   -1.2127595   -0.7392289
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -1.7976092   -2.8538902   -0.7413281
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -1.0185863   -1.1231445   -0.9140281
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9024072   -1.0911127   -0.7137017
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8203175   -0.9774804   -0.6631545
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8123811   -0.9677132   -0.6570490
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.8187065   -1.1006989   -0.5367141
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.8738125   -1.0430067   -0.7046184
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.7631263   -0.9240830   -0.6021697
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.0501198   -1.1249361   -0.9753034
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.0623301   -1.3636692   -0.7609909
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.9938462   -1.0659726   -0.9217199
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.0369086   -1.1877728   -0.8860443
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9013521   -0.9354886   -0.8672157
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8338816   -0.9193356   -0.7484276
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6106128   -0.9601193   -0.2611062
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.1124224   -0.7342189    0.5093741
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.1406239   -0.4971802    0.2159324
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.2843262   -0.7739292    0.2052768
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -1.5910185   -2.2909952   -0.8910419
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.2851461   -0.9350259    0.3647338
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.7120536   -1.1768306   -0.2472765
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.6021756   -0.8630283   -0.3413230
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6146040   -0.8569849   -0.3722232
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.5669268   -0.8654560   -0.2683975
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7793221   -0.9960718   -0.5625724
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6059118   -0.7987255   -0.4130981
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6838902   -0.8769133   -0.4908670
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.5915093   -0.7774094   -0.4056093
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4618019   -0.6580335   -0.2655702
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.7028328   -0.8829242   -0.5227413
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.7902316   -1.0466962   -0.5337670
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.7642548   -0.8465445   -0.6819652
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.7295205   -0.8927292   -0.5663118
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6246064   -0.6695959   -0.5796169
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5085567   -0.5866689   -0.4304446


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.3292213   -0.4287571   -0.2296854
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.2005401   -0.3757023   -0.0253779
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0869453   -0.1388842   -0.0350063
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.1145769   -0.2319816    0.0028279
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1292441   -0.2297616   -0.0287265
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1569701   -0.2569318   -0.0570084
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1308439   -0.2180749   -0.0436129
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.4321016   -0.5945090   -0.2696942
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.3382857   -0.5842023   -0.0923692
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.4007375   -0.4600242   -0.3414509
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.4304299   -0.5004435   -0.3604162
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.2975847   -0.3509408   -0.2442287
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.2466396   -0.2939480   -0.1993313
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.3999449   -0.4663446   -0.3335452
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.8130547   -1.4140013   -0.2121081
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1887410   -0.2004599   -0.1770220
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1549587   -0.1999758   -0.1099417
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.3082595   -0.3276372   -0.2888819
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1662859   -0.1889068   -0.1436649
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.7478753   -0.7664882   -0.7292624
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.5051519   -0.5441184   -0.4661854
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1580635   -0.2290928   -0.0870342
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0339612   -0.0707602    0.0028379
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0627516   -0.1122401   -0.0132632
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0588633   -0.1025548   -0.0151718
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0783736   -0.1234525   -0.0332947
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0607436   -0.1088059   -0.0126813
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0587451   -0.1039785   -0.0135116
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1173683   -0.1725040   -0.0622325
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1497716   -0.2192964   -0.0802467
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.3438963   -0.4390675   -0.2487251
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.2643543   -0.5313970    0.0026884
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.2501362   -0.3031714   -0.1971010
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2623206   -0.3274659   -0.1971753
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1926986   -0.2389856   -0.1464117
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1938826   -0.2388593   -0.1489059
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0290568   -0.0404624   -0.0176512
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1232786   -0.1515210   -0.0950361
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.2264079   -0.2821811   -0.1706348
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1301954   -0.1420161   -0.1183746
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0929723   -0.1265933   -0.0593513
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.1966275   -0.2140003   -0.1792547
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0958112   -0.1135885   -0.0780339
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.3253493   -0.3395386   -0.3111601
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.2140183   -0.2387180   -0.1893186
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1395614   -0.2202526   -0.0588701
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0053218   -0.0349765    0.0243329
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0108650   -0.0634698    0.0417399
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0337373   -0.0734717    0.0059972
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0799507   -0.1352183   -0.0246831
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0235551   -0.0610705    0.0139603
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0351631   -0.0682494   -0.0020769
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0542192   -0.0889589   -0.0194796
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1035883   -0.1503966   -0.0567800
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.2236569   -0.3490710   -0.0982428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2375382   -0.3119836   -0.1630929
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1445862   -0.1949301   -0.0942423
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1666981   -0.2205455   -0.1128507
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0879552   -0.1164842   -0.0594263
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1253707   -0.1815466   -0.0691948
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0790734   -0.1023913   -0.0557556
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0716277   -0.1015423   -0.0417130
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.1410136   -0.1585579   -0.1234693
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0664035   -0.0828898   -0.0499172
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.2328761   -0.2509659   -0.2147863
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.1344008   -0.1561231   -0.1126784
