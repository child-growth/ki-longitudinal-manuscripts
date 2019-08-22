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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthwt                       n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       202     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  55     257
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       183     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   8     191
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       172     206
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                  34     206
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       155     173
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                  18     173
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight       269     287
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                  18     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       244     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  18     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       116     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   7     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        80      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  10      90
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight       320     386
Birth       ki1000108-IRC              INDIA                          Low birth weight                  66     386
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         2       2
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                   0       2
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         6       7
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                   1       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       147     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                  40     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight        21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight        19      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   8      27
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1401    1541
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                 140    1541
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5      13
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                   8      13
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight       107     115
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                   8     115
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight        10      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                   0      10
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                   0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13884   13884
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                   0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11929   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1901   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       717     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                  67     784
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight      5268    6638
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                1370    6638
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2709    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 295    3004
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     11294   19612
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                8318   19612
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       551     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                 271     822
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       327     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  42     369
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight       339     405
6 months    ki1000108-IRC              INDIA                          Low birth weight                  66     405
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       243     372
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                 129     372
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        15      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                   2      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight      1003    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                 323    1326
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       118     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  60     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       444     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 139     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       545     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1944    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                  67    2011
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
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15761   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                   0   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7235    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1030    8265
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       703     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                  68     771
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      5005    6261
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                1256    6261
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2418    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 248    2666
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     10660   16740
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                6080   16740
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      3004    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1037    4041
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight        86     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  51     137
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       438     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 139     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       388     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 126     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1304    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                 132    1436
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                   1       1
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight         3       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                   1       4
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                   0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      4035    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                   0    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       362     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                  93     455
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       592     653
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                  61     653
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3949    4861
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                 912    4861
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2194    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 212    2406
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5361    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                3223    8584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2955    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1055    4010


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

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/ccba3891-9dfe-430d-936e-7842ca4c3ed5/e88fb224-bbea-4334-9812-08e1e214a26d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ccba3891-9dfe-430d-936e-7842ca4c3ed5/e88fb224-bbea-4334-9812-08e1e214a26d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ccba3891-9dfe-430d-936e-7842ca4c3ed5/e88fb224-bbea-4334-9812-08e1e214a26d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.7804950   -0.8972993   -0.6636908
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -2.2005455   -2.4235163   -1.9775746
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.6759563   -0.8249950   -0.5269176
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                -2.7050000   -3.4144004   -1.9955996
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.8497674   -0.9906305   -0.7089043
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -1.8244118   -2.1637359   -1.4850876
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.5080000   -0.6431045   -0.3728955
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -2.4388889   -2.8836571   -1.9941207
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.8020074   -0.9025075   -0.7015074
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -2.8783333   -3.2987834   -2.4578833
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.6145082   -0.7319503   -0.4970661
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                -2.2461111   -2.8985267   -1.5936955
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.8222414   -1.0210226   -0.6234602
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -2.7828571   -3.8363989   -1.7293154
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.8390000   -1.0555410   -0.6224590
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -1.9770000   -2.2635817   -1.6904183
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1864063   -0.3533797   -0.0194328
Birth       ki1000108-IRC              INDIA                          Low birth weight             NA                -0.9378788   -1.3840207   -0.4917369
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -1.1152381   -1.2264207   -1.0040555
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                -2.4215000   -2.7735247   -2.0694753
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2176190   -0.5928042    0.1575661
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -1.4642857   -1.7126577   -1.2159137
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.8426316   -1.2803212   -0.4049419
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -1.7450000   -2.4115287   -1.0784713
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.1835403    0.1217348    0.2453458
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -1.4608571   -1.6585197   -1.2631946
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                 0.0700000   -1.1814602    1.3214602
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight             NA                -3.1987500   -4.1117863   -2.2857137
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight   NA                 0.1833645   -0.0044014    0.3711304
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight             NA                -1.6237500   -2.5678225   -0.6796774
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.3134990   -0.3333888   -0.2936093
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -1.6773435   -1.7371895   -1.6174975
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2787308    0.1965332    0.3609284
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -1.5529851   -1.8587827   -1.2471875
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.3589313   -0.3857107   -0.3321518
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             NA                -1.8652409   -1.9197394   -1.8107423
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0778331   -0.1136506   -0.0420157
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -1.7652203   -1.8986192   -1.6318215
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.9508075   -0.9687289   -0.9328861
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -2.4217865   -2.4447494   -2.3988235
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.0460980   -1.1263326   -0.9658634
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -2.4157934   -2.5231071   -2.3084796
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -1.0494563   -1.1756365   -0.9232762
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -1.7962847   -2.0493600   -1.5432094
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0854690   -0.0611127    0.2320507
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                -0.6345000   -1.2373951   -0.0316049
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -1.1200173   -1.2476921   -0.9923424
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -1.6270833   -1.9149996   -1.3391670
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.4698718   -0.5837402   -0.3560034
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -1.2726190   -1.6623535   -0.8828846
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -1.2330698   -1.3375364   -1.1286033
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -2.5973529   -2.9909535   -2.2037524
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -1.0015651   -1.1282528   -0.8748775
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                -1.9828125   -2.5685402   -1.3970848
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.1807083   -1.3469400   -1.0144767
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -2.1916667   -2.8381136   -1.5452198
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -1.3048471   -1.4527231   -1.1569710
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -2.3468651   -2.6989976   -1.9947325
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -1.0922370   -1.2288265   -0.9556474
6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                -1.9225758   -2.2762557   -1.5688958
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -1.8546296   -1.9922503   -1.7170090
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                -2.8519380   -3.0496163   -2.6542597
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -1.1600648   -1.2637140   -1.0564156
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                -2.1584056   -2.2546577   -2.0621534
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.1873023   -1.3597879   -1.0148167
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -1.9006111   -2.1739518   -1.6272704
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.8883146   -0.9706780   -0.8059511
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                -1.7220863   -1.8597210   -1.5844516
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -1.0047706   -1.0815391   -0.9280021
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -1.8203235   -1.9551422   -1.6855048
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.5104788   -0.5599749   -0.4609828
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -1.3796269   -1.6560163   -1.1032374
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.8294178   -0.8806125   -0.7782230
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -1.8940170   -2.0631774   -1.7248565
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.7603490   -0.7868703   -0.7338277
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -1.7919709   -1.8648466   -1.7190951
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -1.6924751   -1.7653666   -1.6195836
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -2.7511765   -3.0323225   -2.4700304
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.7937223   -0.8238145   -0.7636300
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                -1.7920064   -1.8560831   -1.7279296
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -1.0438586   -1.0865759   -1.0011412
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -2.0478629   -2.1886868   -1.9070390
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.9849972   -1.0099076   -0.9600868
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -1.8891694   -1.9182612   -1.8600776
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.1365862   -1.1817520   -1.0914205
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -1.9718660   -2.0446521   -1.8990798
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -1.8119697   -1.9432274   -1.6807120
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -2.4262791   -2.7366385   -2.1159196
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0475155   -0.1253760    0.2204070
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                -0.0725000   -0.6768501    0.5318501
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -1.8025946   -1.9395291   -1.6656601
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -1.9667143   -2.2908741   -1.6425544
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -1.1968408   -1.3205624   -1.0731191
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -1.7085000   -2.1241557   -1.2928443
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -1.6677419   -1.7823792   -1.5531047
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -2.9808333   -3.5509199   -2.4107468
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -1.6003125   -1.7387444   -1.4618806
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                -1.9832143   -2.5707254   -1.3957032
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -2.4135922   -2.6093434   -2.2178410
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -3.2400000   -3.8438628   -2.6361372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -2.5035816   -2.6115843   -2.3955788
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -2.9862016   -3.2273620   -2.7450411
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -1.6753786   -1.7758761   -1.5748810
24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                -2.2905147   -2.5107940   -2.0702354
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.9240891   -2.1554574   -1.6927209
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -2.7632843   -3.0379744   -2.4885942
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -1.4395662   -1.5321198   -1.3470127
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                -2.0479137   -2.2109701   -1.8848572
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -1.2566753   -1.3454233   -1.1679272
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -1.9618254   -2.1325655   -1.7910853
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -1.5170890   -1.5730007   -1.4611772
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -2.2160846   -2.4077982   -2.0243710
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -2.2927072   -2.4237409   -2.1616735
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -2.7891398   -3.0085244   -2.5697551
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -2.7733446   -2.8593700   -2.6873192
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -3.5173770   -3.7604541   -3.2743000
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -1.7551456   -1.7919655   -1.7183258
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                -2.5275219   -2.6022649   -2.4527789
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -2.3208979   -2.3672980   -2.2744978
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -3.0685849   -3.2207579   -2.9164119
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -1.7779332   -1.8095323   -1.7463342
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -2.4058517   -2.4435429   -2.3681605
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.6182775   -1.6613647   -1.5751903
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -2.1257346   -2.1932747   -2.0581945


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3148964   -0.4754546   -0.1543382
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.5292857   -0.8821252   -0.1764462
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0341467   -0.0293905    0.0976838
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.9415385   -3.1064163   -0.7766606
Birth       ki1114097-CMIN             BRAZIL                         NA                   NA                 0.0576522   -0.1471825    0.2624869
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1221939    0.0348987    0.2094890
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6698147   -0.6979800   -0.6416494
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2435386   -0.2827491   -0.2043282
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5746910   -1.5944136   -1.5549684
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2020000   -1.3213394   -1.0826606
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1997307   -1.3188993   -1.0805621
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5434862   -0.6569704   -0.4300019
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3189691   -1.4274339   -1.2105044
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.2288492   -1.3944872   -1.0632112
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2275514   -1.3590342   -1.0960687
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4032504   -1.4822018   -1.3242989
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4277434   -1.5827644   -1.2727225
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5394360   -0.5886359   -0.4902361
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9244603   -0.9755212   -0.8733993
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8889117   -0.9149009   -0.8629224
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.7858495   -1.8598889   -1.7118102
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9939850   -1.0230017   -0.9649683
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1372543   -1.1796249   -1.0948837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3133943   -1.3365653   -1.2902232
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3509354   -1.3927945   -1.3090764
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9389663   -2.0658782   -1.8120544
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8287045   -1.9551251   -1.7022839
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2431448   -1.3633659   -1.1229237
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7473232   -1.8685873   -1.6260592
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.4518519   -2.6434682   -2.2602356
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7781532   -1.8722784   -1.6840279
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2364903   -2.4267511   -2.0462295
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5813420   -1.6360920   -1.5265921
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.3941758   -2.5091458   -2.2792058
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8428484   -2.9257590   -2.7599378
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -1.9000555   -1.9341618   -1.8659493
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3867789   -2.4319653   -2.3415925
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0136952   -2.0414244   -1.9859661
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7517855   -1.7900153   -1.7135558


### Parameter: ATE


agecat      studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    -1.4200504   -1.6717630   -1.1683378
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight    -2.0290437   -2.7539309   -1.3041565
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.9746443   -1.3420450   -0.6072436
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    -1.9308889   -2.3957243   -1.4660534
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -2.0763259   -2.5086204   -1.6440314
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    -1.6316029   -2.2945047   -0.9687012
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -1.9606158   -3.0327464   -0.8884851
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -1.1380000   -1.4971922   -0.7788078
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.7514725   -1.2278366   -0.2751084
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    -1.3062619   -1.5762446   -1.0362792
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -1.2466667   -1.6966139   -0.7967194
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.9023684   -1.6997596   -0.1049772
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -1.6443975   -1.8514974   -1.4372975
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight             Normal or high birthweight    -3.2687500   -4.8178748   -1.7196252
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight             Normal or high birthweight    -1.8071145   -2.7696782   -0.8445507
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -1.3638445   -1.4269091   -1.3007798
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    -1.8317159   -2.1483681   -1.5150637
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -1.5063096   -1.5670322   -1.4455870
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -1.6873872   -1.8255108   -1.5492636
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    -1.4709790   -1.4981690   -1.4437889
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    -1.3696954   -1.5041135   -1.2352772
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.7468284   -1.0296155   -0.4640413
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight    -0.7199690   -1.3404275   -0.0995105
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.5070661   -0.8220211   -0.1921111
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    -0.8027473   -1.2087755   -0.3967190
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -1.3642831   -1.7715111   -0.9570551
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    -0.9812474   -1.5805192   -0.3819756
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -1.0109583   -1.6784361   -0.3434806
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -1.0420180   -1.4239403   -0.6600957
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.8303388   -1.2094776   -0.4512000
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    -0.9973084   -1.2381738   -0.7564429
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    -0.9983408   -1.1259021   -0.8707794
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.7133089   -1.0365215   -0.3900962
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    -0.8337718   -0.9941683   -0.6733752
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.8155529   -0.9706963   -0.6604095
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.8691480   -1.1499344   -0.5883617
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -1.0645992   -1.2413367   -0.8878616
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -1.0316219   -1.1091735   -0.9540703
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    -1.0587014   -1.3491429   -0.7682599
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -0.9982841   -1.0690751   -0.9274930
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -1.0040043   -1.1511646   -0.8568441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.9041722   -0.9384672   -0.8698773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.8352797   -0.9205172   -0.7500423
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.6143094   -0.9512835   -0.2773353
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight    -0.1200155   -0.7486096    0.5085786
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.1641197   -0.5160155    0.1877761
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    -0.5116592   -0.9453373   -0.0779811
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -1.3130914   -1.8945898   -0.7315930
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    -0.3829018   -0.9865016    0.2206980
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.8264078   -1.4612060   -0.1916096
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -0.4826200   -0.7468603   -0.2183797
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.6151361   -0.8572575   -0.3730148
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.8391952   -1.1983413   -0.4800490
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    -0.6083475   -0.7958403   -0.4208546
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.7051501   -0.8975778   -0.5127225
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -0.6989956   -0.8986960   -0.4992953
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -0.4964326   -0.7519702   -0.2408950
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    -0.7440325   -1.0018828   -0.4861821
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -0.7723763   -0.8556963   -0.6890563
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -0.7476870   -0.9067769   -0.5885971
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.6279185   -0.6733279   -0.5825090
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.5074571   -0.5857498   -0.4291644


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.3039018   -0.3932984   -0.2145053
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0849861   -0.1502720   -0.0197002
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.1608636   -0.2391588   -0.0825684
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.2009017   -0.3014079   -0.1003956
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.1302225   -0.1945578   -0.0658872
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.1120949   -0.1797786   -0.0444111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1115798   -0.2126699   -0.0104896
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1264444   -0.2107863   -0.0421026
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1284901   -0.2147046   -0.0422756
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.2794143   -0.3777466   -0.1810820
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3116667   -0.5442903   -0.0790430
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.2673684   -0.5518070    0.0170701
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1493937   -0.1795786   -0.1192088
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -2.0115385   -3.3224009   -0.7006761
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight   NA                -0.1257123   -0.2334453   -0.0179793
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1874670   -0.1991462   -0.1757878
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1565369   -0.2014680   -0.1116059
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.3108834   -0.3301749   -0.2915919
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1657055   -0.1882119   -0.1431991
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.6238835   -0.6404201   -0.6073469
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.4515662   -0.5161571   -0.3869754
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1525437   -0.2220025   -0.0830848
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0344483   -0.0707450    0.0018485
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0797134   -0.1347176   -0.0247093
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0736144   -0.1214757   -0.0257530
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0858993   -0.1330756   -0.0387230
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0618109   -0.1096431   -0.0139786
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0481409   -0.0974836    0.0012018
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1186037   -0.1736761   -0.0635313
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1353145   -0.2039563   -0.0666726
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.3458408   -0.4423263   -0.2493553
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.2431856   -0.2972081   -0.1891630
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2404412   -0.3601795   -0.1207029
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1987895   -0.2467021   -0.1508769
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1939077   -0.2387319   -0.1490835
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0289572   -0.0405336   -0.0173808
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0950425   -0.1163564   -0.0737285
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1285627   -0.1407024   -0.1164229
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0933744   -0.1266291   -0.0601198
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.2002627   -0.2175758   -0.1829496
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0933958   -0.1110022   -0.0757893
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.3283971   -0.3425056   -0.3142885
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.2143492   -0.2391175   -0.1895808
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1269966   -0.2044654   -0.0495279
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0056812   -0.0356857    0.0243233
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0261100   -0.0826551    0.0304352
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0463040   -0.0900826   -0.0025254
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0795813   -0.1357614   -0.0234012
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0225236   -0.0598363    0.0147890
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0382596   -0.0823763    0.0058571
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0557867   -0.0901303   -0.0214431
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1027746   -0.1489769   -0.0565723
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3124011   -0.4624787   -0.1623235
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1465516   -0.1964659   -0.0966374
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1728578   -0.2268402   -0.1188754
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0642531   -0.0853754   -0.0431308
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1014686   -0.1568505   -0.0460868
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0695038   -0.0987683   -0.0402393
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.1449099   -0.1626929   -0.1271270
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0658810   -0.0822593   -0.0495027
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.2357620   -0.2538888   -0.2176352
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.1335080   -0.1551906   -0.1118255
