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

**Outcome Variable:** wasted

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

agecat      studyid   country       hhwealth_quart    wasted   n_cell      n
----------  --------  ------------  ---------------  -------  -------  -----
Birth       COHORTS   GUATEMALA     Wealth Q4              0      190    729
Birth       COHORTS   GUATEMALA     Wealth Q4              1       68    729
Birth       COHORTS   GUATEMALA     Wealth Q1              0       98    729
Birth       COHORTS   GUATEMALA     Wealth Q1              1       46    729
Birth       COHORTS   GUATEMALA     Wealth Q2              0      108    729
Birth       COHORTS   GUATEMALA     Wealth Q2              1       33    729
Birth       COHORTS   GUATEMALA     Wealth Q3              0      148    729
Birth       COHORTS   GUATEMALA     Wealth Q3              1       38    729
Birth       COHORTS   PHILIPPINES   Wealth Q4              0      671   2898
Birth       COHORTS   PHILIPPINES   Wealth Q4              1      144   2898
Birth       COHORTS   PHILIPPINES   Wealth Q1              0      533   2898
Birth       COHORTS   PHILIPPINES   Wealth Q1              1      114   2898
Birth       COHORTS   PHILIPPINES   Wealth Q2              0      442   2898
Birth       COHORTS   PHILIPPINES   Wealth Q2              1       64   2898
Birth       COHORTS   PHILIPPINES   Wealth Q3              0      801   2898
Birth       COHORTS   PHILIPPINES   Wealth Q3              1      129   2898
6 months    COHORTS   GUATEMALA     Wealth Q4              0      332    926
6 months    COHORTS   GUATEMALA     Wealth Q4              1        7    926
6 months    COHORTS   GUATEMALA     Wealth Q1              0      170    926
6 months    COHORTS   GUATEMALA     Wealth Q1              1        6    926
6 months    COHORTS   GUATEMALA     Wealth Q2              0      189    926
6 months    COHORTS   GUATEMALA     Wealth Q2              1        5    926
6 months    COHORTS   GUATEMALA     Wealth Q3              0      205    926
6 months    COHORTS   GUATEMALA     Wealth Q3              1       12    926
6 months    COHORTS   PHILIPPINES   Wealth Q4              0      715   2706
6 months    COHORTS   PHILIPPINES   Wealth Q4              1       29   2706
6 months    COHORTS   PHILIPPINES   Wealth Q1              0      520   2706
6 months    COHORTS   PHILIPPINES   Wealth Q1              1       49   2706
6 months    COHORTS   PHILIPPINES   Wealth Q2              0      453   2706
6 months    COHORTS   PHILIPPINES   Wealth Q2              1       32   2706
6 months    COHORTS   PHILIPPINES   Wealth Q3              0      857   2706
6 months    COHORTS   PHILIPPINES   Wealth Q3              1       51   2706
24 months   COHORTS   GUATEMALA     Wealth Q4              0      392   1046
24 months   COHORTS   GUATEMALA     Wealth Q4              1       13   1046
24 months   COHORTS   GUATEMALA     Wealth Q1              0      195   1046
24 months   COHORTS   GUATEMALA     Wealth Q1              1        8   1046
24 months   COHORTS   GUATEMALA     Wealth Q2              0      204   1046
24 months   COHORTS   GUATEMALA     Wealth Q2              1       11   1046
24 months   COHORTS   GUATEMALA     Wealth Q3              0      208   1046
24 months   COHORTS   GUATEMALA     Wealth Q3              1       15   1046
24 months   COHORTS   PHILIPPINES   Wealth Q4              0      654   2449
24 months   COHORTS   PHILIPPINES   Wealth Q4              1       31   2449
24 months   COHORTS   PHILIPPINES   Wealth Q1              0      447   2449
24 months   COHORTS   PHILIPPINES   Wealth Q1              1       45   2449
24 months   COHORTS   PHILIPPINES   Wealth Q2              0      396   2449
24 months   COHORTS   PHILIPPINES   Wealth Q2              1       28   2449
24 months   COHORTS   PHILIPPINES   Wealth Q3              0      785   2449
24 months   COHORTS   PHILIPPINES   Wealth Q3              1       63   2449


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
![](/tmp/8a4e08e1-e591-42ef-8526-edfbe7dfad92/4269288b-2e6b-43e0-be29-fc78c68da6bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8a4e08e1-e591-42ef-8526-edfbe7dfad92/4269288b-2e6b-43e0-be29-fc78c68da6bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8a4e08e1-e591-42ef-8526-edfbe7dfad92/4269288b-2e6b-43e0-be29-fc78c68da6bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8a4e08e1-e591-42ef-8526-edfbe7dfad92/4269288b-2e6b-43e0-be29-fc78c68da6bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS   GUATEMALA     Wealth Q4            NA                0.2635659   0.2097702   0.3173616
Birth       COHORTS   GUATEMALA     Wealth Q1            NA                0.3194444   0.2432375   0.3956514
Birth       COHORTS   GUATEMALA     Wealth Q2            NA                0.2340426   0.1641089   0.3039762
Birth       COHORTS   GUATEMALA     Wealth Q3            NA                0.2043011   0.1463182   0.2622839
Birth       COHORTS   PHILIPPINES   Wealth Q4            NA                0.1766871   0.1504975   0.2028767
Birth       COHORTS   PHILIPPINES   Wealth Q1            NA                0.1761978   0.1468360   0.2055596
Birth       COHORTS   PHILIPPINES   Wealth Q2            NA                0.1264822   0.0975156   0.1554489
Birth       COHORTS   PHILIPPINES   Wealth Q3            NA                0.1387097   0.1164914   0.1609279
6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.0206490   0.0055029   0.0357951
6 months    COHORTS   GUATEMALA     Wealth Q1            NA                0.0340909   0.0072675   0.0609143
6 months    COHORTS   GUATEMALA     Wealth Q2            NA                0.0257732   0.0034634   0.0480830
6 months    COHORTS   GUATEMALA     Wealth Q3            NA                0.0552995   0.0248724   0.0857266
6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.0389785   0.0250687   0.0528883
6 months    COHORTS   PHILIPPINES   Wealth Q1            NA                0.0861160   0.0630613   0.1091707
6 months    COHORTS   PHILIPPINES   Wealth Q2            NA                0.0659794   0.0438820   0.0880767
6 months    COHORTS   PHILIPPINES   Wealth Q3            NA                0.0561674   0.0411887   0.0711461
24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0320988   0.0149241   0.0492734
24 months   COHORTS   GUATEMALA     Wealth Q1            NA                0.0394089   0.0126311   0.0661866
24 months   COHORTS   GUATEMALA     Wealth Q2            NA                0.0511628   0.0216976   0.0806280
24 months   COHORTS   GUATEMALA     Wealth Q3            NA                0.0672646   0.0343737   0.1001555
24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.0452555   0.0296861   0.0608248
24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.0914634   0.0659864   0.1169405
24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.0660377   0.0423941   0.0896814
24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.0742925   0.0566383   0.0919467


### Parameter: E(Y)


agecat      studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS   GUATEMALA     NA                   NA                0.2537723   0.2221611   0.2853834
Birth       COHORTS   PHILIPPINES   NA                   NA                0.1556246   0.1424244   0.1688248
6 months    COHORTS   GUATEMALA     NA                   NA                0.0323974   0.0209875   0.0438073
6 months    COHORTS   PHILIPPINES   NA                   NA                0.0594974   0.0505830   0.0684118
24 months   COHORTS   GUATEMALA     NA                   NA                0.0449331   0.0323731   0.0574931
24 months   COHORTS   PHILIPPINES   NA                   NA                0.0681911   0.0582056   0.0781766


### Parameter: RR


agecat      studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.2120098   0.8854314   1.6590419
Birth       COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         0.8879850   0.6183722   1.2751500
Birth       COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         0.7751423   0.5464613   1.0995208
Birth       COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         0.9972308   0.7978792   1.2463908
Birth       COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         0.7158542   0.5449403   0.9403732
Birth       COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         0.7850582   0.6311349   0.9765209
6 months    COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.6509740   0.5630837   4.8406932
6 months    COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.2481591   0.4013444   3.8817062
6 months    COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         2.6780777   1.0705381   6.6995283
6 months    COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         2.2093206   1.4142059   3.4514759
6 months    COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.6927124   1.0376205   2.7613904
6 months    COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.4409844   0.9229603   2.2497564
24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.2277378   0.5170124   2.9154814
24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.5939177   0.7262154   3.4983748
24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         2.0955502   1.0150945   4.3260315
24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         2.0210464   1.2981696   3.1464522
24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.4592209   0.8881355   2.3975235
24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.6416236   1.0806499   2.4938030


### Parameter: PAR


agecat      studyid   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS   GUATEMALA     Wealth Q4            NA                -0.0097936   -0.0527451   0.0331579
Birth       COHORTS   PHILIPPINES   Wealth Q4            NA                -0.0210625   -0.0428422   0.0007171
6 months    COHORTS   GUATEMALA     Wealth Q4            NA                 0.0117484   -0.0020944   0.0255913
6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0205189    0.0076133   0.0334246
24 months   COHORTS   GUATEMALA     Wealth Q4            NA                 0.0128343   -0.0021425   0.0278111
24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0229356    0.0085651   0.0373061


### Parameter: PAF


agecat      studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS   GUATEMALA     Wealth Q4            NA                -0.0385921   -0.2223922    0.1175717
Birth       COHORTS   PHILIPPINES   Wealth Q4            NA                -0.1353420   -0.2839735   -0.0039161
6 months    COHORTS   GUATEMALA     Wealth Q4            NA                 0.3626352   -0.2100558    0.6642850
6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                 0.3448708    0.0956664    0.5254027
24 months   COHORTS   GUATEMALA     Wealth Q4            NA                 0.2856317   -0.1247612    0.5462841
24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                 0.3363434    0.0955045    0.5130544
