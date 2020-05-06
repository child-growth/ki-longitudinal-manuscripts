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

**Intervention Variable:** studyid

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      studyid           n_cell       n  outcome_variable 
----------  ---------------  -------  ------  -----------------
Birth       CMC-V-BCS-2002        86   63492  whz              
Birth       CMIN                  19   63492  whz              
Birth       COHORTS             9848   63492  whz              
Birth       CONTENT                2   63492  whz              
Birth       EE                   177   63492  whz              
Birth       GMS-Nepal            641   63492  whz              
Birth       Guatemala BSC          0   63492  whz              
Birth       IRC                  343   63492  whz              
Birth       JiVitA-3           18014   63492  whz              
Birth       JiVitA-4            2396   63492  whz              
Birth       Keneba              1466   63492  whz              
Birth       LCNI-5                 0   63492  whz              
Birth       MAL-ED               811   63492  whz              
Birth       NIH-Birth            575   63492  whz              
Birth       NIH-Crypto           707   63492  whz              
Birth       PROBIT             13817   63492  whz              
Birth       PROVIDE              532   63492  whz              
Birth       ResPak                38   63492  whz              
Birth       SAS-CompFeed        1103   63492  whz              
Birth       SAS-FoodSuppl          0   63492  whz              
Birth       TanzaniaChild2         0   63492  whz              
Birth       ZVITAMBO           12917   63492  whz              
6 months    CMC-V-BCS-2002       368   69330  whz              
6 months    CMIN                 243   69330  whz              
6 months    COHORTS            10519   69330  whz              
6 months    CONTENT              215   69330  whz              
6 months    EE                   375   69330  whz              
6 months    GMS-Nepal            564   69330  whz              
6 months    Guatemala BSC        299   69330  whz              
6 months    IRC                  408   69330  whz              
6 months    JiVitA-3           16784   69330  whz              
6 months    JiVitA-4            4833   69330  whz              
6 months    Keneba              2089   69330  whz              
6 months    LCNI-5               839   69330  whz              
6 months    MAL-ED              1696   69330  whz              
6 months    NIH-Birth            537   69330  whz              
6 months    NIH-Crypto           715   69330  whz              
6 months    PROBIT             15757   69330  whz              
6 months    PROVIDE              603   69330  whz              
6 months    ResPak               239   69330  whz              
6 months    SAS-CompFeed        1334   69330  whz              
6 months    SAS-FoodSuppl        380   69330  whz              
6 months    TanzaniaChild2      2028   69330  whz              
6 months    ZVITAMBO            8505   69330  whz              
24 months   CMC-V-BCS-2002       372   33711  whz              
24 months   CMIN                 243   33711  whz              
24 months   COHORTS             8822   33711  whz              
24 months   CONTENT              164   33711  whz              
24 months   EE                   168   33711  whz              
24 months   GMS-Nepal            487   33711  whz              
24 months   Guatemala BSC          0   33711  whz              
24 months   IRC                  409   33711  whz              
24 months   JiVitA-3            8603   33711  whz              
24 months   JiVitA-4            4735   33711  whz              
24 months   Keneba              1726   33711  whz              
24 months   LCNI-5               563   33711  whz              
24 months   MAL-ED              1489   33711  whz              
24 months   NIH-Birth            428   33711  whz              
24 months   NIH-Crypto           514   33711  whz              
24 months   PROBIT              3970   33711  whz              
24 months   PROVIDE              579   33711  whz              
24 months   ResPak                 0   33711  whz              
24 months   SAS-CompFeed           0   33711  whz              
24 months   SAS-FoodSuppl          0   33711  whz              
24 months   TanzaniaChild2         6   33711  whz              
24 months   ZVITAMBO             433   33711  whz              


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
![](/tmp/39869d58-5df3-4130-b71e-4b15c37d518b/94280dba-1033-4764-8338-ee621bc51164/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/39869d58-5df3-4130-b71e-4b15c37d518b/94280dba-1033-4764-8338-ee621bc51164/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/39869d58-5df3-4130-b71e-4b15c37d518b/94280dba-1033-4764-8338-ee621bc51164/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  -------------------  ---------------  -----------  -----------  -----------
6 months   CMC-V-BCS-2002       NA                -0.5026766   -0.5049059   -0.5004474
6 months   CMIN                 NA                -0.5780453   -0.6312772   -0.5248134
6 months   COHORTS              NA                -0.5077260   -0.5680297   -0.4474224
6 months   CONTENT              NA                 1.0644279    1.0634291    1.0654267
6 months   EE                   NA                -0.7747022   -0.7764727   -0.7729317
6 months   GMS-Nepal            NA                -0.6038416   -0.6148239   -0.5928593
6 months   Guatemala BSC        NA                -0.0840134   -0.1301916   -0.0378351
6 months   IRC                  NA                -0.5989297   -0.6011524   -0.5967071
6 months   JiVitA-3             NA                -0.5935161   -0.5946919   -0.5923404
6 months   JiVitA-4             NA                -0.3898055   -0.3918099   -0.3878011
6 months   Keneba               NA                -0.1846038   -0.2760585   -0.0931490
6 months   LCNI-5               NA                 0.4499404    0.4340086    0.4658723
6 months   MAL-ED               NA                 0.3458461    0.2726856    0.4190067
6 months   NIH-Birth            NA                -0.4474038   -0.5215084   -0.3732991
6 months   NIH-Crypto           NA                 0.0297622   -0.0557753    0.1152998
6 months   PROBIT               NA                 0.5741099    0.5738264    0.5743935
6 months   PROVIDE              NA                -0.1990907   -0.2698420   -0.1283393
6 months   ResPak               NA                -0.1641841   -0.2138301   -0.1145381
6 months   SAS-CompFeed         NA                -0.6657084   -0.6665005   -0.6649163
6 months   SAS-FoodSuppl        NA                -1.0121579   -1.0215117   -1.0028041
6 months   TanzaniaChild2       NA                 0.0809332   -0.0594740    0.2213403
6 months   ZVITAMBO             NA                 0.3105514    0.2422554    0.3788475


### Parameter: E(Y)


agecat     intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  -------------------  ---------------  -----------  -----------  -----------
6 months   NA                   NA                -0.1067985   -0.1215768   -0.0920202


### Parameter: ATE


agecat     intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  -------------------  ---------------  -----------  -----------  -----------
6 months   CMC-V-BCS-2002       CMC-V-BCS-2002     0.0000000    0.0000000    0.0000000
6 months   CMIN                 CMC-V-BCS-2002    -0.0753686   -0.1286472   -0.0220901
6 months   COHORTS              CMC-V-BCS-2002    -0.0050494   -0.0653942    0.0552955
6 months   CONTENT              CMC-V-BCS-2002     1.5671045    1.5646286    1.5695804
6 months   EE                   CMC-V-BCS-2002    -0.2720256   -0.2749695   -0.2690817
6 months   GMS-Nepal            CMC-V-BCS-2002    -0.1011650   -0.1123746   -0.0899553
6 months   Guatemala BSC        CMC-V-BCS-2002     0.4186633    0.3724312    0.4648953
6 months   IRC                  CMC-V-BCS-2002    -0.0962531   -0.0993337   -0.0931725
6 months   JiVitA-3             CMC-V-BCS-2002    -0.0908395   -0.0933637   -0.0883154
6 months   JiVitA-4             CMC-V-BCS-2002     0.1128711    0.1098706    0.1158717
6 months   Keneba               CMC-V-BCS-2002     0.3180729    0.2265908    0.4095549
6 months   LCNI-5               CMC-V-BCS-2002     0.9526170    0.9365467    0.9686874
6 months   MAL-ED               CMC-V-BCS-2002     0.8485227    0.7753186    0.9217269
6 months   NIH-Birth            CMC-V-BCS-2002     0.0552728   -0.0188653    0.1294110
6 months   NIH-Crypto           CMC-V-BCS-2002     0.5324389    0.4468723    0.6180055
6 months   PROBIT               CMC-V-BCS-2002     1.0767865    1.0745428    1.0790303
6 months   PROVIDE              CMC-V-BCS-2002     0.3035860    0.2327995    0.3743725
6 months   ResPak               CMC-V-BCS-2002     0.3384925    0.2887965    0.3881886
6 months   SAS-CompFeed         CMC-V-BCS-2002    -0.1630318   -0.1654000   -0.1606635
6 months   SAS-FoodSuppl        CMC-V-BCS-2002    -0.5094813   -0.5191124   -0.4998502
6 months   TanzaniaChild2       CMC-V-BCS-2002     0.5836098    0.4431850    0.7240347
6 months   ZVITAMBO             CMC-V-BCS-2002     0.8132281    0.7448956    0.8815605


### Parameter: PAR


agecat     intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------  ---------------  ----------  ----------  ----------
6 months   CMC-V-BCS-2002       NA                0.3958782   0.3809421   0.4108142
