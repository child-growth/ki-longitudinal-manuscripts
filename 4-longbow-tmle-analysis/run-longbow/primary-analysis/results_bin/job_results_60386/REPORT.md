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

agecat        studyid          country                        nchldlt5    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                     0      241    787
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                     1       10    787
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                    0      512    787
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                    1       24    787
0-24 months   IRC              INDIA                          1                     0       39    395
0-24 months   IRC              INDIA                          1                     1       56    395
0-24 months   IRC              INDIA                          2+                    0      123    395
0-24 months   IRC              INDIA                          2+                    1      177    395
0-24 months   JiVitA-3         BANGLADESH                     1                     0     2739   7562
0-24 months   JiVitA-3         BANGLADESH                     1                     1     2148   7562
0-24 months   JiVitA-3         BANGLADESH                     2+                    0     1629   7562
0-24 months   JiVitA-3         BANGLADESH                     2+                    1     1046   7562
0-24 months   LCNI-5           MALAWI                         1                     0       25     78
0-24 months   LCNI-5           MALAWI                         1                     1        6     78
0-24 months   LCNI-5           MALAWI                         2+                    0       40     78
0-24 months   LCNI-5           MALAWI                         2+                    1        7     78
0-24 months   NIH-Crypto       BANGLADESH                     1                     0       73    310
0-24 months   NIH-Crypto       BANGLADESH                     1                     1      136    310
0-24 months   NIH-Crypto       BANGLADESH                     2+                    0       44    310
0-24 months   NIH-Crypto       BANGLADESH                     2+                    1       57    310
0-24 months   PROVIDE          BANGLADESH                     1                     0       87    308
0-24 months   PROVIDE          BANGLADESH                     1                     1      138    308
0-24 months   PROVIDE          BANGLADESH                     2+                    0       42    308
0-24 months   PROVIDE          BANGLADESH                     2+                    1       41    308
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      186    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      315    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       80    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1      130    711
0-6 months    IRC              INDIA                          1                     0       20    240
0-6 months    IRC              INDIA                          1                     1       37    240
0-6 months    IRC              INDIA                          2+                    0       67    240
0-6 months    IRC              INDIA                          2+                    1      116    240
0-6 months    JiVitA-3         BANGLADESH                     1                     0      952   4730
0-6 months    JiVitA-3         BANGLADESH                     1                     1     2148   4730
0-6 months    JiVitA-3         BANGLADESH                     2+                    0      584   4730
0-6 months    JiVitA-3         BANGLADESH                     2+                    1     1046   4730
0-6 months    LCNI-5           MALAWI                         1                     0        1      4
0-6 months    LCNI-5           MALAWI                         1                     1        0      4
0-6 months    LCNI-5           MALAWI                         2+                    0        3      4
0-6 months    LCNI-5           MALAWI                         2+                    1        0      4
0-6 months    NIH-Crypto       BANGLADESH                     1                     0       14    197
0-6 months    NIH-Crypto       BANGLADESH                     1                     1      124    197
0-6 months    NIH-Crypto       BANGLADESH                     2+                    0        7    197
0-6 months    NIH-Crypto       BANGLADESH                     2+                    1       52    197
0-6 months    PROVIDE          BANGLADESH                     1                     0       25    185
0-6 months    PROVIDE          BANGLADESH                     1                     1      115    185
0-6 months    PROVIDE          BANGLADESH                     2+                    0       15    185
0-6 months    PROVIDE          BANGLADESH                     2+                    1       30    185
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0       66    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      170    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       35    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       68    339
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                     0      241    787
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                     1       10    787
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                    0      512    787
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                    1       24    787
6-24 months   IRC              INDIA                          1                     0       19    155
6-24 months   IRC              INDIA                          1                     1       19    155
6-24 months   IRC              INDIA                          2+                    0       56    155
6-24 months   IRC              INDIA                          2+                    1       61    155
6-24 months   JiVitA-3         BANGLADESH                     1                     0     1787   2832
6-24 months   JiVitA-3         BANGLADESH                     1                     1        0   2832
6-24 months   JiVitA-3         BANGLADESH                     2+                    0     1045   2832
6-24 months   JiVitA-3         BANGLADESH                     2+                    1        0   2832
6-24 months   LCNI-5           MALAWI                         1                     0       24     74
6-24 months   LCNI-5           MALAWI                         1                     1        6     74
6-24 months   LCNI-5           MALAWI                         2+                    0       37     74
6-24 months   LCNI-5           MALAWI                         2+                    1        7     74
6-24 months   NIH-Crypto       BANGLADESH                     1                     0       59    113
6-24 months   NIH-Crypto       BANGLADESH                     1                     1       12    113
6-24 months   NIH-Crypto       BANGLADESH                     2+                    0       37    113
6-24 months   NIH-Crypto       BANGLADESH                     2+                    1        5    113
6-24 months   PROVIDE          BANGLADESH                     1                     0       62    123
6-24 months   PROVIDE          BANGLADESH                     1                     1       23    123
6-24 months   PROVIDE          BANGLADESH                     2+                    0       27    123
6-24 months   PROVIDE          BANGLADESH                     2+                    1       11    123
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      120    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      145    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       45    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       62    372


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

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH

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
![](/tmp/c206e7ae-a442-4e21-b5e8-7dda46fb657d/016a6b5c-0a60-4184-907c-a9b1d20bd083/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c206e7ae-a442-4e21-b5e8-7dda46fb657d/016a6b5c-0a60-4184-907c-a9b1d20bd083/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c206e7ae-a442-4e21-b5e8-7dda46fb657d/016a6b5c-0a60-4184-907c-a9b1d20bd083/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c206e7ae-a442-4e21-b5e8-7dda46fb657d/016a6b5c-0a60-4184-907c-a9b1d20bd083/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0394284   0.0145375   0.0643193
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0450565   0.0279268   0.0621861
0-24 months   IRC              INDIA                          1                    NA                0.5676689   0.4673334   0.6680043
0-24 months   IRC              INDIA                          2+                   NA                0.5891856   0.5283350   0.6500361
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.4372353   0.4208028   0.4536679
0-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.4127621   0.3809888   0.4445353
0-24 months   LCNI-5           MALAWI                         1                    NA                0.1935484   0.0643859   0.3227109
0-24 months   LCNI-5           MALAWI                         2+                   NA                0.1489362   0.0421700   0.2557024
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.6606788   0.5958145   0.7255430
0-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.5403065   0.4401328   0.6404802
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.6110752   0.5446308   0.6775195
0-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.4972571   0.3920811   0.6024330
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6278422   0.5833205   0.6723639
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6108211   0.5392575   0.6823847
0-6 months    IRC              INDIA                          1                    NA                0.6643419   0.5364636   0.7922201
0-6 months    IRC              INDIA                          2+                   NA                0.6370019   0.5650335   0.7089702
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.6846361   0.6658037   0.7034686
0-6 months    JiVitA-3         BANGLADESH                     2+                   NA                0.6646829   0.6300718   0.6992940
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.8985507   0.8475715   0.9495299
0-6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.8813559   0.7977824   0.9649295
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.8249029   0.7631676   0.8866382
0-6 months    PROVIDE          BANGLADESH                     2+                   NA                0.6800542   0.5480362   0.8120722
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7228953   0.6649189   0.7808716
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6729848   0.5789768   0.7669928
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0391974   0.0139929   0.0644019
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0451313   0.0279404   0.0623222
6-24 months   IRC              INDIA                          1                    NA                0.4976647   0.3155540   0.6797754
6-24 months   IRC              INDIA                          2+                   NA                0.5213542   0.4241352   0.6185732
6-24 months   LCNI-5           MALAWI                         1                    NA                0.2000000   0.0680734   0.3319266
6-24 months   LCNI-5           MALAWI                         2+                   NA                0.1590909   0.0462498   0.2719320
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1690141   0.0805585   0.2574696
6-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1190476   0.0331409   0.2049543
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.2692213   0.1718444   0.3665981
6-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.3205460   0.1757270   0.4653650
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5490328   0.4871893   0.6108763
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.5757169   0.4762249   0.6752090


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0432020   0.0290622   0.0573419
0-24 months   IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4223750   0.4112475   0.4335026
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.1666667   0.0842830   0.2490503
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6258790   0.5881498   0.6636083
0-6 months    IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6752643   0.6619190   0.6886095
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0432020   0.0290622   0.0573419
6-24 months   IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.1756757   0.0897916   0.2615597
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1504425   0.0860251   0.2148599
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1427428   0.5479844   2.383026
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          2+                   1                 1.0379036   0.8442791   1.275933
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     2+                   1                 0.9440272   0.8667605   1.028182
0-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         2+                   1                 0.7695035   0.2889550   2.049231
0-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 0.8178052   0.6628428   1.008995
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     2+                   1                 0.8137412   0.6413976   1.032394
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9728895   0.8482744   1.115811
0-6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          2+                   1                 0.9588465   0.7668124   1.198972
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     2+                   1                 0.9708558   0.9155589   1.029492
0-6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     2+                   1                 0.9808639   0.8782515   1.095465
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     2+                   1                 0.8244052   0.6709372   1.012977
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9309575   0.7919789   1.094325
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1513848   0.5463109   2.426616
6-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA                          2+                   1                 1.0476013   0.6943706   1.580523
6-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         2+                   1                 0.7954545   0.3019242   2.095718
6-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 0.7043651   0.2888063   1.717865
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.1906413   0.6750198   2.100126
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0486021   0.8526703   1.289556


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0037737   -0.0166733    0.0242206
0-24 months   IRC              INDIA                          1                    NA                 0.0222046   -0.0683033    0.1127124
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0148603   -0.0266817   -0.0030389
0-24 months   LCNI-5           MALAWI                         1                    NA                -0.0268817   -0.1281436    0.0743802
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0380981   -0.0760641   -0.0001322
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0299063   -0.0638382    0.0040256
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0019631   -0.0267560    0.0228298
0-6 months    IRC              INDIA                          1                    NA                -0.0268419   -0.1392204    0.0855367
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0093718   -0.0226340    0.0038903
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0051497   -0.0344911    0.0241917
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0411191   -0.0779024   -0.0043358
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0208304   -0.0546539    0.0129932
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0040046   -0.0167298    0.0247391
6-24 months   IRC              INDIA                          1                    NA                 0.0184643   -0.1414835    0.1784122
6-24 months   LCNI-5           MALAWI                         1                    NA                -0.0243243   -0.1278155    0.0791669
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0185716   -0.0649036    0.0277604
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0072015   -0.0479254    0.0623284
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0074188   -0.0261638    0.0410014


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0873492   -0.5345095    0.4572001
0-24 months   IRC              INDIA                          1                    NA                 0.0376429   -0.1283937    0.1792482
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0351827   -0.0635448   -0.0075770
0-24 months   LCNI-5           MALAWI                         1                    NA                -0.1612903   -0.9712387    0.3158641
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0611939   -0.1244301   -0.0015140
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0514589   -0.1116445    0.0054682
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0031366   -0.0435484    0.0357102
0-6 months    IRC              INDIA                          1                    NA                -0.0421049   -0.2342862    0.1201533
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0138788   -0.0337116    0.0055735
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0057642   -0.0391686    0.0265665
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0524623   -0.1015311   -0.0055793
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0296701   -0.0791857    0.0175736
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0926957   -0.5419722    0.4661375
6-24 months   IRC              INDIA                          1                    NA                 0.0357747   -0.3299559    0.3009313
6-24 months   LCNI-5           MALAWI                         1                    NA                -0.1384615   -0.9209109    0.3252708
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.1234466   -0.4658052    0.1389496
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0260524   -0.1952618    0.2063882
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0133324   -0.0489025    0.0718746
