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

agecat      studyid                     n_cell       n
----------  -------------------------  -------  ------
Birth       ki0047075b-MAL-ED             1499   62600
Birth       ki1000108-CMC-V-BCS-2002        90   62600
Birth       ki1000108-IRC                  388   62600
Birth       ki1000109-EE                     2   62600
Birth       ki1000109-ResPak                 7   62600
Birth       ki1000304b-SAS-CompFeed        187   62600
Birth       ki1000304b-SAS-FoodSuppl         0   62600
Birth       ki1017093-NIH-Birth             28   62600
Birth       ki1017093b-PROVIDE               0   62600
Birth       ki1017093c-NIH-Crypto           27   62600
Birth       ki1066203-TanzaniaChild2         0   62600
Birth       ki1101329-Keneba              1541   62600
Birth       ki1112895-Guatemala BSC          0   62600
Birth       ki1113344-GMS-Nepal              0   62600
Birth       ki1114097-CMIN                 138   62600
Birth       ki1114097-CONTENT                2   62600
Birth       ki1119695-PROBIT             13884   62600
Birth       ki1126311-ZVITAMBO           13830   62600
Birth       ki1135781-COHORTS            10542   62600
Birth       ki1148112-LCNI-5                 0   62600
Birth       kiGH5241-JiVitA-3            19613   62600
Birth       kiGH5241-JiVitA-4              822   62600
6 months    ki0047075b-MAL-ED             1696   70727
6 months    ki1000108-CMC-V-BCS-2002       369   70727
6 months    ki1000108-IRC                  407   70727
6 months    ki1000109-EE                   372   70727
6 months    ki1000109-ResPak               235   70727
6 months    ki1000304b-SAS-CompFeed       1336   70727
6 months    ki1000304b-SAS-FoodSuppl       380   70727
6 months    ki1017093-NIH-Birth            537   70727
6 months    ki1017093b-PROVIDE             583   70727
6 months    ki1017093c-NIH-Crypto          715   70727
6 months    ki1066203-TanzaniaChild2      2029   70727
6 months    ki1101329-Keneba              2089   70727
6 months    ki1112895-Guatemala BSC        299   70727
6 months    ki1113344-GMS-Nepal            563   70727
6 months    ki1114097-CMIN                1836   70727
6 months    ki1114097-CONTENT              215   70727
6 months    ki1119695-PROBIT             15761   70727
6 months    ki1126311-ZVITAMBO            8295   70727
6 months    ki1135781-COHORTS            10529   70727
6 months    ki1148112-LCNI-5               839   70727
6 months    kiGH5241-JiVitA-3            16811   70727
6 months    kiGH5241-JiVitA-4             4831   70727
24 months   ki0047075b-MAL-ED             1489   34719
24 months   ki1000108-CMC-V-BCS-2002       372   34719
24 months   ki1000108-IRC                  409   34719
24 months   ki1000109-EE                     0   34719
24 months   ki1000109-ResPak                 0   34719
24 months   ki1000304b-SAS-CompFeed          0   34719
24 months   ki1000304b-SAS-FoodSuppl         0   34719
24 months   ki1017093-NIH-Birth            429   34719
24 months   ki1017093b-PROVIDE             577   34719
24 months   ki1017093c-NIH-Crypto          514   34719
24 months   ki1066203-TanzaniaChild2         6   34719
24 months   ki1101329-Keneba              1725   34719
24 months   ki1112895-Guatemala BSC          0   34719
24 months   ki1113344-GMS-Nepal            499   34719
24 months   ki1114097-CMIN                1222   34719
24 months   ki1114097-CONTENT              164   34719
24 months   ki1119695-PROBIT              4035   34719
24 months   ki1126311-ZVITAMBO             457   34719
24 months   ki1135781-COHORTS             8858   34719
24 months   ki1148112-LCNI-5               579   34719
24 months   kiGH5241-JiVitA-3             8632   34719
24 months   kiGH5241-JiVitA-4             4752   34719


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
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/199dcc0e-15a8-4167-85a6-dafbee556d49/30da7bb6-7f5a-4bb6-a339-c43501ae0a18/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/199dcc0e-15a8-4167-85a6-dafbee556d49/30da7bb6-7f5a-4bb6-a339-c43501ae0a18/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/199dcc0e-15a8-4167-85a6-dafbee556d49/30da7bb6-7f5a-4bb6-a339-c43501ae0a18/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     intervention_level         baseline_level      estimate     ci_lower     ci_upper
---------  -------------------------  ---------------  -----------  -----------  -----------
6 months   ki0047075b-MAL-ED          NA                -0.9838360   -1.0373262   -0.9303458
6 months   ki1000108-CMC-V-BCS-2002   NA                -1.4234508   -1.4255964   -1.4213051
6 months   ki1000108-IRC              NA                -1.2344062   -1.2365983   -1.2322142
6 months   ki1000109-EE               NA                -2.2004704   -2.2264013   -2.1745395
6 months   ki1000109-ResPak           NA                -1.4029220   -1.4047110   -1.4011330
6 months   ki1000304b-SAS-CompFeed    NA                -1.4018563   -1.4020692   -1.4016434
6 months   ki1000304b-SAS-FoodSuppl   NA                -1.8986842   -1.9035666   -1.8938018
6 months   ki1017093-NIH-Birth        NA                -1.4073821   -1.4767118   -1.3380523
6 months   ki1017093b-PROVIDE         NA                -1.0871041   -1.1444547   -1.0297534
6 months   ki1017093c-NIH-Crypto      NA                -1.1986783   -1.2725922   -1.1247644
6 months   ki1066203-TanzaniaChild2   NA                -0.5434389   -0.6702135   -0.4166643
6 months   ki1101329-Keneba           NA                -0.9041369   -0.9836906   -0.8245832
6 months   ki1112895-Guatemala BSC    NA                -1.5619008   -1.6066481   -1.5171534
6 months   ki1113344-GMS-Nepal        NA                -1.3321522   -1.3413694   -1.3229350
6 months   ki1114097-CMIN             NA                -0.7351262   -0.8716696   -0.5985828
6 months   ki1114097-CONTENT          NA                -0.3139217   -0.3153283   -0.3125151
6 months   ki1119695-PROBIT           NA                 0.1069986    0.1065857    0.1074115
6 months   ki1126311-ZVITAMBO         NA                -0.8907480   -0.9582906   -0.8232055
6 months   ki1135781-COHORTS          NA                -1.1085526   -1.1669104   -1.0501947
6 months   ki1148112-LCNI-5           NA                -1.6601907   -1.6742692   -1.6461122
6 months   kiGH5241-JiVitA-3          NA                -1.3130932   -1.3144132   -1.3117732
6 months   kiGH5241-JiVitA-4          NA                -1.3447940   -1.3467564   -1.3428317


### Parameter: E(Y)


agecat     intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  -------------------  ---------------  -----------  -----------  -----------
6 months   NA                   NA                -0.8716525   -0.8853712   -0.8579339


### Parameter: ATE


agecat     intervention_level         baseline_level         estimate     ci_lower     ci_upper
---------  -------------------------  ------------------  -----------  -----------  -----------
6 months   ki0047075b-MAL-ED          ki0047075b-MAL-ED     0.0000000    0.0000000    0.0000000
6 months   ki1000108-CMC-V-BCS-2002   ki0047075b-MAL-ED    -0.4396148   -0.4931434   -0.3860862
6 months   ki1000108-IRC              ki0047075b-MAL-ED    -0.2505702   -0.3041091   -0.1970313
6 months   ki1000109-EE               ki0047075b-MAL-ED    -1.2166344   -1.2763423   -1.1569266
6 months   ki1000109-ResPak           ki0047075b-MAL-ED    -0.4190860   -0.4726052   -0.3655668
6 months   ki1000304b-SAS-CompFeed    ki0047075b-MAL-ED    -0.4180203   -0.4715109   -0.3645297
6 months   ki1000304b-SAS-FoodSuppl   ki0047075b-MAL-ED    -0.9148482   -0.9684977   -0.8611988
6 months   ki1017093-NIH-Birth        ki0047075b-MAL-ED    -0.4235461   -0.5111114   -0.3359808
6 months   ki1017093b-PROVIDE         ki0047075b-MAL-ED    -0.1032681   -0.1816467   -0.0248895
6 months   ki1017093c-NIH-Crypto      ki0047075b-MAL-ED    -0.2148423   -0.3060818   -0.1236028
6 months   ki1066203-TanzaniaChild2   ki0047075b-MAL-ED     0.4403971    0.3027993    0.5779949
6 months   ki1101329-Keneba           ki0047075b-MAL-ED     0.0796991   -0.0147278    0.1741259
6 months   ki1112895-Guatemala BSC    ki0047075b-MAL-ED    -0.5780648   -0.6478058   -0.5083238
6 months   ki1113344-GMS-Nepal        ki0047075b-MAL-ED    -0.3483162   -0.4025496   -0.2940827
6 months   ki1114097-CMIN             ki0047075b-MAL-ED     0.2487098    0.1020644    0.3953552
6 months   ki1114097-CONTENT          ki0047075b-MAL-ED     0.6699143    0.6164054    0.7234231
6 months   ki1119695-PROBIT           ki0047075b-MAL-ED     1.0908346    1.0373429    1.1443263
6 months   ki1126311-ZVITAMBO         ki0047075b-MAL-ED     0.0930879    0.0069303    0.1792456
6 months   ki1135781-COHORTS          ki0047075b-MAL-ED    -0.1247166   -0.2038800   -0.0455532
6 months   ki1148112-LCNI-5           ki0047075b-MAL-ED    -0.6763547   -0.7321261   -0.6205833
6 months   kiGH5241-JiVitA-3          ki0047075b-MAL-ED    -0.3292572   -0.3827667   -0.2757478
6 months   kiGH5241-JiVitA-4          ki0047075b-MAL-ED    -0.3609581   -0.4144876   -0.3074285


### Parameter: PAR


agecat     intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------  ---------------  ----------  ----------  ----------
6 months   ki0047075b-MAL-ED    NA                0.1121834   0.0583367   0.1660302
