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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        nchldlt5    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                      0       52     291
0-24 months   ki1000108-IRC              INDIA                          1                      1       37     291
0-24 months   ki1000108-IRC              INDIA                          2+                     0      143     291
0-24 months   ki1000108-IRC              INDIA                          2+                     1       59     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      481     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       31     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0       11     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1        1     524
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      491     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       50     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        6     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        0     547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1525    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      112    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       74    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1        5    1716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0     1032    1917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1       41    1917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0      794    1917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1       50    1917
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      387     454
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        4     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0       63     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1        0     454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    16169   17858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1057   17858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      590   17858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1       42   17858
0-6 months    ki1000108-IRC              INDIA                          1                      0       55     291
0-6 months    ki1000108-IRC              INDIA                          1                      1       34     291
0-6 months    ki1000108-IRC              INDIA                          2+                     0      149     291
0-6 months    ki1000108-IRC              INDIA                          2+                     1       53     291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0      488     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1       24     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     0       11     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     1        1     524
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      502     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       39     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        6     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        0     547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1580    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       57    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       78    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1        1    1716
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0      122     145
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        0     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     0       23     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     1        0     145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    16436   17777
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      711   17777
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      602   17777
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     1       28   17777
6-24 months   ki1000108-IRC              INDIA                          1                      0       83     291
6-24 months   ki1000108-IRC              INDIA                          1                      1        6     291
6-24 months   ki1000108-IRC              INDIA                          2+                     0      190     291
6-24 months   ki1000108-IRC              INDIA                          2+                     1       12     291
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      441     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1        7     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0       10     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1        0     458
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      505     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       15     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        5     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        0     525
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1324    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       59    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       60    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1        4    1447
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0     1032    1917
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1       41    1917
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0      794    1917
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1       50    1917
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      380     446
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        4     446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0       62     446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1        0     446
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    10848   11579
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1      356   11579
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      360   11579
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1       15   11579


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/548e748e-8ac8-4527-91d2-56554ffa6eaa/0f5fc4f8-2481-4bfb-8bb4-1201e2eaab24/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/548e748e-8ac8-4527-91d2-56554ffa6eaa/0f5fc4f8-2481-4bfb-8bb4-1201e2eaab24/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/548e748e-8ac8-4527-91d2-56554ffa6eaa/0f5fc4f8-2481-4bfb-8bb4-1201e2eaab24/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/548e748e-8ac8-4527-91d2-56554ffa6eaa/0f5fc4f8-2481-4bfb-8bb4-1201e2eaab24/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4355824   0.3313334   0.5398313
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.2878058   0.2244216   0.3511900
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0684178   0.0561845   0.0806512
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0632911   0.0095836   0.1169986
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0359690   0.0192035   0.0527346
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0564205   0.0276956   0.0851455
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0610402   0.0568872   0.0651932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0543094   0.0424626   0.0661561
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.4026315   0.2987476   0.5065155
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.2555412   0.1947516   0.3163309
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0414529   0.0379942   0.0449116
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0410826   0.0248197   0.0573454
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.0674157   0.0152332   0.1195983
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.0594059   0.0267520   0.0920599
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0353985   0.0187493   0.0520476
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0576055   0.0252252   0.0899858
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0317585   0.0280709   0.0354462
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0402993   0.0191499   0.0614486


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3298969   0.2757830   0.3840108
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0681818   0.0562525   0.0801111
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0474700   0.0301612   0.0647788
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0615410   0.0575090   0.0655731
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2989691   0.2462788   0.3516594
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0415706   0.0381409   0.0450002
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0618557   0.0341305   0.0895808
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0474700   0.0301612   0.0647788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0320408   0.0284213   0.0356602


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.6607378   0.4772014   0.9148642
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9250678   0.3886407   2.2019062
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.5685860   0.7759033   3.1710935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8897312   0.7085982   1.1171658
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.6346777   0.4469141   0.9013270
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9910661   0.6661768   1.4744013
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.8811881   0.3410101   2.2770363
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.6273440   0.7682271   3.4472211
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.2689263   0.7415174   2.1714581


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1056855   -0.1915554   -0.0198156
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0002360   -0.0027724    0.0023004
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0115010   -0.0058070    0.0288089
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0005008   -0.0003239    0.0013256
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.1036625   -0.1883972   -0.0189277
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0001177   -0.0004801    0.0007154
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0055601   -0.0482927    0.0371725
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0120715   -0.0052582    0.0294013
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0002822   -0.0003745    0.0009390


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.3203591   -0.6106366   -0.0823970
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0034616   -0.0413557    0.0330536
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.2422784   -0.1657229    0.5074799
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0081384   -0.0053907    0.0214854
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.3467331   -0.6632581   -0.0904441
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0028302   -0.0116467    0.0170999
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0898876   -1.0524163    0.4212407
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.2542981   -0.1526287    0.5175625
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0088080   -0.0119415    0.0291321
