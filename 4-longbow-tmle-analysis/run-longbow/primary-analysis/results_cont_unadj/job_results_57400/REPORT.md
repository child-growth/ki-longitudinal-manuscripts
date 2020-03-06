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

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        gagebrth             n_cell       n
----------  ---------------  -----------------------------  ------------------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term        53      86
Birth       CMC-V-BCS-2002   INDIA                          Preterm                  11      86
Birth       CMC-V-BCS-2002   INDIA                          Early term               22      86
Birth       COHORTS          GUATEMALA                      Full or late term       323     572
Birth       COHORTS          GUATEMALA                      Preterm                  78     572
Birth       COHORTS          GUATEMALA                      Early term              171     572
Birth       COHORTS          INDIA                          Full or late term       553    1229
Birth       COHORTS          INDIA                          Preterm                 259    1229
Birth       COHORTS          INDIA                          Early term              417    1229
Birth       COHORTS          PHILIPPINES                    Full or late term      1135    2874
Birth       COHORTS          PHILIPPINES                    Preterm                 579    2874
Birth       COHORTS          PHILIPPINES                    Early term             1160    2874
Birth       IRC              INDIA                          Full or late term       213     328
Birth       IRC              INDIA                          Preterm                  32     328
Birth       IRC              INDIA                          Early term               83     328
Birth       Keneba           GAMBIA                         Full or late term       709    1439
Birth       Keneba           GAMBIA                         Preterm                 206    1439
Birth       Keneba           GAMBIA                         Early term              524    1439
Birth       NIH-Crypto       BANGLADESH                     Full or late term       160     707
Birth       NIH-Crypto       BANGLADESH                     Preterm                 240     707
Birth       NIH-Crypto       BANGLADESH                     Early term              307     707
Birth       PROBIT           BELARUS                        Full or late term      7065   13817
Birth       PROBIT           BELARUS                        Preterm                 467   13817
Birth       PROBIT           BELARUS                        Early term             6285   13817
6 months    CMC-V-BCS-2002   INDIA                          Full or late term       212     346
6 months    CMC-V-BCS-2002   INDIA                          Preterm                  51     346
6 months    CMC-V-BCS-2002   INDIA                          Early term               83     346
6 months    COHORTS          GUATEMALA                      Full or late term       389     714
6 months    COHORTS          GUATEMALA                      Preterm                 114     714
6 months    COHORTS          GUATEMALA                      Early term              211     714
6 months    COHORTS          INDIA                          Full or late term       568    1312
6 months    COHORTS          INDIA                          Preterm                 299    1312
6 months    COHORTS          INDIA                          Early term              445    1312
6 months    COHORTS          PHILIPPINES                    Full or late term      1028    2685
6 months    COHORTS          PHILIPPINES                    Preterm                 572    2685
6 months    COHORTS          PHILIPPINES                    Early term             1085    2685
6 months    IRC              INDIA                          Full or late term       249     388
6 months    IRC              INDIA                          Preterm                  42     388
6 months    IRC              INDIA                          Early term               97     388
6 months    Keneba           GAMBIA                         Full or late term       658    1374
6 months    Keneba           GAMBIA                         Preterm                 207    1374
6 months    Keneba           GAMBIA                         Early term              509    1374
6 months    NIH-Crypto       BANGLADESH                     Full or late term       155     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                 251     715
6 months    NIH-Crypto       BANGLADESH                     Early term              309     715
6 months    PROBIT           BELARUS                        Full or late term      8006   15757
6 months    PROBIT           BELARUS                        Preterm                 551   15757
6 months    PROBIT           BELARUS                        Early term             7200   15757
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 290    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1902
24 months   CMC-V-BCS-2002   INDIA                          Full or late term       214     350
24 months   CMC-V-BCS-2002   INDIA                          Preterm                  52     350
24 months   CMC-V-BCS-2002   INDIA                          Early term               84     350
24 months   COHORTS          GUATEMALA                      Full or late term       377     667
24 months   COHORTS          GUATEMALA                      Preterm                 109     667
24 months   COHORTS          GUATEMALA                      Early term              181     667
24 months   COHORTS          INDIA                          Full or late term       559    1298
24 months   COHORTS          INDIA                          Preterm                 303    1298
24 months   COHORTS          INDIA                          Early term              436    1298
24 months   COHORTS          PHILIPPINES                    Full or late term       939    2428
24 months   COHORTS          PHILIPPINES                    Preterm                 517    2428
24 months   COHORTS          PHILIPPINES                    Early term              972    2428
24 months   IRC              INDIA                          Full or late term       250     390
24 months   IRC              INDIA                          Preterm                  42     390
24 months   IRC              INDIA                          Early term               98     390
24 months   Keneba           GAMBIA                         Full or late term       558    1157
24 months   Keneba           GAMBIA                         Preterm                 168    1157
24 months   Keneba           GAMBIA                         Early term              431    1157
24 months   NIH-Crypto       BANGLADESH                     Full or late term        79     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                 208     514
24 months   NIH-Crypto       BANGLADESH                     Early term              227     514
24 months   PROBIT           BELARUS                        Full or late term      1991    3970
24 months   PROBIT           BELARUS                        Preterm                 136    3970
24 months   PROBIT           BELARUS                        Early term             1843    3970
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/8cdcc358-a438-454e-8223-88a3723ec8bb/37b0b662-4fc4-4eb9-bd1b-b17db4731159/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8cdcc358-a438-454e-8223-88a3723ec8bb/37b0b662-4fc4-4eb9-bd1b-b17db4731159/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8cdcc358-a438-454e-8223-88a3723ec8bb/37b0b662-4fc4-4eb9-bd1b-b17db4731159/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.3391509   -0.7395669    0.0612650
Birth       CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.9327273   -1.7262167   -0.1392379
Birth       CMC-V-BCS-2002   INDIA                          Early term           NA                -0.5336364   -1.0394385   -0.0278343
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -1.0304644   -1.1911066   -0.8698222
Birth       COHORTS          GUATEMALA                      Preterm              NA                -0.9439744   -1.3031364   -0.5848123
Birth       COHORTS          GUATEMALA                      Early term           NA                -1.0877778   -1.2938420   -0.8817136
Birth       COHORTS          INDIA                          Full or late term    NA                -0.9372333   -1.0370314   -0.8374351
Birth       COHORTS          INDIA                          Preterm              NA                -1.1320849   -1.2708448   -0.9933251
Birth       COHORTS          INDIA                          Early term           NA                -1.0302398   -1.1342265   -0.9262531
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.5952423   -0.6680676   -0.5224170
Birth       COHORTS          PHILIPPINES                    Preterm              NA                -0.8966839   -1.0029151   -0.7904528
Birth       COHORTS          PHILIPPINES                    Early term           NA                -0.8078276   -0.8803654   -0.7352898
Birth       IRC              INDIA                          Full or late term    NA                -0.7790610   -1.0075397   -0.5505824
Birth       IRC              INDIA                          Preterm              NA                -1.6409375   -2.3248849   -0.9569901
Birth       IRC              INDIA                          Early term           NA                -1.3733735   -1.7262783   -1.0204687
Birth       Keneba           GAMBIA                         Full or late term    NA                -1.2565021   -1.3477880   -1.1652162
Birth       Keneba           GAMBIA                         Preterm              NA                -1.2259709   -1.3888539   -1.0630879
Birth       Keneba           GAMBIA                         Early term           NA                -1.1946183   -1.2968744   -1.0923623
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.9560625   -1.1106784   -0.8014466
Birth       NIH-Crypto       BANGLADESH                     Preterm              NA                -1.5421250   -1.6875658   -1.3966842
Birth       NIH-Crypto       BANGLADESH                     Early term           NA                -1.1613518   -1.2896820   -1.0330216
Birth       PROBIT           BELARUS                        Full or late term    NA                -1.0953163   -1.3074747   -0.8831580
Birth       PROBIT           BELARUS                        Preterm              NA                -1.2097002   -1.4816971   -0.9377033
Birth       PROBIT           BELARUS                        Early term           NA                -1.2052275   -1.4363377   -0.9741173
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.4872406   -0.6921396   -0.2823415
6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.5469281   -0.9506624   -0.1431939
6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4661446   -0.7446236   -0.1876655
6 months    COHORTS          GUATEMALA                      Full or late term    NA                 0.1878663    0.0723178    0.3034148
6 months    COHORTS          GUATEMALA                      Preterm              NA                 0.1241228   -0.0924000    0.3406457
6 months    COHORTS          GUATEMALA                      Early term           NA                 0.2175355    0.0701403    0.3649308
6 months    COHORTS          INDIA                          Full or late term    NA                -0.6342430   -0.7286031   -0.5398828
6 months    COHORTS          INDIA                          Preterm              NA                -0.6065886   -0.7338387   -0.4793385
6 months    COHORTS          INDIA                          Early term           NA                -0.6877753   -0.7955789   -0.5799716
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.2656907   -0.3306137   -0.2007677
6 months    COHORTS          PHILIPPINES                    Preterm              NA                -0.2779720   -0.3698809   -0.1860632
6 months    COHORTS          PHILIPPINES                    Early term           NA                -0.3245622   -0.3911458   -0.2579786
6 months    IRC              INDIA                          Full or late term    NA                -0.5438554   -0.7127244   -0.3749864
6 months    IRC              INDIA                          Preterm              NA                -0.8249603   -1.2927710   -0.3571497
6 months    IRC              INDIA                          Early term           NA                -0.6464261   -0.9386150   -0.3542372
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.2658921   -0.3560608   -0.1757234
6 months    Keneba           GAMBIA                         Preterm              NA                -0.2060483   -0.3521934   -0.0599032
6 months    Keneba           GAMBIA                         Early term           NA                -0.1064243   -0.2088920   -0.0039566
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.2060323    0.0378475    0.3742171
6 months    NIH-Crypto       BANGLADESH                     Preterm              NA                -0.1100000   -0.2453737    0.0253737
6 months    NIH-Crypto       BANGLADESH                     Early term           NA                 0.0548706   -0.0623823    0.1721234
6 months    PROBIT           BELARUS                        Full or late term    NA                 0.5860261    0.5250592    0.6469930
6 months    PROBIT           BELARUS                        Preterm              NA                 0.5239383    0.3610181    0.6868584
6 months    PROBIT           BELARUS                        Early term           NA                 0.5646993    0.5006506    0.6287480
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1189796    0.0502409    0.1877183
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0432529   -0.1882506    0.1017448
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                 0.0647903   -0.0474751    0.1770556
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.5168224   -0.6529624   -0.3806825
24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.7767628   -1.0692586   -0.4842671
24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4396230   -0.6268478   -0.2523983
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.1671883   -0.2594885   -0.0748882
24 months   COHORTS          GUATEMALA                      Preterm              NA                -0.4455963   -0.6115367   -0.2796559
24 months   COHORTS          GUATEMALA                      Early term           NA                -0.2667403   -0.3934274   -0.1400533
24 months   COHORTS          INDIA                          Full or late term    NA                -0.5606977   -0.6410804   -0.4803150
24 months   COHORTS          INDIA                          Preterm              NA                -0.5939274   -0.7087778   -0.4790770
24 months   COHORTS          INDIA                          Early term           NA                -0.5706193   -0.6661608   -0.4750778
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.5683174   -0.6257928   -0.5108419
24 months   COHORTS          PHILIPPINES                    Preterm              NA                -0.6262863   -0.7069237   -0.5456488
24 months   COHORTS          PHILIPPINES                    Early term           NA                -0.6364300   -0.6965168   -0.5763433
24 months   IRC              INDIA                          Full or late term    NA                -0.6676867   -0.7841156   -0.5512578
24 months   IRC              INDIA                          Preterm              NA                -1.0965873   -1.3582993   -0.8348753
24 months   IRC              INDIA                          Early term           NA                -0.7776020   -0.9649569   -0.5902471
24 months   Keneba           GAMBIA                         Full or late term    NA                -0.8077115   -0.8893757   -0.7260473
24 months   Keneba           GAMBIA                         Preterm              NA                -0.8486250   -1.0038462   -0.6934038
24 months   Keneba           GAMBIA                         Early term           NA                -0.7585541   -0.8546373   -0.6624710
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.4413924   -0.6673642   -0.2154206
24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                -0.7417308   -0.8898903   -0.5935713
24 months   NIH-Crypto       BANGLADESH                     Early term           NA                -0.5487665   -0.6930967   -0.4044364
24 months   PROBIT           BELARUS                        Full or late term    NA                 0.7029248    0.5713960    0.8344536
24 months   PROBIT           BELARUS                        Preterm              NA                 0.6151838    0.2547937    0.9755739
24 months   PROBIT           BELARUS                        Early term           NA                 0.6990939    0.5754891    0.8226987


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0358042   -1.1559527   -0.9156557
Birth       COHORTS          INDIA                          NA                   NA                -1.0098535   -1.0741510   -0.9455561
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7417745   -0.7882773   -0.6952718
Birth       IRC              INDIA                          NA                   NA                -1.0135366   -1.2024730   -0.8246002
Birth       Keneba           GAMBIA                         NA                   NA                -1.2295969   -1.2924879   -1.1667060
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        NA                   NA                -1.1491782   -1.3593933   -0.9389630
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4909778   -0.6451612   -0.3367945
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1864566    0.1024304    0.2704827
6 months    COHORTS          INDIA                          NA                   NA                -0.6460976   -0.7081436   -0.5840516
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2920968   -0.3336448   -0.2505489
6 months    IRC              INDIA                          NA                   NA                -0.5999270   -0.7403711   -0.4594828
6 months    Keneba           GAMBIA                         NA                   NA                -0.1978013   -0.2594875   -0.1361150
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5741099    0.5141290    0.6340908
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0815655    0.0271217    0.1360092
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5369143   -0.6415957   -0.4322329
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2397001   -0.3082360   -0.1711643
24 months   COHORTS          INDIA                          NA                   NA                -0.5717874   -0.6260792   -0.5174955
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6079283   -0.6449298   -0.5709269
24 months   IRC              INDIA                          NA                   NA                -0.7414957   -0.8350522   -0.6479392
24 months   Keneba           GAMBIA                         NA                   NA                -0.7953404   -0.8531640   -0.7375168
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6981406    0.5843775    0.8119038


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.5935763   -1.4823723    0.2952197
Birth       CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.1944854   -0.8395968    0.4506259
Birth       COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Preterm              Full or late term     0.0864900   -0.3069605    0.4799406
Birth       COHORTS          GUATEMALA                      Early term           Full or late term    -0.0573134   -0.3185956    0.2039688
Birth       COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Preterm              Full or late term    -0.1948517   -0.3657726   -0.0239307
Birth       COHORTS          INDIA                          Early term           Full or late term    -0.0930065   -0.2371346    0.0511216
Birth       COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.3014416   -0.4302384   -0.1726449
Birth       COHORTS          PHILIPPINES                    Early term           Full or late term    -0.2125853   -0.3153728   -0.1097978
Birth       IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Preterm              Full or late term    -0.8618765   -1.5829774   -0.1407755
Birth       IRC              INDIA                          Early term           Full or late term    -0.5943125   -1.0147221   -0.1739028
Birth       Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Preterm              Full or late term     0.0305312   -0.1561878    0.2172502
Birth       Keneba           GAMBIA                         Early term           Full or late term     0.0618838   -0.0751907    0.1989583
Birth       NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.5860625   -0.7983338   -0.3737912
Birth       NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.2052893   -0.4062239   -0.0043547
Birth       PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Preterm              Full or late term    -0.1143839   -0.3408214    0.1120537
Birth       PROBIT           BELARUS                        Early term           Full or late term    -0.1099112   -0.2443768    0.0245544
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0596875   -0.5124402    0.3930651
6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0210960   -0.3246412    0.3668332
6 months    COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0637435   -0.3091689    0.1816818
6 months    COHORTS          GUATEMALA                      Early term           Full or late term     0.0296692   -0.1576188    0.2169573
6 months    COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Preterm              Full or late term     0.0276543   -0.1307642    0.1860728
6 months    COHORTS          INDIA                          Early term           Full or late term    -0.0535323   -0.1967994    0.0897348
6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0122814   -0.1248080    0.1002452
6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0588716   -0.1518682    0.0341251
6 months    IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Preterm              Full or late term    -0.2811049   -0.7784614    0.2162516
6 months    IRC              INDIA                          Early term           Full or late term    -0.1025707   -0.4400482    0.2349068
6 months    Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Preterm              Full or late term     0.0598438   -0.1118792    0.2315668
6 months    Keneba           GAMBIA                         Early term           Full or late term     0.1594678    0.0229759    0.2959597
6 months    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.3160323   -0.5319308   -0.1001337
6 months    NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1511617   -0.3561846    0.0538611
6 months    PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Preterm              Full or late term    -0.0620878   -0.2170053    0.0928297
6 months    PROBIT           BELARUS                        Early term           Full or late term    -0.0213268   -0.0575897    0.0149361
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.1622325   -0.3226985   -0.0017665
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0541893   -0.1858272    0.0774485
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2599404   -0.5825669    0.0626861
24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0771994   -0.1542897    0.3086885
24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    -0.2784080   -0.4682909   -0.0885251
24 months   COHORTS          GUATEMALA                      Early term           Full or late term    -0.0995520   -0.2562968    0.0571928
24 months   COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Preterm              Full or late term    -0.0332297   -0.1734153    0.1069558
24 months   COHORTS          INDIA                          Early term           Full or late term    -0.0099216   -0.1347797    0.1149365
24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0579689   -0.1569933    0.0410555
24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0681127   -0.1512622    0.0150369
24 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Preterm              Full or late term    -0.4289006   -0.7153424   -0.1424589
24 months   IRC              INDIA                          Early term           Full or late term    -0.1099154   -0.3304999    0.1106692
24 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.0409135   -0.2163064    0.1344794
24 months   Keneba           GAMBIA                         Early term           Full or late term     0.0491573   -0.0769419    0.1752566
24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.3003384   -0.5705503   -0.0301265
24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1073741   -0.3755055    0.1607573
24 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Preterm              Full or late term    -0.0877410   -0.4541840    0.2787020
24 months   PROBIT           BELARUS                        Early term           Full or late term    -0.0038310   -0.1150847    0.1074227


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1256746   -0.3546086    0.1032594
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -0.0053398   -0.1106827    0.1000031
Birth       COHORTS          INDIA                          Full or late term    NA                -0.0726203   -0.1442509   -0.0009897
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.1465322   -0.2037782   -0.0892863
Birth       IRC              INDIA                          Full or late term    NA                -0.2344756   -0.3762496   -0.0927015
Birth       Keneba           GAMBIA                         Full or late term    NA                 0.0269052   -0.0369453    0.0907556
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.2880888   -0.4299879   -0.1461897
Birth       PROBIT           BELARUS                        Full or late term    NA                -0.0538618   -0.1229365    0.0152128
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0037373   -0.1233532    0.1158787
6 months    COHORTS          GUATEMALA                      Full or late term    NA                -0.0014097   -0.0779841    0.0751646
6 months    COHORTS          INDIA                          Full or late term    NA                -0.0118546   -0.0828766    0.0591674
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.0264062   -0.0784989    0.0256866
6 months    IRC              INDIA                          Full or late term    NA                -0.0560716   -0.1639600    0.0518169
6 months    Keneba           GAMBIA                         Full or late term    NA                 0.0680908    0.0036827    0.1324989
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.1762700   -0.3254420   -0.0270980
6 months    PROBIT           BELARUS                        Full or late term    NA                -0.0119162   -0.0302812    0.0064488
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0374141   -0.0808990    0.0060708
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0200919   -0.1027220    0.0625383
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0725118   -0.1323946   -0.0126291
24 months   COHORTS          INDIA                          Full or late term    NA                -0.0110897   -0.0730868    0.0509074
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0396110   -0.0856264    0.0064044
24 months   IRC              INDIA                          Full or late term    NA                -0.0738091   -0.1440189   -0.0035992
24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0123711   -0.0474612    0.0722033
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.1689578   -0.3795007    0.0415851
24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0047842   -0.0594566    0.0498882
