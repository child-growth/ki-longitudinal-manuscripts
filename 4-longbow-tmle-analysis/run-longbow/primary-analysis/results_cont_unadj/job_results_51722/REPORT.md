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

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth             n_cell       n
----------  -------------------------  -----------------------------  ------------------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        57      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term               23      90
Birth       ki1000108-IRC              INDIA                          Full or late term       238     369
Birth       ki1000108-IRC              INDIA                          Preterm                  36     369
Birth       ki1000108-IRC              INDIA                          Early term               95     369
Birth       ki1000109-EE               PAKISTAN                       Full or late term         0       2
Birth       ki1000109-EE               PAKISTAN                       Preterm                   1       2
Birth       ki1000109-EE               PAKISTAN                       Early term                1       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term         1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                 171     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term               15     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term               15      27
Birth       ki1101329-Keneba           GAMBIA                         Full or late term       734    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                 235    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term              546    1515
Birth       ki1119695-PROBIT           BELARUS                        Full or late term      7095   13884
Birth       ki1119695-PROBIT           BELARUS                        Preterm                 472   13884
Birth       ki1119695-PROBIT           BELARUS                        Early term             6317   13884
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term       341     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                  95     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term              181     617
Birth       ki1135781-COHORTS          INDIA                          Full or late term       570    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                 285    1293
Birth       ki1135781-COHORTS          INDIA                          Early term              438    1293
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term      1164    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                 649    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term             1211    3024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      9542   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3774   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             5118   18434
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       212     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               83     347
6 months    ki1000108-IRC              INDIA                          Full or late term       249     388
6 months    ki1000108-IRC              INDIA                          Preterm                  42     388
6 months    ki1000108-IRC              INDIA                          Early term               97     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term        25     372
6 months    ki1000109-EE               PAKISTAN                       Preterm                 239     372
6 months    ki1000109-EE               PAKISTAN                       Early term              108     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term        25    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                1210    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term               92    1327
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       155     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              309     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 291    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1903
6 months    ki1101329-Keneba           GAMBIA                         Full or late term       658    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                 207    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term              509    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term      8008   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                 551   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term             7202   15761
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       389     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                 113     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term              211     713
6 months    ki1135781-COHORTS          INDIA                          Full or late term       568    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                 299    1312
6 months    ki1135781-COHORTS          INDIA                          Early term              445    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term      1028    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                 573    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term             1086    2687
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      6610   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                2401   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             3471   12482
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       214     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               84     350
24 months   ki1000108-IRC              INDIA                          Full or late term       250     390
24 months   ki1000108-IRC              INDIA                          Preterm                  42     390
24 months   ki1000108-IRC              INDIA                          Early term               98     390
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        79     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 208     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              227     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term       557    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                 167    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term              432    1156
24 months   ki1119695-PROBIT           BELARUS                        Full or late term      2024    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                 137    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term             1874    4035
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       375     663
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                 108     663
24 months   ki1135781-COHORTS          GUATEMALA                      Early term              180     663
24 months   ki1135781-COHORTS          INDIA                          Full or late term       565    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                 305    1308
24 months   ki1135781-COHORTS          INDIA                          Early term              438    1308
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term       938    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                 513    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term              973    2424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      3401    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1296    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             1796    6493


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/65d8e6bb-6d4d-4270-80da-2041fe1cdfd0/eea7285f-69c7-4a86-908a-00b72bb3ed72/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/65d8e6bb-6d4d-4270-80da-2041fe1cdfd0/eea7285f-69c7-4a86-908a-00b72bb3ed72/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/65d8e6bb-6d4d-4270-80da-2041fe1cdfd0/eea7285f-69c7-4a86-908a-00b72bb3ed72/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -1.0098246   -1.2904190   -0.7292301
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.7140000   -1.2494603   -0.1785397
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.9647826   -1.3170868   -0.6124784
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.2726891   -0.4770060   -0.0683722
Birth       ki1000108-IRC              INDIA                          Preterm              NA                -0.9105556   -1.4543481   -0.3667630
Birth       ki1000108-IRC              INDIA                          Early term           NA                -0.1770526   -0.4916498    0.1375445
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.8771429   -1.8202279    0.0659422
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.9980000   -2.4964582   -1.4995418
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.9226667   -1.3784537   -0.4668796
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.2354632    0.1496110    0.3213154
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.6711064   -0.8570478   -0.4851649
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                 0.0523260   -0.0487688    0.1534208
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 1.5222185    1.3700195    1.6744174
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.4241949    0.1475613    0.7008286
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                 1.1718490    0.9900828    1.3536152
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2367449    0.1129997    0.3604901
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.3893684   -0.6838031   -0.0949338
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0607182   -0.2277653    0.1063288
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.3955789   -0.4832187   -0.3079392
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                -0.9073333   -1.0436769   -0.7709898
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                -0.6873516   -0.7862577   -0.5884455
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0027663   -0.0556001    0.0611327
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.6426810   -0.7403472   -0.5450149
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.2806276   -0.3376182   -0.2236370
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.2752148   -1.2990276   -1.2514020
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -2.1410864   -2.1880631   -2.0941096
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.6843181   -1.7170136   -1.6516225
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -1.3778145   -1.5599142   -1.1957148
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -1.5883013   -2.0368105   -1.1397921
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -1.2784940   -1.5569704   -1.0000176
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -1.1243307   -1.2930271   -0.9556342
6 months    ki1000108-IRC              INDIA                          Preterm              NA                -1.7184524   -2.1781138   -1.2587910
6 months    ki1000108-IRC              INDIA                          Early term           NA                -1.2982646   -1.5317130   -1.0648162
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -1.7970000   -2.1780760   -1.4159240
6 months    ki1000109-EE               PAKISTAN                       Preterm              NA                -2.3225732   -2.4741720   -2.1709744
6 months    ki1000109-EE               PAKISTAN                       Early term           NA                -2.0236574   -2.2589099   -1.7884049
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.8752000   -1.1007877   -0.6496123
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                -1.4297190   -1.5104835   -1.3489545
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                -1.1781522   -1.3411987   -1.0151057
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.8747097   -1.0329276   -0.7164917
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.4437251   -1.5646460   -1.3228042
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -1.1621359   -1.2625414   -1.0617304
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.4548051   -0.5192960   -0.3903141
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.7272680   -0.8606101   -0.5939260
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.6493296   -0.7505123   -0.5481469
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.7944516   -0.8787022   -0.7102010
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                -1.2775813   -1.4220615   -1.1331012
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                -0.8688767   -0.9537132   -0.7840402
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1886389    0.0940617    0.2832160
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.2844737   -0.5223497   -0.0465977
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                 0.0461719   -0.0590287    0.1513724
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -1.6630848   -1.7605992   -1.5655705
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -2.1353982   -2.3427878   -1.9280087
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                -1.9793839   -2.1210237   -1.8377441
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.8693310   -0.9602133   -0.7784487
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                -1.1462876   -1.2693237   -1.0232516
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                -0.9595056   -1.0580956   -0.8609156
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -1.0235409   -1.0899673   -0.9571144
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -1.3508901   -1.4485191   -1.2532610
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -1.1414088   -1.2053739   -1.0774438
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.2086793   -1.2393173   -1.1780412
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -1.6275135   -1.6799720   -1.5750551
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.3928119   -1.4325975   -1.3530263
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -2.4933956   -2.6293129   -2.3574784
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -2.6270833   -2.9076053   -2.3465613
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -2.5760119   -2.7591530   -2.3928708
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -1.7087333   -1.8239407   -1.5935260
24 months   ki1000108-IRC              INDIA                          Preterm              NA                -2.1794841   -2.4650696   -1.8938986
24 months   ki1000108-IRC              INDIA                          Early term           NA                -1.7926361   -1.9893569   -1.5959152
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -1.1743038   -1.3803944   -0.9682132
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.6114423   -1.7447001   -1.4781845
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -1.3516740   -1.4719656   -1.2313824
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -1.5624387   -1.6476439   -1.4772334
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -1.8406148   -2.0000649   -1.6811647
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -1.4655278   -1.5628489   -1.3682066
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.1184774   -0.6093743    0.3724194
24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.2700730   -0.6222334    0.0820874
24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                -0.1352295   -0.3305093    0.0600504
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -2.7874933   -2.8946758   -2.6803108
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -2.9374074   -3.1658106   -2.7090042
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -2.9668889   -3.1190760   -2.8147018
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -1.8423717   -1.9379876   -1.7467558
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                -2.0345574   -2.1626404   -1.9064744
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                -1.9197032   -2.0201154   -1.8192910
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -2.3078145   -2.3771885   -2.2384405
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -2.4782261   -2.5795235   -2.3769288
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -2.4234430   -2.4956541   -2.3512318
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.9795001   -2.0210457   -1.9379546
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -2.2264969   -2.2866880   -2.1663058
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -2.0448163   -2.0947261   -1.9949064


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3102981   -0.4751168   -0.1454794
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0288383   -0.0354675    0.0931441
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3254775    1.1669293    1.4840258
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.0530794   -0.0441925    0.1503513
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6072158   -0.6675691   -0.5468624
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2492460   -0.2884729   -0.2100192
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5660681   -1.5858219   -1.5463144
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.3856004   -1.5319935   -1.2392073
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2321263   -1.3660720   -1.0981806
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018312   -1.4804646   -1.3231978
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5419570   -0.5926042   -0.4913098
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8948084   -0.9510697   -0.8385471
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8315428   -1.9081267   -1.7549589
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9630335   -1.0220763   -0.9039908
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1409862   -1.1830414   -1.0989310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3404486   -1.3659169   -1.3149804
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5330857   -2.6360668   -2.4301046
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7805128   -1.8756216   -1.6854041
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5664092   -1.6263058   -1.5065125
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8606184   -2.9431264   -2.7781104
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -1.9130810   -1.9742771   -1.8518850
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3902929   -2.4353250   -2.3452608
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0468674   -2.0777591   -2.0159757


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.2958246   -0.3087008    0.9003499
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0450420   -0.4053484    0.4954323
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.6378665   -1.2187759   -0.0569570
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term     0.0956364   -0.2794859    0.4707588
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -1.1208571   -2.1875671   -0.0541472
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.0455238   -1.0929737    1.0019261
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.9065696   -1.1113740   -0.7017652
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.1831372   -0.3157674   -0.0505070
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -1.0980235   -1.3343288   -0.8617183
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.3503695   -0.4675806   -0.2331584
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.6261133   -0.9454950   -0.3067316
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.2974631   -0.5053515   -0.0895747
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.5117544   -0.6738355   -0.3496733
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.2917727   -0.4239208   -0.1596245
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.6454474   -0.7592248   -0.5316699
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.2833939   -0.3649694   -0.2018184
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.8658715   -0.9192642   -0.8124789
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.4091033   -0.4467212   -0.3714853
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2104868   -0.6945538    0.2735801
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0993205   -0.2334097    0.4320507
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.5941217   -1.0837615   -0.1044820
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1739339   -0.4619559    0.1140880
6 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.5255732   -0.9356965   -0.1154500
6 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.2266574   -0.6744996    0.2211848
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    -0.5545190   -0.7633698   -0.3456682
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    -0.3029522   -0.6210163    0.0151120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.5690154   -0.7681505   -0.3698803
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.2874262   -0.4748140   -0.1000385
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.2724630   -0.4205818   -0.1243442
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.1945245   -0.3145121   -0.0745370
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.4831297   -0.6503800   -0.3158794
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.0744251   -0.1939884    0.0451383
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.4731125   -0.6837291   -0.2624960
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.1424670   -0.2073515   -0.0775824
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.4723134   -0.7014846   -0.2431421
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.3162991   -0.4882609   -0.1443372
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.2769566   -0.4299189   -0.1239943
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0901746   -0.2242626    0.0439133
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.3273492   -0.4454335   -0.2092649
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1178680   -0.2100852   -0.0256508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.4188343   -0.4762113   -0.3614572
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.1841326   -0.2292486   -0.1390166
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.1336877   -0.4454025    0.1780271
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0826163   -0.3106824    0.1454498
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.4707508   -0.7786985   -0.1628031
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.0839027   -0.3118760    0.1440706
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.4371385   -0.6825585   -0.1917185
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1773702   -0.4159984    0.0612579
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.2781761   -0.4589640   -0.0973882
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0969109   -0.0324388    0.2262606
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.1515956   -0.7254506    0.4222595
24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.0167520   -0.4693888    0.4358848
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.1499141   -0.4022157    0.1023875
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.1793956   -0.3655379    0.0067468
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.1921857   -0.3520220   -0.0323494
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0773315   -0.2159858    0.0613227
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.1704116   -0.2931875   -0.0476358
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1156285   -0.2157644   -0.0154925
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.2469968   -0.3190143   -0.1749792
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0653161   -0.1259584   -0.0046739


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0443801   -0.1059130    0.1946732
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.0376090   -0.1603289    0.0851108
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.2328571   -0.9991387    0.5334244
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.2066249   -0.2726847   -0.1405652
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.1967409   -0.2508387   -0.1426431
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1836655   -0.2722580   -0.0950729
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.2116368   -0.2791008   -0.1441729
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.2520124   -0.3002079   -0.2038168
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.2908533   -0.3088105   -0.2728961
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0077859   -0.1264140    0.1108421
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.1077956   -0.2071602   -0.0084311
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4034704   -0.7787220   -0.0282189
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.5266312   -0.7381017   -0.3151607
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3239686   -0.4628198   -0.1851175
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0871519   -0.1274405   -0.0468634
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1003568   -0.1592207   -0.0414929
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0816403   -0.1137051   -0.0495754
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1684579   -0.2391560   -0.0977599
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0937026   -0.1614819   -0.0259232
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.1174454   -0.1704061   -0.0644846
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.1317694   -0.1512673   -0.1122715
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0396901   -0.1202391    0.0408590
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0717795   -0.1445949    0.0010359
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.2552293   -0.4458759   -0.0645826
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0039705   -0.0660300    0.0580890
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0129274   -0.2382745    0.2124198
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0731251   -0.1459268   -0.0003234
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0707094   -0.1413429   -0.0000758
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0824784   -0.1382989   -0.0266579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0673672   -0.0930007   -0.0417338
