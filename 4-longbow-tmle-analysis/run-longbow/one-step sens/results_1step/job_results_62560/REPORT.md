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

**Intervention Variable:** country

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      country                         n_cell       n  outcome_variable 
----------  -----------------------------  -------  ------  -----------------
Birth       BANGLADESH                       27414   70599  haz              
Birth       BELARUS                          13893   70599  haz              
Birth       BRAZIL                              65   70599  haz              
Birth       GAMBIA                            1543   70599  haz              
Birth       GUATEMALA                          852   70599  haz              
Birth       INDIA                             8419   70599  haz              
Birth       MALAWI                               0   70599  haz              
Birth       NEPAL                              723   70599  haz              
Birth       PAKISTAN                           282   70599  haz              
Birth       PERU                               235   70599  haz              
Birth       PHILIPPINES                       3050   70599  haz              
Birth       SOUTH AFRICA                       123   70599  haz              
Birth       TANZANIA, UNITED REPUBLIC OF       125   70599  haz              
Birth       ZIMBABWE                         13875   70599  haz              
6 months    BANGLADESH                       23982   69534  haz              
6 months    BELARUS                          15760   69534  haz              
6 months    BRAZIL                             209   69534  haz              
6 months    GAMBIA                            2089   69534  haz              
6 months    GUATEMALA                         1260   69534  haz              
6 months    INDIA                             9588   69534  haz              
6 months    MALAWI                             839   69534  haz              
6 months    NEPAL                              800   69534  haz              
6 months    PAKISTAN                           612   69534  haz              
6 months    PERU                               488   69534  haz              
6 months    PHILIPPINES                       2708   69534  haz              
6 months    SOUTH AFRICA                       254   69534  haz              
6 months    TANZANIA, UNITED REPUBLIC OF      2276   69534  haz              
6 months    ZIMBABWE                          8669   69534  haz              
24 months   BANGLADESH                       15359   35072  haz              
24 months   BELARUS                           4035   35072  haz              
24 months   BRAZIL                             169   35072  haz              
24 months   GAMBIA                            1725   35072  haz              
24 months   GUATEMALA                         1070   35072  haz              
24 months   INDIA                             6344   35072  haz              
24 months   MALAWI                             579   35072  haz              
24 months   NEPAL                              716   35072  haz              
24 months   PAKISTAN                           167   35072  haz              
24 months   PERU                               365   35072  haz              
24 months   PHILIPPINES                       2445   35072  haz              
24 months   SOUTH AFRICA                       238   35072  haz              
24 months   TANZANIA, UNITED REPUBLIC OF       220   35072  haz              
24 months   ZIMBABWE                          1640   35072  haz              


The following strata were considered:

* agecat: 24 months
* agecat: 6 months
* agecat: Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth

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
![](/tmp/a01ee400-7ac6-42b9-ae59-2bd59412d2c4/39afad53-4b42-4093-a731-1cf2e27aea4b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a01ee400-7ac6-42b9-ae59-2bd59412d2c4/39afad53-4b42-4093-a731-1cf2e27aea4b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a01ee400-7ac6-42b9-ae59-2bd59412d2c4/39afad53-4b42-4093-a731-1cf2e27aea4b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level             baseline_level      estimate     ci_lower     ci_upper
----------  -----------------------------  ---------------  -----------  -----------  -----------
6 months    BANGLADESH                     NA                -1.3162927   -1.3261389   -1.3064465
6 months    BELARUS                        NA                 0.0980074    0.0976001    0.0984147
6 months    BRAZIL                         NA                 0.0475758    0.0464206    0.0487309
6 months    GAMBIA                         NA                -0.9041369   -0.9882027   -0.8200712
6 months    GUATEMALA                      NA                -1.7554987   -1.8668164   -1.6441809
6 months    INDIA                          NA                -1.1208090   -1.1740921   -1.0675259
6 months    MALAWI                         NA                -1.6601907   -1.6750280   -1.6453534
6 months    NEPAL                          NA                -1.1180083   -1.1462464   -1.0897703
6 months    PAKISTAN                       NA                -1.8288780   -1.8836433   -1.7741127
6 months    PERU                           NA                -0.8632046   -0.8959582   -0.8304509
6 months    PHILIPPINES                    NA                -1.1405724   -1.2523969   -1.0287478
6 months    SOUTH AFRICA                   NA                -1.0633202   -1.0983688   -1.0282717
6 months    TANZANIA, UNITED REPUBLIC OF   NA                -0.6330042   -0.7524105   -0.5135979
6 months    ZIMBABWE                       NA                -0.8679450   -0.9355882   -0.8003017
24 months   BANGLADESH                     NA                -1.9200375   -1.9340456   -1.9060294
24 months   BELARUS                        NA                -0.1442891   -0.1467764   -0.1418019
24 months   BRAZIL                         NA                 0.0061144    0.0025689    0.0096599
24 months   GAMBIA                         NA                -1.5774356   -1.6576005   -1.4972706
24 months   GUATEMALA                      NA                -2.9923738   -3.1472124   -2.8375353
24 months   INDIA                          NA                -2.1164384   -2.1827127   -2.0501640
24 months   MALAWI                         NA                -1.8861485   -1.9106757   -1.8616214
24 months   NEPAL                          NA                -1.7027793   -1.7540208   -1.6515379
24 months   PAKISTAN                       NA                -2.6699900   -2.6726275   -2.6673525
24 months   PERU                           NA                -1.2736758   -1.3300343   -1.2173173
24 months   PHILIPPINES                    NA                -2.4141145   -2.5225767   -2.3056524
24 months   SOUTH AFRICA                   NA                -1.6450595   -1.7169127   -1.5732064
24 months   TANZANIA, UNITED REPUBLIC OF   NA                -2.6051818   -2.6662274   -2.5441363
24 months   ZIMBABWE                       NA                -1.6055701   -1.7429703   -1.4681700


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate     ci_lower     ci_upper
----------  -------------------  ---------------  ----------  -----------  -----------
6 months    NA                   NA                -0.877431   -0.8914874   -0.8633747
24 months   NA                   NA                -1.771869   -1.7910003   -1.7527377


### Parameter: ATE


agecat      intervention_level             baseline_level      estimate     ci_lower     ci_upper
----------  -----------------------------  ---------------  -----------  -----------  -----------
6 months    BANGLADESH                     BANGLADESH         0.0000000    0.0000000    0.0000000
6 months    BELARUS                        BANGLADESH         1.4143001    1.4044454    1.4241549
6 months    BRAZIL                         BANGLADESH         1.3638685    1.3539556    1.3737814
6 months    GAMBIA                         BANGLADESH         0.4121558    0.3275176    0.4967941
6 months    GUATEMALA                      BANGLADESH        -0.4392059   -0.5509446   -0.3274673
6 months    INDIA                          BANGLADESH         0.1954837    0.1412948    0.2496727
6 months    MALAWI                         BANGLADESH        -0.3438980   -0.3617063   -0.3260896
6 months    NEPAL                          BANGLADESH         0.1982844    0.1683797    0.2281891
6 months    PAKISTAN                       BANGLADESH        -0.5125853   -0.5682325   -0.4569380
6 months    PERU                           BANGLADESH         0.4530882    0.4188828    0.4872936
6 months    PHILIPPINES                    BANGLADESH         0.1757204    0.0634632    0.2879775
6 months    SOUTH AFRICA                   BANGLADESH         0.2529725    0.2165719    0.2893731
6 months    TANZANIA, UNITED REPUBLIC OF   BANGLADESH         0.6832886    0.5634652    0.8031120
6 months    ZIMBABWE                       BANGLADESH         0.4483478    0.3799935    0.5167020
24 months   BANGLADESH                     BANGLADESH         0.0000000    0.0000000    0.0000000
24 months   BELARUS                        BANGLADESH         1.7757484    1.7615228    1.7899740
24 months   BRAZIL                         BANGLADESH         1.9261519    1.9117059    1.9405978
24 months   GAMBIA                         BANGLADESH         0.3426019    0.2612318    0.4239720
24 months   GUATEMALA                      BANGLADESH        -1.0723363   -1.2278072   -0.9168655
24 months   INDIA                          BANGLADESH        -0.1964009   -0.2641380   -0.1286637
24 months   MALAWI                         BANGLADESH         0.0338890    0.0056428    0.0621351
24 months   NEPAL                          BANGLADESH         0.2172582    0.1641355    0.2703808
24 months   PAKISTAN                       BANGLADESH        -0.7499525   -0.7641952   -0.7357098
24 months   PERU                           BANGLADESH         0.6463617    0.5883075    0.7044159
24 months   PHILIPPINES                    BANGLADESH        -0.4940770   -0.6034400   -0.3847140
24 months   SOUTH AFRICA                   BANGLADESH         0.2749780    0.2017895    0.3481664
24 months   TANZANIA, UNITED REPUBLIC OF   BANGLADESH        -0.6851443   -0.7477638   -0.6225248
24 months   ZIMBABWE                       BANGLADESH         0.3144674    0.1763570    0.4525777


### Parameter: PAR


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
6 months    BANGLADESH           NA                0.4388617   0.4237653   0.4539582
24 months   BANGLADESH           NA                0.1481685   0.1284736   0.1678633
