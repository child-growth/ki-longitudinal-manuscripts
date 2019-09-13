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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        nchldlt5    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                0       50     343
Birth       ki1000108-IRC              INDIA                          1                1       22     343
Birth       ki1000108-IRC              INDIA                          2+               0      201     343
Birth       ki1000108-IRC              INDIA                          2+               1       70     343
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       12      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               0        8      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               1        0      23
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     8410   15688
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      974   15688
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+               0     5772   15688
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+               1      532   15688
6 months    ki1000108-IRC              INDIA                          1                0       77     408
6 months    ki1000108-IRC              INDIA                          1                1       11     408
6 months    ki1000108-IRC              INDIA                          2+               0      277     408
6 months    ki1000108-IRC              INDIA                          2+               1       43     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      409     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       17     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               0      149     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               1        7     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      494     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       13     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               0      200     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               1        8     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1335    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       55    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0      597    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       32    2019
6 months    ki1148112-LCNI-5           MALAWI                         1                0      384     811
6 months    ki1148112-LCNI-5           MALAWI                         1                1        6     811
6 months    ki1148112-LCNI-5           MALAWI                         2+               0      413     811
6 months    ki1148112-LCNI-5           MALAWI                         2+               1        8     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     9976   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      896   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+               0     5378   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+               1      523   16773
24 months   ki1000108-IRC              INDIA                          1                0       78     409
24 months   ki1000108-IRC              INDIA                          1                1       11     409
24 months   ki1000108-IRC              INDIA                          2+               0      300     409
24 months   ki1000108-IRC              INDIA                          2+               1       20     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      375     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       48     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               0      138     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               1       17     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      328     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       29     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               0      141     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               1       16     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1        0       6
24 months   ki1148112-LCNI-5           MALAWI                         1                0      271     555
24 months   ki1148112-LCNI-5           MALAWI                         1                1        6     555
24 months   ki1148112-LCNI-5           MALAWI                         2+               0      274     555
24 months   ki1148112-LCNI-5           MALAWI                         2+               1        4     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4203    8593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1231    8593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+               0     2516    8593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+               1      643    8593


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/ab106b40-0e38-4f6e-93d5-536672a7983a/4e2f0324-c9c7-4ee8-aaa3-3fea2b96365a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ab106b40-0e38-4f6e-93d5-536672a7983a/4e2f0324-c9c7-4ee8-aaa3-3fea2b96365a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ab106b40-0e38-4f6e-93d5-536672a7983a/4e2f0324-c9c7-4ee8-aaa3-3fea2b96365a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ab106b40-0e38-4f6e-93d5-536672a7983a/4e2f0324-c9c7-4ee8-aaa3-3fea2b96365a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.3097460   0.2008876   0.4186043
Birth       ki1000108-IRC              INDIA                          2+                   NA                0.2575374   0.2052692   0.3098056
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0975163   0.0904245   0.1046082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0966531   0.0857633   0.1075429
6 months    ki1000108-IRC              INDIA                          1                    NA                0.1278481   0.0582741   0.1974220
6 months    ki1000108-IRC              INDIA                          2+                   NA                0.1344123   0.0969602   0.1718643
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0399061   0.0213027   0.0585095
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0448718   0.0123573   0.0773863
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0256410   0.0118729   0.0394092
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0384615   0.0123088   0.0646143
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0403713   0.0298974   0.0508453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0502246   0.0331978   0.0672515
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.0153846   0.0031621   0.0276071
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0190024   0.0059523   0.0320524
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0801391   0.0736738   0.0866044
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0883779   0.0770875   0.0996683
24 months   ki1000108-IRC              INDIA                          1                    NA                0.1204164   0.0539281   0.1869046
24 months   ki1000108-IRC              INDIA                          2+                   NA                0.0620918   0.0356383   0.0885453
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1134494   0.0831800   0.1437189
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1094033   0.0600199   0.1587867
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0815230   0.0531102   0.1099357
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1009986   0.0538024   0.1481948
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2244865   0.2100353   0.2389378
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1946625   0.1737335   0.2155915


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0959969   0.0907923   0.1012016
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0430906   0.0342310   0.0519502
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0172626   0.0082929   0.0262323
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0846003   0.0797949   0.0894056
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2180845   0.2082032   0.2279658


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 0.8314471   0.5538522   1.2481746
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9911482   0.8684299   1.1312079
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 1.0513439   0.5702214   1.9384119
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.1244344   0.4750499   2.6615154
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.5000000   0.6306811   3.5675717
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2440668   0.8115927   1.9069937
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2351544   0.4321632   3.5301627
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1028062   0.9540494   1.2747573
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 0.5156427   0.2560073   1.0385930
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.9643355   0.5707177   1.6294272
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.2388975   0.6914128   2.2198998
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8671456   0.7650843   0.9828218


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0415244   -0.1375011   0.0544523
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0015194   -0.0064121   0.0033733
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0045049   -0.0575782   0.0665879
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0013310   -0.0087115   0.0113735
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0037296   -0.0048790   0.0123382
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0027193   -0.0036554   0.0090940
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0018780   -0.0074045   0.0111606
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0044612    0.0001531   0.0087692
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0446217   -0.1005988   0.0113554
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0009927   -0.0165131   0.0145277
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0060256   -0.0109349   0.0229862
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0064020   -0.0169174   0.0041133


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.1548138   -0.5738958    0.1526789
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0158275   -0.0681154    0.0339008
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0340369   -0.5696308    0.4055388
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0322770   -0.2442495    0.2473473
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1269841   -0.2148048    0.3726097
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0631068   -0.0965466    0.1995153
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1087912   -0.6240960    0.5109568
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0527321    0.0003123    0.1024033
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.5887191   -1.5023110   -0.0086789
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0088274   -0.1567115    0.1201500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0688263   -0.1454570    0.2430231
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0293557   -0.0787347    0.0177630
