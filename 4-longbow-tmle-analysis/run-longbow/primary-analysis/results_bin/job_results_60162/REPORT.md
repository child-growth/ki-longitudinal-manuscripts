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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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

agecat      studyid          country                        gagebrth             sstunted   n_cell       n
----------  ---------------  -----------------------------  ------------------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term           0       55      92
Birth       CMC-V-BCS-2002   INDIA                          Full or late term           1        3      92
Birth       CMC-V-BCS-2002   INDIA                          Preterm                     0       10      92
Birth       CMC-V-BCS-2002   INDIA                          Preterm                     1        1      92
Birth       CMC-V-BCS-2002   INDIA                          Early term                  0       23      92
Birth       CMC-V-BCS-2002   INDIA                          Early term                  1        0      92
Birth       COHORTS          GUATEMALA                      Full or late term           0      338     617
Birth       COHORTS          GUATEMALA                      Full or late term           1        3     617
Birth       COHORTS          GUATEMALA                      Preterm                     0       91     617
Birth       COHORTS          GUATEMALA                      Preterm                     1        4     617
Birth       COHORTS          GUATEMALA                      Early term                  0      179     617
Birth       COHORTS          GUATEMALA                      Early term                  1        2     617
Birth       COHORTS          INDIA                          Full or late term           0      562    1293
Birth       COHORTS          INDIA                          Full or late term           1        8    1293
Birth       COHORTS          INDIA                          Preterm                     0      269    1293
Birth       COHORTS          INDIA                          Preterm                     1       16    1293
Birth       COHORTS          INDIA                          Early term                  0      431    1293
Birth       COHORTS          INDIA                          Early term                  1        7    1293
Birth       COHORTS          PHILIPPINES                    Full or late term           0     1161    3024
Birth       COHORTS          PHILIPPINES                    Full or late term           1        3    3024
Birth       COHORTS          PHILIPPINES                    Preterm                     0      618    3024
Birth       COHORTS          PHILIPPINES                    Preterm                     1       31    3024
Birth       COHORTS          PHILIPPINES                    Early term                  0     1199    3024
Birth       COHORTS          PHILIPPINES                    Early term                  1       12    3024
Birth       IRC              INDIA                          Full or late term           0      228     369
Birth       IRC              INDIA                          Full or late term           1       10     369
Birth       IRC              INDIA                          Preterm                     0       33     369
Birth       IRC              INDIA                          Preterm                     1        3     369
Birth       IRC              INDIA                          Early term                  0       93     369
Birth       IRC              INDIA                          Early term                  1        2     369
Birth       JiVitA-3         BANGLADESH                     Full or late term           0    10402   21442
Birth       JiVitA-3         BANGLADESH                     Full or late term           1      542   21442
Birth       JiVitA-3         BANGLADESH                     Preterm                     0     3299   21442
Birth       JiVitA-3         BANGLADESH                     Preterm                     1     1215   21442
Birth       JiVitA-3         BANGLADESH                     Early term                  0     5384   21442
Birth       JiVitA-3         BANGLADESH                     Early term                  1      600   21442
Birth       Keneba           GAMBIA                         Full or late term           0      726    1515
Birth       Keneba           GAMBIA                         Full or late term           1        8    1515
Birth       Keneba           GAMBIA                         Preterm                     0      219    1515
Birth       Keneba           GAMBIA                         Preterm                     1       16    1515
Birth       Keneba           GAMBIA                         Early term                  0      541    1515
Birth       Keneba           GAMBIA                         Early term                  1        5    1515
Birth       NIH-Crypto       BANGLADESH                     Full or late term           0      162     732
Birth       NIH-Crypto       BANGLADESH                     Full or late term           1        0     732
Birth       NIH-Crypto       BANGLADESH                     Preterm                     0      250     732
Birth       NIH-Crypto       BANGLADESH                     Preterm                     1        7     732
Birth       NIH-Crypto       BANGLADESH                     Early term                  0      310     732
Birth       NIH-Crypto       BANGLADESH                     Early term                  1        3     732
Birth       PROBIT           BELARUS                        Full or late term           0     7099   13893
Birth       PROBIT           BELARUS                        Full or late term           1        1   13893
Birth       PROBIT           BELARUS                        Preterm                     0      472   13893
Birth       PROBIT           BELARUS                        Preterm                     1        0   13893
Birth       PROBIT           BELARUS                        Early term                  0     6317   13893
Birth       PROBIT           BELARUS                        Early term                  1        4   13893
6 months    CMC-V-BCS-2002   INDIA                          Full or late term           0      190     347
6 months    CMC-V-BCS-2002   INDIA                          Full or late term           1       22     347
6 months    CMC-V-BCS-2002   INDIA                          Preterm                     0       42     347
6 months    CMC-V-BCS-2002   INDIA                          Preterm                     1       10     347
6 months    CMC-V-BCS-2002   INDIA                          Early term                  0       77     347
6 months    CMC-V-BCS-2002   INDIA                          Early term                  1        6     347
6 months    COHORTS          GUATEMALA                      Full or late term           0      356     713
6 months    COHORTS          GUATEMALA                      Full or late term           1       33     713
6 months    COHORTS          GUATEMALA                      Preterm                     0       86     713
6 months    COHORTS          GUATEMALA                      Preterm                     1       27     713
6 months    COHORTS          GUATEMALA                      Early term                  0      178     713
6 months    COHORTS          GUATEMALA                      Early term                  1       33     713
6 months    COHORTS          INDIA                          Full or late term           0      556    1312
6 months    COHORTS          INDIA                          Full or late term           1       12    1312
6 months    COHORTS          INDIA                          Preterm                     0      285    1312
6 months    COHORTS          INDIA                          Preterm                     1       14    1312
6 months    COHORTS          INDIA                          Early term                  0      432    1312
6 months    COHORTS          INDIA                          Early term                  1       13    1312
6 months    COHORTS          PHILIPPINES                    Full or late term           0      988    2687
6 months    COHORTS          PHILIPPINES                    Full or late term           1       40    2687
6 months    COHORTS          PHILIPPINES                    Preterm                     0      530    2687
6 months    COHORTS          PHILIPPINES                    Preterm                     1       43    2687
6 months    COHORTS          PHILIPPINES                    Early term                  0     1038    2687
6 months    COHORTS          PHILIPPINES                    Early term                  1       48    2687
6 months    IRC              INDIA                          Full or late term           0      233     388
6 months    IRC              INDIA                          Full or late term           1       16     388
6 months    IRC              INDIA                          Preterm                     0       34     388
6 months    IRC              INDIA                          Preterm                     1        8     388
6 months    IRC              INDIA                          Early term                  0       93     388
6 months    IRC              INDIA                          Early term                  1        4     388
6 months    JiVitA-3         BANGLADESH                     Full or late term           0     8175   16010
6 months    JiVitA-3         BANGLADESH                     Full or late term           1      352   16010
6 months    JiVitA-3         BANGLADESH                     Preterm                     0     2688   16010
6 months    JiVitA-3         BANGLADESH                     Preterm                     1      357   16010
6 months    JiVitA-3         BANGLADESH                     Early term                  0     4169   16010
6 months    JiVitA-3         BANGLADESH                     Early term                  1      269   16010
6 months    Keneba           GAMBIA                         Full or late term           0      637    1374
6 months    Keneba           GAMBIA                         Full or late term           1       21    1374
6 months    Keneba           GAMBIA                         Preterm                     0      197    1374
6 months    Keneba           GAMBIA                         Preterm                     1       10    1374
6 months    Keneba           GAMBIA                         Early term                  0      505    1374
6 months    Keneba           GAMBIA                         Early term                  1        4    1374
6 months    NIH-Crypto       BANGLADESH                     Full or late term           0      153     715
6 months    NIH-Crypto       BANGLADESH                     Full or late term           1        2     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                     0      236     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                     1       15     715
6 months    NIH-Crypto       BANGLADESH                     Early term                  0      303     715
6 months    NIH-Crypto       BANGLADESH                     Early term                  1        6     715
6 months    PROBIT           BELARUS                        Full or late term           0     7931   15760
6 months    PROBIT           BELARUS                        Full or late term           1       76   15760
6 months    PROBIT           BELARUS                        Preterm                     0      538   15760
6 months    PROBIT           BELARUS                        Preterm                     1       13   15760
6 months    PROBIT           BELARUS                        Early term                  0     7114   15760
6 months    PROBIT           BELARUS                        Early term                  1       88   15760
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           0     1159    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           1        8    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     0      284    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     1        7    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  0      443    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  1        2    1903
24 months   CMC-V-BCS-2002   INDIA                          Full or late term           0      147     349
24 months   CMC-V-BCS-2002   INDIA                          Full or late term           1       66     349
24 months   CMC-V-BCS-2002   INDIA                          Preterm                     0       31     349
24 months   CMC-V-BCS-2002   INDIA                          Preterm                     1       21     349
24 months   CMC-V-BCS-2002   INDIA                          Early term                  0       56     349
24 months   CMC-V-BCS-2002   INDIA                          Early term                  1       28     349
24 months   COHORTS          GUATEMALA                      Full or late term           0      196     661
24 months   COHORTS          GUATEMALA                      Full or late term           1      179     661
24 months   COHORTS          GUATEMALA                      Preterm                     0       50     661
24 months   COHORTS          GUATEMALA                      Preterm                     1       57     661
24 months   COHORTS          GUATEMALA                      Early term                  0       89     661
24 months   COHORTS          GUATEMALA                      Early term                  1       90     661
24 months   COHORTS          INDIA                          Full or late term           0      458    1308
24 months   COHORTS          INDIA                          Full or late term           1      107    1308
24 months   COHORTS          INDIA                          Preterm                     0      228    1308
24 months   COHORTS          INDIA                          Preterm                     1       77    1308
24 months   COHORTS          INDIA                          Early term                  0      344    1308
24 months   COHORTS          INDIA                          Early term                  1       94    1308
24 months   COHORTS          PHILIPPINES                    Full or late term           0      694    2424
24 months   COHORTS          PHILIPPINES                    Full or late term           1      244    2424
24 months   COHORTS          PHILIPPINES                    Preterm                     0      343    2424
24 months   COHORTS          PHILIPPINES                    Preterm                     1      170    2424
24 months   COHORTS          PHILIPPINES                    Early term                  0      686    2424
24 months   COHORTS          PHILIPPINES                    Early term                  1      287    2424
24 months   IRC              INDIA                          Full or late term           0      230     390
24 months   IRC              INDIA                          Full or late term           1       20     390
24 months   IRC              INDIA                          Preterm                     0       33     390
24 months   IRC              INDIA                          Preterm                     1        9     390
24 months   IRC              INDIA                          Early term                  0       89     390
24 months   IRC              INDIA                          Early term                  1        9     390
24 months   JiVitA-3         BANGLADESH                     Full or late term           0     3733    8202
24 months   JiVitA-3         BANGLADESH                     Full or late term           1      594    8202
24 months   JiVitA-3         BANGLADESH                     Preterm                     0     1258    8202
24 months   JiVitA-3         BANGLADESH                     Preterm                     1      346    8202
24 months   JiVitA-3         BANGLADESH                     Early term                  0     1923    8202
24 months   JiVitA-3         BANGLADESH                     Early term                  1      348    8202
24 months   Keneba           GAMBIA                         Full or late term           0      510    1156
24 months   Keneba           GAMBIA                         Full or late term           1       47    1156
24 months   Keneba           GAMBIA                         Preterm                     0      145    1156
24 months   Keneba           GAMBIA                         Preterm                     1       22    1156
24 months   Keneba           GAMBIA                         Early term                  0      408    1156
24 months   Keneba           GAMBIA                         Early term                  1       24    1156
24 months   NIH-Crypto       BANGLADESH                     Full or late term           0       77     514
24 months   NIH-Crypto       BANGLADESH                     Full or late term           1        2     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                     0      188     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                     1       20     514
24 months   NIH-Crypto       BANGLADESH                     Early term                  0      213     514
24 months   NIH-Crypto       BANGLADESH                     Early term                  1       14     514
24 months   PROBIT           BELARUS                        Full or late term           0     1998    4035
24 months   PROBIT           BELARUS                        Full or late term           1       27    4035
24 months   PROBIT           BELARUS                        Preterm                     0      134    4035
24 months   PROBIT           BELARUS                        Preterm                     1        3    4035
24 months   PROBIT           BELARUS                        Early term                  0     1838    4035
24 months   PROBIT           BELARUS                        Early term                  1       35    4035
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  1        0       6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/e65da292-a8e0-4c48-b5b6-151aaf94894d/c1a30ca7-5150-4aee-8a30-4941a24db1ed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e65da292-a8e0-4c48-b5b6-151aaf94894d/c1a30ca7-5150-4aee-8a30-4941a24db1ed/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e65da292-a8e0-4c48-b5b6-151aaf94894d/c1a30ca7-5150-4aee-8a30-4941a24db1ed/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e65da292-a8e0-4c48-b5b6-151aaf94894d/c1a30ca7-5150-4aee-8a30-4941a24db1ed/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         Full or late term    NA                0.0140351   0.0043742   0.0236960
Birth       COHORTS          INDIA         Preterm              NA                0.0561404   0.0294051   0.0828756
Birth       COHORTS          INDIA         Early term           NA                0.0159817   0.0042330   0.0277305
Birth       JiVitA-3         BANGLADESH    Full or late term    NA                0.0500047   0.0456180   0.0543913
Birth       JiVitA-3         BANGLADESH    Preterm              NA                0.2650782   0.2511262   0.2790303
Birth       JiVitA-3         BANGLADESH    Early term           NA                0.1009950   0.0925423   0.1094477
Birth       Keneba           GAMBIA        Full or late term    NA                0.0108992   0.0033854   0.0184130
Birth       Keneba           GAMBIA        Preterm              NA                0.0680851   0.0358691   0.1003011
Birth       Keneba           GAMBIA        Early term           NA                0.0091575   0.0011649   0.0171501
6 months    CMC-V-BCS-2002   INDIA         Full or late term    NA                0.1037736   0.0626625   0.1448847
6 months    CMC-V-BCS-2002   INDIA         Preterm              NA                0.1923077   0.0850337   0.2995817
6 months    CMC-V-BCS-2002   INDIA         Early term           NA                0.0722892   0.0164963   0.1280820
6 months    COHORTS          GUATEMALA     Full or late term    NA                0.0864602   0.0586452   0.1142751
6 months    COHORTS          GUATEMALA     Preterm              NA                0.2246018   0.1451092   0.3040944
6 months    COHORTS          GUATEMALA     Early term           NA                0.1564004   0.1066212   0.2061797
6 months    COHORTS          INDIA         Full or late term    NA                0.0207757   0.0090538   0.0324975
6 months    COHORTS          INDIA         Preterm              NA                0.0481407   0.0238956   0.0723859
6 months    COHORTS          INDIA         Early term           NA                0.0298546   0.0138977   0.0458115
6 months    COHORTS          PHILIPPINES   Full or late term    NA                0.0389638   0.0271194   0.0508081
6 months    COHORTS          PHILIPPINES   Preterm              NA                0.0712978   0.0502458   0.0923498
6 months    COHORTS          PHILIPPINES   Early term           NA                0.0448520   0.0325790   0.0571250
6 months    JiVitA-3         BANGLADESH    Full or late term    NA                0.0423702   0.0381221   0.0466183
6 months    JiVitA-3         BANGLADESH    Preterm              NA                0.1129110   0.1013239   0.1244981
6 months    JiVitA-3         BANGLADESH    Early term           NA                0.0596823   0.0521578   0.0672069
6 months    PROBIT           BELARUS       Full or late term    NA                0.0096838   0.0043240   0.0150436
6 months    PROBIT           BELARUS       Preterm              NA                0.0233828   0.0048319   0.0419338
6 months    PROBIT           BELARUS       Early term           NA                0.0122783   0.0057114   0.0188451
24 months   CMC-V-BCS-2002   INDIA         Full or late term    NA                0.3097538   0.2475029   0.3720047
24 months   CMC-V-BCS-2002   INDIA         Preterm              NA                0.3922463   0.2563482   0.5281444
24 months   CMC-V-BCS-2002   INDIA         Early term           NA                0.3235838   0.2211475   0.4260202
24 months   COHORTS          GUATEMALA     Full or late term    NA                0.4783387   0.4279187   0.5287587
24 months   COHORTS          GUATEMALA     Preterm              NA                0.5319797   0.4373926   0.6265667
24 months   COHORTS          GUATEMALA     Early term           NA                0.4974997   0.4243063   0.5706932
24 months   COHORTS          INDIA         Full or late term    NA                0.1865633   0.1551621   0.2179645
24 months   COHORTS          INDIA         Preterm              NA                0.2419723   0.1948811   0.2890634
24 months   COHORTS          INDIA         Early term           NA                0.2232530   0.1856078   0.2608981
24 months   COHORTS          PHILIPPINES   Full or late term    NA                0.2595010   0.2321221   0.2868799
24 months   COHORTS          PHILIPPINES   Preterm              NA                0.3273379   0.2876905   0.3669854
24 months   COHORTS          PHILIPPINES   Early term           NA                0.2977611   0.2696751   0.3258471
24 months   IRC              INDIA         Full or late term    NA                0.0800000   0.0463276   0.1136724
24 months   IRC              INDIA         Preterm              NA                0.2142857   0.0900319   0.3385396
24 months   IRC              INDIA         Early term           NA                0.0918367   0.0345858   0.1490877
24 months   JiVitA-3         BANGLADESH    Full or late term    NA                0.1399389   0.1283823   0.1514955
24 months   JiVitA-3         BANGLADESH    Preterm              NA                0.2032006   0.1829193   0.2234820
24 months   JiVitA-3         BANGLADESH    Early term           NA                0.1523741   0.1355880   0.1691602
24 months   Keneba           GAMBIA        Full or late term    NA                0.0835184   0.0603531   0.1066836
24 months   Keneba           GAMBIA        Preterm              NA                0.1428848   0.0930731   0.1926965
24 months   Keneba           GAMBIA        Early term           NA                0.0573051   0.0359866   0.0786236


### Parameter: E(Y)


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         NA                   NA                0.0239753   0.0156340   0.0323165
Birth       JiVitA-3         BANGLADESH    NA                   NA                0.1099244   0.1052719   0.1145770
Birth       Keneba           GAMBIA        NA                   NA                0.0191419   0.0122398   0.0260440
6 months    CMC-V-BCS-2002   INDIA         NA                   NA                0.1095101   0.0766059   0.1424143
6 months    COHORTS          GUATEMALA     NA                   NA                0.1304348   0.1056973   0.1551723
6 months    COHORTS          INDIA         NA                   NA                0.0297256   0.0205326   0.0389187
6 months    COHORTS          PHILIPPINES   NA                   NA                0.0487533   0.0406091   0.0568974
6 months    JiVitA-3         BANGLADESH    NA                   NA                0.0610868   0.0571240   0.0650496
6 months    PROBIT           BELARUS       NA                   NA                0.0112310   0.0054733   0.0169886
24 months   CMC-V-BCS-2002   INDIA         NA                   NA                0.3295129   0.2801285   0.3788973
24 months   COHORTS          GUATEMALA     NA                   NA                0.4931921   0.4550499   0.5313343
24 months   COHORTS          INDIA         NA                   NA                0.2125382   0.1903591   0.2347173
24 months   COHORTS          PHILIPPINES   NA                   NA                0.2891914   0.2711388   0.3072440
24 months   IRC              INDIA         NA                   NA                0.0974359   0.0679665   0.1269053
24 months   JiVitA-3         BANGLADESH    NA                   NA                0.1570349   0.1479400   0.1661298
24 months   Keneba           GAMBIA        NA                   NA                0.0804498   0.0647640   0.0961357


### Parameter: RR


agecat      studyid          country       intervention_level   baseline_level        estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ------------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       COHORTS          INDIA         Preterm              Full or late term    4.0000000   1.7320013    9.237869
Birth       COHORTS          INDIA         Early term           Full or late term    1.1386986   0.4159430    3.117338
Birth       JiVitA-3         BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       JiVitA-3         BANGLADESH    Preterm              Full or late term    5.3010719   4.7717424    5.889120
Birth       JiVitA-3         BANGLADESH    Early term           Full or late term    2.0197117   1.7984120    2.268243
Birth       Keneba           GAMBIA        Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       Keneba           GAMBIA        Preterm              Full or late term    6.2468085   2.7072028   14.414368
Birth       Keneba           GAMBIA        Early term           Full or late term    0.8402015   0.2762834    2.555125
6 months    CMC-V-BCS-2002   INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    CMC-V-BCS-2002   INDIA         Preterm              Full or late term    1.8531469   0.9349126    3.673234
6 months    CMC-V-BCS-2002   INDIA         Early term           Full or late term    0.6966046   0.2925632    1.658643
6 months    COHORTS          GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    COHORTS          GUATEMALA     Preterm              Full or late term    2.5977489   1.6122020    4.185765
6 months    COHORTS          GUATEMALA     Early term           Full or late term    1.8089309   1.1514985    2.841715
6 months    COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    COHORTS          INDIA         Preterm              Full or late term    2.3171680   1.0886956    4.931835
6 months    COHORTS          INDIA         Early term           Full or late term    1.4369997   0.6612289    3.122925
6 months    COHORTS          PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    COHORTS          PHILIPPINES   Preterm              Full or late term    1.8298500   1.1981314    2.794644
6 months    COHORTS          PHILIPPINES   Early term           Full or late term    1.1511207   0.7653097    1.731428
6 months    JiVitA-3         BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    JiVitA-3         BANGLADESH    Preterm              Full or late term    2.6648675   2.3253665    3.053935
6 months    JiVitA-3         BANGLADESH    Early term           Full or late term    1.4085915   1.1970271    1.657548
6 months    PROBIT           BELARUS       Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    PROBIT           BELARUS       Preterm              Full or late term    2.4146331   0.9980806    5.841665
6 months    PROBIT           BELARUS       Early term           Full or late term    1.2679180   0.9691984    1.658707
24 months   CMC-V-BCS-2002   INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   CMC-V-BCS-2002   INDIA         Preterm              Full or late term    1.2663163   0.8482929    1.890334
24 months   CMC-V-BCS-2002   INDIA         Early term           Full or late term    1.0446484   0.7178163    1.520292
24 months   COHORTS          GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   COHORTS          GUATEMALA     Preterm              Full or late term    1.1121401   0.9051432    1.366475
24 months   COHORTS          GUATEMALA     Early term           Full or late term    1.0400574   0.8683958    1.245652
24 months   COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   COHORTS          INDIA         Preterm              Full or late term    1.2969985   1.0068525    1.670756
24 months   COHORTS          INDIA         Early term           Full or late term    1.1966610   0.9475721    1.511228
24 months   COHORTS          PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   COHORTS          PHILIPPINES   Preterm              Full or late term    1.2614131   1.0762818    1.478389
24 months   COHORTS          PHILIPPINES   Early term           Full or late term    1.1474374   0.9983982    1.318725
24 months   IRC              INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   IRC              INDIA         Preterm              Full or late term    2.6785714   1.3083567    5.483783
24 months   IRC              INDIA         Early term           Full or late term    1.1479592   0.5410719    2.435555
24 months   JiVitA-3         BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   JiVitA-3         BANGLADESH    Preterm              Full or late term    1.4520669   1.2806319    1.646451
24 months   JiVitA-3         BANGLADESH    Early term           Full or late term    1.0888620   0.9568457    1.239092
24 months   Keneba           GAMBIA        Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   Keneba           GAMBIA        Preterm              Full or late term    1.7108190   1.0974465    2.667011
24 months   Keneba           GAMBIA        Early term           Full or late term    0.6861378   0.4318681    1.090113


### Parameter: PAR


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          INDIA         Full or late term    NA                 0.0099402    0.0009613   0.0189190
Birth       JiVitA-3         BANGLADESH    Full or late term    NA                 0.0599198    0.0554456   0.0643940
Birth       Keneba           GAMBIA        Full or late term    NA                 0.0082427    0.0012149   0.0152706
6 months    CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0057365   -0.0208651   0.0323381
6 months    COHORTS          GUATEMALA     Full or late term    NA                 0.0439746    0.0207633   0.0671859
6 months    COHORTS          INDIA         Full or late term    NA                 0.0089499   -0.0011267   0.0190266
6 months    COHORTS          PHILIPPINES   Full or late term    NA                 0.0097895   -0.0001787   0.0197577
6 months    JiVitA-3         BANGLADESH    Full or late term    NA                 0.0187166    0.0150465   0.0223867
6 months    PROBIT           BELARUS       Full or late term    NA                 0.0015472   -0.0003105   0.0034048
24 months   CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0197591   -0.0201453   0.0596635
24 months   COHORTS          GUATEMALA     Full or late term    NA                 0.0148534   -0.0182613   0.0479681
24 months   COHORTS          INDIA         Full or late term    NA                 0.0259750    0.0019211   0.0500288
24 months   COHORTS          PHILIPPINES   Full or late term    NA                 0.0296904    0.0081053   0.0512755
24 months   IRC              INDIA         Full or late term    NA                 0.0174359   -0.0059874   0.0408591
24 months   JiVitA-3         BANGLADESH    Full or late term    NA                 0.0170960    0.0094819   0.0247101
24 months   Keneba           GAMBIA        Full or late term    NA                -0.0030685   -0.0192735   0.0131364


### Parameter: PAF


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          INDIA         Full or late term    NA                 0.4146010   -0.0580236   0.6761018
Birth       JiVitA-3         BANGLADESH    Full or late term    NA                 0.5450998    0.5094580   0.5781520
Birth       Keneba           GAMBIA        Full or late term    NA                 0.4306117   -0.0227788   0.6830174
6 months    CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0523833   -0.2240006   0.2663587
6 months    COHORTS          GUATEMALA     Full or late term    NA                 0.3371388    0.1456998   0.4856785
6 months    COHORTS          INDIA         Full or late term    NA                 0.3010849   -0.1160675   0.5623183
6 months    COHORTS          PHILIPPINES   Full or late term    NA                 0.2007967   -0.0289604   0.3792513
6 months    JiVitA-3         BANGLADESH    Full or late term    NA                 0.3063934    0.2485064   0.3598214
6 months    PROBIT           BELARUS       Full or late term    NA                 0.1377581   -0.0309645   0.2788684
24 months   CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0599645   -0.0692580   0.1735701
24 months   COHORTS          GUATEMALA     Full or late term    NA                 0.0301169   -0.0394396   0.0950188
24 months   COHORTS          INDIA         Full or late term    NA                 0.1222132    0.0017505   0.2281391
24 months   COHORTS          PHILIPPINES   Full or late term    NA                 0.1026670    0.0249137   0.1742203
24 months   IRC              INDIA         Full or late term    NA                 0.1789474   -0.0935755   0.3835566
24 months   JiVitA-3         BANGLADESH    Full or late term    NA                 0.1088675    0.0589479   0.1561390
24 months   Keneba           GAMBIA        Full or late term    NA                -0.0381421   -0.2601099   0.1447261
