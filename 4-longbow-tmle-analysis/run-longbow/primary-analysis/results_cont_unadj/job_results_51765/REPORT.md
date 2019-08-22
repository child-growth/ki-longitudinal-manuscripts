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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthwt                       n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       202     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  39     241
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       179     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   4     183
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       171     203
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                  32     203
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       155     168
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                  13     168
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight       265     279
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                  14     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       244     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  14     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       113     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   5     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        79      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   9      88
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight       296     343
Birth       ki1000108-IRC              INDIA                          Low birth weight                  47     343
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         1       1
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                   0       1
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         6       6
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                   0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       143     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                  23     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight        21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight        18      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   5      23
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1297    1423
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                 126    1423
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5       8
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                   3       8
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight       106     111
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                   5     111
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight        10      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                   0      10
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                   0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13824   13824
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                   0   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11614   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1302   12916
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       702     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                  54     756
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight      5178    6193
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                1015    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2688    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 211    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     11038   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                4671   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       534     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                 149     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       187     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  48     235
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       199     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                  10     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       193     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                  36     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       208     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                  21     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight       253     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                  17     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       238     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  16     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       120     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   6     126
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       325     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  43     368
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight       338     406
6 months    ki1000108-IRC              INDIA                          Low birth weight                  68     406
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       244     376
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                 132     376
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        15      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                   2      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight      1001    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                 323    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       118     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  60     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       443     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 139     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       545     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1943    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                  67    2010
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1571    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                 154    1725
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                   1       1
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight       100     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                   4     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight         1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                   1       2
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight        13      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                   1      14
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                   0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15757   15757
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                   0   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7202    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1032    8234
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       704     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                  70     774
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      5000    6252
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                1252    6252
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2416    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 248    2664
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     10636   16712
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                6076   16712
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      3005    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1040    4045
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       165     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  43     208
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       161     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   8     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       185     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                  35     220
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       201     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                  20     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       186     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                  12     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       224     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  14     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       103     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   5     108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       329     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  43     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       339     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                  68     407
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight        85     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  51     136
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       439     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 139     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       388     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 126     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1303    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                 133    1436
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                   1       1
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight         3       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                   1       4
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                   0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      3971    3971
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                   0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       330     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                  91     421
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       595     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                  62     657
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3911    4821
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                 910    4821
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2195    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 215    2410
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5340    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                3215    8555
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2944    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1053    3997


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
![](/tmp/e07a41c5-ddc1-4374-9c5c-5907b3ac1d0f/aeee4ff3-0ba6-4520-8e69-dc91bb16f892/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e07a41c5-ddc1-4374-9c5c-5907b3ac1d0f/aeee4ff3-0ba6-4520-8e69-dc91bb16f892/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e07a41c5-ddc1-4374-9c5c-5907b3ac1d0f/aeee4ff3-0ba6-4520-8e69-dc91bb16f892/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.8017822   -0.9461381   -0.6574263
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -1.7984615   -2.0499833   -1.5469398
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.9325731   -1.0763044   -0.7888418
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -1.7987500   -2.1282548   -1.4692452
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.8235484   -0.9630116   -0.6840852
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -1.8692308   -2.2990307   -1.4394309
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0176604   -0.1282882    0.0929674
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -1.1321429   -1.4464958   -0.8177900
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0300000   -0.1135606    0.1735606
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                -1.5600000   -1.8828333   -1.2371667
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.8404425    0.6470245    1.0338605
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.2740000   -1.5330936    0.9850936
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4705063   -0.8322728   -0.1087398
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -2.0055556   -2.7288456   -1.2822655
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.7617568   -0.9546041   -0.5689095
Birth       ki1000108-IRC              INDIA                          Low birth weight             NA                -2.5776596   -2.9629814   -2.1923377
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0151748   -0.2104539    0.2408036
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                -2.0413043   -2.3136234   -1.7689853
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.2619048   -1.6527705   -0.8710391
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -1.9100000   -2.5005485   -1.3194515
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.2911111   -0.6427608    0.0605386
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -2.4060000   -3.1567453   -1.6552547
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 1.7550270    1.6702819    1.8397720
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             NA                 1.1744444    0.8527228    1.4961661
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight   NA                -0.0406604   -0.2425352    0.1612144
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight             NA                -2.0960000   -2.7810612   -1.4109388
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2946341   -0.3195195   -0.2697486
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -2.4821045   -2.5437019   -2.4205070
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.9552564   -1.0568316   -0.8536813
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -2.4516667   -2.7794732   -2.1238602
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.7515662   -0.7811095   -0.7220230
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             NA                -2.1743054   -2.2367958   -2.1118150
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.6138207   -0.6592787   -0.5683627
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -2.3848815   -2.5167479   -2.2530151
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.3905481   -0.4103590   -0.3707372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -1.5123121   -1.5393514   -1.4852729
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.1131461   -0.1958342   -0.0304580
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -1.2828188   -1.4173613   -1.1482763
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0692469   -0.2221225    0.0836288
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -0.3853472   -0.6149599   -0.1557346
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.9961809    0.8281513    1.1642105
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                 0.4850000   -0.2366117    1.2066117
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.6448877   -0.7826616   -0.5071139
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -0.9525000   -1.2774688   -0.6275312
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.1832292    0.0466033    0.3198550
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -0.1697619   -0.5909846    0.2514608
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 1.0843281    0.9591305    1.2095256
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             NA                 0.6700000    0.1379004    1.2020996
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.5374230    0.3816855    0.6931605
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                 0.6112500   -0.0702961    1.2927961
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.5727639    0.3710590    0.7744687
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                 0.2300000   -0.6020097    1.0620097
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4424103   -0.6023396   -0.2824809
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -0.9581783   -1.3917673   -0.5245893
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.5538905   -0.6968562   -0.4109249
6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                -0.8112255   -1.2012941   -0.4211569
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.7155943   -0.8535009   -0.5776876
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                -0.7317803   -0.9301968   -0.5333638
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.5692557   -0.7282817   -0.4102298
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                -0.9704334   -1.0948386   -0.8460283
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3554732   -0.5274689   -0.1834775
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -0.7352222   -1.0212991   -0.4491454
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0954665   -0.1894665   -0.0014665
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                -0.5682014   -0.7428676   -0.3935352
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.1173119    0.0290237    0.2056001
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -0.2509118   -0.4175109   -0.0843126
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1008188    0.0470258    0.1546117
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.4187562   -0.6849115   -0.1526010
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1703795   -0.2287416   -0.1120174
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -0.3458543   -0.5323631   -0.1593455
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.3357706    0.3080662    0.3634751
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                 0.0714293   -0.0042474    0.1471059
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2377983    0.1555500    0.3200466
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -0.1694286   -0.4142266    0.0753695
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.5675620   -0.5985897   -0.5365343
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                -1.1960543   -1.2636124   -1.1284962
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.2600786   -0.3037002   -0.2164571
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -0.6071371   -0.7471686   -0.4671056
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.4644316   -0.4880307   -0.4408325
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -0.8204510   -0.8503505   -0.7905514
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.2942396   -0.3445019   -0.2439773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -0.6223269   -0.6957471   -0.5489068
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.7170909   -0.8554975   -0.5786843
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -1.1418605   -1.3795226   -0.9041984
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.4451553    0.2345841    0.6557265
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                 0.4762500   -0.4169100    1.3694100
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.8731892   -0.9925170   -0.7538614
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -1.3011429   -1.6659563   -0.9363294
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.3148507   -0.4300824   -0.1996191
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -0.7597500   -1.2410751   -0.2784249
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.1724462    0.0515723    0.2933202
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -0.6329167   -1.1978151   -0.0680183
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.4456920    0.3229045    0.5684795
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                 0.1228571   -0.3477250    0.5934393
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1561165   -0.0210244    0.3332574
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.0130000   -0.6302158    0.6042158
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4617781   -0.5676547   -0.3559016
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -1.2868605   -1.5297139   -1.0440071
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.6416716   -0.7389625   -0.5443806
24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                -1.2530392   -1.4676526   -1.0384258
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.7012745   -0.9068735   -0.4956755
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -1.1397549   -1.4356311   -0.8438787
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.7469704   -0.8405100   -0.6534308
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                -1.3331655   -1.4893987   -1.1769322
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.4872165   -0.5969204   -0.3775126
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -0.9895238   -1.1603799   -0.8186677
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7702319   -0.8236768   -0.7167870
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -1.0850526   -1.2588637   -0.9112416
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.1855152   -1.2985528   -1.0724775
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -1.1659341   -1.3840904   -0.9477777
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1561176   -0.2245327   -0.0877026
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -0.9193548   -1.1637443   -0.6749653
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.4997418   -0.5320891   -0.4673944
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                -1.0018681   -1.0674538   -0.9362825
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.5644465   -0.6027763   -0.5261166
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -1.0491163   -1.1731686   -0.9250640
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -1.1499663   -1.1780466   -1.1218860
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -1.5478600   -1.5832655   -1.5124545
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.1447588   -1.1843457   -1.1051720
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -1.5229345   -1.5910911   -1.4547778


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.2697590   -0.5399211    0.0004030
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4239286   -1.7688028   -1.0790544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.7508696   -1.2358912   -0.2658480
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 1.7036191    1.6208471    1.7863911
Birth       ki1114097-CMIN             BRAZIL                         NA                   NA                -0.1332432   -0.3441055    0.0776190
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7240996   -0.7439385   -0.7042607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1338121   -0.2652080   -0.0024161
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6932460   -0.8209323   -0.5655596
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1508588    0.0202182    0.2814994
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0582407    0.9356446    1.1808369
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5564418    0.3598819    0.7530017
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5969910   -0.7330855   -0.4608964
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7212766   -0.8346857   -0.6078675
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6671261   -0.8034351   -0.5308171
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4834785   -0.6351316   -0.3318253
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0834996    0.0305909    0.1364083
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1860451   -0.2417939   -0.1302962
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3026397    0.2765488    0.3287305
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.2009690    0.1225187    0.2794193
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6934213   -0.7223635   -0.6644791
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2923874   -0.3342162   -0.2505585
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5938700   -0.6133922   -0.5743478
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3785933   -0.4212191   -0.3359676
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8049038   -0.9274507   -0.6823570
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9412727   -1.0590315   -0.8235140
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3551131   -0.4698546   -0.2403717
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1236364    0.0020411    0.2452316
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1482870   -0.0231847    0.3197588
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7438165   -0.8351658   -0.6524673
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.8657047   -1.0392127   -0.6921966
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7993901   -0.8507049   -0.7480753
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1812827   -1.2816565   -1.0809088
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2281431   -0.2964243   -0.1598619
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5945219   -0.6240625   -0.5649813
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6076846   -0.6447204   -0.5706489
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2994962   -1.3226572   -1.2763352
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2443883   -1.2783802   -1.2103964


### Parameter: ATE


agecat      studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.9966794   -1.2866825   -0.7066762
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.8661769   -1.2256656   -0.5066882
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    -1.0456824   -1.4975429   -0.5938219
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -1.1144825   -1.4477335   -0.7812314
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    -1.5900000   -1.9433143   -1.2366857
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -1.1144425   -2.3883056    0.1594207
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -1.5350492   -2.3437665   -0.7263320
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -1.8159028   -2.2467891   -1.3850165
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    -2.0564792   -2.3676254   -1.7453330
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.6480952   -1.3562785    0.0600880
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -2.1148889   -2.9439100   -1.2858677
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -0.5805825   -0.9132784   -0.2478867
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight             Normal or high birthweight    -2.0553396   -2.7695260   -1.3411532
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -2.1874704   -2.2539048   -2.1210360
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    -1.4964102   -1.8395933   -1.1532272
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -1.4227392   -1.4918612   -1.3536172
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -1.7710608   -1.9105427   -1.6315790
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    -1.1217640   -1.1537440   -1.0897841
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    -1.1696727   -1.3280077   -1.0113378
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3161003   -0.5919498   -0.0402509
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight    -0.5111809   -1.2520975    0.2297357
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.3076123   -0.6605802    0.0453556
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    -0.3529911   -0.7958174    0.0898353
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -0.4143281   -0.9609581    0.1323020
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.0738270   -0.6252862    0.7729402
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.3427639   -1.1988742    0.5133465
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -0.5157680   -0.9779117   -0.0536243
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.2573350   -0.6727777    0.1581078
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    -0.0161860   -0.2578208    0.2254487
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    -0.4011777   -0.5790909   -0.2232645
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3797491   -0.7135491   -0.0459490
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    -0.4727349   -0.6710889   -0.2743810
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3682237   -0.5567710   -0.1796764
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.5195750   -0.7911119   -0.2480381
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -0.1754748   -0.3709016    0.0199521
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -0.2643414   -0.3449298   -0.1837529
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    -0.4072269   -0.6654726   -0.1489811
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -0.6284923   -0.7028349   -0.5541497
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -0.3470585   -0.4937270   -0.2003900
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3560193   -0.3926263   -0.3194123
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3280873   -0.4150675   -0.2411071
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.4247696   -0.6997962   -0.1497429
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.0310947   -0.8865517    0.9487411
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.4279537   -0.8117870   -0.0441204
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    -0.4448993   -0.9398257    0.0500272
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -0.8053629   -1.3830485   -0.2276773
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    -0.3228348   -0.8091725    0.1635028
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.1691165   -0.8112491    0.4730160
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -0.8250823   -1.0900118   -0.5601529
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.6113676   -0.8470039   -0.3757314
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.4384804   -0.7987771   -0.0781837
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    -0.5861951   -0.7682898   -0.4041004
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.5023073   -0.7053511   -0.2992635
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -0.3148207   -0.4966631   -0.1329784
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.0195811   -0.2261214    0.2652835
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    -0.7632372   -1.0170223   -0.5094521
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -0.5021264   -0.5752552   -0.4289975
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -0.4846698   -0.6145087   -0.3548309
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3978937   -0.4420796   -0.3537079
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3781756   -0.4578789   -0.2984724


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1612884   -0.2273116   -0.0952652
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.1365402   -0.2079955   -0.0650849
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0809159   -0.1358548   -0.0259770
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0559239   -0.0890547   -0.0227930
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0862791   -0.1343085   -0.0382496
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0472221   -0.1148107    0.0203664
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1569937   -0.2850311   -0.0289562
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.2488263   -0.3375161   -0.1601366
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.2849339   -0.3636205   -0.2062472
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1620238   -0.3683008    0.0442532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.4597585   -0.8663941   -0.0531228
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0514079   -0.0820885   -0.0207272
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight   NA                -0.0925829   -0.1784953   -0.0066704
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2205084   -0.2336939   -0.2073228
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1068864   -0.1437181   -0.0700548
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.2331794   -0.2505122   -0.2158467
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1289044   -0.1484916   -0.1093172
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.3335515   -0.3464297   -0.3206732
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.2551702   -0.3097938   -0.2005466
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0645652   -0.1232271   -0.0059032
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0244584   -0.0628850    0.0139681
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0483583   -0.1057185    0.0090020
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0323704   -0.0750777    0.0103370
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0260873   -0.0625455    0.0103708
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0046505   -0.0394435    0.0487446
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0163221   -0.0590504    0.0264062
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0602664   -0.1168649   -0.0036679
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0431004   -0.1133085    0.0271076
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0056823   -0.0905152    0.0791505
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0978704   -0.1474605   -0.0482803
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1280053   -0.2435883   -0.0124223
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1129040   -0.1630322   -0.0627759
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0875497   -0.1338302   -0.0412692
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0173192   -0.0272468   -0.0073915
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0156656   -0.0332715    0.0019404
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0331310   -0.0434068   -0.0228551
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0368293   -0.0615937   -0.0120649
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.1258593   -0.1419998   -0.1097188
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0323087   -0.0464896   -0.0181279
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.1294383   -0.1427531   -0.1161236
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0843537   -0.1069851   -0.0617224
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0878129   -0.1493090   -0.0263169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0014719   -0.0419784    0.0449223
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0680835   -0.1325710   -0.0035961
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0402624   -0.0881225    0.0075977
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0488099   -0.0929218   -0.0046980
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0189903   -0.0491888    0.0112082
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0078295   -0.0383108    0.0226519
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0953724   -0.1360959   -0.0546489
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1021450   -0.1473344   -0.0569556
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1644301   -0.3042061   -0.0246542
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1409708   -0.1892978   -0.0926437
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1231337   -0.1763033   -0.0699641
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0291582   -0.0466496   -0.0116668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0042325   -0.0488822    0.0573472
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0720254   -0.1014380   -0.0426128
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0947801   -0.1096566   -0.0799036
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0432382   -0.0560680   -0.0304083
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.1495299   -0.1664323   -0.1326275
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0996295   -0.1213443   -0.0779147
