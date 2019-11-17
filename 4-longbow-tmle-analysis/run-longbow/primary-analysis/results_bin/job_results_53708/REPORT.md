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

agecat        studyid                    country                        nchldlt5    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                      0       52     410
0-24 months   ki1000108-IRC              INDIA                          1                      1       37     410
0-24 months   ki1000108-IRC              INDIA                          2+                     0      218     410
0-24 months   ki1000108-IRC              INDIA                          2+                     1      103     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      481     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       31     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0      177     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1       11     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      491     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       50     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0      201     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1       16     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1525    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      112    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      703    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       45    2385
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0     1032    3189
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1       41    3189
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0     2005    3189
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1      111    3189
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      387     812
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        4     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0      417     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1        4     812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    16167   26929
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1057   26929
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     9118   26929
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      587   26929
0-6 months    ki1000108-IRC              INDIA                          1                      0       55     410
0-6 months    ki1000108-IRC              INDIA                          1                      1       34     410
0-6 months    ki1000108-IRC              INDIA                          2+                     0      229     410
0-6 months    ki1000108-IRC              INDIA                          2+                     1       92     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0      488     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1       24     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     0      183     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     1        5     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      502     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       39     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0      206     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1       11     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1580    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       57    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      727    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       21    2385
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0      122     267
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     0      145     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     1        0     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    16434   26832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      711   26832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     9287   26832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      400   26832
6-24 months   ki1000108-IRC              INDIA                          1                      0       83     410
6-24 months   ki1000108-IRC              INDIA                          1                      1        6     410
6-24 months   ki1000108-IRC              INDIA                          2+                     0      301     410
6-24 months   ki1000108-IRC              INDIA                          2+                     1       20     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      441     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1        7     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0      161     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1        6     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      505     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       15     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0      205     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        5     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1324    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       59    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      603    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       24    2010
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0     1032    3189
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1       41    3189
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0     2005    3189
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1      111    3189
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      380     800
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        4     800
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0      412     800
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1        4     800
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    10848   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1      356   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     5886   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      196   17286


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

* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/d94d7649-9232-4298-aac0-d755bfc83079/c587586a-7da2-44e3-bb7a-6d30549c5a5d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d94d7649-9232-4298-aac0-d755bfc83079/c587586a-7da2-44e3-bb7a-6d30549c5a5d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d94d7649-9232-4298-aac0-d755bfc83079/c587586a-7da2-44e3-bb7a-6d30549c5a5d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d94d7649-9232-4298-aac0-d755bfc83079/c587586a-7da2-44e3-bb7a-6d30549c5a5d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4223195   0.3181778   0.5264612
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.3224020   0.2709137   0.3738904
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0620704   0.0406237   0.0835170
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0513201   0.0215069   0.0811333
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0922096   0.0677507   0.1166685
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0734035   0.0384938   0.1083131
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0685261   0.0562659   0.0807863
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0585359   0.0415828   0.0754890
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0357834   0.0201263   0.0514405
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0522165   0.0371993   0.0672336
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0604026   0.0557168   0.0650884
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0549691   0.0469091   0.0630291
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.3894507   0.2856553   0.4932461
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.2874883   0.2376842   0.3372924
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0468750   0.0285532   0.0651968
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0265957   0.0035796   0.0496119
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0715895   0.0497642   0.0934148
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0491998   0.0196841   0.0787156
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0352155   0.0262004   0.0442306
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0268668   0.0154538   0.0382798
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0411105   0.0372703   0.0449506
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0391494   0.0322724   0.0460264
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.0674157   0.0152593   0.1195722
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.0623053   0.0358313   0.0887793
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0156250   0.0041315   0.0271185
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0359281   0.0076783   0.0641779
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0288462   0.0144505   0.0432418
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0238095   0.0031757   0.0444433
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0433714   0.0325347   0.0542081
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0376971   0.0228174   0.0525768
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0369431   0.0211183   0.0527678
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0525019   0.0376209   0.0673830
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0307493   0.0265049   0.0349937
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0263862   0.0205271   0.0322454


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0658281   0.0558737   0.0757825
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0476638   0.0358801   0.0594476
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0610494   0.0575683   0.0645305
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0327044   0.0255647   0.0398441
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0414058   0.0384232   0.0443883
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0211382   0.0097604   0.0325160
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412935   0.0325931   0.0499940
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0476638   0.0358801   0.0594476
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319334   0.0290403   0.0348265


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.7634080   0.5687143   1.024753
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.8268046   0.4206599   1.625080
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.7960499   0.4618945   1.371949
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8542132   0.6077890   1.200549
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.4592370   0.8659864   2.458898
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9100448   0.7782333   1.064182
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.7381892   0.5369117   1.014922
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.5673759   0.2195194   1.466455
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.6872488   0.3505679   1.347274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.7629261   0.4646212   1.252754
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9522970   0.7904285   1.147314
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.9241952   0.3823225   2.234074
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 2.2994012   0.7834301   6.748842
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.8253968   0.3036345   2.243750
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8691683   0.5446970   1.386924
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.4211572   0.8613841   2.344701
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8581086   0.6595566   1.116432


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0808561   -0.1728788   0.0111667
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0020704   -0.0132655   0.0091247
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0051384   -0.0173079   0.0070311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0026980   -0.0093507   0.0039547
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0118805   -0.0028059   0.0265668
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0006468   -0.0023504   0.0036440
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0821336   -0.1734245   0.0091573
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0054464   -0.0133754   0.0024825
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0056265   -0.0161129   0.0048600
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0025111   -0.0072694   0.0022472
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0002953   -0.0021305   0.0027211
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0040011   -0.0497955   0.0417933
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0055132   -0.0027992   0.0138256
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0014489   -0.0086884   0.0057906
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0020779   -0.0079567   0.0038009
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0107208   -0.0038140   0.0252555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0011840   -0.0016860   0.0040541


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2367927   -0.5390019    0.0060726
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0345064   -0.2385466    0.1359199
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0590137   -0.2076904    0.0713596
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0409856   -0.1469660    0.0552021
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.2492550   -0.1113748    0.4928641
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0105947   -0.0397690    0.0585190
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.2672602   -0.6025894   -0.0020959
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1314655   -0.3337876    0.0401663
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0852974   -0.2545654    0.0611326
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0767807   -0.2315035    0.0585032
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0071318   -0.0532179    0.0640235
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0630942   -1.0962703    0.4608666
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.2608173   -0.2163881    0.5508086
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0528846   -0.3520426    0.1800806
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0503200   -0.2023857    0.0825139
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.2249246   -0.1320523    0.4693338
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0370786   -0.0575055    0.1232030
