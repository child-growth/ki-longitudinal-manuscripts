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

**Intervention Variable:** studyid

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      studyid           n_cell       n  outcome_variable 
----------  ---------------  -------  ------  -----------------
Birth       CMC-V-BCS-2002        92   70599  haz              
Birth       CMIN                  26   70599  haz              
Birth       COHORTS            10542   70599  haz              
Birth       CONTENT                2   70599  haz              
Birth       EE                   240   70599  haz              
Birth       GMS-Nepal            696   70599  haz              
Birth       Guatemala BSC          0   70599  haz              
Birth       IRC                  388   70599  haz              
Birth       JiVitA-3           22455   70599  haz              
Birth       JiVitA-4            2823   70599  haz              
Birth       Keneba              1543   70599  haz              
Birth       LCNI-5                 0   70599  haz              
Birth       MAL-ED               851   70599  haz              
Birth       NIH-Birth            608   70599  haz              
Birth       NIH-Crypto           732   70599  haz              
Birth       PROBIT             13893   70599  haz              
Birth       PROVIDE              539   70599  haz              
Birth       ResPak                42   70599  haz              
Birth       SAS-CompFeed        1252   70599  haz              
Birth       SAS-FoodSuppl          0   70599  haz              
Birth       TanzaniaChild2         0   70599  haz              
Birth       ZVITAMBO           13875   70599  haz              
6 months    CMC-V-BCS-2002       369   69534  haz              
6 months    CMIN                 243   69534  haz              
6 months    COHORTS            10529   69534  haz              
6 months    CONTENT              215   69534  haz              
6 months    EE                   373   69534  haz              
6 months    GMS-Nepal            564   69534  haz              
6 months    Guatemala BSC        299   69534  haz              
6 months    IRC                  407   69534  haz              
6 months    JiVitA-3           16811   69534  haz              
6 months    JiVitA-4            4831   69534  haz              
6 months    Keneba              2089   69534  haz              
6 months    LCNI-5               839   69534  haz              
6 months    MAL-ED              1696   69534  haz              
6 months    NIH-Birth            537   69534  haz              
6 months    NIH-Crypto           715   69534  haz              
6 months    PROBIT             15760   69534  haz              
6 months    PROVIDE              604   69534  haz              
6 months    ResPak               239   69534  haz              
6 months    SAS-CompFeed        1336   69534  haz              
6 months    SAS-FoodSuppl        380   69534  haz              
6 months    TanzaniaChild2      2029   69534  haz              
6 months    ZVITAMBO            8669   69534  haz              
24 months   CMC-V-BCS-2002       371   35072  haz              
24 months   CMIN                 242   35072  haz              
24 months   COHORTS             8852   35072  haz              
24 months   CONTENT              164   35072  haz              
24 months   EE                   167   35072  haz              
24 months   GMS-Nepal            488   35072  haz              
24 months   Guatemala BSC          0   35072  haz              
24 months   IRC                  409   35072  haz              
24 months   JiVitA-3            8632   35072  haz              
24 months   JiVitA-4            4752   35072  haz              
24 months   Keneba              1725   35072  haz              
24 months   LCNI-5               579   35072  haz              
24 months   MAL-ED              1489   35072  haz              
24 months   NIH-Birth            429   35072  haz              
24 months   NIH-Crypto           514   35072  haz              
24 months   PROBIT              4035   35072  haz              
24 months   PROVIDE              578   35072  haz              
24 months   ResPak                 0   35072  haz              
24 months   SAS-CompFeed           0   35072  haz              
24 months   SAS-FoodSuppl          0   35072  haz              
24 months   TanzaniaChild2         6   35072  haz              
24 months   ZVITAMBO            1640   35072  haz              


The following strata were considered:

* agecat: 24 months
* agecat: 6 months
* agecat: Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth
* agecat: 24 months

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




# Results Detail

## Results Plots
![](/tmp/d52584e2-0d4d-4f64-b1e0-c7e17e25d11d/1addc87b-9c54-465e-b8a4-24b631a5827c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d52584e2-0d4d-4f64-b1e0-c7e17e25d11d/1addc87b-9c54-465e-b8a4-24b631a5827c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d52584e2-0d4d-4f64-b1e0-c7e17e25d11d/1addc87b-9c54-465e-b8a4-24b631a5827c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  -------------------  ---------------  -----------  -----------  -----------
6 months   CMC-V-BCS-2002       NA                -1.4234508   -1.4256598   -1.4212417
6 months   CMIN                 NA                -1.7844376   -1.8348693   -1.7340059
6 months   COHORTS              NA                -1.1085526   -1.1683167   -1.0487885
6 months   CONTENT              NA                -0.2785256   -0.2796568   -0.2773943
6 months   EE                   NA                -2.0835567   -2.0853136   -2.0817999
6 months   GMS-Nepal            NA                -1.3508392   -1.3607182   -1.3409602
6 months   Guatemala BSC        NA                -1.5619008   -1.6088135   -1.5149881
6 months   IRC                  NA                -1.2344062   -1.2366532   -1.2321592
6 months   JiVitA-3             NA                -1.3130932   -1.3144370   -1.3117494
6 months   JiVitA-4             NA                -1.3447940   -1.3467892   -1.3427988
6 months   Keneba               NA                -0.9041369   -0.9882027   -0.8200712
6 months   LCNI-5               NA                -1.6601907   -1.6750280   -1.6453534
6 months   MAL-ED               NA                -0.9837485   -1.0463746   -0.9211225
6 months   NIH-Birth            NA                -1.4073821   -1.4799960   -1.3347682
6 months   NIH-Crypto           NA                -1.1986783   -1.2760951   -1.1212615
6 months   PROBIT               NA                 0.0980074    0.0976001    0.0984147
6 months   PROVIDE              NA                -1.0916915   -1.1522622   -1.0311208
6 months   ResPak               NA                -1.4314086   -1.4847844   -1.3780329
6 months   SAS-CompFeed         NA                -1.4018563   -1.4020778   -1.4016348
6 months   SAS-FoodSuppl        NA                -1.8986842   -1.9051218   -1.8922466
6 months   TanzaniaChild2       NA                -0.5434389   -0.6732683   -0.4136094
6 months   ZVITAMBO             NA                -0.8679450   -0.9355882   -0.8003017


### Parameter: E(Y)


agecat     intervention_level   baseline_level     estimate     ci_lower     ci_upper
---------  -------------------  ---------------  ----------  -----------  -----------
6 months   NA                   NA                -0.877431   -0.8914874   -0.8633747


### Parameter: ATE


agecat     intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  -------------------  ---------------  -----------  -----------  -----------
6 months   CMC-V-BCS-2002       CMC-V-BCS-2002     0.0000000    0.0000000    0.0000000
6 months   CMIN                 CMC-V-BCS-2002    -0.3609868   -0.4114669   -0.3105067
6 months   COHORTS              CMC-V-BCS-2002     0.3148982    0.2550933    0.3747031
6 months   CONTENT              CMC-V-BCS-2002     1.1449252    1.1424580    1.1473924
6 months   EE                   CMC-V-BCS-2002    -0.6601060   -0.6628234   -0.6573885
6 months   GMS-Nepal            CMC-V-BCS-2002     0.0726115    0.0624865    0.0827365
6 months   Guatemala BSC        CMC-V-BCS-2002    -0.1384500   -0.1854147   -0.0914853
6 months   IRC                  CMC-V-BCS-2002     0.1890445    0.1859903    0.1920988
6 months   JiVitA-3             CMC-V-BCS-2002     0.1103576    0.1077613    0.1129538
6 months   JiVitA-4             CMC-V-BCS-2002     0.0786567    0.0757194    0.0815941
6 months   Keneba               CMC-V-BCS-2002     0.5193138    0.4352212    0.6034064
6 months   LCNI-5               CMC-V-BCS-2002    -0.2367399   -0.2517294   -0.2217504
6 months   MAL-ED               CMC-V-BCS-2002     0.4397022    0.3770413    0.5023632
6 months   NIH-Birth            CMC-V-BCS-2002     0.0160687   -0.0565788    0.0887162
6 months   NIH-Crypto           CMC-V-BCS-2002     0.2247724    0.1473242    0.3022207
6 months   PROBIT               CMC-V-BCS-2002     1.5214582    1.5192162    1.5237002
6 months   PROVIDE              CMC-V-BCS-2002     0.3317593    0.2711483    0.3923702
6 months   ResPak               CMC-V-BCS-2002    -0.0079579   -0.0613793    0.0454636
6 months   SAS-CompFeed         CMC-V-BCS-2002     0.0215945    0.0193746    0.0238144
6 months   SAS-FoodSuppl        CMC-V-BCS-2002    -0.4752334   -0.4820202   -0.4684467
6 months   TanzaniaChild2       CMC-V-BCS-2002     0.8800119    0.7501636    1.0098601
6 months   ZVITAMBO             CMC-V-BCS-2002     0.5555058    0.4878265    0.6231851


### Parameter: PAR


agecat     intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------  -------------------  ---------------  ----------  ---------  ----------
6 months   CMC-V-BCS-2002       NA                0.5460197   0.531798   0.5602415
