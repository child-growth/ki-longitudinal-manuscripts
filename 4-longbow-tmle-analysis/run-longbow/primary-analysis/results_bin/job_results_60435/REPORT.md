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

agecat        studyid          country                        nchldlt5    ever_swasted   n_cell       n
------------  ---------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                      0     1032    3189
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                      1       41    3189
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     0     2005    3189
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     1      111    3189
0-24 months   IRC              INDIA                          1                      0       52     410
0-24 months   IRC              INDIA                          1                      1       37     410
0-24 months   IRC              INDIA                          2+                     0      218     410
0-24 months   IRC              INDIA                          2+                     1      103     410
0-24 months   JiVitA-3         BANGLADESH                     1                      0    16167   26929
0-24 months   JiVitA-3         BANGLADESH                     1                      1     1057   26929
0-24 months   JiVitA-3         BANGLADESH                     2+                     0     9118   26929
0-24 months   JiVitA-3         BANGLADESH                     2+                     1      587   26929
0-24 months   LCNI-5           MALAWI                         1                      0      387     812
0-24 months   LCNI-5           MALAWI                         1                      1        4     812
0-24 months   LCNI-5           MALAWI                         2+                     0      417     812
0-24 months   LCNI-5           MALAWI                         2+                     1        4     812
0-24 months   NIH-Crypto       BANGLADESH                     1                      0      491     758
0-24 months   NIH-Crypto       BANGLADESH                     1                      1       50     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                     0      201     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                     1       16     758
0-24 months   PROVIDE          BANGLADESH                     1                      0      481     700
0-24 months   PROVIDE          BANGLADESH                     1                      1       31     700
0-24 months   PROVIDE          BANGLADESH                     2+                     0      177     700
0-24 months   PROVIDE          BANGLADESH                     2+                     1       11     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1525    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      112    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      703    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       45    2385
0-6 months    IRC              INDIA                          1                      0       55     410
0-6 months    IRC              INDIA                          1                      1       34     410
0-6 months    IRC              INDIA                          2+                     0      229     410
0-6 months    IRC              INDIA                          2+                     1       92     410
0-6 months    JiVitA-3         BANGLADESH                     1                      0    16434   26832
0-6 months    JiVitA-3         BANGLADESH                     1                      1      711   26832
0-6 months    JiVitA-3         BANGLADESH                     2+                     0     9287   26832
0-6 months    JiVitA-3         BANGLADESH                     2+                     1      400   26832
0-6 months    LCNI-5           MALAWI                         1                      0      122     267
0-6 months    LCNI-5           MALAWI                         1                      1        0     267
0-6 months    LCNI-5           MALAWI                         2+                     0      145     267
0-6 months    LCNI-5           MALAWI                         2+                     1        0     267
0-6 months    NIH-Crypto       BANGLADESH                     1                      0      502     758
0-6 months    NIH-Crypto       BANGLADESH                     1                      1       39     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                     0      206     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                     1       11     758
0-6 months    PROVIDE          BANGLADESH                     1                      0      488     700
0-6 months    PROVIDE          BANGLADESH                     1                      1       24     700
0-6 months    PROVIDE          BANGLADESH                     2+                     0      183     700
0-6 months    PROVIDE          BANGLADESH                     2+                     1        5     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1580    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       57    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      727    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       21    2385
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                      0     1032    3189
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                      1       41    3189
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     0     2005    3189
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     1      111    3189
6-24 months   IRC              INDIA                          1                      0       83     410
6-24 months   IRC              INDIA                          1                      1        6     410
6-24 months   IRC              INDIA                          2+                     0      301     410
6-24 months   IRC              INDIA                          2+                     1       20     410
6-24 months   JiVitA-3         BANGLADESH                     1                      0    10848   17286
6-24 months   JiVitA-3         BANGLADESH                     1                      1      356   17286
6-24 months   JiVitA-3         BANGLADESH                     2+                     0     5886   17286
6-24 months   JiVitA-3         BANGLADESH                     2+                     1      196   17286
6-24 months   LCNI-5           MALAWI                         1                      0      380     800
6-24 months   LCNI-5           MALAWI                         1                      1        4     800
6-24 months   LCNI-5           MALAWI                         2+                     0      412     800
6-24 months   LCNI-5           MALAWI                         2+                     1        4     800
6-24 months   NIH-Crypto       BANGLADESH                     1                      0      505     730
6-24 months   NIH-Crypto       BANGLADESH                     1                      1       15     730
6-24 months   NIH-Crypto       BANGLADESH                     2+                     0      205     730
6-24 months   NIH-Crypto       BANGLADESH                     2+                     1        5     730
6-24 months   PROVIDE          BANGLADESH                     1                      0      441     615
6-24 months   PROVIDE          BANGLADESH                     1                      1        7     615
6-24 months   PROVIDE          BANGLADESH                     2+                     0      161     615
6-24 months   PROVIDE          BANGLADESH                     2+                     1        6     615
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1324    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       59    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      603    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       24    2010


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/27a0ce4b-1ece-40e5-817b-2a4ecf25c5d9/ac3b1d12-064d-4706-a854-9637ef18c1f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/27a0ce4b-1ece-40e5-817b-2a4ecf25c5d9/ac3b1d12-064d-4706-a854-9637ef18c1f6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/27a0ce4b-1ece-40e5-817b-2a4ecf25c5d9/ac3b1d12-064d-4706-a854-9637ef18c1f6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/27a0ce4b-1ece-40e5-817b-2a4ecf25c5d9/ac3b1d12-064d-4706-a854-9637ef18c1f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0363625   0.0207030   0.0520219
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0529511   0.0377568   0.0681454
0-24 months   IRC              INDIA                          1                    NA                0.4222180   0.3187782   0.5256578
0-24 months   IRC              INDIA                          2+                   NA                0.3200428   0.2688301   0.3712554
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0604550   0.0557771   0.0651328
0-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.0538922   0.0465607   0.0612237
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.0922390   0.0678015   0.1166765
0-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.0756784   0.0408540   0.1105028
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.0619844   0.0406494   0.0833195
0-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.0504852   0.0205819   0.0803884
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0686745   0.0563879   0.0809611
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0586950   0.0418072   0.0755828
0-6 months    IRC              INDIA                          1                    NA                0.3962409   0.2922950   0.5001867
0-6 months    IRC              INDIA                          2+                   NA                0.2862703   0.2366504   0.3358902
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.0411235   0.0372585   0.0449885
0-6 months    JiVitA-3         BANGLADESH                     2+                   NA                0.0383563   0.0317390   0.0449735
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.0726233   0.0508071   0.0944395
0-6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.0531419   0.0239829   0.0823010
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.0468750   0.0285532   0.0651968
0-6 months    PROVIDE          BANGLADESH                     2+                   NA                0.0265957   0.0035796   0.0496119
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0352283   0.0261610   0.0442957
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0271132   0.0156375   0.0385889
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0364951   0.0216947   0.0512956
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0524537   0.0372087   0.0676988
6-24 months   IRC              INDIA                          1                    NA                0.0674157   0.0152593   0.1195722
6-24 months   IRC              INDIA                          2+                   NA                0.0623053   0.0358313   0.0887793
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0309365   0.0268705   0.0350024
6-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.0253295   0.0198794   0.0307797
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.0288462   0.0144505   0.0432418
6-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.0238095   0.0031757   0.0444433
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.0156250   0.0041315   0.0271185
6-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.0359281   0.0076783   0.0641779
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0434025   0.0325450   0.0542600
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0377543   0.0228294   0.0526792


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0476638   0.0358801   0.0594476
0-24 months   IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0610494   0.0575683   0.0645305
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0658281   0.0558737   0.0757825
0-6 months    IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0414058   0.0384232   0.0443883
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0327044   0.0255647   0.0398441
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0476638   0.0358801   0.0594476
6-24 months   IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0319334   0.0290403   0.0348265
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0211382   0.0097604   0.0325160
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412935   0.0325931   0.0499940


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.4562009   0.8718389   2.4322394
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          2+                   1                 0.7580035   0.5658822   1.0153515
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2+                   1                 0.8914438   0.7691832   1.0331375
0-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 0.8204599   0.4827961   1.3942831
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2+                   1                 0.8144813   0.4106527   1.6154280
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8546847   0.6091148   1.1992582
0-6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          2+                   1                 0.7224654   0.5275357   0.9894235
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2+                   1                 0.9327086   0.7759592   1.1211226
0-6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     2+                   1                 0.7317477   0.3912516   1.3685686
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2+                   1                 0.5673759   0.2195194   1.4664551
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.7696420   0.4689312   1.2631893
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.4372796   0.8756980   2.3590012
6-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          2+                   1                 0.9241952   0.3823225   2.2340742
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     2+                   1                 0.8187590   0.6345980   1.0563637
6-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 0.8253968   0.3036345   2.2437497
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     2+                   1                 2.2994012   0.7834301   6.7488418
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8698638   0.5447396   1.3890362


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0113014   -0.0033861   0.0259888
0-24 months   IRC              INDIA                          1                    NA                -0.0807546   -0.1716072   0.0100979
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0005944   -0.0024389   0.0036278
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0051677   -0.0172946   0.0069591
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0019844   -0.0131183   0.0091495
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0028464   -0.0095108   0.0038180
0-6 months    IRC              INDIA                          1                    NA                -0.0889238   -0.1803463   0.0024988
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0002823   -0.0021683   0.0027328
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0066603   -0.0171496   0.0038291
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0054464   -0.0133754   0.0024825
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0025239   -0.0073349   0.0022871
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0111687   -0.0027539   0.0250913
6-24 months   IRC              INDIA                          1                    NA                -0.0040011   -0.0497955   0.0417933
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0009969   -0.0017321   0.0037259
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0014489   -0.0086884   0.0057906
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0055132   -0.0027992   0.0138256
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0021090   -0.0080050   0.0037870


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.2371055   -0.1229313    0.4817065
0-24 months   IRC              INDIA                          1                    NA                -0.2364957   -0.5341420    0.0034029
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0097370   -0.0412363    0.0582149
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0593507   -0.2074627    0.0705933
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0330740   -0.2360229    0.1365516
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0432400   -0.1493818    0.0531000
0-6 months    IRC              INDIA                          1                    NA                -0.2893552   -0.6248094   -0.0231580
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0068173   -0.0541692    0.0642756
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.1009695   -0.2702086    0.0457207
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.1314655   -0.3337876    0.0401663
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0771740   -0.2336235    0.0594344
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.2343223   -0.1000039    0.4670361
6-24 months   IRC              INDIA                          1                    NA                -0.0630942   -1.0962703    0.4608666
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0312176   -0.0583150    0.1131759
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0528846   -0.3520426    0.1800806
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.2608173   -0.2163881    0.5508086
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0510735   -0.2035798    0.0821087
