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

**Outcome Variable:** y_rate_len

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
![](/tmp/c4810781-7b32-44d4-a34a-6356eabf26df/b7cdd717-7db9-4aaf-8089-f9c93e174aa7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c4810781-7b32-44d4-a34a-6356eabf26df/b7cdd717-7db9-4aaf-8089-f9c93e174aa7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c4810781-7b32-44d4-a34a-6356eabf26df/b7cdd717-7db9-4aaf-8089-f9c93e174aa7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                3.4647191    3.1982214   3.7312168
0-3 months     CMC-V-BCS-2002   INDIA                          Preterm              NA                3.2487648    2.4864506   4.0110789
0-3 months     CMC-V-BCS-2002   INDIA                          Early term           NA                3.6258967    3.2442769   4.0075164
0-3 months     COHORTS          GUATEMALA                      Full or late term    NA                2.5970596    2.5322397   2.6618795
0-3 months     COHORTS          GUATEMALA                      Preterm              NA                2.6569808    2.5205431   2.7934185
0-3 months     COHORTS          GUATEMALA                      Early term           NA                2.5694851    2.4773884   2.6615819
0-3 months     COHORTS          INDIA                          Full or late term    NA                3.4932940    3.4448078   3.5417803
0-3 months     COHORTS          INDIA                          Preterm              NA                3.5435234    3.4755984   3.6114484
0-3 months     COHORTS          INDIA                          Early term           NA                3.5640695    3.5078680   3.6202711
0-3 months     IRC              INDIA                          Full or late term    NA                3.2201814    3.0758246   3.3645381
0-3 months     IRC              INDIA                          Preterm              NA                3.1018411    2.7726998   3.4309824
0-3 months     IRC              INDIA                          Early term           NA                2.9717078    2.7639613   3.1794543
0-3 months     Keneba           GAMBIA                         Full or late term    NA                3.0840208    3.0150916   3.1529501
0-3 months     Keneba           GAMBIA                         Preterm              NA                3.2243371    3.0833929   3.3652814
0-3 months     Keneba           GAMBIA                         Early term           NA                3.0959016    3.0273087   3.1644944
0-3 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                3.2069104    3.1250887   3.2887320
0-3 months     NIH-Crypto       BANGLADESH                     Preterm              NA                3.1334462    3.0756713   3.1912210
0-3 months     NIH-Crypto       BANGLADESH                     Early term           NA                3.0848131    3.0288874   3.1407388
0-3 months     PROBIT           BELARUS                        Full or late term    NA                2.7868004    2.6753984   2.8982023
0-3 months     PROBIT           BELARUS                        Preterm              NA                2.9236668    2.7493704   3.0979633
0-3 months     PROBIT           BELARUS                        Early term           NA                2.8347893    2.7132919   2.9562867
3-6 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                1.7243159    1.5815654   1.8670664
3-6 months     CMC-V-BCS-2002   INDIA                          Preterm              NA                2.0037911    1.7270187   2.2805635
3-6 months     CMC-V-BCS-2002   INDIA                          Early term           NA                1.8953710    1.7198881   2.0708540
3-6 months     COHORTS          GUATEMALA                      Full or late term    NA                1.7534936    1.7068958   1.8000913
3-6 months     COHORTS          GUATEMALA                      Preterm              NA                1.7150647    1.6169303   1.8131990
3-6 months     COHORTS          GUATEMALA                      Early term           NA                1.7815984    1.7219740   1.8412229
3-6 months     COHORTS          INDIA                          Full or late term    NA                1.8237607    1.7830452   1.8644762
3-6 months     COHORTS          INDIA                          Preterm              NA                1.9134562    1.8541296   1.9727827
3-6 months     COHORTS          INDIA                          Early term           NA                1.8997954    1.8519867   1.9476041
3-6 months     IRC              INDIA                          Full or late term    NA                1.8534837    1.7738452   1.9331223
3-6 months     IRC              INDIA                          Preterm              NA                1.8547223    1.6586514   2.0507931
3-6 months     IRC              INDIA                          Early term           NA                1.9469889    1.8080350   2.0859428
3-6 months     Keneba           GAMBIA                         Full or late term    NA                1.9095203    1.8389904   1.9800501
3-6 months     Keneba           GAMBIA                         Preterm              NA                2.0468778    1.9377156   2.1560400
3-6 months     Keneba           GAMBIA                         Early term           NA                1.9651325    1.8985570   2.0317079
3-6 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                1.9487395    1.8684141   2.0290650
3-6 months     NIH-Crypto       BANGLADESH                     Preterm              NA                2.1145066    2.0546731   2.1743400
3-6 months     NIH-Crypto       BANGLADESH                     Early term           NA                1.9449565    1.8909115   1.9990016
3-6 months     PROBIT           BELARUS                        Full or late term    NA                2.0623423    2.0180475   2.1066371
3-6 months     PROBIT           BELARUS                        Preterm              NA                2.2205223    2.0966794   2.3443652
3-6 months     PROBIT           BELARUS                        Early term           NA                2.1142193    2.0712383   2.1572003
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                1.7693266    1.7239667   1.8146864
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                1.8412441    1.7412669   1.9412212
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                1.8242157    1.7459734   1.9024581
6-9 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                1.1946948    1.1010766   1.2883129
6-9 months     CMC-V-BCS-2002   INDIA                          Preterm              NA                1.3467116    1.0953211   1.5981020
6-9 months     CMC-V-BCS-2002   INDIA                          Early term           NA                1.2160122    1.0475561   1.3844683
6-9 months     COHORTS          GUATEMALA                      Full or late term    NA                1.0834988    1.0404650   1.1265326
6-9 months     COHORTS          GUATEMALA                      Preterm              NA                1.1876352    1.1118264   1.2634440
6-9 months     COHORTS          GUATEMALA                      Early term           NA                1.1155740    1.0599658   1.1711822
6-9 months     COHORTS          INDIA                          Full or late term    NA                1.1752132    1.1389419   1.2114845
6-9 months     COHORTS          INDIA                          Preterm              NA                1.2252180    1.1726140   1.2778220
6-9 months     COHORTS          INDIA                          Early term           NA                1.2210271    1.1757396   1.2663146
6-9 months     IRC              INDIA                          Full or late term    NA                1.3682174    1.3077769   1.4286578
6-9 months     IRC              INDIA                          Preterm              NA                1.3714119    1.2015679   1.5412559
6-9 months     IRC              INDIA                          Early term           NA                1.3878610    1.2842765   1.4914455
6-9 months     Keneba           GAMBIA                         Full or late term    NA                1.4352266    1.3333324   1.5371209
6-9 months     Keneba           GAMBIA                         Preterm              NA                1.3471434    1.2360803   1.4582065
6-9 months     Keneba           GAMBIA                         Early term           NA                1.4348903    1.3358923   1.5338882
6-9 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                1.3182199    1.2516641   1.3847757
6-9 months     NIH-Crypto       BANGLADESH                     Preterm              NA                1.3185061    1.2671962   1.3698160
6-9 months     NIH-Crypto       BANGLADESH                     Early term           NA                1.3410370    1.2987028   1.3833713
6-9 months     PROBIT           BELARUS                        Full or late term    NA                1.5593452    1.5244222   1.5942682
6-9 months     PROBIT           BELARUS                        Preterm              NA                1.6457309    1.5317519   1.7597098
6-9 months     PROBIT           BELARUS                        Early term           NA                1.5904004    1.5582182   1.6225825
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                1.3358259    1.2904850   1.3811668
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                1.2278406    1.1318532   1.3238280
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                1.3889970    1.3089274   1.4690665
9-12 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.9235188    0.8245630   1.0224747
9-12 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.8618371    0.7144770   1.0091973
9-12 months    CMC-V-BCS-2002   INDIA                          Early term           NA                0.8785546    0.7619407   0.9951686
9-12 months    COHORTS          GUATEMALA                      Full or late term    NA                0.9456255    0.9079506   0.9833004
9-12 months    COHORTS          GUATEMALA                      Preterm              NA                0.9369454    0.8528690   1.0210218
9-12 months    COHORTS          GUATEMALA                      Early term           NA                0.9331041    0.8861012   0.9801070
9-12 months    COHORTS          INDIA                          Full or late term    NA                1.0060687    0.9674700   1.0446675
9-12 months    COHORTS          INDIA                          Preterm              NA                0.9812017    0.9295399   1.0328635
9-12 months    COHORTS          INDIA                          Early term           NA                0.9933504    0.9477871   1.0389136
9-12 months    IRC              INDIA                          Full or late term    NA                1.1091904    1.0572551   1.1611256
9-12 months    IRC              INDIA                          Preterm              NA                1.1000338    0.9750203   1.2250473
9-12 months    IRC              INDIA                          Early term           NA                1.1610322    1.0861507   1.2359136
9-12 months    Keneba           GAMBIA                         Full or late term    NA                0.9716491    0.8839634   1.0593347
9-12 months    Keneba           GAMBIA                         Preterm              NA                0.9543978    0.8770081   1.0317874
9-12 months    Keneba           GAMBIA                         Early term           NA                0.9636176    0.8884866   1.0387486
9-12 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                1.0917860    1.0387915   1.1447806
9-12 months    NIH-Crypto       BANGLADESH                     Preterm              NA                1.1212067    1.0740533   1.1683601
9-12 months    NIH-Crypto       BANGLADESH                     Early term           NA                1.1398614    1.1012495   1.1784733
9-12 months    PROBIT           BELARUS                        Full or late term    NA                1.3608761    1.3039296   1.4178226
9-12 months    PROBIT           BELARUS                        Preterm              NA                1.4385018    1.3568418   1.5201617
9-12 months    PROBIT           BELARUS                        Early term           NA                1.3791377    1.3298857   1.4283897
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                1.0809635    1.0385956   1.1233314
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                1.0843731    0.9823983   1.1863480
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                1.0668422    0.9900591   1.1436253
12-15 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.8631491    0.7687032   0.9575951
12-15 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.8881383    0.7079528   1.0683237
12-15 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.7786412    0.6517935   0.9054889
12-15 months   COHORTS          GUATEMALA                      Full or late term    NA                0.7735060    0.7273129   0.8196991
12-15 months   COHORTS          GUATEMALA                      Preterm              NA                0.7356774    0.6485287   0.8228260
12-15 months   COHORTS          GUATEMALA                      Early term           NA                0.7753734    0.7192301   0.8315166
12-15 months   IRC              INDIA                          Full or late term    NA                0.9620911    0.9040977   1.0200845
12-15 months   IRC              INDIA                          Preterm              NA                0.9891761    0.8535338   1.1248184
12-15 months   IRC              INDIA                          Early term           NA                0.9416689    0.8757302   1.0076076
12-15 months   Keneba           GAMBIA                         Full or late term    NA                0.9456741    0.8901803   1.0011679
12-15 months   Keneba           GAMBIA                         Preterm              NA                0.8994426    0.8343624   0.9645228
12-15 months   Keneba           GAMBIA                         Early term           NA                0.9425972    0.8962958   0.9888987
12-15 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.9832701    0.9251108   1.0414295
12-15 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.9835818    0.9422220   1.0249416
12-15 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.9556962    0.9201054   0.9912869
12-15 months   PROBIT           BELARUS                        Full or late term    NA                1.2955453    0.8601866   1.7309041
12-15 months   PROBIT           BELARUS                        Preterm              NA                1.3488151    1.0808600   1.6167702
12-15 months   PROBIT           BELARUS                        Early term           NA                1.0621007    0.8118192   1.3123821
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.9284873    0.8822329   0.9747416
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                1.0464931    0.9204965   1.1724897
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.8541989    0.7866866   0.9217112
15-18 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.7882981    0.6970046   0.8795915
15-18 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5527565    0.3799273   0.7255857
15-18 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.7111157    0.6183375   0.8038939
15-18 months   COHORTS          GUATEMALA                      Full or late term    NA                0.7060114    0.6598983   0.7521245
15-18 months   COHORTS          GUATEMALA                      Preterm              NA                0.8002257    0.6951021   0.9053492
15-18 months   COHORTS          GUATEMALA                      Early term           NA                0.7790915    0.7206136   0.8375695
15-18 months   IRC              INDIA                          Full or late term    NA                0.8717916    0.8146480   0.9289351
15-18 months   IRC              INDIA                          Preterm              NA                0.8618600    0.7605745   0.9631455
15-18 months   IRC              INDIA                          Early term           NA                0.8295654    0.7697290   0.8894019
15-18 months   Keneba           GAMBIA                         Full or late term    NA                0.8866182    0.8321202   0.9411162
15-18 months   Keneba           GAMBIA                         Preterm              NA                0.9069548    0.8334816   0.9804280
15-18 months   Keneba           GAMBIA                         Early term           NA                0.8758676    0.8144748   0.9372604
15-18 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.9009247    0.8489977   0.9528516
15-18 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.9311134    0.8933518   0.9688751
15-18 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.9133583    0.8786625   0.9480540
15-18 months   PROBIT           BELARUS                        Full or late term    NA                1.0203117    0.2415980   1.7990253
15-18 months   PROBIT           BELARUS                        Preterm              NA                1.0355985   -1.6464769   3.7176740
15-18 months   PROBIT           BELARUS                        Early term           NA                1.0478528    0.6499696   1.4457359
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.9560064    0.9047070   1.0073058
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.9714600    0.8220081   1.1209120
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.9218430    0.8422687   1.0014173
18-21 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.7304788    0.6428167   0.8181409
18-21 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5721281    0.4272751   0.7169812
18-21 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.7072082    0.5677741   0.8466422
18-21 months   COHORTS          GUATEMALA                      Full or late term    NA                0.7644375    0.7184760   0.8103990
18-21 months   COHORTS          GUATEMALA                      Preterm              NA                0.7770090    0.7061648   0.8478532
18-21 months   COHORTS          GUATEMALA                      Early term           NA                0.7177967    0.6533380   0.7822555
18-21 months   IRC              INDIA                          Full or late term    NA                0.7565224    0.7065414   0.8065035
18-21 months   IRC              INDIA                          Preterm              NA                0.6963796    0.5543177   0.8384416
18-21 months   IRC              INDIA                          Early term           NA                0.7636977    0.7008433   0.8265520
18-21 months   Keneba           GAMBIA                         Full or late term    NA                0.8508543    0.7862218   0.9154867
18-21 months   Keneba           GAMBIA                         Preterm              NA                0.7840506    0.7202605   0.8478407
18-21 months   Keneba           GAMBIA                         Early term           NA                0.8391170    0.7793963   0.8988376
18-21 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.7842020    0.7307628   0.8376412
18-21 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.8113577    0.7734063   0.8493090
18-21 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.7906474    0.7554042   0.8258906
18-21 months   PROBIT           BELARUS                        Full or late term    NA                0.7938047   -0.2229618   1.8105713
18-21 months   PROBIT           BELARUS                        Preterm              NA                1.1952801    1.0391271   1.3514331
18-21 months   PROBIT           BELARUS                        Early term           NA                0.9567715    0.1071009   1.8064421
21-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6977204    0.6126784   0.7827625
21-24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.8176208    0.6094940   1.0257476
21-24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.6726873    0.5779436   0.7674310
21-24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.6409807    0.6015713   0.6803901
21-24 months   COHORTS          GUATEMALA                      Preterm              NA                0.6989472    0.6357178   0.7621765
21-24 months   COHORTS          GUATEMALA                      Early term           NA                0.7006423    0.6483698   0.7529148
21-24 months   IRC              INDIA                          Full or late term    NA                0.6989494    0.6442606   0.7536382
21-24 months   IRC              INDIA                          Preterm              NA                0.7469375    0.6158203   0.8780546
21-24 months   IRC              INDIA                          Early term           NA                0.7264815    0.6483574   0.8046056
21-24 months   Keneba           GAMBIA                         Full or late term    NA                0.6749902    0.6161984   0.7337819
21-24 months   Keneba           GAMBIA                         Preterm              NA                0.7085173    0.6475908   0.7694439
21-24 months   Keneba           GAMBIA                         Early term           NA                0.7523708    0.6863874   0.8183542
21-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.7891025    0.7205088   0.8576963
21-24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.8050023    0.7664060   0.8435986
21-24 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.7977225    0.7620454   0.8333995
21-24 months   PROBIT           BELARUS                        Full or late term    NA                0.9158201    0.4050144   1.4266257
21-24 months   PROBIT           BELARUS                        Preterm              NA                0.7649509    0.3642441   1.1656578
21-24 months   PROBIT           BELARUS                        Early term           NA                0.9300629    0.1543405   1.7057852


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                3.4781721   3.2625045   3.6938397
0-3 months     COHORTS          GUATEMALA                      NA                   NA                2.5985138   2.5488776   2.6481499
0-3 months     COHORTS          INDIA                          NA                   NA                3.5284044   3.4960504   3.5607583
0-3 months     IRC              INDIA                          NA                   NA                3.1439466   3.0314146   3.2564786
0-3 months     Keneba           GAMBIA                         NA                   NA                3.1092125   3.0623560   3.1560689
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROBIT           BELARUS                        NA                   NA                2.8134007   2.6999348   2.9268665
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.8085894   1.7027345   1.9144443
3-6 months     COHORTS          GUATEMALA                      NA                   NA                1.7551575   1.7203355   1.7899795
3-6 months     COHORTS          INDIA                          NA                   NA                1.8699710   1.8423785   1.8975635
3-6 months     IRC              INDIA                          NA                   NA                1.8770590   1.8115784   1.9425395
3-6 months     Keneba           GAMBIA                         NA                   NA                1.9509973   1.9060862   1.9959083
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROBIT           BELARUS                        NA                   NA                2.0915582   2.0504573   2.1326590
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7929660   1.7563132   1.8296188
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.2220973   1.1425692   1.3016254
6-9 months     COHORTS          GUATEMALA                      NA                   NA                1.1096071   1.0783734   1.1408408
6-9 months     COHORTS          INDIA                          NA                   NA                1.2025422   1.1774451   1.2276393
6-9 months     IRC              INDIA                          NA                   NA                1.3734741   1.3233361   1.4236120
6-9 months     Keneba           GAMBIA                         NA                   NA                1.4194056   1.3572790   1.4815322
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROBIT           BELARUS                        NA                   NA                1.5766123   1.5455111   1.6077135
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3321083   1.2954511   1.3687654
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.9032608   0.8332861   0.9732355
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.9406753   0.9124512   0.9688994
9-12 months    COHORTS          INDIA                          NA                   NA                0.9959823   0.9703083   1.0216563
9-12 months    IRC              INDIA                          NA                   NA                1.1211074   1.0804846   1.1617303
9-12 months    Keneba           GAMBIA                         NA                   NA                0.9656523   0.9150056   1.0162991
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROBIT           BELARUS                        NA                   NA                1.3719414   1.3218894   1.4219934
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0782604   1.0432786   1.1132422
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8467707   0.7759867   0.9175546
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.7678925   0.7344642   0.8013208
12-15 months   IRC              INDIA                          NA                   NA                0.9599041   0.9167165   1.0030917
12-15 months   Keneba           GAMBIA                         NA                   NA                0.9371227   0.9040056   0.9702398
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROBIT           BELARUS                        NA                   NA                1.1869393   0.8605053   1.5133732
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9264450   0.8889856   0.9639045
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339914   0.6677283   0.8002545
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.7409680   0.7058314   0.7761045
15-18 months   IRC              INDIA                          NA                   NA                0.8600773   0.8188836   0.9012711
15-18 months   Keneba           GAMBIA                         NA                   NA                0.8859463   0.8495013   0.9223913
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROBIT           BELARUS                        NA                   NA                1.0339982   0.5968654   1.4711310
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9495144   0.9074149   0.9916139
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999385   0.6329765   0.7669004
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.7539443   0.7205389   0.7873497
18-21 months   IRC              INDIA                          NA                   NA                0.7524690   0.7136632   0.7912748
18-21 months   Keneba           GAMBIA                         NA                   NA                0.8368158   0.7971504   0.8764812
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROBIT           BELARUS                        NA                   NA                0.8948530   0.2840229   1.5056831
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7100839   0.6450853   0.7750826
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.6668096   0.6383726   0.6952467
21-24 months   IRC              INDIA                          NA                   NA                0.7110023   0.6683984   0.7536061
21-24 months   Keneba           GAMBIA                         NA                   NA                0.7083004   0.6696346   0.7469662
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROBIT           BELARUS                        NA                   NA                0.9164106   0.4532958   1.3795255


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2159543   -1.0235086    0.5915999
0-3 months     CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1611776   -0.3042842    0.6266393
0-3 months     COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Preterm              Full or late term     0.0599212   -0.0911313    0.2109737
0-3 months     COHORTS          GUATEMALA                      Early term           Full or late term    -0.0275745   -0.1401953    0.0850463
0-3 months     COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          Preterm              Full or late term     0.0502294   -0.0332256    0.1336843
0-3 months     COHORTS          INDIA                          Early term           Full or late term     0.0707755   -0.0034507    0.1450018
0-3 months     IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          Preterm              Full or late term    -0.1183403   -0.4777466    0.2410660
0-3 months     IRC              INDIA                          Early term           Full or late term    -0.2484736   -0.5014508    0.0045037
0-3 months     Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         Preterm              Full or late term     0.1403163   -0.0165802    0.2972128
0-3 months     Keneba           GAMBIA                         Early term           Full or late term     0.0118807   -0.0853624    0.1091238
0-3 months     NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.0734642   -0.1736276    0.0266993
0-3 months     NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1220972   -0.2212056   -0.0229889
0-3 months     PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        Preterm              Full or late term     0.1368665    0.0086315    0.2651014
0-3 months     PROBIT           BELARUS                        Early term           Full or late term     0.0479889   -0.0118784    0.1078562
3-6 months     CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.2794752   -0.0319420    0.5908924
3-6 months     CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1710552   -0.0551571    0.3972674
3-6 months     COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0384289   -0.1470646    0.0702068
3-6 months     COHORTS          GUATEMALA                      Early term           Full or late term     0.0281048   -0.0475683    0.1037780
3-6 months     COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          Preterm              Full or late term     0.0896955    0.0177414    0.1616496
3-6 months     COHORTS          INDIA                          Early term           Full or late term     0.0760347    0.0132380    0.1388315
3-6 months     IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          Preterm              Full or late term     0.0012385   -0.2103887    0.2128657
3-6 months     IRC              INDIA                          Early term           Full or late term     0.0935051   -0.0666525    0.2536628
3-6 months     Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         Preterm              Full or late term     0.1373575    0.0073927    0.2673223
3-6 months     Keneba           GAMBIA                         Early term           Full or late term     0.0556122   -0.0413762    0.1526006
3-6 months     NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.1657670    0.0656061    0.2659280
3-6 months     NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.0037830   -0.1005975    0.0930315
3-6 months     PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        Preterm              Full or late term     0.1581800    0.0374223    0.2789377
3-6 months     PROBIT           BELARUS                        Early term           Full or late term     0.0518770    0.0207763    0.0829777
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0719175   -0.0378684    0.1817034
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0548892   -0.0355508    0.1453291
6-9 months     CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.1520168   -0.1162396    0.4202733
6-9 months     CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0213174   -0.1714047    0.2140396
6-9 months     COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Preterm              Full or late term     0.1041364    0.0169649    0.1913079
6-9 months     COHORTS          GUATEMALA                      Early term           Full or late term     0.0320752   -0.0382397    0.1023901
6-9 months     COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          Preterm              Full or late term     0.0500048   -0.0138918    0.1139015
6-9 months     COHORTS          INDIA                          Early term           Full or late term     0.0458139   -0.0122082    0.1038360
6-9 months     IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          Preterm              Full or late term     0.0031945   -0.1770831    0.1834722
6-9 months     IRC              INDIA                          Early term           Full or late term     0.0196436   -0.1002846    0.1395719
6-9 months     Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         Preterm              Full or late term    -0.0880833   -0.2388064    0.0626399
6-9 months     Keneba           GAMBIA                         Early term           Full or late term    -0.0003363   -0.1424033    0.1417307
6-9 months     NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0002862   -0.0837518    0.0843241
6-9 months     NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0228171   -0.0560617    0.1016959
6-9 months     PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        Preterm              Full or late term     0.0863856   -0.0222809    0.1950522
6-9 months     PROBIT           BELARUS                        Early term           Full or late term     0.0310551    0.0027902    0.0593200
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.1079854   -0.2141427   -0.0018280
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0531710   -0.0388449    0.1451869
9-12 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0616817   -0.2391846    0.1158212
9-12 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0449642   -0.1979057    0.1079772
9-12 months    COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0086801   -0.1008117    0.0834515
9-12 months    COHORTS          GUATEMALA                      Early term           Full or late term    -0.0125214   -0.0727599    0.0477170
9-12 months    COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          Preterm              Full or late term    -0.0248670   -0.0893559    0.0396218
9-12 months    COHORTS          INDIA                          Early term           Full or late term    -0.0127184   -0.0724333    0.0469966
9-12 months    IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          Preterm              Full or late term    -0.0091566   -0.1445288    0.1262157
9-12 months    IRC              INDIA                          Early term           Full or late term     0.0518418   -0.0392873    0.1429709
9-12 months    Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         Preterm              Full or late term    -0.0172513   -0.1342040    0.0997014
9-12 months    Keneba           GAMBIA                         Early term           Full or late term    -0.0080315   -0.1235020    0.1074390
9-12 months    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0294207   -0.0415150    0.1003564
9-12 months    NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0480754   -0.0174937    0.1136444
9-12 months    PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        Preterm              Full or late term     0.0776257    0.0004054    0.1548460
9-12 months    PROBIT           BELARUS                        Early term           Full or late term     0.0182616   -0.0181742    0.0546974
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0034097   -0.1070164    0.1138357
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0141212   -0.1018178    0.0735753
12-15 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0249891   -0.1784484    0.2284267
12-15 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0845079   -0.2426547    0.0736388
12-15 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0378286   -0.1364627    0.0608055
12-15 months   COHORTS          GUATEMALA                      Early term           Full or late term     0.0018674   -0.0708366    0.0745713
12-15 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          Preterm              Full or late term     0.0270850   -0.1204348    0.1746047
12-15 months   IRC              INDIA                          Early term           Full or late term    -0.0204222   -0.1082354    0.0673910
12-15 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.0462315   -0.1317592    0.0392962
12-15 months   Keneba           GAMBIA                         Early term           Full or late term    -0.0030769   -0.0753499    0.0691961
12-15 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0003117   -0.0710546    0.0716780
12-15 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.0275740   -0.0957592    0.0406112
12-15 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        Preterm              Full or late term     0.0532697   -0.4013370    0.5078765
12-15 months   PROBIT           BELARUS                        Early term           Full or late term    -0.2334447   -0.5222269    0.0553375
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.1180058   -0.0162127    0.2522243
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0742884   -0.1561259    0.0075491
15-18 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2355415   -0.4310010   -0.0400820
15-18 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0771824   -0.2073449    0.0529802
15-18 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Preterm              Full or late term     0.0942142   -0.0205786    0.2090070
15-18 months   COHORTS          GUATEMALA                      Early term           Full or late term     0.0730801   -0.0013919    0.1475522
15-18 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          Preterm              Full or late term    -0.0099316   -0.1262249    0.1063617
15-18 months   IRC              INDIA                          Early term           Full or late term    -0.0422262   -0.1249654    0.0405131
15-18 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         Preterm              Full or late term     0.0203366   -0.0711421    0.1118153
15-18 months   Keneba           GAMBIA                         Early term           Full or late term    -0.0107506   -0.0928427    0.0713415
15-18 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0301888   -0.0340168    0.0943943
15-18 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0124336   -0.0500180    0.0748852
15-18 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        Preterm              Full or late term     0.0152869   -2.8303509    2.8609246
15-18 months   PROBIT           BELARUS                        Early term           Full or late term     0.0275411   -0.8455035    0.9005856
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0154536   -0.1425575    0.1734647
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0341634   -0.1288402    0.0605134
18-21 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.1583507   -0.3276642    0.0109628
18-21 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0232707   -0.1879719    0.1414306
18-21 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Preterm              Full or late term     0.0125715   -0.0718759    0.0970189
18-21 months   COHORTS          GUATEMALA                      Early term           Full or late term    -0.0466408   -0.1258076    0.0325261
18-21 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          Preterm              Full or late term    -0.0601428   -0.2107406    0.0904551
18-21 months   IRC              INDIA                          Early term           Full or late term     0.0071753   -0.0731290    0.0874795
18-21 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.0668036   -0.1576140    0.0240068
18-21 months   Keneba           GAMBIA                         Early term           Full or late term    -0.0117373   -0.0997368    0.0762622
18-21 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0271556   -0.0383886    0.0926999
18-21 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0064454   -0.0575689    0.0704597
18-21 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        Preterm              Full or late term     0.4014754   -0.6011780    1.4041287
18-21 months   PROBIT           BELARUS                        Early term           Full or late term     0.1629668   -1.1630017    1.4889353
21-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.1199004   -0.1049305    0.3447312
21-24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0250331   -0.1523458    0.1022796
21-24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Preterm              Full or late term     0.0579665   -0.0165389    0.1324719
21-24 months   COHORTS          GUATEMALA                      Early term           Full or late term     0.0596616   -0.0058023    0.1251254
21-24 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          Preterm              Full or late term     0.0479880   -0.0940774    0.1900534
21-24 months   IRC              INDIA                          Early term           Full or late term     0.0275320   -0.0678317    0.1228958
21-24 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         Preterm              Full or late term     0.0335272   -0.0511399    0.1181942
21-24 months   Keneba           GAMBIA                         Early term           Full or late term     0.0773806   -0.0109951    0.1657564
21-24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term     0.0158998   -0.0628071    0.0946067
21-24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term     0.0086199   -0.0686973    0.0859371
21-24 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        Preterm              Full or late term    -0.1508692   -0.8295899    0.5278516
21-24 months   PROBIT           BELARUS                        Early term           Full or late term     0.0142428   -0.8892150    0.9177005


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0134530   -0.1579224    0.1848283
0-3 months     COHORTS          GUATEMALA                      Full or late term    NA                 0.0014541   -0.0435914    0.0464996
0-3 months     COHORTS          INDIA                          Full or late term    NA                 0.0351103   -0.0013213    0.0715419
0-3 months     IRC              INDIA                          Full or late term    NA                -0.0762348   -0.1587012    0.0062316
0-3 months     Keneba           GAMBIA                         Full or late term    NA                 0.0251916   -0.0231236    0.0735068
0-3 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0776655   -0.1484530   -0.0068780
0-3 months     PROBIT           BELARUS                        Full or late term    NA                 0.0266003   -0.0032523    0.0564529
3-6 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0842735    0.0008474    0.1676996
3-6 months     COHORTS          GUATEMALA                      Full or late term    NA                 0.0016639   -0.0305718    0.0338996
3-6 months     COHORTS          INDIA                          Full or late term    NA                 0.0462103    0.0148398    0.0775808
3-6 months     IRC              INDIA                          Full or late term    NA                 0.0235752   -0.0267299    0.0738803
3-6 months     Keneba           GAMBIA                         Full or late term    NA                 0.0414770   -0.0065365    0.0894905
3-6 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0570577   -0.0133434    0.1274589
3-6 months     PROBIT           BELARUS                        Full or late term    NA                 0.0292159    0.0133685    0.0450633
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0236394   -0.0057365    0.0530153
6-9 months     CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0274025   -0.0383286    0.0931337
6-9 months     COHORTS          GUATEMALA                      Full or late term    NA                 0.0261084   -0.0021109    0.0543276
6-9 months     COHORTS          INDIA                          Full or late term    NA                 0.0273290   -0.0014494    0.0561075
6-9 months     IRC              INDIA                          Full or late term    NA                 0.0052567   -0.0331901    0.0437035
6-9 months     Keneba           GAMBIA                         Full or late term    NA                -0.0158210   -0.0855751    0.0539331
6-9 months     NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0100496   -0.0482899    0.0683890
6-9 months     PROBIT           BELARUS                        Full or late term    NA                 0.0172670    0.0036279    0.0309061
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0037177   -0.0329119    0.0254765
9-12 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0202581   -0.0736001    0.0330840
9-12 months    COHORTS          GUATEMALA                      Full or late term    NA                -0.0049502   -0.0301984    0.0202980
9-12 months    COHORTS          INDIA                          Full or late term    NA                -0.0100864   -0.0399170    0.0197441
9-12 months    IRC              INDIA                          Full or late term    NA                 0.0119170   -0.0179613    0.0417954
9-12 months    Keneba           GAMBIA                         Full or late term    NA                -0.0059967   -0.0613282    0.0493348
9-12 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0316884   -0.0168464    0.0802233
9-12 months    PROBIT           BELARUS                        Full or late term    NA                 0.0110653   -0.0071757    0.0293063
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0027031   -0.0295855    0.0241794
12-15 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0163785   -0.0704632    0.0377063
12-15 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0056135   -0.0344982    0.0232712
12-15 months   IRC              INDIA                          Full or late term    NA                -0.0021870   -0.0331093    0.0287352
12-15 months   Keneba           GAMBIA                         Full or late term    NA                -0.0085514   -0.0434788    0.0263761
12-15 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0121307   -0.0633401    0.0390787
12-15 months   PROBIT           BELARUS                        Full or late term    NA                -0.1086061   -0.2522383    0.0350261
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0020423   -0.0316552    0.0275707
15-18 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0543066   -0.1045381   -0.0040751
15-18 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0349565    0.0042220    0.0656910
15-18 months   IRC              INDIA                          Full or late term    NA                -0.0117143   -0.0391440    0.0157155
15-18 months   Keneba           GAMBIA                         Full or late term    NA                -0.0006719   -0.0367200    0.0353762
15-18 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0167921   -0.0304529    0.0640372
15-18 months   PROBIT           BELARUS                        Full or late term    NA                 0.0136865   -0.4619198    0.4892927
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0064920   -0.0394664    0.0264824
18-21 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0305403   -0.0862094    0.0251287
18-21 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0104932   -0.0396397    0.0186533
18-21 months   IRC              INDIA                          Full or late term    NA                -0.0040534   -0.0313037    0.0231969
18-21 months   Keneba           GAMBIA                         Full or late term    NA                -0.0140385   -0.0539869    0.0259099
18-21 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0135735   -0.0363308    0.0634778
18-21 months   PROBIT           BELARUS                        Full or late term    NA                 0.1010483   -0.6398360    0.8419326
21-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0123635   -0.0394793    0.0642063
21-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0258289    0.0010327    0.0506251
21-24 months   IRC              INDIA                          Full or late term    NA                 0.0120528   -0.0191627    0.0432684
21-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0333102   -0.0064334    0.0730539
21-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0102328   -0.0522574    0.0727230
21-24 months   PROBIT           BELARUS                        Full or late term    NA                 0.0005906   -0.4621320    0.4633132
