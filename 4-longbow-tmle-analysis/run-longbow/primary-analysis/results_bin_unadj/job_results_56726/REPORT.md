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

**Outcome Variable:** stunted

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

agecat      studyid   country       hhwealth_quart    stunted   n_cell      n
----------  --------  ------------  ---------------  --------  -------  -----
Birth       COHORTS   GUATEMALA     Wealth Q4               0      278    816
Birth       COHORTS   GUATEMALA     Wealth Q4               1       15    816
Birth       COHORTS   GUATEMALA     Wealth Q1               0      147    816
Birth       COHORTS   GUATEMALA     Wealth Q1               1       10    816
Birth       COHORTS   GUATEMALA     Wealth Q2               0      149    816
Birth       COHORTS   GUATEMALA     Wealth Q2               1       12    816
Birth       COHORTS   GUATEMALA     Wealth Q3               0      195    816
Birth       COHORTS   GUATEMALA     Wealth Q3               1       10    816
Birth       COHORTS   PHILIPPINES   Wealth Q4               0      810   3049
Birth       COHORTS   PHILIPPINES   Wealth Q4               1       32   3049
Birth       COHORTS   PHILIPPINES   Wealth Q1               0      635   3049
Birth       COHORTS   PHILIPPINES   Wealth Q1               1       52   3049
Birth       COHORTS   PHILIPPINES   Wealth Q2               0      500   3049
Birth       COHORTS   PHILIPPINES   Wealth Q2               1       38   3049
Birth       COHORTS   PHILIPPINES   Wealth Q3               0      917   3049
Birth       COHORTS   PHILIPPINES   Wealth Q3               1       65   3049
6 months    COHORTS   GUATEMALA     Wealth Q4               0      220    925
6 months    COHORTS   GUATEMALA     Wealth Q4               1      119    925
6 months    COHORTS   GUATEMALA     Wealth Q1               0       98    925
6 months    COHORTS   GUATEMALA     Wealth Q1               1       77    925
6 months    COHORTS   GUATEMALA     Wealth Q2               0      104    925
6 months    COHORTS   GUATEMALA     Wealth Q2               1       91    925
6 months    COHORTS   GUATEMALA     Wealth Q3               0      125    925
6 months    COHORTS   GUATEMALA     Wealth Q3               1       91    925
6 months    COHORTS   PHILIPPINES   Wealth Q4               0      623   2708
6 months    COHORTS   PHILIPPINES   Wealth Q4               1      120   2708
6 months    COHORTS   PHILIPPINES   Wealth Q1               0      431   2708
6 months    COHORTS   PHILIPPINES   Wealth Q1               1      139   2708
6 months    COHORTS   PHILIPPINES   Wealth Q2               0      382   2708
6 months    COHORTS   PHILIPPINES   Wealth Q2               1      103   2708
6 months    COHORTS   PHILIPPINES   Wealth Q3               0      700   2708
6 months    COHORTS   PHILIPPINES   Wealth Q3               1      210   2708
24 months   COHORTS   GUATEMALA     Wealth Q4               0       93   1035
24 months   COHORTS   GUATEMALA     Wealth Q4               1      309   1035
24 months   COHORTS   GUATEMALA     Wealth Q1               0       33   1035
24 months   COHORTS   GUATEMALA     Wealth Q1               1      169   1035
24 months   COHORTS   GUATEMALA     Wealth Q2               0       39   1035
24 months   COHORTS   GUATEMALA     Wealth Q2               1      173   1035
24 months   COHORTS   GUATEMALA     Wealth Q3               0       30   1035
24 months   COHORTS   GUATEMALA     Wealth Q3               1      189   1035
24 months   COHORTS   PHILIPPINES   Wealth Q4               0      371   2445
24 months   COHORTS   PHILIPPINES   Wealth Q4               1      317   2445
24 months   COHORTS   PHILIPPINES   Wealth Q1               0      139   2445
24 months   COHORTS   PHILIPPINES   Wealth Q1               1      350   2445
24 months   COHORTS   PHILIPPINES   Wealth Q2               0      136   2445
24 months   COHORTS   PHILIPPINES   Wealth Q2               1      287   2445
24 months   COHORTS   PHILIPPINES   Wealth Q3               0      276   2445
24 months   COHORTS   PHILIPPINES   Wealth Q3               1      569   2445


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
![](/tmp/6093f671-6c25-4268-8ba8-92402d87009b/53b8000a-d65c-4629-a78e-b3877ba76976/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6093f671-6c25-4268-8ba8-92402d87009b/53b8000a-d65c-4629-a78e-b3877ba76976/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6093f671-6c25-4268-8ba8-92402d87009b/53b8000a-d65c-4629-a78e-b3877ba76976/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6093f671-6c25-4268-8ba8-92402d87009b/53b8000a-d65c-4629-a78e-b3877ba76976/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS   GUATEMALA     Wealth Q4            NA                0.0511945   0.0259434   0.0764457
Birth       COHORTS   GUATEMALA     Wealth Q1            NA                0.0636943   0.0254714   0.1019172
Birth       COHORTS   GUATEMALA     Wealth Q2            NA                0.0745342   0.0339404   0.1151279
Birth       COHORTS   GUATEMALA     Wealth Q3            NA                0.0487805   0.0192751   0.0782858
Birth       COHORTS   PHILIPPINES   Wealth Q4            NA                0.0380048   0.0250875   0.0509220
Birth       COHORTS   PHILIPPINES   Wealth Q1            NA                0.0756914   0.0559093   0.0954735
Birth       COHORTS   PHILIPPINES   Wealth Q2            NA                0.0706320   0.0489787   0.0922852
Birth       COHORTS   PHILIPPINES   Wealth Q3            NA                0.0661914   0.0506392   0.0817437
6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.3510324   0.3001968   0.4018681
6 months    COHORTS   GUATEMALA     Wealth Q1            NA                0.4400000   0.3664158   0.5135842
6 months    COHORTS   GUATEMALA     Wealth Q2            NA                0.4666667   0.3966069   0.5367264
6 months    COHORTS   GUATEMALA     Wealth Q3            NA                0.4212963   0.3554126   0.4871800
6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.1615074   0.1350419   0.1879729
6 months    COHORTS   PHILIPPINES   Wealth Q1            NA                0.2438596   0.2086013   0.2791180
6 months    COHORTS   PHILIPPINES   Wealth Q2            NA                0.2123711   0.1759657   0.2487765
6 months    COHORTS   PHILIPPINES   Wealth Q3            NA                0.2307692   0.2033898   0.2581487
24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.7686567   0.7274147   0.8098987
24 months   COHORTS   GUATEMALA     Wealth Q1            NA                0.8366337   0.7856265   0.8876408
24 months   COHORTS   GUATEMALA     Wealth Q2            NA                0.8160377   0.7638571   0.8682184
24 months   COHORTS   GUATEMALA     Wealth Q3            NA                0.8630137   0.8174537   0.9085737
24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.4607558   0.4235020   0.4980096
24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.7157464   0.6757598   0.7557331
24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.6784870   0.6339689   0.7230051
24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.6733728   0.6417455   0.7050001


### Parameter: E(Y)


agecat      studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS   GUATEMALA     NA                   NA                0.0575980   0.0416028   0.0735933
Birth       COHORTS   PHILIPPINES   NA                   NA                0.0613316   0.0528136   0.0698496
6 months    COHORTS   GUATEMALA     NA                   NA                0.4086486   0.3769522   0.4403450
6 months    COHORTS   PHILIPPINES   NA                   NA                0.2112260   0.1958496   0.2266024
24 months   COHORTS   GUATEMALA     NA                   NA                0.8115942   0.7877598   0.8354286
24 months   COHORTS   PHILIPPINES   NA                   NA                0.6229039   0.6036892   0.6421186


### Parameter: RR


agecat      studyid   country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.2441614   0.5721643   2.705407
Birth       COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.4559006   0.6982621   3.035603
Birth       COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         0.9528455   0.4365830   2.079592
Birth       COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.9916303   1.2971947   3.057822
Birth       COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.8585037   1.1759273   2.937287
Birth       COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.7416624   1.1521723   2.632756
6 months    COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.2534454   1.0046826   1.563803
6 months    COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.3294118   1.0791188   1.637758
6 months    COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         1.2001634   0.9697855   1.485269
6 months    COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.5098977   1.2135004   1.878690
6 months    COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.3149313   1.0373186   1.666840
6 months    COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.4288462   1.1671439   1.749228
24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.0884360   1.0035334   1.180522
24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.0616413   0.9766213   1.154063
24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         1.1227557   1.0413466   1.210529
24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.5534181   1.4080141   1.713838
24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.4725522   1.3269324   1.634153
24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.4614526   1.3309925   1.604700


### Parameter: PAR


agecat      studyid   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS   GUATEMALA     Wealth Q4            NA                0.0064035   -0.0144668   0.0272738
Birth       COHORTS   PHILIPPINES   Wealth Q4            NA                0.0233268    0.0111920   0.0354617
6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.0576162    0.0164491   0.0987833
6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.0497186    0.0262132   0.0732240
24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0429375    0.0121527   0.0737222
24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.1621481    0.1309071   0.1933890


### Parameter: PAF


agecat      studyid   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS   GUATEMALA     Wealth Q4            NA                0.1111757   -0.3344106   0.4079718
Birth       COHORTS   PHILIPPINES   Wealth Q4            NA                0.3803397    0.1562675   0.5449044
6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.1409920    0.0339826   0.2361476
6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.2353810    0.1164988   0.3382667
24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0529051    0.0139676   0.0903050
24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.2603099    0.2074321   0.3096599
