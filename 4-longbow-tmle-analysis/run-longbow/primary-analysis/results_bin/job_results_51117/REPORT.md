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
Birth       ki1000108-IRC              INDIA                          1                  0       79     274
Birth       ki1000108-IRC              INDIA                          1                  1        5     274
Birth       ki1000108-IRC              INDIA                          2+                 0      185     274
Birth       ki1000108-IRC              INDIA                          2+                 1        5     274
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       17      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        1      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                 0        1      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                 1        0      19
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    10646   12571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1458   12571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                 0      425   12571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                 1       42   12571
6 months    ki1000108-IRC              INDIA                          1                  0       78     288
6 months    ki1000108-IRC              INDIA                          1                  1       11     288
6 months    ki1000108-IRC              INDIA                          2+                 0      188     288
6 months    ki1000108-IRC              INDIA                          2+                 1       11     288
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      416     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       10     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                 0        9     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                 1        0     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      492     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       15     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                 0        5     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                 1        0     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1384    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        7    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 0       61    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 1        1    1453
6 months    ki1148112-LCNI-5           MALAWI                         1                  0      362     453
6 months    ki1148112-LCNI-5           MALAWI                         1                  1       28     453
6 months    ki1148112-LCNI-5           MALAWI                         2+                 0       58     453
6 months    ki1148112-LCNI-5           MALAWI                         2+                 1        5     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    10177   11252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      710   11252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                 0      343   11252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                 1       22   11252
24 months   ki1000108-IRC              INDIA                          1                  0       82     290
24 months   ki1000108-IRC              INDIA                          1                  1        7     290
24 months   ki1000108-IRC              INDIA                          2+                 0      176     290
24 months   ki1000108-IRC              INDIA                          2+                 1       25     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      390     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       33     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                 0        8     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                 1        0     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      336     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       21     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                 0        4     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                 1        0     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        4       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        1       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 0        0       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 1        0       5
24 months   ki1148112-LCNI-5           MALAWI                         1                  0      257     327
24 months   ki1148112-LCNI-5           MALAWI                         1                  1       26     327
24 months   ki1148112-LCNI-5           MALAWI                         2+                 0       38     327
24 months   ki1148112-LCNI-5           MALAWI                         2+                 1        6     327
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     4672    5673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      782    5673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                 0      171    5673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                 1       48    5673


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
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
![](/tmp/4dd96dfd-4989-4793-80ec-ee32d61f3137/ad4765e2-4bb5-4317-be3d-16899d180ff8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4dd96dfd-4989-4793-80ec-ee32d61f3137/ad4765e2-4bb5-4317-be3d-16899d180ff8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4dd96dfd-4989-4793-80ec-ee32d61f3137/ad4765e2-4bb5-4317-be3d-16899d180ff8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4dd96dfd-4989-4793-80ec-ee32d61f3137/ad4765e2-4bb5-4317-be3d-16899d180ff8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA        1                    NA                0.0595238   0.0088339   0.1102137
Birth       ki1000108-IRC       INDIA        2+                   NA                0.0263158   0.0035133   0.0491183
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.1190645   0.1126645   0.1254646
Birth       kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.1170908   0.0972170   0.1369646
6 months    ki1000108-IRC       INDIA        1                    NA                0.1031406   0.0427833   0.1634979
6 months    ki1000108-IRC       INDIA        2+                   NA                0.0577427   0.0247323   0.0907531
6 months    ki1148112-LCNI-5    MALAWI       1                    NA                0.0717949   0.0461462   0.0974435
6 months    ki1148112-LCNI-5    MALAWI       2+                   NA                0.0793651   0.0125436   0.1461866
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0649980   0.0599206   0.0700753
6 months    kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.0656693   0.0404324   0.0909063
24 months   ki1000108-IRC       INDIA        1                    NA                0.0786517   0.0226283   0.1346750
24 months   ki1000108-IRC       INDIA        2+                   NA                0.1243781   0.0786766   0.1700796
24 months   ki1148112-LCNI-5    MALAWI       1                    NA                0.0918728   0.0581684   0.1255772
24 months   ki1148112-LCNI-5    MALAWI       2+                   NA                0.1363636   0.0348086   0.2379187
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.1436541   0.1323569   0.1549514
24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.1715062   0.1315028   0.2115096


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA        NA                   NA                0.0364964   0.0142521   0.0587406
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.1193223   0.1131771   0.1254674
6 months    ki1000108-IRC       INDIA        NA                   NA                0.0763889   0.0456586   0.1071192
6 months    ki1148112-LCNI-5    MALAWI       NA                   NA                0.0728477   0.0488890   0.0968063
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0650551   0.0600992   0.0700110
24 months   ki1000108-IRC       INDIA        NA                   NA                0.1103448   0.0742216   0.1464680
24 months   ki1148112-LCNI-5    MALAWI       NA                   NA                0.0978593   0.0656058   0.1301129
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.1463071   0.1356008   0.1570133


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC       INDIA        2+                   1                 0.4421053   0.1311881   1.489899
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 0.9834231   0.8201657   1.179178
6 months    ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC       INDIA        2+                   1                 0.5598442   0.2472382   1.267707
6 months    ki1148112-LCNI-5    MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5    MALAWI       2+                   1                 1.1054422   0.4429215   2.758959
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 1.0103294   0.6815422   1.497729
24 months   ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC       INDIA        2+                   1                 1.5813788   0.7095045   3.524656
24 months   ki1148112-LCNI-5    MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5    MALAWI       2+                   1                 1.4842657   0.6470885   3.404549
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 1.1938828   0.9314043   1.530330


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA        1                    NA                -0.0230275   -0.0616129   0.0155580
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0002577   -0.0008981   0.0014136
6 months    ki1000108-IRC       INDIA        1                    NA                -0.0267517   -0.0722968   0.0187933
6 months    ki1148112-LCNI-5    MALAWI       1                    NA                 0.0010528   -0.0089042   0.0110099
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0000572   -0.0007735   0.0008878
24 months   ki1000108-IRC       INDIA        1                    NA                 0.0316931   -0.0184770   0.0818632
24 months   ki1148112-LCNI-5    MALAWI       1                    NA                 0.0059865   -0.0085053   0.0204784
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0026529   -0.0005109   0.0058167


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA        1                    NA                -0.6309524   -2.0001346   0.1133712
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0021600   -0.0075892   0.0118148
6 months    ki1000108-IRC       INDIA        1                    NA                -0.3502045   -1.0766484   0.1221180
6 months    ki1148112-LCNI-5    MALAWI       1                    NA                 0.0144522   -0.1320826   0.1420198
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0008785   -0.0119767   0.0135704
24 months   ki1000108-IRC       INDIA        1                    NA                 0.2872191   -0.3337133   0.6190661
24 months   ki1148112-LCNI-5    MALAWI       1                    NA                 0.0611749   -0.0979484   0.1972369
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0181326   -0.0038330   0.0396176
