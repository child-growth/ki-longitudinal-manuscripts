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
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0      416     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1        5     812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    16169   26933
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1057   26933
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     9122   26933
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      585   26933
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    16436   26836
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      711   26836
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     9291   26836
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      398   26836
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
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0      411     800
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1        5     800
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
![](/tmp/4ff886fd-a9c1-4aa2-be0a-ee8551884a98/f2ed0745-afd0-4269-918d-30191334b644/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4ff886fd-a9c1-4aa2-be0a-ee8551884a98/f2ed0745-afd0-4269-918d-30191334b644/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4ff886fd-a9c1-4aa2-be0a-ee8551884a98/f2ed0745-afd0-4269-918d-30191334b644/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4ff886fd-a9c1-4aa2-be0a-ee8551884a98/f2ed0745-afd0-4269-918d-30191334b644/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4237602   0.3190542   0.5284663
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.3209920   0.2696459   0.3723381
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0616871   0.0403876   0.0829865
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0511532   0.0212580   0.0810484
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0920101   0.0675769   0.1164432
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0745439   0.0396552   0.1094325
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0696284   0.0562594   0.0829975
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0655165   0.0430854   0.0879476
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0350967   0.0209802   0.0492132
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0521705   0.0377890   0.0665521
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0597554   0.0551614   0.0643494
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0547773   0.0470568   0.0624978
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.3846708   0.2818037   0.4875379
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.2864252   0.2368119   0.3360385
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0468750   0.0285532   0.0651968
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0265957   0.0035796   0.0496119
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0717382   0.0499073   0.0935690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0497305   0.0202995   0.0791615
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0351669   0.0261483   0.0441854
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0270512   0.0155885   0.0385139
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0408615   0.0369900   0.0447330
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0386436   0.0319025   0.0453847
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.0674157   0.0152593   0.1195722
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.0623053   0.0358313   0.0887793
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0156250   0.0041315   0.0271185
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0359281   0.0076783   0.0641779
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0288462   0.0144505   0.0432418
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0238095   0.0031757   0.0444433
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0430403   0.0322598   0.0538208
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0383428   0.0232980   0.0533876
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0356728   0.0215940   0.0497515
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0517686   0.0373348   0.0662023
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0301508   0.0260815   0.0342201
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0258777   0.0202687   0.0314867


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0658281   0.0558737   0.0757825
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0476638   0.0358801   0.0594476
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0609661   0.0574920   0.0644402
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0327044   0.0255647   0.0398441
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0413251   0.0383484   0.0443018
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
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.7574850   0.5642108   1.016967
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.8292373   0.4206917   1.634533
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.8101707   0.4732858   1.386850
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9409442   0.6354257   1.393359
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.4864791   0.9216741   2.397399
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9166929   0.7871623   1.067538
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.7445982   0.5413156   1.024220
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.5673759   0.2195194   1.466455
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.6932222   0.3562971   1.348753
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.7692241   0.4687702   1.262251
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9457220   0.7848526   1.139564
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.9241952   0.3823225   2.234074
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 2.2994012   0.7834301   6.748842
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.8253968   0.3036345   2.243750
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8908571   0.5590762   1.419532
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.4512068   0.9044227   2.328558
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8582759   0.6634070   1.110386


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0822968   -0.1745007   0.0099071
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0016871   -0.0128253   0.0094512
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0049388   -0.0170763   0.0071986
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0038003   -0.0118152   0.0042145
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0125671   -0.0009742   0.0261084
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0012107   -0.0016972   0.0041187
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0773538   -0.1674002   0.0126927
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0054464   -0.0133754   0.0024825
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0057751   -0.0162512   0.0047010
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0024625   -0.0072277   0.0023028
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0004636   -0.0019791   0.0029063
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0040011   -0.0497955   0.0417933
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0055132   -0.0027992   0.0138256
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0014489   -0.0086884   0.0057906
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0017468   -0.0075879   0.0040943
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0119911   -0.0015366   0.0255187
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0017826   -0.0009373   0.0045025


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2410121   -0.5434233   0.0021460
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0281179   -0.2312950   0.1415328
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0567216   -0.2050123   0.0733202
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0577313   -0.1861739   0.0568032
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.2636618   -0.0565620   0.4868319
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0198594   -0.0290669   0.0664595
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.2517067   -0.5820184   0.0096388
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1314655   -0.3337876   0.0401663
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0875504   -0.2565761   0.0587391
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0752945   -0.2302760   0.0601634
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0112184   -0.0497099   0.0686102
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0630942   -1.0962703   0.4608666
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.2608173   -0.2163881   0.5508086
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0528846   -0.3520426   0.1800806
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0423020   -0.1934800   0.0897264
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.2515760   -0.0677512   0.4754036
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0558217   -0.0337534   0.1376351
