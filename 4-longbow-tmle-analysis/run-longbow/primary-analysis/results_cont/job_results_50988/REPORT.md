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

**Outcome Variable:** haz

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
Birth       ki1000108-IRC              INDIA                          1               84     274
Birth       ki1000108-IRC              INDIA                          2+             190     274
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               18      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               1      19
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            12104   12571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+             467   12571
6 months    ki1000108-IRC              INDIA                          1               89     288
6 months    ki1000108-IRC              INDIA                          2+             199     288
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              426     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               9     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               5     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1391    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+              62    1453
6 months    ki1148112-LCNI-5           MALAWI                         1              390     453
6 months    ki1148112-LCNI-5           MALAWI                         2+              63     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10887   11252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+             365   11252
24 months   ki1000108-IRC              INDIA                          1               89     290
24 months   ki1000108-IRC              INDIA                          2+             201     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              423     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               8     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               4     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0       5
24 months   ki1148112-LCNI-5           MALAWI                         1              283     327
24 months   ki1148112-LCNI-5           MALAWI                         2+              44     327
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5454    5673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+             219    5673


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
![](/tmp/f83b47a2-61d0-45b8-a361-88e6f69eda65/6d22ad79-ebc3-4b68-94a8-c1953ac0091f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f83b47a2-61d0-45b8-a361-88e6f69eda65/6d22ad79-ebc3-4b68-94a8-c1953ac0091f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f83b47a2-61d0-45b8-a361-88e6f69eda65/6d22ad79-ebc3-4b68-94a8-c1953ac0091f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.1354299   -0.5445589    0.2736991
Birth       ki1000108-IRC              INDIA                          2+                   NA                -0.3684128   -0.5807281   -0.1560976
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.6523941   -1.6782884   -1.6264997
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.5071486   -1.5854185   -1.4288788
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2448365   -1.5514634   -0.9382095
6 months    ki1000108-IRC              INDIA                          2+                   NA                -1.1717923   -1.3588863   -0.9846984
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.0580790   -1.1483881   -0.9677700
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.1033333   -1.4843014   -0.7223652
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.1526824   -1.2389769   -1.0663880
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.9830000   -1.1531719   -0.8128281
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5235565   -0.5813871   -0.4657258
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.3910651   -0.7290269   -0.0531032
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -1.6179011   -1.7167971   -1.5190051
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                -1.7434123   -1.9920594   -1.4947652
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3225227   -1.3502033   -1.2948421
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.3416256   -1.4156025   -1.2676486
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.6107502   -1.8200697   -1.4014306
24 months   ki1000108-IRC              INDIA                          2+                   NA                -1.8984379   -2.0265372   -1.7703385
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.5094090   -1.6079673   -1.4108506
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.3725000   -1.6808079   -1.0641921
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -1.8244667   -1.9423285   -1.7066050
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -1.9701966   -2.2488208   -1.6915724
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.9646676   -1.9997732   -1.9295620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -2.0361024   -2.1387864   -1.9334183


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3088686   -0.4962872   -0.1214501
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.6491457   -1.6736931   -1.6245982
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2046701   -1.3666765   -1.0426638
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0590153   -1.1475823   -0.9704483
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1510254   -1.2352824   -1.0667684
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5175195   -0.5745106   -0.4605284
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6323620   -1.7237497   -1.5409743
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3246241   -1.3512538   -1.2979943
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.8129023   -1.9234787   -1.7023259
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5068677   -1.6032866   -1.4104489
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8484862   -1.9573785   -1.7395940
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.9717645   -2.0050051   -1.9385239


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 -0.2329829   -0.6933938    0.2274280
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.1452454    0.0636889    0.2268020
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                  0.0730441   -0.2844859    0.4305741
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0452543   -0.4367801    0.3462715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.1696824   -0.0211190    0.3604839
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.1324914   -0.2102442    0.4752270
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.1255111   -0.3932867    0.1422645
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0191028   -0.0952785    0.0570729
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 -0.2876877   -0.5329371   -0.0424384
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.1369090   -0.1867691    0.4605871
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.1457299   -0.4476188    0.1561589
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0714347   -0.1787316    0.0358621


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.1734387   -0.5000048    0.1531274
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0032484   -0.0026267    0.0091236
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0401663   -0.2059805    0.2863131
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0009363   -0.0107432    0.0088706
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0016571   -0.0033276    0.0066417
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0060370   -0.0076466    0.0197205
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0144609   -0.0494078    0.0204860
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0021014   -0.0083096    0.0041069
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2021521   -0.3723456   -0.0319587
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0025412   -0.0057371    0.0108195
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0240195   -0.0647031    0.0166641
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0070969   -0.0163235    0.0021298
