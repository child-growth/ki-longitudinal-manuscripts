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

**Outcome Variable:** y_rate_haz

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
0-3 months     CMC-V-BCS-2002   INDIA                          Full or late term        54      87
0-3 months     CMC-V-BCS-2002   INDIA                          Preterm                  11      87
0-3 months     CMC-V-BCS-2002   INDIA                          Early term               22      87
0-3 months     COHORTS          GUATEMALA                      Full or late term       304     551
0-3 months     COHORTS          GUATEMALA                      Preterm                  87     551
0-3 months     COHORTS          GUATEMALA                      Early term              160     551
0-3 months     COHORTS          INDIA                          Full or late term       561    1274
0-3 months     COHORTS          INDIA                          Preterm                 279    1274
0-3 months     COHORTS          INDIA                          Early term              434    1274
0-3 months     IRC              INDIA                          Full or late term       230     359
0-3 months     IRC              INDIA                          Preterm                  36     359
0-3 months     IRC              INDIA                          Early term               93     359
0-3 months     Keneba           GAMBIA                         Full or late term       598    1232
0-3 months     Keneba           GAMBIA                         Preterm                 183    1232
0-3 months     Keneba           GAMBIA                         Early term              451    1232
0-3 months     NIH-Crypto       BANGLADESH                     Full or late term       162     721
0-3 months     NIH-Crypto       BANGLADESH                     Preterm                 252     721
0-3 months     NIH-Crypto       BANGLADESH                     Early term              307     721
0-3 months     PROBIT           BELARUS                        Full or late term      7824   15323
0-3 months     PROBIT           BELARUS                        Preterm                 537   15323
0-3 months     PROBIT           BELARUS                        Early term             6962   15323
3-6 months     CMC-V-BCS-2002   INDIA                          Full or late term       174     288
3-6 months     CMC-V-BCS-2002   INDIA                          Preterm                  44     288
3-6 months     CMC-V-BCS-2002   INDIA                          Early term               70     288
3-6 months     COHORTS          GUATEMALA                      Full or late term       338     626
3-6 months     COHORTS          GUATEMALA                      Preterm                 106     626
3-6 months     COHORTS          GUATEMALA                      Early term              182     626
3-6 months     COHORTS          INDIA                          Full or late term       554    1280
3-6 months     COHORTS          INDIA                          Preterm                 289    1280
3-6 months     COHORTS          INDIA                          Early term              437    1280
3-6 months     IRC              INDIA                          Full or late term       242     379
3-6 months     IRC              INDIA                          Preterm                  42     379
3-6 months     IRC              INDIA                          Early term               95     379
3-6 months     Keneba           GAMBIA                         Full or late term       447     949
3-6 months     Keneba           GAMBIA                         Preterm                 140     949
3-6 months     Keneba           GAMBIA                         Early term              362     949
3-6 months     NIH-Crypto       BANGLADESH                     Full or late term       152     695
3-6 months     NIH-Crypto       BANGLADESH                     Preterm                 246     695
3-6 months     NIH-Crypto       BANGLADESH                     Early term              297     695
3-6 months     PROBIT           BELARUS                        Full or late term      6762   13308
3-6 months     PROBIT           BELARUS                        Preterm                 463   13308
3-6 months     PROBIT           BELARUS                        Early term             6083   13308
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       964    1563
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 239    1563
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              360    1563
6-9 months     CMC-V-BCS-2002   INDIA                          Full or late term       180     293
6-9 months     CMC-V-BCS-2002   INDIA                          Preterm                  43     293
6-9 months     CMC-V-BCS-2002   INDIA                          Early term               70     293
6-9 months     COHORTS          GUATEMALA                      Full or late term       340     620
6-9 months     COHORTS          GUATEMALA                      Preterm                 100     620
6-9 months     COHORTS          GUATEMALA                      Early term              180     620
6-9 months     COHORTS          INDIA                          Full or late term       507    1194
6-9 months     COHORTS          INDIA                          Preterm                 276    1194
6-9 months     COHORTS          INDIA                          Early term              411    1194
6-9 months     IRC              INDIA                          Full or late term       249     388
6-9 months     IRC              INDIA                          Preterm                  42     388
6-9 months     IRC              INDIA                          Early term               97     388
6-9 months     Keneba           GAMBIA                         Full or late term       261     578
6-9 months     Keneba           GAMBIA                         Preterm                 103     578
6-9 months     Keneba           GAMBIA                         Early term              214     578
6-9 months     NIH-Crypto       BANGLADESH                     Full or late term       147     688
6-9 months     NIH-Crypto       BANGLADESH                     Preterm                 241     688
6-9 months     NIH-Crypto       BANGLADESH                     Early term              300     688
6-9 months     PROBIT           BELARUS                        Full or late term      6276   12426
6-9 months     PROBIT           BELARUS                        Preterm                 426   12426
6-9 months     PROBIT           BELARUS                        Early term             5724   12426
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       863    1393
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 207    1393
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              323    1393
9-12 months    CMC-V-BCS-2002   INDIA                          Full or late term       179     296
9-12 months    CMC-V-BCS-2002   INDIA                          Preterm                  44     296
9-12 months    CMC-V-BCS-2002   INDIA                          Early term               73     296
9-12 months    COHORTS          GUATEMALA                      Full or late term       372     669
9-12 months    COHORTS          GUATEMALA                      Preterm                 106     669
9-12 months    COHORTS          GUATEMALA                      Early term              191     669
9-12 months    COHORTS          INDIA                          Full or late term       453    1072
9-12 months    COHORTS          INDIA                          Preterm                 242    1072
9-12 months    COHORTS          INDIA                          Early term              377    1072
9-12 months    IRC              INDIA                          Full or late term       244     381
9-12 months    IRC              INDIA                          Preterm                  42     381
9-12 months    IRC              INDIA                          Early term               95     381
9-12 months    Keneba           GAMBIA                         Full or late term       268     573
9-12 months    Keneba           GAMBIA                         Preterm                 107     573
9-12 months    Keneba           GAMBIA                         Early term              198     573
9-12 months    NIH-Crypto       BANGLADESH                     Full or late term       137     674
9-12 months    NIH-Crypto       BANGLADESH                     Preterm                 239     674
9-12 months    NIH-Crypto       BANGLADESH                     Early term              298     674
9-12 months    PROBIT           BELARUS                        Full or late term      6408   12681
9-12 months    PROBIT           BELARUS                        Preterm                 434   12681
9-12 months    PROBIT           BELARUS                        Early term             5839   12681
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       653    1021
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 139    1021
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              229    1021
12-15 months   CMC-V-BCS-2002   INDIA                          Full or late term       190     308
12-15 months   CMC-V-BCS-2002   INDIA                          Preterm                  45     308
12-15 months   CMC-V-BCS-2002   INDIA                          Early term               73     308
12-15 months   COHORTS          GUATEMALA                      Full or late term       350     618
12-15 months   COHORTS          GUATEMALA                      Preterm                 100     618
12-15 months   COHORTS          GUATEMALA                      Early term              168     618
12-15 months   IRC              INDIA                          Full or late term       235     370
12-15 months   IRC              INDIA                          Preterm                  41     370
12-15 months   IRC              INDIA                          Early term               94     370
12-15 months   Keneba           GAMBIA                         Full or late term       444     925
12-15 months   Keneba           GAMBIA                         Preterm                 149     925
12-15 months   Keneba           GAMBIA                         Early term              332     925
12-15 months   NIH-Crypto       BANGLADESH                     Full or late term       133     660
12-15 months   NIH-Crypto       BANGLADESH                     Preterm                 234     660
12-15 months   NIH-Crypto       BANGLADESH                     Early term              293     660
12-15 months   PROBIT           BELARUS                        Full or late term       496    1001
12-15 months   PROBIT           BELARUS                        Preterm                  32    1001
12-15 months   PROBIT           BELARUS                        Early term              473    1001
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       466     748
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 101     748
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              181     748
15-18 months   CMC-V-BCS-2002   INDIA                          Full or late term       183     299
15-18 months   CMC-V-BCS-2002   INDIA                          Preterm                  46     299
15-18 months   CMC-V-BCS-2002   INDIA                          Early term               70     299
15-18 months   COHORTS          GUATEMALA                      Full or late term       325     572
15-18 months   COHORTS          GUATEMALA                      Preterm                  92     572
15-18 months   COHORTS          GUATEMALA                      Early term              155     572
15-18 months   IRC              INDIA                          Full or late term       234     363
15-18 months   IRC              INDIA                          Preterm                  37     363
15-18 months   IRC              INDIA                          Early term               92     363
15-18 months   Keneba           GAMBIA                         Full or late term       469     929
15-18 months   Keneba           GAMBIA                         Preterm                 139     929
15-18 months   Keneba           GAMBIA                         Early term              321     929
15-18 months   NIH-Crypto       BANGLADESH                     Full or late term       111     604
15-18 months   NIH-Crypto       BANGLADESH                     Preterm                 226     604
15-18 months   NIH-Crypto       BANGLADESH                     Early term              267     604
15-18 months   PROBIT           BELARUS                        Full or late term       133     275
15-18 months   PROBIT           BELARUS                        Preterm                  12     275
15-18 months   PROBIT           BELARUS                        Early term              130     275
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       397     630
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                  78     630
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              155     630
18-21 months   CMC-V-BCS-2002   INDIA                          Full or late term       167     283
18-21 months   CMC-V-BCS-2002   INDIA                          Preterm                  44     283
18-21 months   CMC-V-BCS-2002   INDIA                          Early term               72     283
18-21 months   COHORTS          GUATEMALA                      Full or late term       317     563
18-21 months   COHORTS          GUATEMALA                      Preterm                  94     563
18-21 months   COHORTS          GUATEMALA                      Early term              152     563
18-21 months   IRC              INDIA                          Full or late term       235     360
18-21 months   IRC              INDIA                          Preterm                  35     360
18-21 months   IRC              INDIA                          Early term               90     360
18-21 months   Keneba           GAMBIA                         Full or late term       461     927
18-21 months   Keneba           GAMBIA                         Preterm                 137     927
18-21 months   Keneba           GAMBIA                         Early term              329     927
18-21 months   NIH-Crypto       BANGLADESH                     Full or late term        87     546
18-21 months   NIH-Crypto       BANGLADESH                     Preterm                 215     546
18-21 months   NIH-Crypto       BANGLADESH                     Early term              244     546
18-21 months   PROBIT           BELARUS                        Full or late term        96     218
18-21 months   PROBIT           BELARUS                        Preterm                   9     218
18-21 months   PROBIT           BELARUS                        Early term              113     218
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         6       8
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       8
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                2       8
21-24 months   CMC-V-BCS-2002   INDIA                          Full or late term       174     287
21-24 months   CMC-V-BCS-2002   INDIA                          Preterm                  44     287
21-24 months   CMC-V-BCS-2002   INDIA                          Early term               69     287
21-24 months   COHORTS          GUATEMALA                      Full or late term       338     601
21-24 months   COHORTS          GUATEMALA                      Preterm                  99     601
21-24 months   COHORTS          GUATEMALA                      Early term              164     601
21-24 months   IRC              INDIA                          Full or late term       237     370
21-24 months   IRC              INDIA                          Preterm                  39     370
21-24 months   IRC              INDIA                          Early term               94     370
21-24 months   Keneba           GAMBIA                         Full or late term       399     818
21-24 months   Keneba           GAMBIA                         Preterm                 118     818
21-24 months   Keneba           GAMBIA                         Early term              301     818
21-24 months   NIH-Crypto       BANGLADESH                     Full or late term        73     490
21-24 months   NIH-Crypto       BANGLADESH                     Preterm                 195     490
21-24 months   NIH-Crypto       BANGLADESH                     Early term              222     490
21-24 months   PROBIT           BELARUS                        Full or late term        96     209
21-24 months   PROBIT           BELARUS                        Preterm                   9     209
21-24 months   PROBIT           BELARUS                        Early term              104     209


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/31328f25-a2aa-40d6-8fa8-0ee79e88800f/42ef99fa-de55-4ab6-bb08-f44b1101514c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/31328f25-a2aa-40d6-8fa8-0ee79e88800f/42ef99fa-de55-4ab6-bb08-f44b1101514c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/31328f25-a2aa-40d6-8fa8-0ee79e88800f/42ef99fa-de55-4ab6-bb08-f44b1101514c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1005740   -0.2365546    0.0354067
0-3 months     CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.1813695   -0.5285593    0.1658202
0-3 months     CMC-V-BCS-2002   INDIA                          Early term           NA                 0.0236636   -0.1515324    0.1988597
0-3 months     COHORTS          GUATEMALA                      Full or late term    NA                -0.5312170   -0.5632048   -0.4992291
0-3 months     COHORTS          GUATEMALA                      Preterm              NA                -0.4987995   -0.5702981   -0.4273010
0-3 months     COHORTS          GUATEMALA                      Early term           NA                -0.5413264   -0.5865054   -0.4961474
0-3 months     COHORTS          INDIA                          Full or late term    NA                -0.0799041   -0.1029517   -0.0568565
0-3 months     COHORTS          INDIA                          Preterm              NA                -0.0560197   -0.0898313   -0.0222082
0-3 months     COHORTS          INDIA                          Early term           NA                -0.0437759   -0.0719170   -0.0156348
0-3 months     IRC              INDIA                          Full or late term    NA                -0.2095029   -0.2809204   -0.1380854
0-3 months     IRC              INDIA                          Preterm              NA                -0.2579112   -0.4259374   -0.0898851
0-3 months     IRC              INDIA                          Early term           NA                -0.3533265   -0.4583057   -0.2483474
0-3 months     Keneba           GAMBIA                         Full or late term    NA                -0.3088979   -0.3435278   -0.2742680
0-3 months     Keneba           GAMBIA                         Preterm              NA                -0.1891985   -0.2602443   -0.1181526
0-3 months     Keneba           GAMBIA                         Early term           NA                -0.2888544   -0.3231035   -0.2546053
0-3 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.2084524   -0.2470203   -0.1698844
0-3 months     NIH-Crypto       BANGLADESH                     Preterm              NA                -0.2153018   -0.2433750   -0.1872285
0-3 months     NIH-Crypto       BANGLADESH                     Early term           NA                -0.2563963   -0.2831002   -0.2296924
0-3 months     PROBIT           BELARUS                        Full or late term    NA                -0.4469178   -0.5045495   -0.3892861
0-3 months     PROBIT           BELARUS                        Preterm              NA                -0.3519713   -0.4385362   -0.2654064
0-3 months     PROBIT           BELARUS                        Early term           NA                -0.4132127   -0.4762571   -0.3501682
3-6 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1420513   -0.2095460   -0.0745566
3-6 months     CMC-V-BCS-2002   INDIA                          Preterm              NA                 0.0029364   -0.1285345    0.1344073
3-6 months     CMC-V-BCS-2002   INDIA                          Early term           NA                -0.0453563   -0.1267659    0.0360533
3-6 months     COHORTS          GUATEMALA                      Full or late term    NA                -0.1011246   -0.1232513   -0.0789978
3-6 months     COHORTS          GUATEMALA                      Preterm              NA                -0.1157578   -0.1634486   -0.0680670
3-6 months     COHORTS          GUATEMALA                      Early term           NA                -0.0853088   -0.1135762   -0.0570415
3-6 months     COHORTS          INDIA                          Full or late term    NA                -0.0834717   -0.1024659   -0.0644774
3-6 months     COHORTS          INDIA                          Preterm              NA                -0.0396740   -0.0675844   -0.0117635
3-6 months     COHORTS          INDIA                          Early term           NA                -0.0479734   -0.0702153   -0.0257315
3-6 months     IRC              INDIA                          Full or late term    NA                -0.0657194   -0.1034361   -0.0280028
3-6 months     IRC              INDIA                          Preterm              NA                -0.0520939   -0.1425819    0.0383941
3-6 months     IRC              INDIA                          Early term           NA                -0.0222761   -0.0876015    0.0430493
3-6 months     Keneba           GAMBIA                         Full or late term    NA                -0.0628621   -0.0957419   -0.0299822
3-6 months     Keneba           GAMBIA                         Preterm              NA                 0.0183079   -0.0343066    0.0709223
3-6 months     Keneba           GAMBIA                         Early term           NA                -0.0310623   -0.0617487   -0.0003759
3-6 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0089165   -0.0460645    0.0282315
3-6 months     NIH-Crypto       BANGLADESH                     Preterm              NA                 0.0839241    0.0564066    0.1114416
3-6 months     NIH-Crypto       BANGLADESH                     Early term           NA                -0.0022965   -0.0270494    0.0224563
3-6 months     PROBIT           BELARUS                        Full or late term    NA                 0.0339814    0.0130830    0.0548798
3-6 months     PROBIT           BELARUS                        Preterm              NA                 0.1203170    0.0655784    0.1750557
3-6 months     PROBIT           BELARUS                        Early term           NA                 0.0621903    0.0422871    0.0820936
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0974512   -0.1185015   -0.0764008
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0604407   -0.1069128   -0.0139686
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0715444   -0.1076676   -0.0354211
6-9 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0928988   -0.1343194   -0.0514781
6-9 months     CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.0269224   -0.1380987    0.0842539
6-9 months     CMC-V-BCS-2002   INDIA                          Early term           NA                -0.0821461   -0.1560352   -0.0082571
6-9 months     COHORTS          GUATEMALA                      Full or late term    NA                -0.1326521   -0.1513964   -0.1139078
6-9 months     COHORTS          GUATEMALA                      Preterm              NA                -0.0813598   -0.1150545   -0.0476651
6-9 months     COHORTS          GUATEMALA                      Early term           NA                -0.1147135   -0.1392956   -0.0901315
6-9 months     COHORTS          INDIA                          Full or late term    NA                -0.1066500   -0.1227450   -0.0905549
6-9 months     COHORTS          INDIA                          Preterm              NA                -0.0805469   -0.1039312   -0.0571625
6-9 months     COHORTS          INDIA                          Early term           NA                -0.0850669   -0.1050461   -0.0650877
6-9 months     IRC              INDIA                          Full or late term    NA                -0.0199467   -0.0467382    0.0068448
6-9 months     IRC              INDIA                          Preterm              NA                -0.0097687   -0.0864747    0.0669374
6-9 months     IRC              INDIA                          Early term           NA                -0.0077668   -0.0533991    0.0378654
6-9 months     Keneba           GAMBIA                         Full or late term    NA                -0.0013056   -0.0460015    0.0433902
6-9 months     Keneba           GAMBIA                         Preterm              NA                -0.0331002   -0.0834654    0.0172650
6-9 months     Keneba           GAMBIA                         Early term           NA                -0.0027555   -0.0455417    0.0400308
6-9 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0408426   -0.0696512   -0.0120340
6-9 months     NIH-Crypto       BANGLADESH                     Preterm              NA                -0.0315643   -0.0536738   -0.0094549
6-9 months     NIH-Crypto       BANGLADESH                     Early term           NA                -0.0265580   -0.0449869   -0.0081292
6-9 months     PROBIT           BELARUS                        Full or late term    NA                 0.0438008    0.0276579    0.0599436
6-9 months     PROBIT           BELARUS                        Preterm              NA                 0.0913515    0.0399464    0.1427566
6-9 months     PROBIT           BELARUS                        Early term           NA                 0.0597056    0.0447229    0.0746882
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0486476   -0.0685995   -0.0286957
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0922508   -0.1345515   -0.0499501
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0209525   -0.0562880    0.0143830
9-12 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1079818   -0.1500315   -0.0659322
9-12 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.1375999   -0.1987199   -0.0764799
9-12 months    CMC-V-BCS-2002   INDIA                          Early term           NA                -0.1300877   -0.1779746   -0.0822008
9-12 months    COHORTS          GUATEMALA                      Full or late term    NA                -0.0934170   -0.1086940   -0.0781401
9-12 months    COHORTS          GUATEMALA                      Preterm              NA                -0.0910390   -0.1251703   -0.0569076
9-12 months    COHORTS          GUATEMALA                      Early term           NA                -0.0931492   -0.1126909   -0.0736076
9-12 months    COHORTS          INDIA                          Full or late term    NA                -0.0844478   -0.1003104   -0.0685851
9-12 months    COHORTS          INDIA                          Preterm              NA                -0.0916976   -0.1132131   -0.0701821
9-12 months    COHORTS          INDIA                          Early term           NA                -0.0891568   -0.1079196   -0.0703941
9-12 months    IRC              INDIA                          Full or late term    NA                -0.0445400   -0.0669685   -0.0221115
9-12 months    IRC              INDIA                          Preterm              NA                -0.0352604   -0.0877891    0.0172684
9-12 months    IRC              INDIA                          Early term           NA                -0.0191521   -0.0512329    0.0129288
9-12 months    Keneba           GAMBIA                         Full or late term    NA                -0.1057591   -0.1428526   -0.0686656
9-12 months    Keneba           GAMBIA                         Preterm              NA                -0.1045154   -0.1367412   -0.0722895
9-12 months    Keneba           GAMBIA                         Early term           NA                -0.1089461   -0.1402238   -0.0776685
9-12 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0523354   -0.0747847   -0.0298862
9-12 months    NIH-Crypto       BANGLADESH                     Preterm              NA                -0.0308768   -0.0508018   -0.0109519
9-12 months    NIH-Crypto       BANGLADESH                     Early term           NA                -0.0287528   -0.0444988   -0.0130068
9-12 months    PROBIT           BELARUS                        Full or late term    NA                 0.0312450    0.0079341    0.0545559
9-12 months    PROBIT           BELARUS                        Preterm              NA                 0.0703319    0.0363132    0.1043505
9-12 months    PROBIT           BELARUS                        Early term           NA                 0.0402848    0.0200524    0.0605173
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0698021   -0.0876033   -0.0520010
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0611163   -0.1034756   -0.0187570
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0716855   -0.1037327   -0.0396384
12-15 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0679570   -0.1058074   -0.0301067
12-15 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.0598816   -0.1324496    0.0126863
12-15 months   CMC-V-BCS-2002   INDIA                          Early term           NA                -0.1014806   -0.1520683   -0.0508929
12-15 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0959646   -0.1137420   -0.0781873
12-15 months   COHORTS          GUATEMALA                      Preterm              NA                -0.1038302   -0.1369197   -0.0707408
12-15 months   COHORTS          GUATEMALA                      Early term           NA                -0.0873450   -0.1093319   -0.0653581
12-15 months   IRC              INDIA                          Full or late term    NA                -0.0448083   -0.0681817   -0.0214348
12-15 months   IRC              INDIA                          Preterm              NA                -0.0252217   -0.0804246    0.0299813
12-15 months   IRC              INDIA                          Early term           NA                -0.0503256   -0.0762642   -0.0243870
12-15 months   Keneba           GAMBIA                         Full or late term    NA                -0.0509567   -0.0731179   -0.0287956
12-15 months   Keneba           GAMBIA                         Preterm              NA                -0.0616619   -0.0867174   -0.0366064
12-15 months   Keneba           GAMBIA                         Early term           NA                -0.0534894   -0.0716373   -0.0353416
12-15 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0393268   -0.0617598   -0.0168937
12-15 months   NIH-Crypto       BANGLADESH                     Preterm              NA                -0.0286376   -0.0446701   -0.0126051
12-15 months   NIH-Crypto       BANGLADESH                     Early term           NA                -0.0456212   -0.0592985   -0.0319439
12-15 months   PROBIT           BELARUS                        Full or late term    NA                 0.0479896   -0.1182988    0.2142780
12-15 months   PROBIT           BELARUS                        Preterm              NA                 0.0705605   -0.0305768    0.1716978
12-15 months   PROBIT           BELARUS                        Early term           NA                -0.0393287   -0.1375943    0.0589369
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0681561   -0.0861831   -0.0501291
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0146508   -0.0645311    0.0352296
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0915357   -0.1183170   -0.0647543
15-18 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0483220   -0.0823473   -0.0142967
15-18 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.1359354   -0.2007678   -0.0711030
15-18 months   CMC-V-BCS-2002   INDIA                          Early term           NA                -0.0776800   -0.1126234   -0.0427365
15-18 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0724620   -0.0894548   -0.0554693
15-18 months   COHORTS          GUATEMALA                      Preterm              NA                -0.0315505   -0.0699751    0.0068741
15-18 months   COHORTS          GUATEMALA                      Early term           NA                -0.0379504   -0.0590503   -0.0168505
15-18 months   IRC              INDIA                          Full or late term    NA                -0.0358568   -0.0570847   -0.0146288
15-18 months   IRC              INDIA                          Preterm              NA                -0.0306858   -0.0707414    0.0093698
15-18 months   IRC              INDIA                          Early term           NA                -0.0483352   -0.0704488   -0.0262217
15-18 months   Keneba           GAMBIA                         Full or late term    NA                -0.0301192   -0.0502382   -0.0100003
15-18 months   Keneba           GAMBIA                         Preterm              NA                -0.0164220   -0.0429918    0.0101477
15-18 months   Keneba           GAMBIA                         Early term           NA                -0.0350287   -0.0571850   -0.0128724
15-18 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0274461   -0.0464484   -0.0084439
15-18 months   NIH-Crypto       BANGLADESH                     Preterm              NA                -0.0076278   -0.0213451    0.0060896
15-18 months   NIH-Crypto       BANGLADESH                     Early term           NA                -0.0203807   -0.0329324   -0.0078290
15-18 months   PROBIT           BELARUS                        Full or late term    NA                -0.0170136   -0.2892468    0.2552196
15-18 months   PROBIT           BELARUS                        Preterm              NA                -0.0025318   -1.0362443    1.0311807
15-18 months   PROBIT           BELARUS                        Early term           NA                -0.0070876   -0.1425044    0.1283291
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0143209   -0.0330269    0.0043851
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0044143   -0.0587797    0.0499510
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0210750   -0.0497144    0.0075644
18-21 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0349520   -0.0652082   -0.0046957
18-21 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.0867221   -0.1385450   -0.0348992
18-21 months   CMC-V-BCS-2002   INDIA                          Early term           NA                -0.0405856   -0.0906358    0.0094646
18-21 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0168479   -0.0327993   -0.0008965
18-21 months   COHORTS          GUATEMALA                      Preterm              NA                -0.0092674   -0.0339833    0.0154486
18-21 months   COHORTS          GUATEMALA                      Early term           NA                -0.0257192   -0.0478041   -0.0036343
18-21 months   IRC              INDIA                          Full or late term    NA                -0.0437719   -0.0608892   -0.0266546
18-21 months   IRC              INDIA                          Preterm              NA                -0.0532493   -0.1028947   -0.0036039
18-21 months   IRC              INDIA                          Early term           NA                -0.0360122   -0.0585536   -0.0134707
18-21 months   Keneba           GAMBIA                         Full or late term    NA                -0.0103346   -0.0329203    0.0122510
18-21 months   Keneba           GAMBIA                         Preterm              NA                -0.0260806   -0.0479077   -0.0042536
18-21 months   Keneba           GAMBIA                         Early term           NA                -0.0166797   -0.0369151    0.0035556
18-21 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0380186   -0.0565709   -0.0194662
18-21 months   NIH-Crypto       BANGLADESH                     Preterm              NA                -0.0190051   -0.0321923   -0.0058179
18-21 months   NIH-Crypto       BANGLADESH                     Early term           NA                -0.0322837   -0.0442158   -0.0203515
18-21 months   PROBIT           BELARUS                        Full or late term    NA                -0.0673890   -0.4416989    0.3069209
18-21 months   PROBIT           BELARUS                        Preterm              NA                 0.0676652    0.0082399    0.1270904
18-21 months   PROBIT           BELARUS                        Early term           NA                -0.0069990   -0.3180473    0.3040492
21-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0114359   -0.0179371    0.0408090
21-24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                 0.0552936   -0.0152721    0.1258592
21-24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                 0.0106687   -0.0209542    0.0422916
21-24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0204958   -0.0338537   -0.0071379
21-24 months   COHORTS          GUATEMALA                      Preterm              NA                 0.0026326   -0.0173407    0.0226059
21-24 months   COHORTS          GUATEMALA                      Early term           NA                 0.0029879   -0.0148065    0.0207824
21-24 months   IRC              INDIA                          Full or late term    NA                -0.0190120   -0.0369773   -0.0010468
21-24 months   IRC              INDIA                          Preterm              NA                -0.0001720   -0.0452017    0.0448576
21-24 months   IRC              INDIA                          Early term           NA                -0.0049611   -0.0306961    0.0207739
21-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0011360   -0.0188930    0.0211650
21-24 months   Keneba           GAMBIA                         Preterm              NA                 0.0209365   -0.0006769    0.0425499
21-24 months   Keneba           GAMBIA                         Early term           NA                 0.0265984    0.0054005    0.0477962
21-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0484219    0.0242789    0.0725649
21-24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                 0.0660080    0.0530197    0.0789962
21-24 months   NIH-Crypto       BANGLADESH                     Early term           NA                 0.0557976    0.0441664    0.0674288
21-24 months   PROBIT           BELARUS                        Full or late term    NA                 0.0508827   -0.1144012    0.2161667
21-24 months   PROBIT           BELARUS                        Preterm              NA                 0.0147128   -0.0955139    0.1249395
21-24 months   PROBIT           BELARUS                        Early term           NA                 0.0559387   -0.2012137    0.3130911


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0793731   -0.1852244    0.0264782
0-3 months     COHORTS          GUATEMALA                      NA                   NA                -0.5290340   -0.5537799   -0.5042881
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0623661   -0.0781939   -0.0465383
0-3 months     IRC              INDIA                          NA                   NA                -0.2516152   -0.3078111   -0.1954192
0-3 months     Keneba           GAMBIA                         NA                   NA                -0.2837805   -0.3073651   -0.2601959
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROBIT           BELARUS                        NA                   NA                -0.4282764   -0.4869030   -0.3696499
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0963982   -0.1464314   -0.0463649
3-6 months     COHORTS          GUATEMALA                      NA                   NA                -0.0990042   -0.1156213   -0.0823871
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0614636   -0.0743514   -0.0485759
3-6 months     IRC              INDIA                          NA                   NA                -0.0533200   -0.0841764   -0.0224636
3-6 months     Keneba           GAMBIA                         NA                   NA                -0.0387574   -0.0597399   -0.0177750
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROBIT           BELARUS                        NA                   NA                 0.0498792    0.0307240    0.0690345
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0858248   -0.1028202   -0.0688294
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0806473   -0.1157490   -0.0455457
6-9 months     COHORTS          GUATEMALA                      NA                   NA                -0.1191712   -0.1328903   -0.1054521
6-9 months     COHORTS          INDIA                          NA                   NA                -0.0931867   -0.1043071   -0.0820663
6-9 months     IRC              INDIA                          NA                   NA                -0.0158000   -0.0380489    0.0064489
6-9 months     Keneba           GAMBIA                         NA                   NA                -0.0075082   -0.0347073    0.0196908
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROBIT           BELARUS                        NA                   NA                 0.0527574    0.0382697    0.0672452
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0487053   -0.0648515   -0.0325590
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1178363   -0.1473429   -0.0883297
9-12 months    COHORTS          GUATEMALA                      NA                   NA                -0.0929638   -0.1044763   -0.0814512
9-12 months    COHORTS          INDIA                          NA                   NA                -0.0877405   -0.0983279   -0.0771530
9-12 months    IRC              INDIA                          NA                   NA                -0.0371867   -0.0546511   -0.0197223
9-12 months    Keneba           GAMBIA                         NA                   NA                -0.1066281   -0.1279363   -0.0853199
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROBIT           BELARUS                        NA                   NA                 0.0367452    0.0162651    0.0572253
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0690421   -0.0836906   -0.0543935
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0747227   -0.1030818   -0.0463636
12-15 months   COHORTS          GUATEMALA                      NA                   NA                -0.0948942   -0.1077760   -0.0820124
12-15 months   IRC              INDIA                          NA                   NA                -0.0440396   -0.0614103   -0.0266688
12-15 months   Keneba           GAMBIA                         NA                   NA                -0.0535902   -0.0667022   -0.0404781
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROBIT           BELARUS                        NA                   NA                 0.0074509   -0.1179050    0.1328067
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0665888   -0.0812907   -0.0518870
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0686741   -0.0934242   -0.0439240
15-18 months   COHORTS          GUATEMALA                      NA                   NA                -0.0565299   -0.0694287   -0.0436311
15-18 months   IRC              INDIA                          NA                   NA                -0.0384923   -0.0538451   -0.0231395
15-18 months   Keneba           GAMBIA                         NA                   NA                -0.0297662   -0.0430976   -0.0164348
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROBIT           BELARUS                        NA                   NA                -0.0116894   -0.1658506    0.1424718
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0147561   -0.0300547    0.0005425
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0444343   -0.0678951   -0.0209736
18-21 months   COHORTS          GUATEMALA                      NA                   NA                -0.0179773   -0.0295294   -0.0064252
18-21 months   IRC              INDIA                          NA                   NA                -0.0427534   -0.0561754   -0.0293313
18-21 months   Keneba           GAMBIA                         NA                   NA                -0.0149136   -0.0286345   -0.0011928
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROBIT           BELARUS                        NA                   NA                -0.0305103   -0.2535719    0.1925513
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0179753   -0.0042813    0.0402319
21-24 months   COHORTS          GUATEMALA                      NA                   NA                -0.0102778   -0.0198537   -0.0007018
21-24 months   IRC              INDIA                          NA                   NA                -0.0134565   -0.0275379    0.0006249
21-24 months   Keneba           GAMBIA                         NA                   NA                 0.0133617    0.0004507    0.0262727
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROBIT           BELARUS                        NA                   NA                 0.0518411   -0.0993926    0.2030747


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0807956   -0.4536648    0.2920737
0-3 months     CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1242376   -0.0975380    0.3460132
0-3 months     COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Preterm              Full or late term     0.0324174   -0.0459105    0.1107454
0-3 months     COHORTS          GUATEMALA                      Early term           Full or late term    -0.0101095   -0.0654662    0.0452472
0-3 months     COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          Preterm              Full or late term     0.0238844   -0.0170352    0.0648039
0-3 months     COHORTS          INDIA                          Early term           Full or late term     0.0361282   -0.0002464    0.0725028
0-3 months     IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          Preterm              Full or late term    -0.0484083   -0.2309822    0.1341656
0-3 months     IRC              INDIA                          Early term           Full or late term    -0.1438236   -0.2707924   -0.0168549
0-3 months     Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         Preterm              Full or late term     0.1196994    0.0406631    0.1987358
0-3 months     Keneba           GAMBIA                         Early term           Full or late term     0.0200435   -0.0286621    0.0687491
0-3 months     NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.0068494   -0.0545526    0.0408538
0-3 months     NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.0479440   -0.0948544   -0.0010335
0-3 months     PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        Preterm              Full or late term     0.0949465    0.0314688    0.1584242
0-3 months     PROBIT           BELARUS                        Early term           Full or late term     0.0337051    0.0016532    0.0657571
3-6 months     CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.1449877   -0.0027964    0.2927718
3-6 months     CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0966950   -0.0090550    0.2024450
3-6 months     COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0146332   -0.0672070    0.0379406
3-6 months     COHORTS          GUATEMALA                      Early term           Full or late term     0.0158157   -0.0200819    0.0517133
3-6 months     COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          Preterm              Full or late term     0.0437977    0.0100372    0.0775583
3-6 months     COHORTS          INDIA                          Early term           Full or late term     0.0354983    0.0062496    0.0647469
3-6 months     IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          Preterm              Full or late term     0.0136255   -0.0844083    0.1116593
3-6 months     IRC              INDIA                          Early term           Full or late term     0.0434433   -0.0319884    0.1188751
3-6 months     Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         Preterm              Full or late term     0.0811700    0.0191267    0.1432132
3-6 months     Keneba           GAMBIA                         Early term           Full or late term     0.0317998   -0.0131751    0.0767747
3-6 months     NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0928406    0.0466108    0.1390704
3-6 months     NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0066200   -0.0380195    0.0512594
3-6 months     PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        Preterm              Full or late term     0.0863356    0.0326137    0.1400576
3-6 months     PROBIT           BELARUS                        Early term           Full or late term     0.0282089    0.0135300    0.0428878
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0370105   -0.0140069    0.0880278
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0259068   -0.0159024    0.0677159
6-9 months     CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0659764   -0.0526653    0.1846180
6-9 months     CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0107526   -0.0739543    0.0954595
6-9 months     COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Preterm              Full or late term     0.0512923    0.0127348    0.0898498
6-9 months     COHORTS          GUATEMALA                      Early term           Full or late term     0.0179386   -0.0129746    0.0488518
6-9 months     COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          Preterm              Full or late term     0.0261031   -0.0022849    0.0544911
6-9 months     COHORTS          INDIA                          Early term           Full or late term     0.0215831   -0.0040727    0.0472389
6-9 months     IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          Preterm              Full or late term     0.0101780   -0.0710722    0.0914283
6-9 months     IRC              INDIA                          Early term           Full or late term     0.0121799   -0.0407360    0.0650957
6-9 months     Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         Preterm              Full or late term    -0.0317945   -0.0991323    0.0355432
6-9 months     Keneba           GAMBIA                         Early term           Full or late term    -0.0014498   -0.0633238    0.0604241
6-9 months     NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0092783   -0.0270364    0.0455931
6-9 months     NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0142846   -0.0199142    0.0484834
6-9 months     PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        Preterm              Full or late term     0.0475507   -0.0012580    0.0963594
6-9 months     PROBIT           BELARUS                        Early term           Full or late term     0.0159048    0.0031626    0.0286470
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.0436032   -0.0903731    0.0031668
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0276951   -0.0128842    0.0682744
9-12 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0296180   -0.1038058    0.0445697
9-12 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0221059   -0.0858344    0.0416227
9-12 months    COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Preterm              Full or late term     0.0023781   -0.0350162    0.0397724
9-12 months    COHORTS          GUATEMALA                      Early term           Full or late term     0.0002678   -0.0245366    0.0250723
9-12 months    COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          Preterm              Full or late term    -0.0072498   -0.0339807    0.0194811
9-12 months    COHORTS          INDIA                          Early term           Full or late term    -0.0047090   -0.0292786    0.0198605
9-12 months    IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          Preterm              Full or late term     0.0092796   -0.0478369    0.0663962
9-12 months    IRC              INDIA                          Early term           Full or late term     0.0253879   -0.0137556    0.0645315
9-12 months    Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         Preterm              Full or late term     0.0012437   -0.0478932    0.0503806
9-12 months    Keneba           GAMBIA                         Early term           Full or late term    -0.0031870   -0.0517073    0.0453333
9-12 months    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0214586   -0.0085576    0.0514748
9-12 months    NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0235826   -0.0038382    0.0510035
9-12 months    PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        Preterm              Full or late term     0.0390869    0.0063194    0.0718543
9-12 months    PROBIT           BELARUS                        Early term           Full or late term     0.0090398   -0.0059534    0.0240331
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0086858   -0.0372619    0.0546335
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0018834   -0.0385426    0.0347758
12-15 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0080754   -0.0737705    0.0899214
12-15 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0335236   -0.0967040    0.0296569
12-15 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0078656   -0.0454282    0.0296970
12-15 months   COHORTS          GUATEMALA                      Early term           Full or late term     0.0086196   -0.0196551    0.0368943
12-15 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          Preterm              Full or late term     0.0195866   -0.0403607    0.0795340
12-15 months   IRC              INDIA                          Early term           Full or late term    -0.0055173   -0.0404333    0.0293987
12-15 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.0107052   -0.0441551    0.0227447
12-15 months   Keneba           GAMBIA                         Early term           Full or late term    -0.0025327   -0.0311764    0.0261110
12-15 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0106892   -0.0168841    0.0382624
12-15 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.0062945   -0.0325683    0.0199793
12-15 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        Preterm              Full or late term     0.0225709   -0.1533842    0.1985259
12-15 months   PROBIT           BELARUS                        Early term           Full or late term    -0.0873183   -0.1980804    0.0234439
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0535054    0.0004675    0.1065433
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0233795   -0.0556629    0.0089038
15-18 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0876134   -0.1608320   -0.0143948
15-18 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0293580   -0.0781306    0.0194146
15-18 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Preterm              Full or late term     0.0409116   -0.0011028    0.0829259
15-18 months   COHORTS          GUATEMALA                      Early term           Full or late term     0.0345116    0.0074199    0.0616033
15-18 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          Preterm              Full or late term     0.0051709   -0.0401620    0.0505039
15-18 months   IRC              INDIA                          Early term           Full or late term    -0.0124785   -0.0431319    0.0181749
15-18 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         Preterm              Full or late term     0.0136972   -0.0196303    0.0470247
15-18 months   Keneba           GAMBIA                         Early term           Full or late term    -0.0049095   -0.0348373    0.0250183
15-18 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0198183   -0.0036177    0.0432544
15-18 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0070654   -0.0157080    0.0298388
15-18 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        Preterm              Full or late term     0.0144818   -1.0726060    1.1015696
15-18 months   PROBIT           BELARUS                        Early term           Full or late term     0.0099260   -0.2928315    0.3126835
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0099066   -0.0475870    0.0674001
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0067541   -0.0409612    0.0274530
18-21 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0517701   -0.1117789    0.0082387
18-21 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0056336   -0.0641184    0.0528511
18-21 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Preterm              Full or late term     0.0075806   -0.0218358    0.0369969
18-21 months   COHORTS          GUATEMALA                      Early term           Full or late term    -0.0088713   -0.0361144    0.0183719
18-21 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          Preterm              Full or late term    -0.0094774   -0.0619909    0.0430361
18-21 months   IRC              INDIA                          Early term           Full or late term     0.0077597   -0.0205443    0.0360638
18-21 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.0157460   -0.0471551    0.0156631
18-21 months   Keneba           GAMBIA                         Early term           Full or late term    -0.0063451   -0.0366697    0.0239795
18-21 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0190134   -0.0037482    0.0417751
18-21 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0057349   -0.0163233    0.0277931
18-21 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        Preterm              Full or late term     0.1350541   -0.2340950    0.5042033
18-21 months   PROBIT           BELARUS                        Early term           Full or late term     0.0603899   -0.4297326    0.5505124
21-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0438577   -0.0325772    0.1202925
21-24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0007672   -0.0439272    0.0423928
21-24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Preterm              Full or late term     0.0231284   -0.0009000    0.0471568
21-24 months   COHORTS          GUATEMALA                      Early term           Full or late term     0.0234837    0.0012334    0.0457341
21-24 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          Preterm              Full or late term     0.0188400   -0.0296412    0.0673211
21-24 months   IRC              INDIA                          Early term           Full or late term     0.0140509   -0.0173345    0.0454363
21-24 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         Preterm              Full or late term     0.0198005   -0.0096664    0.0492675
21-24 months   Keneba           GAMBIA                         Early term           Full or late term     0.0254624   -0.0037011    0.0546259
21-24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0175861   -0.0098289    0.0450010
21-24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0073757   -0.0194230    0.0341744
21-24 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        Preterm              Full or late term    -0.0361699   -0.2444969    0.1721571
21-24 months   PROBIT           BELARUS                        Early term           Full or late term     0.0050560   -0.2951954    0.3053075


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0212009   -0.0609040    0.1033058
0-3 months     COHORTS          GUATEMALA                      Full or late term    NA                 0.0021829   -0.0203228    0.0246887
0-3 months     COHORTS          INDIA                          Full or late term    NA                 0.0175380   -0.0001791    0.0352551
0-3 months     IRC              INDIA                          Full or late term    NA                -0.0421123   -0.0836217   -0.0006028
0-3 months     Keneba           GAMBIA                         Full or late term    NA                 0.0251174    0.0008012    0.0494335
0-3 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0228084   -0.0563082    0.0106915
0-3 months     PROBIT           BELARUS                        Full or late term    NA                 0.0186413    0.0028396    0.0344430
3-6 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0456532    0.0062291    0.0850772
3-6 months     COHORTS          GUATEMALA                      Full or late term    NA                 0.0021204   -0.0132752    0.0175159
3-6 months     COHORTS          INDIA                          Full or late term    NA                 0.0220080    0.0073596    0.0366564
3-6 months     IRC              INDIA                          Full or late term    NA                 0.0123994   -0.0112228    0.0360217
3-6 months     Keneba           GAMBIA                         Full or late term    NA                 0.0241047    0.0016788    0.0465305
3-6 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0356905    0.0031472    0.0682338
3-6 months     PROBIT           BELARUS                        Full or late term    NA                 0.0158978    0.0084951    0.0233006
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0116263   -0.0019886    0.0252412
6-9 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0122514   -0.0167280    0.0412308
6-9 months     COHORTS          GUATEMALA                      Full or late term    NA                 0.0134809    0.0010627    0.0258992
6-9 months     COHORTS          INDIA                          Full or late term    NA                 0.0134632    0.0007072    0.0262193
6-9 months     IRC              INDIA                          Full or late term    NA                 0.0041467   -0.0129272    0.0212206
6-9 months     Keneba           GAMBIA                         Full or late term    NA                -0.0062026   -0.0367532    0.0243480
6-9 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0094789   -0.0157776    0.0347354
6-9 months     PROBIT           BELARUS                        Full or late term    NA                 0.0089567    0.0028309    0.0150824
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0000577   -0.0129239    0.0128086
9-12 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0098545   -0.0322214    0.0125124
9-12 months    COHORTS          GUATEMALA                      Full or late term    NA                 0.0004533   -0.0098605    0.0107670
9-12 months    COHORTS          INDIA                          Full or late term    NA                -0.0032927   -0.0155833    0.0089979
9-12 months    IRC              INDIA                          Full or late term    NA                 0.0073533   -0.0054425    0.0201491
9-12 months    Keneba           GAMBIA                         Full or late term    NA                -0.0008690   -0.0241689    0.0224309
9-12 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0180360   -0.0024281    0.0385000
9-12 months    PROBIT           BELARUS                        Full or late term    NA                 0.0055001   -0.0020303    0.0130306
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0007601   -0.0104706    0.0119907
12-15 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0067657   -0.0284298    0.0148984
12-15 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0010704   -0.0100654    0.0122063
12-15 months   IRC              INDIA                          Full or late term    NA                 0.0007687   -0.0116446    0.0131820
12-15 months   Keneba           GAMBIA                         Full or late term    NA                -0.0026334   -0.0164744    0.0112075
12-15 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0009954   -0.0187623    0.0207532
12-15 months   PROBIT           BELARUS                        Full or late term    NA                -0.0405387   -0.0954592    0.0143818
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0015673   -0.0101034    0.0132380
15-18 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0203521   -0.0391443   -0.0015599
15-18 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0159321    0.0046625    0.0272017
15-18 months   IRC              INDIA                          Full or late term    NA                -0.0026355   -0.0129002    0.0076291
15-18 months   Keneba           GAMBIA                         Full or late term    NA                 0.0003530   -0.0128305    0.0135366
15-18 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0105388   -0.0067257    0.0278032
15-18 months   PROBIT           BELARUS                        Full or late term    NA                 0.0053242   -0.1619630    0.1726115
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0004352   -0.0123917    0.0115213
18-21 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0094824   -0.0291148    0.0101501
18-21 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0011294   -0.0111973    0.0089385
18-21 months   IRC              INDIA                          Full or late term    NA                 0.0010185   -0.0085011    0.0105381
18-21 months   Keneba           GAMBIA                         Full or late term    NA                -0.0045790   -0.0183998    0.0092418
18-21 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0100498   -0.0072428    0.0273424
18-21 months   PROBIT           BELARUS                        Full or late term    NA                 0.0368787   -0.2369412    0.3106985
21-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0065394   -0.0111235    0.0242023
21-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0102180    0.0018855    0.0185506
21-24 months   IRC              INDIA                          Full or late term    NA                 0.0055555   -0.0048160    0.0159270
21-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0122257   -0.0010597    0.0255112
21-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0103402   -0.0114991    0.0321794
21-24 months   PROBIT           BELARUS                        Full or late term    NA                 0.0009584   -0.1527936    0.1547103
