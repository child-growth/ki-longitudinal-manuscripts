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

**Intervention Variable:** country

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      country                         n_cell       n  outcome_variable 
----------  -----------------------------  -------  ------  -----------------
Birth       BANGLADESH                       22458   63492  whz              
Birth       BELARUS                          13817   63492  whz              
Birth       BRAZIL                              62   63492  whz              
Birth       GAMBIA                            1466   63492  whz              
Birth       GUATEMALA                          756   63492  whz              
Birth       INDIA                             7770   63492  whz              
Birth       MALAWI                               0   63492  whz              
Birth       NEPAL                              667   63492  whz              
Birth       PAKISTAN                           215   63492  whz              
Birth       PERU                               230   63492  whz              
Birth       PHILIPPINES                       2899   63492  whz              
Birth       SOUTH AFRICA                       120   63492  whz              
Birth       TANZANIA, UNITED REPUBLIC OF       115   63492  whz              
Birth       ZIMBABWE                         12917   63492  whz              
6 months    BANGLADESH                       23956   69330  whz              
6 months    BELARUS                          15757   69330  whz              
6 months    BRAZIL                             209   69330  whz              
6 months    GAMBIA                            2089   69330  whz              
6 months    GUATEMALA                         1262   69330  whz              
6 months    INDIA                             9576   69330  whz              
6 months    MALAWI                             839   69330  whz              
6 months    NEPAL                              800   69330  whz              
6 months    PAKISTAN                           614   69330  whz              
6 months    PERU                               488   69330  whz              
6 months    PHILIPPINES                       2706   69330  whz              
6 months    SOUTH AFRICA                       254   69330  whz              
6 months    TANZANIA, UNITED REPUBLIC OF      2275   69330  whz              
6 months    ZIMBABWE                          8505   69330  whz              
24 months   BANGLADESH                       15314   33711  whz              
24 months   BELARUS                           3970   33711  whz              
24 months   BRAZIL                             169   33711  whz              
24 months   GAMBIA                            1726   33711  whz              
24 months   GUATEMALA                         1082   33711  whz              
24 months   INDIA                             6299   33711  whz              
24 months   MALAWI                             563   33711  whz              
24 months   NEPAL                              715   33711  whz              
24 months   PAKISTAN                           168   33711  whz              
24 months   PERU                               365   33711  whz              
24 months   PHILIPPINES                       2449   33711  whz              
24 months   SOUTH AFRICA                       238   33711  whz              
24 months   TANZANIA, UNITED REPUBLIC OF       220   33711  whz              
24 months   ZIMBABWE                           433   33711  whz              


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
![](/tmp/82610aea-0b43-4b71-9fdf-37373ecb72c9/61563cd6-3bbd-4ca2-87db-d313bf92bedf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/82610aea-0b43-4b71-9fdf-37373ecb72c9/61563cd6-3bbd-4ca2-87db-d313bf92bedf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/82610aea-0b43-4b71-9fdf-37373ecb72c9/61563cd6-3bbd-4ca2-87db-d313bf92bedf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level             baseline_level      estimate     ci_lower     ci_upper
----------  -----------------------------  ---------------  -----------  -----------  -----------
6 months    BANGLADESH                     NA                -0.5158698   -0.5268877   -0.5048520
6 months    BELARUS                        NA                 0.5741099    0.5738264    0.5743935
6 months    BRAZIL                         NA                 0.9720774    0.9707548    0.9733999
6 months    GAMBIA                         NA                -0.1846038   -0.2760585   -0.0931490
6 months    GUATEMALA                      NA                 0.1281933    0.0117423    0.2446444
6 months    INDIA                          NA                -0.6893944   -0.7422958   -0.6364930
6 months    MALAWI                         NA                 0.4499404    0.4340086    0.4658723
6 months    NEPAL                          NA                -0.3931312   -0.4265699   -0.3596926
6 months    PAKISTAN                       NA                -0.5370575   -0.5878211   -0.4862940
6 months    PERU                           NA                 1.0579686    1.0239414    1.0919957
6 months    PHILIPPINES                    NA                -0.2938433   -0.4045814   -0.1831052
6 months    SOUTH AFRICA                   NA                 0.5421785    0.5006517    0.5837052
6 months    TANZANIA, UNITED REPUBLIC OF   NA                 0.1303645    0.0027471    0.2579818
6 months    ZIMBABWE                       NA                 0.3105514    0.2422554    0.3788475
24 months   BANGLADESH                     NA                -1.2118562   -1.2266521   -1.1970603
24 months   BELARUS                        NA                 0.6981406    0.6966133    0.6996680
24 months   BRAZIL                         NA                 0.4626233    0.4583001    0.4669464
24 months   GAMBIA                         NA                -0.8099290   -0.8946036   -0.7252543
24 months   GUATEMALA                      NA                -0.2815804   -0.4180323   -0.1451285
24 months   INDIA                          NA                -0.6257618   -0.6857875   -0.5657360
24 months   MALAWI                         NA                -0.0477709   -0.0743841   -0.0211577
24 months   NEPAL                          NA                -0.8935152   -0.9562473   -0.8307830
24 months   PAKISTAN                       NA                -1.0120238   -1.0149438   -1.0091038
24 months   PERU                           NA                 0.3264406    0.2668032    0.3860781
24 months   PHILIPPINES                    NA                -0.6099592   -0.7031852   -0.5167331
24 months   SOUTH AFRICA                   NA                 0.4090301    0.3406283    0.4774319
24 months   TANZANIA, UNITED REPUBLIC OF   NA                 0.0499394   -0.0036944    0.1035732
24 months   ZIMBABWE                       NA                -1.1825404   -1.3111845   -1.0538964


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
6 months    NA                   NA                -0.1067985   -0.1215768   -0.0920202
24 months   NA                   NA                -0.7109539   -0.7278520   -0.6940558


### Parameter: ATE


agecat      intervention_level             baseline_level      estimate     ci_lower     ci_upper
----------  -----------------------------  ---------------  -----------  -----------  -----------
6 months    BANGLADESH                     BANGLADESH         0.0000000    0.0000000    0.0000000
6 months    BELARUS                        BANGLADESH         1.0899797    1.0789581    1.1010014
6 months    BRAZIL                         BANGLADESH         1.4879472    1.4768486    1.4990458
6 months    GAMBIA                         BANGLADESH         0.3312660    0.2391617    0.4233704
6 months    GUATEMALA                      BANGLADESH         0.6440632    0.5270956    0.7610307
6 months    INDIA                          BANGLADESH        -0.1735246   -0.2275612   -0.1194879
6 months    MALAWI                         BANGLADESH         0.9658102    0.9464306    0.9851899
6 months    NEPAL                          BANGLADESH         0.1227386    0.0875191    0.1579581
6 months    PAKISTAN                       BANGLADESH        -0.0211877   -0.0731512    0.0307757
6 months    PERU                           BANGLADESH         1.5738384    1.5380695    1.6096073
6 months    PHILIPPINES                    BANGLADESH         0.2220265    0.1107417    0.3333114
6 months    SOUTH AFRICA                   BANGLADESH         1.0580483    1.0150979    1.1009987
6 months    TANZANIA, UNITED REPUBLIC OF   BANGLADESH         0.6462343    0.5181470    0.7743216
6 months    ZIMBABWE                       BANGLADESH         0.8264213    0.7572415    0.8956010
24 months   BANGLADESH                     BANGLADESH         0.0000000    0.0000000    0.0000000
24 months   BELARUS                        BANGLADESH         1.9099968    1.8951213    1.9248724
24 months   BRAZIL                         BANGLADESH         1.6744795    1.6590648    1.6898942
24 months   GAMBIA                         BANGLADESH         0.4019272    0.3159648    0.4878896
24 months   GUATEMALA                      BANGLADESH         0.9302758    0.7930240    1.0675276
24 months   INDIA                          BANGLADESH         0.5860944    0.5242570    0.6479318
24 months   MALAWI                         BANGLADESH         1.1640853    1.1336115    1.1945592
24 months   NEPAL                          BANGLADESH         0.3183410    0.2538175    0.3828646
24 months   PAKISTAN                       BANGLADESH         0.1998324    0.1847588    0.2149060
24 months   PERU                           BANGLADESH         1.5382968    1.4768788    1.5997149
24 months   PHILIPPINES                    BANGLADESH         0.6018970    0.5075041    0.6962899
24 months   SOUTH AFRICA                   BANGLADESH         1.6208863    1.5508933    1.6908793
24 months   TANZANIA, UNITED REPUBLIC OF   BANGLADESH         1.2617956    1.2061361    1.3174551
24 months   ZIMBABWE                       BANGLADESH         0.0293158   -0.1001777    0.1588093


### Parameter: PAR


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
6 months    BANGLADESH           NA                0.4090713   0.3928596   0.4252831
24 months   BANGLADESH           NA                0.5009023   0.4824662   0.5193384
