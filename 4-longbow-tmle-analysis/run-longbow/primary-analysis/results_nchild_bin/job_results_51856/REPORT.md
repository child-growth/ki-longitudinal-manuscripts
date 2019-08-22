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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        nchldlt5    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                  0       79     388
Birth       ki1000108-IRC              INDIA                          1                  1        5     388
Birth       ki1000108-IRC              INDIA                          2+                 0      293     388
Birth       ki1000108-IRC              INDIA                          2+                 1       11     388
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                 0        9      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                 1        0      27
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    10646   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1458   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                 0     6904   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                 1      583   19591
6 months    ki1000108-IRC              INDIA                          1                  0       78     407
6 months    ki1000108-IRC              INDIA                          1                  1       11     407
6 months    ki1000108-IRC              INDIA                          2+                 0      300     407
6 months    ki1000108-IRC              INDIA                          2+                 1       18     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      416     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       10     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                 0      153     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                 1        4     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      492     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       15     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                 0      200     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                 1        8     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1384    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        7    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 0      617    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 1       12    2020
6 months    ki1148112-LCNI-5           MALAWI                         1                  0      362     811
6 months    ki1148112-LCNI-5           MALAWI                         1                  1       28     811
6 months    ki1148112-LCNI-5           MALAWI                         2+                 0      384     811
6 months    ki1148112-LCNI-5           MALAWI                         2+                 1       37     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    10177   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      710   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                 0     5604   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                 1      309   16800
24 months   ki1000108-IRC              INDIA                          1                  0       82     409
24 months   ki1000108-IRC              INDIA                          1                  1        7     409
24 months   ki1000108-IRC              INDIA                          2+                 0      286     409
24 months   ki1000108-IRC              INDIA                          2+                 1       34     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      390     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       33     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                 0      138     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                 1       16     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      336     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       21     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                 0      143     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                 1       14     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 1        0       6
24 months   ki1148112-LCNI-5           MALAWI                         1                  0      257     571
24 months   ki1148112-LCNI-5           MALAWI                         1                  1       26     571
24 months   ki1148112-LCNI-5           MALAWI                         2+                 0      248     571
24 months   ki1148112-LCNI-5           MALAWI                         2+                 1       40     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     4672    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      782    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                 0     2607    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                 1      561    8622


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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
![](/tmp/2aaf741c-44f2-449d-8b9b-86013842a597/4b8100ec-5d29-4293-baea-5238c37d90fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2aaf741c-44f2-449d-8b9b-86013842a597/4b8100ec-5d29-4293-baea-5238c37d90fe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2aaf741c-44f2-449d-8b9b-86013842a597/4b8100ec-5d29-4293-baea-5238c37d90fe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2aaf741c-44f2-449d-8b9b-86013842a597/4b8100ec-5d29-4293-baea-5238c37d90fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.0595238   0.0088611   0.1101865
Birth       ki1000108-IRC              INDIA                          2+                   NA                0.0361842   0.0151644   0.0572040
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1123129   0.1051956   0.1194301
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0877185   0.0745706   0.1008664
6 months    ki1000108-IRC              INDIA                          1                    NA                0.1216482   0.0545695   0.1887268
6 months    ki1000108-IRC              INDIA                          2+                   NA                0.0570887   0.0316177   0.0825598
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0295858   0.0148264   0.0443452
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0384615   0.0123088   0.0646143
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0050324   0.0013129   0.0087518
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0190779   0.0083846   0.0297712
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.0718940   0.0468370   0.0969510
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0846584   0.0579983   0.1113184
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0614452   0.0560919   0.0667985
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0555296   0.0421749   0.0688844
24 months   ki1000108-IRC              INDIA                          1                    NA                0.0786517   0.0226565   0.1346469
24 months   ki1000108-IRC              INDIA                          2+                   NA                0.1062500   0.0724453   0.1400547
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0747903   0.0497710   0.0998096
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1262422   0.0683950   0.1840895
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0625195   0.0376796   0.0873595
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0858962   0.0410864   0.1307060
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0921912   0.0586372   0.1257453
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.1381849   0.0983750   0.1779949
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1456863   0.1330836   0.1582890
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1878280   0.1655839   0.2100722


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.0412371   0.0214268   0.0610475
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1041805   0.0995043   0.1088567
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0094059   0.0051955   0.0136164
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0801480   0.0614493   0.0988466
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606548   0.0568002   0.0645093
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1155867   0.0893389   0.1418344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1557643   0.1470293   0.1644993


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 0.6078947   0.2169190   1.7035666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.7810191   0.6629249   0.9201509
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 0.4692939   0.2310271   0.9532940
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.3000000   0.5593501   3.0213633
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 3.7910516   1.4993541   9.5855087
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 1.1775442   0.7384244   1.8777959
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9037258   0.7009139   1.1652222
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 1.3508929   0.6193830   2.9463377
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.6879495   0.9574610   2.9757592
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.3739093   0.7179933   2.6290313
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.4988944   0.9485696   2.3684972
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.2892634   1.1146249   1.4912641


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0182867   -0.0612727    0.0246993
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0081324   -0.0128971   -0.0033676
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0503951   -0.1065648    0.0057746
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0025820   -0.0061590    0.0113231
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0043736    0.0008368    0.0079104
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0082540   -0.0107077    0.0272156
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0007905   -0.0042776    0.0026967
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0215928   -0.0295941    0.0727798
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0101317   -0.0044642    0.0247277
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0055738   -0.0100550    0.0212027
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0233955   -0.0025688    0.0493597
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0100780    0.0012976    0.0188584


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.4434524   -1.9325479    0.2895070
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0780606   -0.1244197   -0.0336129
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.7072691   -1.6701853   -0.0915976
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0802676   -0.2334419    0.3141892
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.4649816    0.0380762    0.7024248
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1029841   -0.1657273    0.3097550
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0130320   -0.0721393    0.0428167
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.2154015   -0.4980614    0.5890724
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1193063   -0.0679286    0.2737142
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0818559   -0.1757508    0.2830211
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2024062   -0.0526538    0.3956646
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0647003    0.0063371    0.1196356
