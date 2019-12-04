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

**Outcome Variable:** wast_rec90d

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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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

agecat        studyid                    country                        nchldlt5    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   ki1000108-IRC              INDIA                          1                     0       39    395
0-24 months   ki1000108-IRC              INDIA                          1                     1       56    395
0-24 months   ki1000108-IRC              INDIA                          2+                    0      123    395
0-24 months   ki1000108-IRC              INDIA                          2+                    1      177    395
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       87    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      138    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0       42    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1       41    308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       73    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      136    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0       44    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1       57    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      186    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      315    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       80    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1      130    711
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      241    787
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       10    787
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      512    787
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1       24    787
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       25     78
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        6     78
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       40     78
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        7     78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     2739   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2148   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0     1629   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1     1046   7562
0-6 months    ki1000108-IRC              INDIA                          1                     0       20    240
0-6 months    ki1000108-IRC              INDIA                          1                     1       37    240
0-6 months    ki1000108-IRC              INDIA                          2+                    0       67    240
0-6 months    ki1000108-IRC              INDIA                          2+                    1      116    240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0       25    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      115    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    0       15    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    1       30    185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       14    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      124    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        7    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1       52    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0       66    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      170    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       35    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       68    339
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    0        3      4
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0      952   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2148   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      584   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    1     1046   4730
6-24 months   ki1000108-IRC              INDIA                          1                     0       19    155
6-24 months   ki1000108-IRC              INDIA                          1                     1       19    155
6-24 months   ki1000108-IRC              INDIA                          2+                    0       56    155
6-24 months   ki1000108-IRC              INDIA                          2+                    1       61    155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       62    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       23    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0       27    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1       11    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       59    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       12    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0       37    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        5    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      120    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      145    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       45    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       62    372
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      241    787
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       10    787
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      512    787
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1       24    787
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       24     74
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        6     74
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       37     74
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        7     74
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1787   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0     1045   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1        0   2832


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

* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/c6ca0b4b-3473-45a8-9db9-5f3c7e438a92/35fcdc99-f991-4d46-ba7f-05aa9d84817f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c6ca0b4b-3473-45a8-9db9-5f3c7e438a92/35fcdc99-f991-4d46-ba7f-05aa9d84817f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c6ca0b4b-3473-45a8-9db9-5f3c7e438a92/35fcdc99-f991-4d46-ba7f-05aa9d84817f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c6ca0b4b-3473-45a8-9db9-5f3c7e438a92/35fcdc99-f991-4d46-ba7f-05aa9d84817f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5887303   0.4871651   0.6902956
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.5893458   0.5283509   0.6503408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.6132107   0.5468907   0.6795306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.4880442   0.3823893   0.5936990
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.6523553   0.5871684   0.7175422
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.5585556   0.4613967   0.6557145
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6309066   0.5848526   0.6769606
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6031388   0.5262061   0.6800715
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0390870   0.0136659   0.0645081
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0450923   0.0278938   0.0622908
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1935484   0.0643859   0.3227109
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.1489362   0.0421700   0.2557024
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4384564   0.4219503   0.4549625
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.4026046   0.3729430   0.4322663
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6530148   0.5255944   0.7804351
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.6348632   0.5630025   0.7067238
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8223390   0.7602676   0.8844104
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.6591050   0.5220941   0.7961158
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8985507   0.8475715   0.9495299
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.8813559   0.7977824   0.9649295
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7195847   0.6614546   0.7777147
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6604089   0.5665714   0.7542464
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6862888   0.6671141   0.7054635
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.6669651   0.6328298   0.7011004
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5169552   0.3293268   0.7045836
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.5144176   0.4165970   0.6122382
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2697028   0.1701232   0.3692823
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.2909997   0.1309182   0.4510813
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1690141   0.0805585   0.2574696
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1190476   0.0331409   0.2049543
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5474915   0.4855659   0.6094170
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.5774980   0.4790495   0.6759465
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0394373   0.0147525   0.0641221
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0450806   0.0280059   0.0621553
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.2000000   0.0680734   0.3319266
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.1590909   0.0462498   0.2719320


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6258790   0.5881498   0.6636083
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0432020   0.0290622   0.0573419
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1666667   0.0842830   0.2490503
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4223750   0.4112475   0.4335026
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6752643   0.6619190   0.6886095
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1504425   0.0860251   0.2148599
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0432020   0.0290622   0.0573419
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1756757   0.0897916   0.2615597


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0010454   0.8184631   1.2243581
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.7958834   0.6248156   1.0137876
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.8562137   0.7001899   1.0470044
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9559875   0.8253225   1.1073393
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1536405   0.5436388   2.4481081
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.7695035   0.2889550   2.0492314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9182319   0.8455624   0.9971468
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.9722034   0.7756285   1.2185981
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.8015003   0.6446637   0.9964928
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.9808639   0.8782515   1.0954652
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9177640   0.7792006   1.0809679
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9718432   0.9170557   1.0299038
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.9950913   0.6598265   1.5007078
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.0789646   0.5558909   2.0942321
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.7043651   0.2888063   1.7178646
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0548074   0.8594288   1.2946023
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1430952   0.5508518   2.3720838
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.7954545   0.3019242   2.0957182


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0011431   -0.0891202    0.0914063
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0320418   -0.0658770    0.0017934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0297747   -0.0675183    0.0079689
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0050276   -0.0322970    0.0222419
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0041150   -0.0168127    0.0250428
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0268817   -0.1281436    0.0743802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0160813   -0.0279512   -0.0042115
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0155148   -0.1274049    0.0963753
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0385552   -0.0747705   -0.0023399
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0051497   -0.0344911    0.0241917
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0175198   -0.0512228    0.0161833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0110245   -0.0247537    0.0027046
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0008262   -0.1666029    0.1649506
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0067200   -0.0503482    0.0637882
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0185716   -0.0649036    0.0277604
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0089601   -0.0245888    0.0425091
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0037647   -0.0165405    0.0240699
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0243243   -0.1278155    0.0791669


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0019378   -0.1634256    0.1437974
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0551334   -0.1151805    0.0016804
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0478246   -0.1105006    0.0113140
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0080328   -0.0525721    0.0346218
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0952512   -0.5479142    0.4711785
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1612903   -0.9712387    0.3158641
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0380736   -0.0665483   -0.0103591
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0243369   -0.2158382    0.1370019
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0491912   -0.0973705   -0.0031271
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0057642   -0.0391686    0.0265665
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0249546   -0.0742449    0.0220740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0163263   -0.0368642    0.0038049
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0016007   -0.3802605    0.2731778
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0243106   -0.2058031    0.2105098
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1234466   -0.4658052    0.1389496
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0161023   -0.0460828    0.0745907
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0871427   -0.5288062    0.4549286
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1384615   -0.9209109    0.3252708
