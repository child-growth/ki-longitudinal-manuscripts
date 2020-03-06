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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid   country       hhwealth_quart    n_cell      n
----------  --------  ------------  ---------------  -------  -----
Birth       COHORTS   GUATEMALA     Wealth Q4            293    816
Birth       COHORTS   GUATEMALA     Wealth Q1            157    816
Birth       COHORTS   GUATEMALA     Wealth Q2            161    816
Birth       COHORTS   GUATEMALA     Wealth Q3            205    816
Birth       COHORTS   PHILIPPINES   Wealth Q4            842   3049
Birth       COHORTS   PHILIPPINES   Wealth Q1            687   3049
Birth       COHORTS   PHILIPPINES   Wealth Q2            538   3049
Birth       COHORTS   PHILIPPINES   Wealth Q3            982   3049
6 months    COHORTS   GUATEMALA     Wealth Q4            339    925
6 months    COHORTS   GUATEMALA     Wealth Q1            175    925
6 months    COHORTS   GUATEMALA     Wealth Q2            195    925
6 months    COHORTS   GUATEMALA     Wealth Q3            216    925
6 months    COHORTS   PHILIPPINES   Wealth Q4            743   2708
6 months    COHORTS   PHILIPPINES   Wealth Q1            570   2708
6 months    COHORTS   PHILIPPINES   Wealth Q2            485   2708
6 months    COHORTS   PHILIPPINES   Wealth Q3            910   2708
24 months   COHORTS   GUATEMALA     Wealth Q4            402   1035
24 months   COHORTS   GUATEMALA     Wealth Q1            202   1035
24 months   COHORTS   GUATEMALA     Wealth Q2            212   1035
24 months   COHORTS   GUATEMALA     Wealth Q3            219   1035
24 months   COHORTS   PHILIPPINES   Wealth Q4            688   2445
24 months   COHORTS   PHILIPPINES   Wealth Q1            489   2445
24 months   COHORTS   PHILIPPINES   Wealth Q2            423   2445
24 months   COHORTS   PHILIPPINES   Wealth Q3            845   2445


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES



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




# Results Detail

## Results Plots
![](/tmp/d92fa721-e6bf-4a35-b371-2c4071c098ef/fd3edadc-6a2a-4fa8-8387-a48f7cddd65b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d92fa721-e6bf-4a35-b371-2c4071c098ef/fd3edadc-6a2a-4fa8-8387-a48f7cddd65b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d92fa721-e6bf-4a35-b371-2c4071c098ef/fd3edadc-6a2a-4fa8-8387-a48f7cddd65b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS   GUATEMALA     Wealth Q4            NA                 0.2285666    0.0898567    0.3672764
Birth       COHORTS   GUATEMALA     Wealth Q1            NA                 0.0414650   -0.1277325    0.2106624
Birth       COHORTS   GUATEMALA     Wealth Q2            NA                 0.0906211   -0.1174167    0.2986590
Birth       COHORTS   GUATEMALA     Wealth Q3            NA                 0.1487317   -0.0226652    0.3201286
Birth       COHORTS   PHILIPPINES   Wealth Q4            NA                -0.0586342   -0.1302466    0.0129782
Birth       COHORTS   PHILIPPINES   Wealth Q1            NA                -0.3503930   -0.4322723   -0.2685138
Birth       COHORTS   PHILIPPINES   Wealth Q2            NA                -0.3358364   -0.4322314   -0.2394414
Birth       COHORTS   PHILIPPINES   Wealth Q3            NA                -0.2941853   -0.3624814   -0.2258892
6 months    COHORTS   GUATEMALA     Wealth Q4            NA                -1.6775811   -1.7826026   -1.5725596
6 months    COHORTS   GUATEMALA     Wealth Q1            NA                -1.9522286   -2.1091839   -1.7952732
6 months    COHORTS   GUATEMALA     Wealth Q2            NA                -1.9009231   -2.0507620   -1.7510841
6 months    COHORTS   GUATEMALA     Wealth Q3            NA                -1.8257870   -1.9870835   -1.6644906
6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                -0.8903096   -0.9707503   -0.8098688
6 months    COHORTS   PHILIPPINES   Wealth Q1            NA                -1.2539123   -1.3480338   -1.1597908
6 months    COHORTS   PHILIPPINES   Wealth Q2            NA                -1.1810309   -1.2750353   -1.0870265
6 months    COHORTS   PHILIPPINES   Wealth Q3            NA                -1.2523516   -1.3227651   -1.1819382
24 months   COHORTS   GUATEMALA     Wealth Q4            NA                -2.8009453   -2.8989963   -2.7028942
24 months   COHORTS   GUATEMALA     Wealth Q1            NA                -3.1316832   -3.2780459   -2.9853204
24 months   COHORTS   GUATEMALA     Wealth Q2            NA                -3.0713679   -3.2200696   -2.9226662
24 months   COHORTS   GUATEMALA     Wealth Q3            NA                -3.1244749   -3.2733246   -2.9756252
24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                -1.9760610   -2.0579680   -1.8941541
24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                -2.6726380   -2.7702915   -2.5749846
24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                -2.5430496   -2.6497942   -2.4363051
24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                -2.5566272   -2.6302221   -2.4830324


### Parameter: E(Y)


agecat      studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS   GUATEMALA     NA                   NA                 0.1452941    0.0610109    0.2295774
Birth       COHORTS   PHILIPPINES   NA                   NA                -0.2491505   -0.2881717   -0.2101294
6 months    COHORTS   GUATEMALA     NA                   NA                -1.8112324   -1.8807284   -1.7417365
6 months    COHORTS   PHILIPPINES   NA                   NA                -1.1405724   -1.1824954   -1.0986493
24 months   COHORTS   GUATEMALA     NA                   NA                -2.9893430   -3.0546993   -2.9239867
24 months   COHORTS   PHILIPPINES   NA                   NA                -2.4141145   -2.4590818   -2.3691473


### Parameter: ATE


agecat      studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS   GUATEMALA     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         -0.1871016   -0.4058896    0.0316864
Birth       COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         -0.1379454   -0.3879858    0.1120949
Birth       COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         -0.0798348   -0.3003282    0.1406585
Birth       COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         -0.2917588   -0.4005363   -0.1829813
Birth       COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         -0.2772022   -0.3972869   -0.1571175
Birth       COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         -0.2355511   -0.3345092   -0.1365931
6 months    COHORTS   GUATEMALA     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         -0.2746475   -0.4634979   -0.0857970
6 months    COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         -0.2233420   -0.4063207   -0.0403632
6 months    COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         -0.1482059   -0.3406795    0.0442676
6 months    COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         -0.3636027   -0.4874154   -0.2397901
6 months    COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         -0.2907214   -0.4144450   -0.1669977
6 months    COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         -0.3620421   -0.4689475   -0.2551367
24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         -0.3307379   -0.5069085   -0.1545673
24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         -0.2704227   -0.4485411   -0.0923042
24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         -0.3235296   -0.5017717   -0.1452875
24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         -0.6965770   -0.8240327   -0.5691213
24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         -0.5669886   -0.7015365   -0.4324407
24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         -0.5805662   -0.6906795   -0.4704528


### Parameter: PAR


agecat      studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS   GUATEMALA     Wealth Q4            NA                -0.0832724   -0.1951957    0.0286509
Birth       COHORTS   PHILIPPINES   Wealth Q4            NA                -0.1905163   -0.2523107   -0.1287220
6 months    COHORTS   GUATEMALA     Wealth Q4            NA                -0.1336513   -0.2218265   -0.0454761
6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                -0.2502628   -0.3186550   -0.1818707
24 months   COHORTS   GUATEMALA     Wealth Q4            NA                -0.1883977   -0.2685050   -0.1082904
24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                -0.4380535   -0.5084470   -0.3676600
