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

agecat      studyid                     n_cell       n
----------  -------------------------  -------  ------
Birth       ki0047075b-MAL-ED             1450   56639
Birth       ki1000108-CMC-V-BCS-2002        88   56639
Birth       ki1000108-IRC                  343   56639
Birth       ki1000109-EE                     1   56639
Birth       ki1000109-ResPak                 6   56639
Birth       ki1000304b-SAS-CompFeed        166   56639
Birth       ki1000304b-SAS-FoodSuppl         0   56639
Birth       ki1017093-NIH-Birth             28   56639
Birth       ki1017093b-PROVIDE               0   56639
Birth       ki1017093c-NIH-Crypto           23   56639
Birth       ki1066203-TanzaniaChild2         0   56639
Birth       ki1101329-Keneba              1423   56639
Birth       ki1112895-Guatemala BSC          0   56639
Birth       ki1113344-GMS-Nepal              0   56639
Birth       ki1114097-CMIN                 129   56639
Birth       ki1114097-CONTENT                2   56639
Birth       ki1119695-PROBIT             13824   56639
Birth       ki1126311-ZVITAMBO           12916   56639
Birth       ki1135781-COHORTS             9848   56639
Birth       ki1148112-LCNI-5                 0   56639
Birth       kiGH5241-JiVitA-3            15709   56639
Birth       kiGH5241-JiVitA-4              683   56639
6 months    ki0047075b-MAL-ED             1696   70656
6 months    ki1000108-CMC-V-BCS-2002       368   70656
6 months    ki1000108-IRC                  408   70656
6 months    ki1000109-EE                   376   70656
6 months    ki1000109-ResPak               235   70656
6 months    ki1000304b-SAS-CompFeed       1334   70656
6 months    ki1000304b-SAS-FoodSuppl       380   70656
6 months    ki1017093-NIH-Birth            536   70656
6 months    ki1017093b-PROVIDE             582   70656
6 months    ki1017093c-NIH-Crypto          715   70656
6 months    ki1066203-TanzaniaChild2      2028   70656
6 months    ki1101329-Keneba              2089   70656
6 months    ki1112895-Guatemala BSC        299   70656
6 months    ki1113344-GMS-Nepal            563   70656
6 months    ki1114097-CMIN                1836   70656
6 months    ki1114097-CONTENT              215   70656
6 months    ki1119695-PROBIT             15757   70656
6 months    ki1126311-ZVITAMBO            8264   70656
6 months    ki1135781-COHORTS            10519   70656
6 months    ki1148112-LCNI-5               839   70656
6 months    kiGH5241-JiVitA-3            16784   70656
6 months    kiGH5241-JiVitA-4             4833   70656
24 months   ki0047075b-MAL-ED             1489   34524
24 months   ki1000108-CMC-V-BCS-2002       372   34524
24 months   ki1000108-IRC                  409   34524
24 months   ki1000109-EE                     0   34524
24 months   ki1000109-ResPak                 0   34524
24 months   ki1000304b-SAS-CompFeed          0   34524
24 months   ki1000304b-SAS-FoodSuppl         0   34524
24 months   ki1017093-NIH-Birth            428   34524
24 months   ki1017093b-PROVIDE             578   34524
24 months   ki1017093c-NIH-Crypto          514   34524
24 months   ki1066203-TanzaniaChild2         6   34524
24 months   ki1101329-Keneba              1726   34524
24 months   ki1112895-Guatemala BSC          0   34524
24 months   ki1113344-GMS-Nepal            498   34524
24 months   ki1114097-CMIN                1223   34524
24 months   ki1114097-CONTENT              164   34524
24 months   ki1119695-PROBIT              3971   34524
24 months   ki1126311-ZVITAMBO             423   34524
24 months   ki1135781-COHORTS             8822   34524
24 months   ki1148112-LCNI-5               563   34524
24 months   kiGH5241-JiVitA-3             8603   34524
24 months   kiGH5241-JiVitA-4             4735   34524


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
![](/tmp/b71cb199-6b23-47a4-a0b7-5f8fb021eafa/485ecff3-8c6e-4aca-ba44-6218e1f95ca5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b71cb199-6b23-47a4-a0b7-5f8fb021eafa/485ecff3-8c6e-4aca-ba44-6218e1f95ca5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b71cb199-6b23-47a4-a0b7-5f8fb021eafa/485ecff3-8c6e-4aca-ba44-6218e1f95ca5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     intervention_level         baseline_level      estimate     ci_lower     ci_upper
---------  -------------------------  ---------------  -----------  -----------  -----------
6 months   ki0047075b-MAL-ED          NA                 0.3436630    0.2833512    0.4039748
6 months   ki1000108-CMC-V-BCS-2002   NA                -0.5026766   -0.5048335   -0.5005198
6 months   ki1000108-IRC              NA                -0.5989297   -0.6010780   -0.5967814
6 months   ki1000109-EE               NA                -0.7212766   -0.7463655   -0.6961877
6 months   ki1000109-ResPak           NA                -0.1683617   -0.1699643   -0.1667591
6 months   ki1000304b-SAS-CompFeed    NA                -0.6657084   -0.6664654   -0.6649514
6 months   ki1000304b-SAS-FoodSuppl   NA                -1.0121579   -1.0176872   -1.0066286
6 months   ki1017093-NIH-Birth        NA                -0.4389101   -0.5080492   -0.3697711
6 months   ki1017093b-PROVIDE         NA                -0.2083706   -0.2749684   -0.1417727
6 months   ki1017093c-NIH-Crypto      NA                 0.0297622   -0.0518013    0.1113258
6 months   ki1066203-TanzaniaChild2   NA                 0.0809332   -0.0557556    0.2176220
6 months   ki1101329-Keneba           NA                -0.1846223   -0.2713066   -0.0979380
6 months   ki1112895-Guatemala BSC    NA                -0.0840134   -0.1278715   -0.0401552
6 months   ki1113344-GMS-Nepal        NA                -0.6047987   -0.6150001   -0.5945973
6 months   ki1114097-CMIN             NA                 0.1716267    0.0261921    0.3170614
6 months   ki1114097-CONTENT          NA                 1.0684318    1.0674681    1.0693955
6 months   ki1119695-PROBIT           NA                 0.5789633    0.5786880    0.5792386
6 months   ki1126311-ZVITAMBO         NA                 0.3047138    0.2368713    0.3725564
6 months   ki1135781-COHORTS          NA                -0.5077260   -0.5664327   -0.4490194
6 months   ki1148112-LCNI-5           NA                 0.4499285    0.4348317    0.4650253
6 months   kiGH5241-JiVitA-3          NA                -0.5935161   -0.5946677   -0.5923646
6 months   kiGH5241-JiVitA-4          NA                -0.3898055   -0.3917666   -0.3878444


### Parameter: E(Y)


agecat     intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  -------------------  ---------------  -----------  -----------  -----------
6 months   NA                   NA                -0.0987239   -0.1131619   -0.0842858


### Parameter: ATE


agecat     intervention_level         baseline_level         estimate     ci_lower     ci_upper
---------  -------------------------  ------------------  -----------  -----------  -----------
6 months   ki0047075b-MAL-ED          ki0047075b-MAL-ED     0.0000000    0.0000000    0.0000000
6 months   ki1000108-CMC-V-BCS-2002   ki0047075b-MAL-ED    -0.8463397   -0.9067011   -0.7859782
6 months   ki1000108-IRC              ki0047075b-MAL-ED    -0.9425928   -1.0029423   -0.8822432
6 months   ki1000109-EE               ki0047075b-MAL-ED    -1.0649396   -1.1296944   -1.0001849
6 months   ki1000109-ResPak           ki0047075b-MAL-ED    -0.5120247   -0.5723600   -0.4516895
6 months   ki1000304b-SAS-CompFeed    ki0047075b-MAL-ED    -1.0093714   -1.0696884   -0.9490545
6 months   ki1000304b-SAS-FoodSuppl   ki0047075b-MAL-ED    -1.3558209   -1.4164023   -1.2952396
6 months   ki1017093-NIH-Birth        ki0047075b-MAL-ED    -0.7825732   -0.8743220   -0.6908244
6 months   ki1017093b-PROVIDE         ki0047075b-MAL-ED    -0.5520336   -0.6418325   -0.4622346
6 months   ki1017093c-NIH-Crypto      ki0047075b-MAL-ED    -0.3139008   -0.4153414   -0.2124602
6 months   ki1066203-TanzaniaChild2   ki0047075b-MAL-ED    -0.2627298   -0.4121332   -0.1133265
6 months   ki1101329-Keneba           ki0047075b-MAL-ED    -0.5282854   -0.6334432   -0.4231275
6 months   ki1112895-Guatemala BSC    ki0047075b-MAL-ED    -0.4276764   -0.5024262   -0.3529267
6 months   ki1113344-GMS-Nepal        ki0047075b-MAL-ED    -0.9484617   -1.0093726   -0.8875508
6 months   ki1114097-CMIN             ki0047075b-MAL-ED    -0.1720363   -0.3294815   -0.0145911
6 months   ki1114097-CONTENT          ki0047075b-MAL-ED     0.7247688    0.6644506    0.7850869
6 months   ki1119695-PROBIT           ki0047075b-MAL-ED     0.2353003    0.1749878    0.2956128
6 months   ki1126311-ZVITAMBO         ki0047075b-MAL-ED    -0.0389492   -0.1297242    0.0518258
6 months   ki1135781-COHORTS          ki0047075b-MAL-ED    -0.8513891   -0.9355555   -0.7672226
6 months   ki1148112-LCNI-5           ki0047075b-MAL-ED     0.1062655    0.0438701    0.1686608
6 months   kiGH5241-JiVitA-3          ki0047075b-MAL-ED    -0.9371792   -0.9975008   -0.8768575
6 months   kiGH5241-JiVitA-4          ki0047075b-MAL-ED    -0.7334685   -0.7938162   -0.6731208


### Parameter: PAR


agecat     intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  -------------------  ---------------  -----------  -----------  -----------
6 months   ki0047075b-MAL-ED    NA                -0.4423869   -0.5028574   -0.3819164
