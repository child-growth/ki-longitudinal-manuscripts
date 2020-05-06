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

agecat      studyid          country                        gagebrth             sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ------------------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term           0       55      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Full or late term           1        3      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Preterm                     0       10      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Preterm                     1        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Early term                  0       23      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Early term                  1        0      92  sstunted         
Birth       COHORTS          GUATEMALA                      Full or late term           0      338     617  sstunted         
Birth       COHORTS          GUATEMALA                      Full or late term           1        3     617  sstunted         
Birth       COHORTS          GUATEMALA                      Preterm                     0       91     617  sstunted         
Birth       COHORTS          GUATEMALA                      Preterm                     1        4     617  sstunted         
Birth       COHORTS          GUATEMALA                      Early term                  0      179     617  sstunted         
Birth       COHORTS          GUATEMALA                      Early term                  1        2     617  sstunted         
Birth       COHORTS          INDIA                          Full or late term           0      562    1293  sstunted         
Birth       COHORTS          INDIA                          Full or late term           1        8    1293  sstunted         
Birth       COHORTS          INDIA                          Preterm                     0      269    1293  sstunted         
Birth       COHORTS          INDIA                          Preterm                     1       16    1293  sstunted         
Birth       COHORTS          INDIA                          Early term                  0      431    1293  sstunted         
Birth       COHORTS          INDIA                          Early term                  1        7    1293  sstunted         
Birth       COHORTS          PHILIPPINES                    Full or late term           0     1161    3024  sstunted         
Birth       COHORTS          PHILIPPINES                    Full or late term           1        3    3024  sstunted         
Birth       COHORTS          PHILIPPINES                    Preterm                     0      618    3024  sstunted         
Birth       COHORTS          PHILIPPINES                    Preterm                     1       31    3024  sstunted         
Birth       COHORTS          PHILIPPINES                    Early term                  0     1199    3024  sstunted         
Birth       COHORTS          PHILIPPINES                    Early term                  1       12    3024  sstunted         
Birth       IRC              INDIA                          Full or late term           0      228     369  sstunted         
Birth       IRC              INDIA                          Full or late term           1       10     369  sstunted         
Birth       IRC              INDIA                          Preterm                     0       33     369  sstunted         
Birth       IRC              INDIA                          Preterm                     1        3     369  sstunted         
Birth       IRC              INDIA                          Early term                  0       93     369  sstunted         
Birth       IRC              INDIA                          Early term                  1        2     369  sstunted         
Birth       JiVitA-3         BANGLADESH                     Full or late term           0    10402   21442  sstunted         
Birth       JiVitA-3         BANGLADESH                     Full or late term           1      542   21442  sstunted         
Birth       JiVitA-3         BANGLADESH                     Preterm                     0     3299   21442  sstunted         
Birth       JiVitA-3         BANGLADESH                     Preterm                     1     1215   21442  sstunted         
Birth       JiVitA-3         BANGLADESH                     Early term                  0     5384   21442  sstunted         
Birth       JiVitA-3         BANGLADESH                     Early term                  1      600   21442  sstunted         
Birth       Keneba           GAMBIA                         Full or late term           0      726    1515  sstunted         
Birth       Keneba           GAMBIA                         Full or late term           1        8    1515  sstunted         
Birth       Keneba           GAMBIA                         Preterm                     0      219    1515  sstunted         
Birth       Keneba           GAMBIA                         Preterm                     1       16    1515  sstunted         
Birth       Keneba           GAMBIA                         Early term                  0      541    1515  sstunted         
Birth       Keneba           GAMBIA                         Early term                  1        5    1515  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Full or late term           0      162     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Full or late term           1        0     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Preterm                     0      250     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Preterm                     1        7     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Early term                  0      310     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Early term                  1        3     732  sstunted         
Birth       PROBIT           BELARUS                        Full or late term           0     7099   13893  sstunted         
Birth       PROBIT           BELARUS                        Full or late term           1        1   13893  sstunted         
Birth       PROBIT           BELARUS                        Preterm                     0      472   13893  sstunted         
Birth       PROBIT           BELARUS                        Preterm                     1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        Early term                  0     6317   13893  sstunted         
Birth       PROBIT           BELARUS                        Early term                  1        4   13893  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Full or late term           0      190     347  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Full or late term           1       22     347  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Preterm                     0       42     347  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Preterm                     1       10     347  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Early term                  0       77     347  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Early term                  1        6     347  sstunted         
6 months    COHORTS          GUATEMALA                      Full or late term           0      356     713  sstunted         
6 months    COHORTS          GUATEMALA                      Full or late term           1       33     713  sstunted         
6 months    COHORTS          GUATEMALA                      Preterm                     0       86     713  sstunted         
6 months    COHORTS          GUATEMALA                      Preterm                     1       27     713  sstunted         
6 months    COHORTS          GUATEMALA                      Early term                  0      178     713  sstunted         
6 months    COHORTS          GUATEMALA                      Early term                  1       33     713  sstunted         
6 months    COHORTS          INDIA                          Full or late term           0      556    1312  sstunted         
6 months    COHORTS          INDIA                          Full or late term           1       12    1312  sstunted         
6 months    COHORTS          INDIA                          Preterm                     0      285    1312  sstunted         
6 months    COHORTS          INDIA                          Preterm                     1       14    1312  sstunted         
6 months    COHORTS          INDIA                          Early term                  0      432    1312  sstunted         
6 months    COHORTS          INDIA                          Early term                  1       13    1312  sstunted         
6 months    COHORTS          PHILIPPINES                    Full or late term           0      988    2687  sstunted         
6 months    COHORTS          PHILIPPINES                    Full or late term           1       40    2687  sstunted         
6 months    COHORTS          PHILIPPINES                    Preterm                     0      530    2687  sstunted         
6 months    COHORTS          PHILIPPINES                    Preterm                     1       43    2687  sstunted         
6 months    COHORTS          PHILIPPINES                    Early term                  0     1038    2687  sstunted         
6 months    COHORTS          PHILIPPINES                    Early term                  1       48    2687  sstunted         
6 months    IRC              INDIA                          Full or late term           0      233     388  sstunted         
6 months    IRC              INDIA                          Full or late term           1       16     388  sstunted         
6 months    IRC              INDIA                          Preterm                     0       34     388  sstunted         
6 months    IRC              INDIA                          Preterm                     1        8     388  sstunted         
6 months    IRC              INDIA                          Early term                  0       93     388  sstunted         
6 months    IRC              INDIA                          Early term                  1        4     388  sstunted         
6 months    JiVitA-3         BANGLADESH                     Full or late term           0     8175   16010  sstunted         
6 months    JiVitA-3         BANGLADESH                     Full or late term           1      352   16010  sstunted         
6 months    JiVitA-3         BANGLADESH                     Preterm                     0     2688   16010  sstunted         
6 months    JiVitA-3         BANGLADESH                     Preterm                     1      357   16010  sstunted         
6 months    JiVitA-3         BANGLADESH                     Early term                  0     4169   16010  sstunted         
6 months    JiVitA-3         BANGLADESH                     Early term                  1      269   16010  sstunted         
6 months    Keneba           GAMBIA                         Full or late term           0      637    1374  sstunted         
6 months    Keneba           GAMBIA                         Full or late term           1       21    1374  sstunted         
6 months    Keneba           GAMBIA                         Preterm                     0      197    1374  sstunted         
6 months    Keneba           GAMBIA                         Preterm                     1       10    1374  sstunted         
6 months    Keneba           GAMBIA                         Early term                  0      505    1374  sstunted         
6 months    Keneba           GAMBIA                         Early term                  1        4    1374  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Full or late term           0      153     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Full or late term           1        2     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Preterm                     0      236     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Preterm                     1       15     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Early term                  0      303     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Early term                  1        6     715  sstunted         
6 months    PROBIT           BELARUS                        Full or late term           0     7931   15760  sstunted         
6 months    PROBIT           BELARUS                        Full or late term           1       76   15760  sstunted         
6 months    PROBIT           BELARUS                        Preterm                     0      538   15760  sstunted         
6 months    PROBIT           BELARUS                        Preterm                     1       13   15760  sstunted         
6 months    PROBIT           BELARUS                        Early term                  0     7114   15760  sstunted         
6 months    PROBIT           BELARUS                        Early term                  1       88   15760  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           0     1159    1903  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           1        8    1903  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     0      284    1903  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     1        7    1903  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  0      443    1903  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  1        2    1903  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Full or late term           0      147     349  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Full or late term           1       66     349  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Preterm                     0       31     349  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Preterm                     1       21     349  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Early term                  0       56     349  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Early term                  1       28     349  sstunted         
24 months   COHORTS          GUATEMALA                      Full or late term           0      196     661  sstunted         
24 months   COHORTS          GUATEMALA                      Full or late term           1      179     661  sstunted         
24 months   COHORTS          GUATEMALA                      Preterm                     0       50     661  sstunted         
24 months   COHORTS          GUATEMALA                      Preterm                     1       57     661  sstunted         
24 months   COHORTS          GUATEMALA                      Early term                  0       89     661  sstunted         
24 months   COHORTS          GUATEMALA                      Early term                  1       90     661  sstunted         
24 months   COHORTS          INDIA                          Full or late term           0      458    1308  sstunted         
24 months   COHORTS          INDIA                          Full or late term           1      107    1308  sstunted         
24 months   COHORTS          INDIA                          Preterm                     0      228    1308  sstunted         
24 months   COHORTS          INDIA                          Preterm                     1       77    1308  sstunted         
24 months   COHORTS          INDIA                          Early term                  0      344    1308  sstunted         
24 months   COHORTS          INDIA                          Early term                  1       94    1308  sstunted         
24 months   COHORTS          PHILIPPINES                    Full or late term           0      694    2424  sstunted         
24 months   COHORTS          PHILIPPINES                    Full or late term           1      244    2424  sstunted         
24 months   COHORTS          PHILIPPINES                    Preterm                     0      343    2424  sstunted         
24 months   COHORTS          PHILIPPINES                    Preterm                     1      170    2424  sstunted         
24 months   COHORTS          PHILIPPINES                    Early term                  0      686    2424  sstunted         
24 months   COHORTS          PHILIPPINES                    Early term                  1      287    2424  sstunted         
24 months   IRC              INDIA                          Full or late term           0      230     390  sstunted         
24 months   IRC              INDIA                          Full or late term           1       20     390  sstunted         
24 months   IRC              INDIA                          Preterm                     0       33     390  sstunted         
24 months   IRC              INDIA                          Preterm                     1        9     390  sstunted         
24 months   IRC              INDIA                          Early term                  0       89     390  sstunted         
24 months   IRC              INDIA                          Early term                  1        9     390  sstunted         
24 months   JiVitA-3         BANGLADESH                     Full or late term           0     3733    8202  sstunted         
24 months   JiVitA-3         BANGLADESH                     Full or late term           1      594    8202  sstunted         
24 months   JiVitA-3         BANGLADESH                     Preterm                     0     1258    8202  sstunted         
24 months   JiVitA-3         BANGLADESH                     Preterm                     1      346    8202  sstunted         
24 months   JiVitA-3         BANGLADESH                     Early term                  0     1923    8202  sstunted         
24 months   JiVitA-3         BANGLADESH                     Early term                  1      348    8202  sstunted         
24 months   Keneba           GAMBIA                         Full or late term           0      510    1156  sstunted         
24 months   Keneba           GAMBIA                         Full or late term           1       47    1156  sstunted         
24 months   Keneba           GAMBIA                         Preterm                     0      145    1156  sstunted         
24 months   Keneba           GAMBIA                         Preterm                     1       22    1156  sstunted         
24 months   Keneba           GAMBIA                         Early term                  0      408    1156  sstunted         
24 months   Keneba           GAMBIA                         Early term                  1       24    1156  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Full or late term           0       77     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Full or late term           1        2     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Preterm                     0      188     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Preterm                     1       20     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Early term                  0      213     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Early term                  1       14     514  sstunted         
24 months   PROBIT           BELARUS                        Full or late term           0     1998    4035  sstunted         
24 months   PROBIT           BELARUS                        Full or late term           1       27    4035  sstunted         
24 months   PROBIT           BELARUS                        Preterm                     0      134    4035  sstunted         
24 months   PROBIT           BELARUS                        Preterm                     1        3    4035  sstunted         
24 months   PROBIT           BELARUS                        Early term                  0     1838    4035  sstunted         
24 months   PROBIT           BELARUS                        Early term                  1       35    4035  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           0        4       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           1        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  0        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  1        0       6  sstunted         


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
