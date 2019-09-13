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

agecat      studyid                    country                        nchldlt5    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1               72     245
Birth       ki1000108-IRC              INDIA                          2+             173     245
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               15      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               1      16
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             9384    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+             388    9772
6 months    ki1000108-IRC              INDIA                          1               88     289
6 months    ki1000108-IRC              INDIA                          2+             201     289
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              426     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               9     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               5     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+              62    1452
6 months    ki1148112-LCNI-5           MALAWI                         1              390     453
6 months    ki1148112-LCNI-5           MALAWI                         2+              63     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10872   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+             362   11234
24 months   ki1000108-IRC              INDIA                          1               89     290
24 months   ki1000108-IRC              INDIA                          2+             201     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              423     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               8     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               4     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0       5
24 months   ki1148112-LCNI-5           MALAWI                         1              277     321
24 months   ki1148112-LCNI-5           MALAWI                         2+              44     321
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5434    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+             220    5654


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
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/e2499dfc-6984-41e5-9bcf-aa7a550fccb5/8b90a0cd-5843-41a2-8bab-75f40b8b2060/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e2499dfc-6984-41e5-9bcf-aa7a550fccb5/8b90a0cd-5843-41a2-8bab-75f40b8b2060/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e2499dfc-6984-41e5-9bcf-aa7a550fccb5/8b90a0cd-5843-41a2-8bab-75f40b8b2060/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -1.1085360   -1.5632638   -0.6538082
Birth       ki1000108-IRC              INDIA                          2+                   NA                -0.9665870   -1.2216470   -0.7115269
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7497844   -0.7747507   -0.7248181
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.6432996   -0.7105349   -0.5760644
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5951332   -0.8883090   -0.3019574
6 months    ki1000108-IRC              INDIA                          2+                   NA                -0.6330909   -0.8253170   -0.4408648
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1362715   -0.2362441   -0.0362990
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.6544444   -1.3959478    0.0870589
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0648718   -0.0302953    0.1600388
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.7160000   -0.9380762   -0.4939238
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0801301    0.0166913    0.1435689
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                 0.0340911   -0.3233506    0.3915329
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.5407783    0.4386162    0.6429404
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                 0.2135256   -0.0505966    0.4776478
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5697150   -0.5948460   -0.5445840
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.6729336   -0.7413730   -0.6044942
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7596033   -0.9812375   -0.5379690
24 months   ki1000108-IRC              INDIA                          2+                   NA                -0.7729120   -0.9014840   -0.6443400
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8634043   -0.9623023   -0.7645062
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.0612500   -1.5690182   -0.5534818
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0143422   -0.1324197    0.1037353
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.1198103   -0.4149139    0.1752933
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3048269   -1.3366116   -1.2730422
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.3582167   -1.4516508   -1.2647827


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0094286   -1.2311616   -0.7876956
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7487659   -0.7726563   -0.7248754
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.6243253   -0.7833786   -0.4652719
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1469923   -0.2464550   -0.0475297
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0572461   -0.0359459    0.1504381
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0817637    0.0194495    0.1440778
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4996468    0.4052394    0.5940542
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5754055   -0.5983356   -0.5524753
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7841264   -0.8946395   -0.6736134
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8670766   -0.9643669   -0.7697862
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0275234   -0.1369083    0.0818616
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3091670   -1.3388782   -1.2794557


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                  0.1419490   -0.3805571    0.6644552
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.1064848    0.0351620    0.1778075
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 -0.0379577   -0.3887302    0.3128149
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.5181729   -1.2663853    0.2300394
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.7808718   -1.0224801   -0.5392634
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0460390   -0.4092708    0.3171928
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.3272527   -0.6115940   -0.0429114
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.1032186   -0.1763042   -0.0301331
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 -0.0133087   -0.2696300    0.2430126
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.1978457   -0.7151555    0.3194640
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.1054682   -0.4236762    0.2127399
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0533898   -0.1523833    0.0456036


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0991074   -0.2739799    0.4721948
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0010186   -0.0041602    0.0061973
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0291921   -0.2706092    0.2122250
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0107208   -0.0306718    0.0092302
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0076257   -0.0166152    0.0013638
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0016335   -0.0125047    0.0157718
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0411315   -0.0801017   -0.0021613
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0056905   -0.0129953    0.0016143
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0245232   -0.2060488    0.1570024
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0036723   -0.0168490    0.0095044
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0131812   -0.0563310    0.0299686
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0043401   -0.0139633    0.0052832
