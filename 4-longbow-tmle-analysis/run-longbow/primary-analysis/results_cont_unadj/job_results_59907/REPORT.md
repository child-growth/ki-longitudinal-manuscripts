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

**Outcome Variable:** y_rate_wtkg

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

agecat         studyid          country                        gagebrth             n_cell       n
-------------  ---------------  -----------------------------  ------------------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          Full or late term       190     312
0-3 months     CMC-V-BCS-2002   INDIA                          Preterm                  48     312
0-3 months     CMC-V-BCS-2002   INDIA                          Early term               74     312
0-3 months     COHORTS          GUATEMALA                      Full or late term       351     626
0-3 months     COHORTS          GUATEMALA                      Preterm                  98     626
0-3 months     COHORTS          GUATEMALA                      Early term              177     626
0-3 months     COHORTS          INDIA                          Full or late term       562    1284
0-3 months     COHORTS          INDIA                          Preterm                 285    1284
0-3 months     COHORTS          INDIA                          Early term              437    1284
0-3 months     IRC              INDIA                          Full or late term       244     378
0-3 months     IRC              INDIA                          Preterm                  40     378
0-3 months     IRC              INDIA                          Early term               94     378
0-3 months     JiVitA-3         BANGLADESH                     Full or late term     10027   19368
0-3 months     JiVitA-3         BANGLADESH                     Preterm                3923   19368
0-3 months     JiVitA-3         BANGLADESH                     Early term             5418   19368
0-3 months     Keneba           GAMBIA                         Full or late term       609    1241
0-3 months     Keneba           GAMBIA                         Preterm                 183    1241
0-3 months     Keneba           GAMBIA                         Early term              449    1241
0-3 months     NIH-Crypto       BANGLADESH                     Full or late term       162     725
0-3 months     NIH-Crypto       BANGLADESH                     Preterm                 254     725
0-3 months     NIH-Crypto       BANGLADESH                     Early term              309     725
0-3 months     PROBIT           BELARUS                        Full or late term      7827   15327
0-3 months     PROBIT           BELARUS                        Preterm                 537   15327
0-3 months     PROBIT           BELARUS                        Early term             6963   15327
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1177    1910
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 298    1910
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              435    1910
3-6 months     CMC-V-BCS-2002   INDIA                          Full or late term       183     303
3-6 months     CMC-V-BCS-2002   INDIA                          Preterm                  46     303
3-6 months     CMC-V-BCS-2002   INDIA                          Early term               74     303
3-6 months     COHORTS          GUATEMALA                      Full or late term       339     629
3-6 months     COHORTS          GUATEMALA                      Preterm                 107     629
3-6 months     COHORTS          GUATEMALA                      Early term              183     629
3-6 months     COHORTS          INDIA                          Full or late term       555    1291
3-6 months     COHORTS          INDIA                          Preterm                 296    1291
3-6 months     COHORTS          INDIA                          Early term              440    1291
3-6 months     IRC              INDIA                          Full or late term       244     381
3-6 months     IRC              INDIA                          Preterm                  41     381
3-6 months     IRC              INDIA                          Early term               96     381
3-6 months     JiVitA-3         BANGLADESH                     Full or late term      6466   12109
3-6 months     JiVitA-3         BANGLADESH                     Preterm                2274   12109
3-6 months     JiVitA-3         BANGLADESH                     Early term             3369   12109
3-6 months     Keneba           GAMBIA                         Full or late term       448     950
3-6 months     Keneba           GAMBIA                         Preterm                 140     950
3-6 months     Keneba           GAMBIA                         Early term              362     950
3-6 months     NIH-Crypto       BANGLADESH                     Full or late term       152     702
3-6 months     NIH-Crypto       BANGLADESH                     Preterm                 249     702
3-6 months     NIH-Crypto       BANGLADESH                     Early term              301     702
3-6 months     PROBIT           BELARUS                        Full or late term      6769   13317
3-6 months     PROBIT           BELARUS                        Preterm                 463   13317
3-6 months     PROBIT           BELARUS                        Early term             6085   13317
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       967    1565
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 239    1565
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              359    1565
6-9 months     CMC-V-BCS-2002   INDIA                          Full or late term       186     305
6-9 months     CMC-V-BCS-2002   INDIA                          Preterm                  44     305
6-9 months     CMC-V-BCS-2002   INDIA                          Early term               75     305
6-9 months     COHORTS          GUATEMALA                      Full or late term       340     621
6-9 months     COHORTS          GUATEMALA                      Preterm                  99     621
6-9 months     COHORTS          GUATEMALA                      Early term              182     621
6-9 months     COHORTS          INDIA                          Full or late term       501    1190
6-9 months     COHORTS          INDIA                          Preterm                 276    1190
6-9 months     COHORTS          INDIA                          Early term              413    1190
6-9 months     IRC              INDIA                          Full or late term       250     390
6-9 months     IRC              INDIA                          Preterm                  42     390
6-9 months     IRC              INDIA                          Early term               98     390
6-9 months     Keneba           GAMBIA                         Full or late term       261     578
6-9 months     Keneba           GAMBIA                         Preterm                 103     578
6-9 months     Keneba           GAMBIA                         Early term              214     578
6-9 months     NIH-Crypto       BANGLADESH                     Full or late term       148     693
6-9 months     NIH-Crypto       BANGLADESH                     Preterm                 242     693
6-9 months     NIH-Crypto       BANGLADESH                     Early term              303     693
6-9 months     PROBIT           BELARUS                        Full or late term      6281   12436
6-9 months     PROBIT           BELARUS                        Preterm                 426   12436
6-9 months     PROBIT           BELARUS                        Early term             5729   12436
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       869    1400
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 208    1400
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              323    1400
9-12 months    CMC-V-BCS-2002   INDIA                          Full or late term       186     306
9-12 months    CMC-V-BCS-2002   INDIA                          Preterm                  44     306
9-12 months    CMC-V-BCS-2002   INDIA                          Early term               76     306
9-12 months    COHORTS          GUATEMALA                      Full or late term       370     669
9-12 months    COHORTS          GUATEMALA                      Preterm                 106     669
9-12 months    COHORTS          GUATEMALA                      Early term              193     669
9-12 months    COHORTS          INDIA                          Full or late term       450    1071
9-12 months    COHORTS          INDIA                          Preterm                 242    1071
9-12 months    COHORTS          INDIA                          Early term              379    1071
9-12 months    IRC              INDIA                          Full or late term       245     383
9-12 months    IRC              INDIA                          Preterm                  42     383
9-12 months    IRC              INDIA                          Early term               96     383
9-12 months    Keneba           GAMBIA                         Full or late term       268     573
9-12 months    Keneba           GAMBIA                         Preterm                 107     573
9-12 months    Keneba           GAMBIA                         Early term              198     573
9-12 months    NIH-Crypto       BANGLADESH                     Full or late term       139     683
9-12 months    NIH-Crypto       BANGLADESH                     Preterm                 241     683
9-12 months    NIH-Crypto       BANGLADESH                     Early term              303     683
9-12 months    PROBIT           BELARUS                        Full or late term      6409   12687
9-12 months    PROBIT           BELARUS                        Preterm                 434   12687
9-12 months    PROBIT           BELARUS                        Early term             5844   12687
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       655    1024
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 140    1024
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              229    1024
12-15 months   CMC-V-BCS-2002   INDIA                          Full or late term       194     313
12-15 months   CMC-V-BCS-2002   INDIA                          Preterm                  45     313
12-15 months   CMC-V-BCS-2002   INDIA                          Early term               74     313
12-15 months   COHORTS          GUATEMALA                      Full or late term       352     621
12-15 months   COHORTS          GUATEMALA                      Preterm                 100     621
12-15 months   COHORTS          GUATEMALA                      Early term              169     621
12-15 months   IRC              INDIA                          Full or late term       236     372
12-15 months   IRC              INDIA                          Preterm                  41     372
12-15 months   IRC              INDIA                          Early term               95     372
12-15 months   Keneba           GAMBIA                         Full or late term       444     925
12-15 months   Keneba           GAMBIA                         Preterm                 149     925
12-15 months   Keneba           GAMBIA                         Early term              332     925
12-15 months   NIH-Crypto       BANGLADESH                     Full or late term       134     666
12-15 months   NIH-Crypto       BANGLADESH                     Preterm                 236     666
12-15 months   NIH-Crypto       BANGLADESH                     Early term              296     666
12-15 months   PROBIT           BELARUS                        Full or late term       496    1001
12-15 months   PROBIT           BELARUS                        Preterm                  32    1001
12-15 months   PROBIT           BELARUS                        Early term              473    1001
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       467     749
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 102     749
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              180     749
15-18 months   CMC-V-BCS-2002   INDIA                          Full or late term       186     303
15-18 months   CMC-V-BCS-2002   INDIA                          Preterm                  46     303
15-18 months   CMC-V-BCS-2002   INDIA                          Early term               71     303
15-18 months   COHORTS          GUATEMALA                      Full or late term       329     578
15-18 months   COHORTS          GUATEMALA                      Preterm                  93     578
15-18 months   COHORTS          GUATEMALA                      Early term              156     578
15-18 months   IRC              INDIA                          Full or late term       234     364
15-18 months   IRC              INDIA                          Preterm                  37     364
15-18 months   IRC              INDIA                          Early term               93     364
15-18 months   Keneba           GAMBIA                         Full or late term       471     931
15-18 months   Keneba           GAMBIA                         Preterm                 139     931
15-18 months   Keneba           GAMBIA                         Early term              321     931
15-18 months   NIH-Crypto       BANGLADESH                     Full or late term       111     605
15-18 months   NIH-Crypto       BANGLADESH                     Preterm                 227     605
15-18 months   NIH-Crypto       BANGLADESH                     Early term              267     605
15-18 months   PROBIT           BELARUS                        Full or late term       136     279
15-18 months   PROBIT           BELARUS                        Preterm                  12     279
15-18 months   PROBIT           BELARUS                        Early term              131     279
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       397     630
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                  78     630
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              155     630
18-21 months   CMC-V-BCS-2002   INDIA                          Full or late term       172     288
18-21 months   CMC-V-BCS-2002   INDIA                          Preterm                  44     288
18-21 months   CMC-V-BCS-2002   INDIA                          Early term               72     288
18-21 months   COHORTS          GUATEMALA                      Full or late term       323     575
18-21 months   COHORTS          GUATEMALA                      Preterm                  98     575
18-21 months   COHORTS          GUATEMALA                      Early term              154     575
18-21 months   IRC              INDIA                          Full or late term       235     361
18-21 months   IRC              INDIA                          Preterm                  35     361
18-21 months   IRC              INDIA                          Early term               91     361
18-21 months   Keneba           GAMBIA                         Full or late term       462     928
18-21 months   Keneba           GAMBIA                         Preterm                 137     928
18-21 months   Keneba           GAMBIA                         Early term              329     928
18-21 months   NIH-Crypto       BANGLADESH                     Full or late term        87     547
18-21 months   NIH-Crypto       BANGLADESH                     Preterm                 216     547
18-21 months   NIH-Crypto       BANGLADESH                     Early term              244     547
18-21 months   PROBIT           BELARUS                        Full or late term        97     214
18-21 months   PROBIT           BELARUS                        Preterm                   9     214
18-21 months   PROBIT           BELARUS                        Early term              108     214
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         7      10
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0      10
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                3      10
21-24 months   CMC-V-BCS-2002   INDIA                          Full or late term       177     290
21-24 months   CMC-V-BCS-2002   INDIA                          Preterm                  44     290
21-24 months   CMC-V-BCS-2002   INDIA                          Early term               69     290
21-24 months   COHORTS          GUATEMALA                      Full or late term       343     611
21-24 months   COHORTS          GUATEMALA                      Preterm                 101     611
21-24 months   COHORTS          GUATEMALA                      Early term              167     611
21-24 months   IRC              INDIA                          Full or late term       237     370
21-24 months   IRC              INDIA                          Preterm                  39     370
21-24 months   IRC              INDIA                          Early term               94     370
21-24 months   Keneba           GAMBIA                         Full or late term       399     819
21-24 months   Keneba           GAMBIA                         Preterm                 119     819
21-24 months   Keneba           GAMBIA                         Early term              301     819
21-24 months   NIH-Crypto       BANGLADESH                     Full or late term        74     493
21-24 months   NIH-Crypto       BANGLADESH                     Preterm                 195     493
21-24 months   NIH-Crypto       BANGLADESH                     Early term              224     493
21-24 months   PROBIT           BELARUS                        Full or late term        95     210
21-24 months   PROBIT           BELARUS                        Preterm                  10     210
21-24 months   PROBIT           BELARUS                        Early term              105     210


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/b267da8f-117e-41f5-863d-07cb9fe8afcb/548822b3-ed05-4c67-a886-6a5fc917685d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b267da8f-117e-41f5-863d-07cb9fe8afcb/548822b3-ed05-4c67-a886-6a5fc917685d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b267da8f-117e-41f5-863d-07cb9fe8afcb/548822b3-ed05-4c67-a886-6a5fc917685d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.7439289    0.7118850   0.7759729
0-3 months     CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7557992    0.6912260   0.8203724
0-3 months     CMC-V-BCS-2002   INDIA                          Early term           NA                0.7688346    0.7257309   0.8119383
0-3 months     COHORTS          GUATEMALA                      Full or late term    NA                0.8217766    0.7962229   0.8473304
0-3 months     COHORTS          GUATEMALA                      Preterm              NA                0.7548499    0.7048758   0.8048239
0-3 months     COHORTS          GUATEMALA                      Early term           NA                0.7801684    0.7449654   0.8153713
0-3 months     COHORTS          INDIA                          Full or late term    NA                0.8178174    0.8014395   0.8341953
0-3 months     COHORTS          INDIA                          Preterm              NA                0.8249077    0.8029357   0.8468797
0-3 months     COHORTS          INDIA                          Early term           NA                0.8262776    0.8093866   0.8431687
0-3 months     IRC              INDIA                          Full or late term    NA                0.7611325    0.7355687   0.7866963
0-3 months     IRC              INDIA                          Preterm              NA                0.7501591    0.7007938   0.7995244
0-3 months     IRC              INDIA                          Early term           NA                0.7912864    0.7532460   0.8293268
0-3 months     JiVitA-3         BANGLADESH                     Full or late term    NA                0.8747917    0.8707799   0.8788035
0-3 months     JiVitA-3         BANGLADESH                     Preterm              NA                0.8604922    0.8540042   0.8669802
0-3 months     JiVitA-3         BANGLADESH                     Early term           NA                0.8749482    0.8693908   0.8805056
0-3 months     Keneba           GAMBIA                         Full or late term    NA                0.9317402    0.9128434   0.9506370
0-3 months     Keneba           GAMBIA                         Preterm              NA                0.9047726    0.8735621   0.9359830
0-3 months     Keneba           GAMBIA                         Early term           NA                0.9470028    0.9277903   0.9662153
0-3 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                0.9009784    0.8703535   0.9316032
0-3 months     NIH-Crypto       BANGLADESH                     Preterm              NA                0.8764749    0.8528549   0.9000948
0-3 months     NIH-Crypto       BANGLADESH                     Early term           NA                0.8825091    0.8595358   0.9054824
0-3 months     PROBIT           BELARUS                        Full or late term    NA                0.8299251    0.8191947   0.8406555
0-3 months     PROBIT           BELARUS                        Preterm              NA                0.8490092    0.8232782   0.8747401
0-3 months     PROBIT           BELARUS                        Early term           NA                0.8410356    0.8295820   0.8524891
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.9248893    0.9119524   0.9378261
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.9057901    0.8774915   0.9340887
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.9286059    0.9063090   0.9509028
3-6 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.4720182    0.4453481   0.4986883
3-6 months     CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4618842    0.4213123   0.5024560
3-6 months     CMC-V-BCS-2002   INDIA                          Early term           NA                0.4809782    0.4444908   0.5174656
3-6 months     COHORTS          GUATEMALA                      Full or late term    NA                0.4449842    0.4288550   0.4611134
3-6 months     COHORTS          GUATEMALA                      Preterm              NA                0.4733571    0.4417959   0.5049183
3-6 months     COHORTS          GUATEMALA                      Early term           NA                0.4773694    0.4550493   0.4996894
3-6 months     COHORTS          INDIA                          Full or late term    NA                0.4782386    0.4648233   0.4916538
3-6 months     COHORTS          INDIA                          Preterm              NA                0.5064696    0.4852984   0.5276407
3-6 months     COHORTS          INDIA                          Early term           NA                0.4961521    0.4812349   0.5110694
3-6 months     IRC              INDIA                          Full or late term    NA                0.4642692    0.4415248   0.4870135
3-6 months     IRC              INDIA                          Preterm              NA                0.4481465    0.3801771   0.5161160
3-6 months     IRC              INDIA                          Early term           NA                0.4679930    0.4369557   0.4990304
3-6 months     JiVitA-3         BANGLADESH                     Full or late term    NA                0.4317281    0.4276783   0.4357779
3-6 months     JiVitA-3         BANGLADESH                     Preterm              NA                0.4639061    0.4574543   0.4703579
3-6 months     JiVitA-3         BANGLADESH                     Early term           NA                0.4464647    0.4410430   0.4518865
3-6 months     Keneba           GAMBIA                         Full or late term    NA                0.4308034    0.4139199   0.4476868
3-6 months     Keneba           GAMBIA                         Preterm              NA                0.4545307    0.4292197   0.4798416
3-6 months     Keneba           GAMBIA                         Early term           NA                0.4573209    0.4399388   0.4747030
3-6 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                0.5088634    0.4821732   0.5355535
3-6 months     NIH-Crypto       BANGLADESH                     Preterm              NA                0.5096916    0.4919428   0.5274404
3-6 months     NIH-Crypto       BANGLADESH                     Early term           NA                0.4829693    0.4667321   0.4992064
3-6 months     PROBIT           BELARUS                        Full or late term    NA                0.6565742    0.6485329   0.6646156
3-6 months     PROBIT           BELARUS                        Preterm              NA                0.6869994    0.6599180   0.7140807
3-6 months     PROBIT           BELARUS                        Early term           NA                0.6740037    0.6636574   0.6843501
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.4208509    0.4092440   0.4324578
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.4296766    0.4086093   0.4507440
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.4147003    0.3962086   0.4331921
6-9 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2675310    0.2447497   0.2903123
6-9 months     CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2780781    0.2400267   0.3161294
6-9 months     CMC-V-BCS-2002   INDIA                          Early term           NA                0.2359086    0.2093135   0.2625037
6-9 months     COHORTS          GUATEMALA                      Full or late term    NA                0.2209051    0.2058141   0.2359961
6-9 months     COHORTS          GUATEMALA                      Preterm              NA                0.2362470    0.2100898   0.2624042
6-9 months     COHORTS          GUATEMALA                      Early term           NA                0.2118637    0.1906228   0.2331046
6-9 months     COHORTS          INDIA                          Full or late term    NA                0.2796534    0.2662177   0.2930890
6-9 months     COHORTS          INDIA                          Preterm              NA                0.2621194    0.2434496   0.2807892
6-9 months     COHORTS          INDIA                          Early term           NA                0.2728414    0.2574050   0.2882779
6-9 months     IRC              INDIA                          Full or late term    NA                0.2657625    0.2480052   0.2835198
6-9 months     IRC              INDIA                          Preterm              NA                0.2515539    0.2051413   0.2979664
6-9 months     IRC              INDIA                          Early term           NA                0.2562356    0.2283096   0.2841617
6-9 months     Keneba           GAMBIA                         Full or late term    NA                0.1977813    0.1760859   0.2194768
6-9 months     Keneba           GAMBIA                         Preterm              NA                0.2242044    0.1907310   0.2576778
6-9 months     Keneba           GAMBIA                         Early term           NA                0.2011423    0.1752454   0.2270392
6-9 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                0.2430424    0.2181480   0.2679368
6-9 months     NIH-Crypto       BANGLADESH                     Preterm              NA                0.2812102    0.2642961   0.2981244
6-9 months     NIH-Crypto       BANGLADESH                     Early term           NA                0.2685184    0.2527987   0.2842380
6-9 months     PROBIT           BELARUS                        Full or late term    NA                0.4691473    0.4593915   0.4789032
6-9 months     PROBIT           BELARUS                        Preterm              NA                0.4874555    0.4662664   0.5086445
6-9 months     PROBIT           BELARUS                        Early term           NA                0.4777296    0.4679993   0.4874598
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2562457    0.2450219   0.2674695
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2471111    0.2217762   0.2724459
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2651763    0.2468445   0.2835081
9-12 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2128729    0.1889826   0.2367632
9-12 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1870957    0.1389150   0.2352764
9-12 months    CMC-V-BCS-2002   INDIA                          Early term           NA                0.2233658    0.1947235   0.2520081
9-12 months    COHORTS          GUATEMALA                      Full or late term    NA                0.1528533    0.1395181   0.1661884
9-12 months    COHORTS          GUATEMALA                      Preterm              NA                0.1540200    0.1271806   0.1808593
9-12 months    COHORTS          GUATEMALA                      Early term           NA                0.1462006    0.1277909   0.1646102
9-12 months    COHORTS          INDIA                          Full or late term    NA                0.2075593    0.1936432   0.2214753
9-12 months    COHORTS          INDIA                          Preterm              NA                0.2321943    0.2110509   0.2533376
9-12 months    COHORTS          INDIA                          Early term           NA                0.2419507    0.2251093   0.2587922
9-12 months    IRC              INDIA                          Full or late term    NA                0.2189932    0.2009187   0.2370677
9-12 months    IRC              INDIA                          Preterm              NA                0.1893600    0.1344458   0.2442743
9-12 months    IRC              INDIA                          Early term           NA                0.2114609    0.1846886   0.2382333
9-12 months    Keneba           GAMBIA                         Full or late term    NA                0.1676116    0.1477399   0.1874833
9-12 months    Keneba           GAMBIA                         Preterm              NA                0.1752110    0.1467949   0.2036270
9-12 months    Keneba           GAMBIA                         Early term           NA                0.1617288    0.1396593   0.1837982
9-12 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                0.1906623    0.1626847   0.2186400
9-12 months    NIH-Crypto       BANGLADESH                     Preterm              NA                0.2021633    0.1859374   0.2183893
9-12 months    NIH-Crypto       BANGLADESH                     Early term           NA                0.1977050    0.1829610   0.2124491
9-12 months    PROBIT           BELARUS                        Full or late term    NA                0.3664657    0.3515748   0.3813565
9-12 months    PROBIT           BELARUS                        Preterm              NA                0.3971474    0.3758134   0.4184813
9-12 months    PROBIT           BELARUS                        Early term           NA                0.3646602    0.3472081   0.3821123
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2095874    0.1972088   0.2219659
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2317177    0.2037069   0.2597284
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1766936    0.1535971   0.1997901
12-15 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1528264    0.1341329   0.1715199
12-15 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1432474    0.1081217   0.1783731
12-15 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.1517459    0.1265215   0.1769704
12-15 months   COHORTS          GUATEMALA                      Full or late term    NA                0.1498444    0.1357938   0.1638950
12-15 months   COHORTS          GUATEMALA                      Preterm              NA                0.1442423    0.1142010   0.1742836
12-15 months   COHORTS          GUATEMALA                      Early term           NA                0.1577485    0.1358105   0.1796865
12-15 months   IRC              INDIA                          Full or late term    NA                0.1774584    0.1613081   0.1936087
12-15 months   IRC              INDIA                          Preterm              NA                0.1725319    0.1236728   0.2213911
12-15 months   IRC              INDIA                          Early term           NA                0.1899605    0.1656276   0.2142935
12-15 months   Keneba           GAMBIA                         Full or late term    NA                0.1876947    0.1716776   0.2037119
12-15 months   Keneba           GAMBIA                         Preterm              NA                0.1849761    0.1577347   0.2122174
12-15 months   Keneba           GAMBIA                         Early term           NA                0.1757025    0.1563901   0.1950148
12-15 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.1767885    0.1482380   0.2053390
12-15 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.1527533    0.1357815   0.1697251
12-15 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.1673132    0.1528259   0.1818005
12-15 months   PROBIT           BELARUS                        Full or late term    NA                0.2507260    0.1471248   0.3543272
12-15 months   PROBIT           BELARUS                        Preterm              NA                0.2227336    0.0515286   0.3939387
12-15 months   PROBIT           BELARUS                        Early term           NA                0.1929344    0.1350283   0.2508405
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1683707    0.1539946   0.1827468
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1767062    0.1454192   0.2079932
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1892603    0.1636373   0.2148833
15-18 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1641257    0.1437365   0.1845148
15-18 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1451002    0.1080538   0.1821466
15-18 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.1316075    0.1084574   0.1547576
15-18 months   COHORTS          GUATEMALA                      Full or late term    NA                0.1367106    0.1191226   0.1542985
15-18 months   COHORTS          GUATEMALA                      Preterm              NA                0.1353215    0.1047991   0.1658440
15-18 months   COHORTS          GUATEMALA                      Early term           NA                0.1457889    0.1210027   0.1705751
15-18 months   IRC              INDIA                          Full or late term    NA                0.1634894    0.1462794   0.1806993
15-18 months   IRC              INDIA                          Preterm              NA                0.1691480    0.1151059   0.2231902
15-18 months   IRC              INDIA                          Early term           NA                0.1548468    0.1294113   0.1802823
15-18 months   Keneba           GAMBIA                         Full or late term    NA                0.1505124    0.1338811   0.1671438
15-18 months   Keneba           GAMBIA                         Preterm              NA                0.1658333    0.1366264   0.1950403
15-18 months   Keneba           GAMBIA                         Early term           NA                0.1759198    0.1550178   0.1968217
15-18 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.1622301    0.1372769   0.1871833
15-18 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.1634983    0.1475556   0.1794411
15-18 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.1588116    0.1421257   0.1754975
15-18 months   PROBIT           BELARUS                        Full or late term    NA                0.2309251    0.1589624   0.3028877
15-18 months   PROBIT           BELARUS                        Preterm              NA                0.2565387    0.1428497   0.3702277
15-18 months   PROBIT           BELARUS                        Early term           NA                0.2146362    0.1178041   0.3114683
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1723705    0.1542300   0.1905110
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1667549    0.1282738   0.2052359
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1658109    0.1341013   0.1975205
18-21 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1324870    0.1101361   0.1548379
18-21 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1476214    0.1196953   0.1755476
18-21 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.1407058    0.1099961   0.1714156
18-21 months   COHORTS          GUATEMALA                      Full or late term    NA                0.1582123    0.1418853   0.1745393
18-21 months   COHORTS          GUATEMALA                      Preterm              NA                0.1940443    0.1653184   0.2227702
18-21 months   COHORTS          GUATEMALA                      Early term           NA                0.1550603    0.1317546   0.1783660
18-21 months   IRC              INDIA                          Full or late term    NA                0.1573405    0.1399407   0.1747403
18-21 months   IRC              INDIA                          Preterm              NA                0.1238566    0.0877537   0.1599596
18-21 months   IRC              INDIA                          Early term           NA                0.1789630    0.1525278   0.2053982
18-21 months   Keneba           GAMBIA                         Full or late term    NA                0.1468806    0.1294879   0.1642733
18-21 months   Keneba           GAMBIA                         Preterm              NA                0.1688552    0.1377341   0.1999762
18-21 months   Keneba           GAMBIA                         Early term           NA                0.1567815    0.1361678   0.1773952
18-21 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.1358309    0.1119008   0.1597609
18-21 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.1379973    0.1191270   0.1568676
18-21 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.1492247    0.1342160   0.1642333
18-21 months   PROBIT           BELARUS                        Full or late term    NA                0.1977681   -0.0325302   0.4280664
18-21 months   PROBIT           BELARUS                        Preterm              NA                0.2815492    0.1475808   0.4155175
18-21 months   PROBIT           BELARUS                        Early term           NA                0.1519338   -0.0301025   0.3339702
21-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1480669    0.1282114   0.1679224
21-24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1475022    0.1110456   0.1839587
21-24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.1484565    0.1224791   0.1744339
21-24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.1815710    0.1657854   0.1973566
21-24 months   COHORTS          GUATEMALA                      Preterm              NA                0.1753888    0.1465233   0.2042544
21-24 months   COHORTS          GUATEMALA                      Early term           NA                0.2006060    0.1785298   0.2226821
21-24 months   IRC              INDIA                          Full or late term    NA                0.1787104    0.1606817   0.1967390
21-24 months   IRC              INDIA                          Preterm              NA                0.1723876    0.1327726   0.2120026
21-24 months   IRC              INDIA                          Early term           NA                0.1757060    0.1475296   0.2038823
21-24 months   Keneba           GAMBIA                         Full or late term    NA                0.1786726    0.1613733   0.1959719
21-24 months   Keneba           GAMBIA                         Preterm              NA                0.1397813    0.1034751   0.1760875
21-24 months   Keneba           GAMBIA                         Early term           NA                0.1707239    0.1502399   0.1912079
21-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.1759717    0.1438050   0.2081384
21-24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.1708266    0.1513432   0.1903100
21-24 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.1784222    0.1593717   0.1974728
21-24 months   PROBIT           BELARUS                        Full or late term    NA                0.2079093    0.0964822   0.3193364
21-24 months   PROBIT           BELARUS                        Preterm              NA                0.0888306    0.0244420   0.1532191
21-24 months   PROBIT           BELARUS                        Early term           NA                0.1536732    0.0048117   0.3025347


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.7516622   0.7274683   0.7758562
0-3 months     COHORTS          GUATEMALA                      NA                   NA                0.7995346   0.7803032   0.8187661
0-3 months     COHORTS          INDIA                          NA                   NA                0.8222706   0.8118654   0.8326757
0-3 months     IRC              INDIA                          NA                   NA                0.7674699   0.7476936   0.7872461
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8719391   0.8687240   0.8751543
0-3 months     Keneba           GAMBIA                         NA                   NA                0.9332856   0.9207924   0.9457788
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROBIT           BELARUS                        NA                   NA                0.8356412   0.8250517   0.8462307
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9227558   0.9123181   0.9331936
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.4726680   0.4532451   0.4920908
3-6 months     COHORTS          GUATEMALA                      NA                   NA                0.4592328   0.4470664   0.4713993
3-6 months     COHORTS          INDIA                          NA                   NA                0.4908167   0.4817024   0.4999310
3-6 months     IRC              INDIA                          NA                   NA                0.4634725   0.4453856   0.4815594
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4418710   0.4388482   0.4448938
3-6 months     Keneba           GAMBIA                         NA                   NA                0.4444046   0.4333662   0.4554430
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROBIT           BELARUS                        NA                   NA                0.6655962   0.6576122   0.6735801
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4207878   0.4118531   0.4297226
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.2612765   0.2448836   0.2776695
6-9 months     COHORTS          GUATEMALA                      NA                   NA                0.2207011   0.2095302   0.2318720
6-9 months     COHORTS          INDIA                          NA                   NA                0.2732225   0.2643008   0.2821442
6-9 months     IRC              INDIA                          NA                   NA                0.2618384   0.2475527   0.2761242
6-9 months     Keneba           GAMBIA                         NA                   NA                0.2037343   0.1887640   0.2187046
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROBIT           BELARUS                        NA                   NA                0.4737281   0.4649839   0.4824723
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2569490   0.2479670   0.2659309
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2117725   0.1941370   0.2294079
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.1511189   0.1410819   0.1611559
9-12 months    COHORTS          INDIA                          NA                   NA                0.2252960   0.2156318   0.2349602
9-12 months    IRC              INDIA                          NA                   NA                0.2138556   0.1991647   0.2285465
9-12 months    Keneba           GAMBIA                         NA                   NA                0.1669979   0.1538507   0.1801450
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROBIT           BELARUS                        NA                   NA                0.3666836   0.3521958   0.3811713
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2052569   0.1950037   0.2155101
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1511938   0.1372136   0.1651740
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.1510933   0.1400207   0.1621659
12-15 months   IRC              INDIA                          NA                   NA                0.1801082   0.1669568   0.1932596
12-15 months   Keneba           GAMBIA                         NA                   NA                0.1829526   0.1717037   0.1942014
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROBIT           BELARUS                        NA                   NA                0.2225230   0.1483776   0.2966684
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1745260   0.1628296   0.1862225
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1536175   0.1387798   0.1684552
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.1389373   0.1259292   0.1519454
15-18 months   IRC              INDIA                          NA                   NA                0.1618564   0.1478915   0.1758213
15-18 months   Keneba           GAMBIA                         NA                   NA                0.1615601   0.1496308   0.1734893
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROBIT           BELARUS                        NA                   NA                0.2243786   0.1636115   0.2851457
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1700614   0.1554225   0.1847002
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1368539   0.1208612   0.1528466
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.1634751   0.1512955   0.1756548
18-21 months   IRC              INDIA                          NA                   NA                0.1595447   0.1458583   0.1732311
18-21 months   Keneba           GAMBIA                         NA                   NA                0.1536348   0.1413979   0.1658718
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROBIT           BELARUS                        NA                   NA                0.1781603   0.0230043   0.3333163
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1480739   0.1333884   0.1627594
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1857518   0.1739934   0.1975101
21-24 months   IRC              INDIA                          NA                   NA                0.1772806   0.1630651   0.1914962
21-24 months   Keneba           GAMBIA                         NA                   NA                0.1701004   0.1575973   0.1826036
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROBIT           BELARUS                        NA                   NA                0.1751208   0.0912401   0.2590016


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0118703   -0.0602165    0.0839571
0-3 months     CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0249057   -0.0288042    0.0786155
0-3 months     COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0669268   -0.1230552   -0.0107984
0-3 months     COHORTS          GUATEMALA                      Early term           Full or late term    -0.0416082   -0.0851081    0.0018916
0-3 months     COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          Preterm              Full or late term     0.0070903   -0.0203142    0.0344948
0-3 months     COHORTS          INDIA                          Early term           Full or late term     0.0084602   -0.0150673    0.0319877
0-3 months     IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          Preterm              Full or late term    -0.0109734   -0.0665651    0.0446183
0-3 months     IRC              INDIA                          Early term           Full or late term     0.0301539   -0.0156781    0.0759860
0-3 months     JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.0142995   -0.0215162   -0.0070829
0-3 months     JiVitA-3         BANGLADESH                     Early term           Full or late term     0.0001565   -0.0062382    0.0065511
0-3 months     Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         Preterm              Full or late term    -0.0269677   -0.0634530    0.0095177
0-3 months     Keneba           GAMBIA                         Early term           Full or late term     0.0152626   -0.0116857    0.0422109
0-3 months     NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.0245035   -0.0631788    0.0141718
0-3 months     NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.0184693   -0.0567531    0.0198146
0-3 months     PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        Preterm              Full or late term     0.0190841   -0.0049511    0.0431193
0-3 months     PROBIT           BELARUS                        Early term           Full or late term     0.0111105    0.0039239    0.0182970
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.0190992   -0.0502146    0.0120163
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0037166   -0.0220615    0.0294948
3-6 months     CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0101341   -0.0586868    0.0384187
3-6 months     CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0089600   -0.0362354    0.0541553
3-6 months     COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Preterm              Full or late term     0.0283729   -0.0070709    0.0638167
3-6 months     COHORTS          GUATEMALA                      Early term           Full or late term     0.0323851    0.0048473    0.0599230
3-6 months     COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          Preterm              Full or late term     0.0282310    0.0031674    0.0532946
3-6 months     COHORTS          INDIA                          Early term           Full or late term     0.0179136   -0.0021487    0.0379758
3-6 months     IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          Preterm              Full or late term    -0.0161226   -0.0877966    0.0555513
3-6 months     IRC              INDIA                          Early term           Full or late term     0.0037239   -0.0347550    0.0422028
3-6 months     JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     Preterm              Full or late term     0.0321780    0.0248405    0.0395155
3-6 months     JiVitA-3         BANGLADESH                     Early term           Full or late term     0.0147366    0.0080543    0.0214189
3-6 months     Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         Preterm              Full or late term     0.0237273   -0.0066979    0.0541526
3-6 months     Keneba           GAMBIA                         Early term           Full or late term     0.0265175    0.0022856    0.0507495
3-6 months     NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0008282   -0.0312246    0.0328811
3-6 months     NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.0258941   -0.0571353    0.0053471
3-6 months     PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        Preterm              Full or late term     0.0304251    0.0028902    0.0579601
3-6 months     PROBIT           BELARUS                        Early term           Full or late term     0.0174295    0.0083583    0.0265007
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0088257   -0.0152274    0.0328789
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0061506   -0.0279832    0.0156821
6-9 months     CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0105471   -0.0338026    0.0548968
6-9 months     CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0316224   -0.0666407    0.0033960
6-9 months     COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Preterm              Full or late term     0.0153419   -0.0148565    0.0455402
6-9 months     COHORTS          GUATEMALA                      Early term           Full or late term    -0.0090414   -0.0350974    0.0170146
6-9 months     COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          Preterm              Full or late term    -0.0175340   -0.0405357    0.0054677
6-9 months     COHORTS          INDIA                          Early term           Full or late term    -0.0068119   -0.0272766    0.0136527
6-9 months     IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          Preterm              Full or late term    -0.0142087   -0.0639022    0.0354848
6-9 months     IRC              INDIA                          Early term           Full or late term    -0.0095269   -0.0426205    0.0235667
6-9 months     Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         Preterm              Full or late term     0.0264231   -0.0134662    0.0663124
6-9 months     Keneba           GAMBIA                         Early term           Full or late term     0.0033610   -0.0304228    0.0371447
6-9 months     NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0381678    0.0080710    0.0682646
6-9 months     NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0254759   -0.0039662    0.0549181
6-9 months     PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        Preterm              Full or late term     0.0183082   -0.0033162    0.0399325
6-9 months     PROBIT           BELARUS                        Early term           Full or late term     0.0085823    0.0003292    0.0168354
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.0091346   -0.0368444    0.0185751
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0089306   -0.0125642    0.0304254
9-12 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0257772   -0.0795557    0.0280013
9-12 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0104929   -0.0268050    0.0477907
9-12 months    COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Preterm              Full or late term     0.0011667   -0.0288029    0.0311363
9-12 months    COHORTS          GUATEMALA                      Early term           Full or late term    -0.0066527   -0.0293846    0.0160792
9-12 months    COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          Preterm              Full or late term     0.0246350   -0.0006770    0.0499470
9-12 months    COHORTS          INDIA                          Early term           Full or late term     0.0343915    0.0125445    0.0562385
9-12 months    IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          Preterm              Full or late term    -0.0296332   -0.0874455    0.0281792
9-12 months    IRC              INDIA                          Early term           Full or late term    -0.0075322   -0.0398347    0.0247702
9-12 months    Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         Preterm              Full or late term     0.0075994   -0.0270756    0.0422743
9-12 months    Keneba           GAMBIA                         Early term           Full or late term    -0.0058828   -0.0355804    0.0238147
9-12 months    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0115010   -0.0208414    0.0438433
9-12 months    NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0070427   -0.0245822    0.0386676
9-12 months    PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        Preterm              Full or late term     0.0306817    0.0128321    0.0485313
9-12 months    PROBIT           BELARUS                        Early term           Full or late term    -0.0018055   -0.0161506    0.0125397
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0221303   -0.0084937    0.0527543
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0328937   -0.0590983   -0.0066892
12-15 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0095790   -0.0493692    0.0302113
12-15 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0010805   -0.0324767    0.0303158
12-15 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0056021   -0.0387668    0.0275626
12-15 months   COHORTS          GUATEMALA                      Early term           Full or late term     0.0079041   -0.0181477    0.0339558
12-15 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          Preterm              Full or late term    -0.0049265   -0.0563857    0.0465327
12-15 months   IRC              INDIA                          Early term           Full or late term     0.0125021   -0.0167028    0.0417070
12-15 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.0027186   -0.0343199    0.0288826
12-15 months   Keneba           GAMBIA                         Early term           Full or late term    -0.0119923   -0.0370824    0.0130979
12-15 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.0240352   -0.0572493    0.0091789
12-15 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.0094753   -0.0414912    0.0225405
12-15 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        Preterm              Full or late term    -0.0279924   -0.2034389    0.1474542
12-15 months   PROBIT           BELARUS                        Early term           Full or late term    -0.0577916   -0.1443411    0.0287579
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0083354   -0.0260963    0.0427672
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0208896   -0.0084909    0.0502700
15-18 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0190254   -0.0613120    0.0232611
15-18 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0325182   -0.0633669   -0.0016695
15-18 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0013890   -0.0366162    0.0338382
15-18 months   COHORTS          GUATEMALA                      Early term           Full or late term     0.0090784   -0.0213139    0.0394707
15-18 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          Preterm              Full or late term     0.0056587   -0.0510576    0.0623749
15-18 months   IRC              INDIA                          Early term           Full or late term    -0.0086425   -0.0393532    0.0220681
15-18 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         Preterm              Full or late term     0.0153209   -0.0182894    0.0489311
15-18 months   Keneba           GAMBIA                         Early term           Full or late term     0.0254073   -0.0013040    0.0521186
15-18 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0012682   -0.0283432    0.0308796
15-18 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.0034185   -0.0334365    0.0265995
15-18 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        Preterm              Full or late term     0.0256136   -0.1024127    0.1536399
15-18 months   PROBIT           BELARUS                        Early term           Full or late term    -0.0162889   -0.1290347    0.0964570
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.0056156   -0.0481581    0.0369270
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0065596   -0.0430914    0.0299723
18-21 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0151344   -0.0206347    0.0509036
18-21 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0082189   -0.0297634    0.0462011
18-21 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Preterm              Full or late term     0.0358320    0.0027904    0.0688736
18-21 months   COHORTS          GUATEMALA                      Early term           Full or late term    -0.0031520   -0.0316077    0.0253036
18-21 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          Preterm              Full or late term    -0.0334838   -0.0735610    0.0065933
18-21 months   IRC              INDIA                          Early term           Full or late term     0.0216225   -0.0100251    0.0532702
18-21 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         Preterm              Full or late term     0.0219745   -0.0136769    0.0576260
18-21 months   Keneba           GAMBIA                         Early term           Full or late term     0.0099009   -0.0170700    0.0368718
18-21 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0021665   -0.0283087    0.0326416
18-21 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0133938   -0.0148535    0.0416411
18-21 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        Preterm              Full or late term     0.0837810   -0.2000677    0.3676298
18-21 months   PROBIT           BELARUS                        Early term           Full or late term    -0.0458343   -0.3187079    0.2270392
21-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0005648   -0.0420777    0.0409482
21-24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0003895   -0.0323070    0.0330861
21-24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0061822   -0.0390821    0.0267178
21-24 months   COHORTS          GUATEMALA                      Early term           Full or late term     0.0190350   -0.0081043    0.0461743
21-24 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          Preterm              Full or late term    -0.0063228   -0.0498473    0.0372017
21-24 months   IRC              INDIA                          Early term           Full or late term    -0.0030044   -0.0364549    0.0304462
21-24 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.0388913   -0.0791082    0.0013257
21-24 months   Keneba           GAMBIA                         Early term           Full or late term    -0.0079487   -0.0347602    0.0188629
21-24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.0051451   -0.0427523    0.0324621
21-24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0024506   -0.0349342    0.0398353
21-24 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        Preterm              Full or late term    -0.1190787   -0.2475797    0.0094223
21-24 months   PROBIT           BELARUS                        Early term           Full or late term    -0.0542361   -0.2531721    0.1446999


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0077333   -0.0112813    0.0267479
0-3 months     COHORTS          GUATEMALA                      Full or late term    NA                -0.0222420   -0.0392882   -0.0051958
0-3 months     COHORTS          INDIA                          Full or late term    NA                 0.0044532   -0.0074503    0.0163566
0-3 months     IRC              INDIA                          Full or late term    NA                 0.0063374   -0.0078374    0.0205122
0-3 months     JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0028526   -0.0054589   -0.0002463
0-3 months     Keneba           GAMBIA                         Full or late term    NA                 0.0015454   -0.0112100    0.0143007
0-3 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0164564   -0.0434818    0.0105690
0-3 months     PROBIT           BELARUS                        Full or late term    NA                 0.0057161    0.0020492    0.0093830
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0021334   -0.0105025    0.0062357
3-6 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0006497   -0.0144947    0.0157942
3-6 months     COHORTS          GUATEMALA                      Full or late term    NA                 0.0142486    0.0029457    0.0255515
3-6 months     COHORTS          INDIA                          Full or late term    NA                 0.0125781    0.0021713    0.0229849
3-6 months     IRC              INDIA                          Full or late term    NA                -0.0007967   -0.0142821    0.0126887
3-6 months     JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0101429    0.0074938    0.0127920
3-6 months     Keneba           GAMBIA                         Full or late term    NA                 0.0136012    0.0018518    0.0253507
3-6 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0108090   -0.0337505    0.0121326
3-6 months     PROBIT           BELARUS                        Full or late term    NA                 0.0090219    0.0041623    0.0138816
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0000631   -0.0069960    0.0068699
6-9 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0062544   -0.0186932    0.0061843
6-9 months     COHORTS          GUATEMALA                      Full or late term    NA                -0.0002040   -0.0103604    0.0099524
6-9 months     COHORTS          INDIA                          Full or late term    NA                -0.0064308   -0.0168287    0.0039670
6-9 months     IRC              INDIA                          Full or late term    NA                -0.0039241   -0.0146547    0.0068065
6-9 months     Keneba           GAMBIA                         Full or late term    NA                 0.0059530   -0.0104699    0.0223759
6-9 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0244673    0.0028688    0.0460658
6-9 months     PROBIT           BELARUS                        Full or late term    NA                 0.0045808    0.0003167    0.0088449
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0007033   -0.0063863    0.0077928
9-12 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0011005   -0.0148084    0.0126075
9-12 months    COHORTS          GUATEMALA                      Full or late term    NA                -0.0017344   -0.0107826    0.0073138
9-12 months    COHORTS          INDIA                          Full or late term    NA                 0.0177367    0.0065870    0.0288865
9-12 months    IRC              INDIA                          Full or late term    NA                -0.0051376   -0.0162979    0.0060228
9-12 months    Keneba           GAMBIA                         Full or late term    NA                -0.0006137   -0.0146973    0.0134698
9-12 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0071825   -0.0167387    0.0311038
9-12 months    PROBIT           BELARUS                        Full or late term    NA                 0.0002179   -0.0067429    0.0071787
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0043305   -0.0122255    0.0035645
12-15 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0016326   -0.0122020    0.0089368
12-15 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0012489   -0.0085601    0.0110579
12-15 months   IRC              INDIA                          Full or late term    NA                 0.0026498   -0.0074914    0.0127909
12-15 months   Keneba           GAMBIA                         Full or late term    NA                -0.0047422   -0.0164383    0.0069539
12-15 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0127282   -0.0371868    0.0117304
12-15 months   PROBIT           BELARUS                        Full or late term    NA                -0.0282030   -0.0704240    0.0140181
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0061553   -0.0031054    0.0154160
15-18 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0105081   -0.0217103    0.0006941
15-18 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0022267   -0.0090159    0.0134693
15-18 months   IRC              INDIA                          Full or late term    NA                -0.0016329   -0.0121398    0.0088740
15-18 months   Keneba           GAMBIA                         Full or late term    NA                 0.0110476   -0.0007439    0.0228391
15-18 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0010328   -0.0235090    0.0214434
15-18 months   PROBIT           BELARUS                        Full or late term    NA                -0.0065465   -0.0593142    0.0462211
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0023091   -0.0136507    0.0090324
18-21 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0043669   -0.0082279    0.0169617
18-21 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0052628   -0.0054810    0.0160066
18-21 months   IRC              INDIA                          Full or late term    NA                 0.0022042   -0.0075889    0.0119973
18-21 months   Keneba           GAMBIA                         Full or late term    NA                 0.0067542   -0.0055359    0.0190443
18-21 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0068301   -0.0156548    0.0293149
18-21 months   PROBIT           BELARUS                        Full or late term    NA                -0.0196078   -0.1627807    0.1235650
21-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0000070   -0.0113357    0.0113497
21-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0041808   -0.0061957    0.0145572
21-24 months   IRC              INDIA                          Full or late term    NA                -0.0014297   -0.0119522    0.0090927
21-24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0085722   -0.0213785    0.0042342
21-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0009216   -0.0306167    0.0287735
21-24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0327885   -0.1318305    0.0662536
