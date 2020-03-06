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
Birth       COHORTS   GUATEMALA     Wealth Q4            258    729
Birth       COHORTS   GUATEMALA     Wealth Q1            144    729
Birth       COHORTS   GUATEMALA     Wealth Q2            141    729
Birth       COHORTS   GUATEMALA     Wealth Q3            186    729
Birth       COHORTS   PHILIPPINES   Wealth Q4            815   2898
Birth       COHORTS   PHILIPPINES   Wealth Q1            647   2898
Birth       COHORTS   PHILIPPINES   Wealth Q2            506   2898
Birth       COHORTS   PHILIPPINES   Wealth Q3            930   2898
6 months    COHORTS   GUATEMALA     Wealth Q4            339    926
6 months    COHORTS   GUATEMALA     Wealth Q1            176    926
6 months    COHORTS   GUATEMALA     Wealth Q2            194    926
6 months    COHORTS   GUATEMALA     Wealth Q3            217    926
6 months    COHORTS   PHILIPPINES   Wealth Q4            744   2706
6 months    COHORTS   PHILIPPINES   Wealth Q1            569   2706
6 months    COHORTS   PHILIPPINES   Wealth Q2            485   2706
6 months    COHORTS   PHILIPPINES   Wealth Q3            908   2706
24 months   COHORTS   GUATEMALA     Wealth Q4            405   1046
24 months   COHORTS   GUATEMALA     Wealth Q1            203   1046
24 months   COHORTS   GUATEMALA     Wealth Q2            215   1046
24 months   COHORTS   GUATEMALA     Wealth Q3            223   1046
24 months   COHORTS   PHILIPPINES   Wealth Q4            685   2449
24 months   COHORTS   PHILIPPINES   Wealth Q1            492   2449
24 months   COHORTS   PHILIPPINES   Wealth Q2            424   2449
24 months   COHORTS   PHILIPPINES   Wealth Q3            848   2449


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
![](/tmp/067a4314-cac0-4346-84e1-8589a0303e28/d36a28e3-1224-4d3f-939d-4bf0be1dd421/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/067a4314-cac0-4346-84e1-8589a0303e28/d36a28e3-1224-4d3f-939d-4bf0be1dd421/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/067a4314-cac0-4346-84e1-8589a0303e28/d36a28e3-1224-4d3f-939d-4bf0be1dd421/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS   GUATEMALA     Wealth Q4            NA                -0.9951550   -1.1817400   -0.8085701
Birth       COHORTS   GUATEMALA     Wealth Q1            NA                -1.3420139   -1.5518154   -1.1322123
Birth       COHORTS   GUATEMALA     Wealth Q2            NA                -0.9657447   -1.1843212   -0.7471682
Birth       COHORTS   GUATEMALA     Wealth Q3            NA                -0.9924194   -1.1962585   -0.7885802
Birth       COHORTS   PHILIPPINES   Wealth Q4            NA                -0.8258405   -0.9156996   -0.7359814
Birth       COHORTS   PHILIPPINES   Wealth Q1            NA                -0.7875889   -0.8888141   -0.6863637
Birth       COHORTS   PHILIPPINES   Wealth Q2            NA                -0.6700791   -0.7769933   -0.5631648
Birth       COHORTS   PHILIPPINES   Wealth Q3            NA                -0.6768495   -0.7560494   -0.5976495
6 months    COHORTS   GUATEMALA     Wealth Q4            NA                 0.2982006    0.1788339    0.4175672
6 months    COHORTS   GUATEMALA     Wealth Q1            NA                 0.2025568    0.0459515    0.3591621
6 months    COHORTS   GUATEMALA     Wealth Q2            NA                 0.1054639   -0.0488410    0.2597688
6 months    COHORTS   GUATEMALA     Wealth Q3            NA                 0.0925346   -0.0698014    0.2548706
6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                -0.2008065   -0.2765391   -0.1250738
6 months    COHORTS   PHILIPPINES   Wealth Q1            NA                -0.4521090   -0.5436444   -0.3605736
6 months    COHORTS   PHILIPPINES   Wealth Q2            NA                -0.2628247   -0.3615385   -0.1641110
6 months    COHORTS   PHILIPPINES   Wealth Q3            NA                -0.2874670   -0.3594074   -0.2155265
24 months   COHORTS   GUATEMALA     Wealth Q4            NA                -0.1814321   -0.2702931   -0.0925711
24 months   COHORTS   GUATEMALA     Wealth Q1            NA                -0.4054187   -0.5202913   -0.2905461
24 months   COHORTS   GUATEMALA     Wealth Q2            NA                -0.3434419   -0.4595740   -0.2273097
24 months   COHORTS   GUATEMALA     Wealth Q3            NA                -0.2796413   -0.4034828   -0.1557997
24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                -0.4327445   -0.5010904   -0.3643987
24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                -0.7455285   -0.8266882   -0.6643687
24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                -0.6300708   -0.7178878   -0.5422537
24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                -0.6643986   -0.7270155   -0.6017816


### Parameter: E(Y)


agecat      studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS   GUATEMALA     NA                   NA                -1.0572840   -1.1606089   -0.9539590
Birth       COHORTS   PHILIPPINES   NA                   NA                -0.7422912   -0.7886598   -0.6959226
6 months    COHORTS   GUATEMALA     NA                   NA                 0.1914471    0.1185005    0.2643936
6 months    COHORTS   PHILIPPINES   NA                   NA                -0.2938433   -0.3352064   -0.2524802
24 months   COHORTS   GUATEMALA     NA                   NA                -0.2791396   -0.3336899   -0.2245893
24 months   COHORTS   PHILIPPINES   NA                   NA                -0.6099592   -0.6467541   -0.5731643


### Parameter: ATE


agecat      studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS   GUATEMALA     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         -0.3468589   -0.6276268   -0.0660909
Birth       COHORTS   GUATEMALA     Wealth Q2            Wealth Q4          0.0294104   -0.2579738    0.3167945
Birth       COHORTS   GUATEMALA     Wealth Q3            Wealth Q4          0.0027357   -0.2736053    0.2790767
Birth       COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4          0.0382516   -0.0971042    0.1736075
Birth       COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4          0.1557614    0.0161000    0.2954229
Birth       COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4          0.1489910    0.0292109    0.2687712
6 months    COHORTS   GUATEMALA     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         -0.0956438   -0.2925540    0.1012664
6 months    COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         -0.1927367   -0.3878223    0.0023489
6 months    COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         -0.2056660   -0.4071639   -0.0041682
6 months    COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         -0.2513025   -0.3701056   -0.1324994
6 months    COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         -0.0620183   -0.1864363    0.0623998
6 months    COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         -0.0866605   -0.1911156    0.0177946
24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         -0.2239866   -0.3692174   -0.0787558
24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         -0.1620098   -0.3082389   -0.0157806
24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         -0.0982092   -0.2506329    0.0542146
24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         -0.3127839   -0.4188879   -0.2066799
24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         -0.1973262   -0.3086051   -0.0860473
24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         -0.2316541   -0.3243473   -0.1389608


### Parameter: PAR


agecat      studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS   GUATEMALA     Wealth Q4            NA                -0.0621289   -0.2065173    0.0822595
Birth       COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0835493    0.0081632    0.1589353
6 months    COHORTS   GUATEMALA     Wealth Q4            NA                -0.1067535   -0.2023421   -0.0111649
6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                -0.0930369   -0.1585540   -0.0275197
24 months   COHORTS   GUATEMALA     Wealth Q4            NA                -0.0977075   -0.1666807   -0.0287343
24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                -0.1772146   -0.2356263   -0.1188030
