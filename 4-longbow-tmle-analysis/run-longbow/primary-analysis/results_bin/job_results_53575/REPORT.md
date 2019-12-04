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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        nchldlt5    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                0       50     343
Birth       ki1000108-IRC              INDIA                          1                1       22     343
Birth       ki1000108-IRC              INDIA                          2+               0      201     343
Birth       ki1000108-IRC              INDIA                          2+               1       70     343
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0      295     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1       90     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+               0      120     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+               1       27     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0      385     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1      119     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               0      150     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               1       53     707
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     9573   17991
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     1305   17991
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+               0     6445   17991
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+               1      668   17991
6 months    ki1000108-IRC              INDIA                          1                0       77     408
6 months    ki1000108-IRC              INDIA                          1                1       11     408
6 months    ki1000108-IRC              INDIA                          2+               0      277     408
6 months    ki1000108-IRC              INDIA                          2+               1       43     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      421     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       17     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               0      157     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               1        8     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      494     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       13     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               0      200     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               1        8     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1335    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       55    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0      597    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       32    2019
6 months    ki1148112-LCNI-5           MALAWI                         1                0      384     811
6 months    ki1148112-LCNI-5           MALAWI                         1                1        6     811
6 months    ki1148112-LCNI-5           MALAWI                         2+               0      413     811
6 months    ki1148112-LCNI-5           MALAWI                         2+               1        8     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     9976   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      896   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+               0     5378   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+               1      523   16773
24 months   ki1000108-IRC              INDIA                          1                0       78     409
24 months   ki1000108-IRC              INDIA                          1                1       11     409
24 months   ki1000108-IRC              INDIA                          2+               0      300     409
24 months   ki1000108-IRC              INDIA                          2+               1       20     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      379     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       45     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               0      138     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               1       17     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      328     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       29     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               0      141     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               1       16     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1        0       6
24 months   ki1148112-LCNI-5           MALAWI                         1                0      271     555
24 months   ki1148112-LCNI-5           MALAWI                         1                1        6     555
24 months   ki1148112-LCNI-5           MALAWI                         2+               0      274     555
24 months   ki1148112-LCNI-5           MALAWI                         2+               1        4     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4203    8593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1231    8593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+               0     2516    8593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+               1      643    8593


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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/dc1dbe15-cfad-4dff-b843-6542a32d6cb5/12e56c7f-1ecb-4696-92b0-7b40734d1df2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dc1dbe15-cfad-4dff-b843-6542a32d6cb5/12e56c7f-1ecb-4696-92b0-7b40734d1df2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dc1dbe15-cfad-4dff-b843-6542a32d6cb5/12e56c7f-1ecb-4696-92b0-7b40734d1df2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dc1dbe15-cfad-4dff-b843-6542a32d6cb5/12e56c7f-1ecb-4696-92b0-7b40734d1df2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.3288152   0.2223756   0.4352548
Birth       ki1000108-IRC              INDIA                          2+                   NA                0.2598253   0.2075858   0.3120647
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2365821   0.1937523   0.2794120
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1953873   0.1304195   0.2603551
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2314894   0.1943660   0.2686128
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.2723756   0.2096889   0.3350623
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1120560   0.1050497   0.1190622
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1093657   0.0979175   0.1208139
6 months    ki1000108-IRC              INDIA                          1                    NA                0.1228179   0.0545862   0.1910496
6 months    ki1000108-IRC              INDIA                          2+                   NA                0.1349966   0.0973749   0.1726183
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0388128   0.0207093   0.0569163
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0484848   0.0156846   0.0812851
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0256410   0.0118729   0.0394092
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0384615   0.0123088   0.0646143
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0403122   0.0298877   0.0507367
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0497957   0.0326631   0.0669282
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.0153846   0.0031621   0.0276071
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0190024   0.0059523   0.0320524
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0801261   0.0736106   0.0866415
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0912647   0.0797772   0.1027523
24 months   ki1000108-IRC              INDIA                          1                    NA                0.1211787   0.0549811   0.1873763
24 months   ki1000108-IRC              INDIA                          2+                   NA                0.0615862   0.0352366   0.0879357
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1054597   0.0760572   0.1348621
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1058389   0.0558813   0.1557964
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0806593   0.0524799   0.1088388
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1020233   0.0541899   0.1498567
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2276638   0.2128085   0.2425192
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1905370   0.1704201   0.2106538


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1096659   0.1045396   0.1147922
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0430906   0.0342310   0.0519502
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0172626   0.0082929   0.0262323
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0846003   0.0797949   0.0894056
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2180845   0.2082032   0.2279658


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 0.7901864   0.5392943   1.1577992
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.8258751   0.5658783   1.2053291
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.1766223   0.8895342   1.5563650
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9759912   0.8653950   1.1007213
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 1.0991608   0.5900682   2.0474830
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.2491979   0.5492426   2.8411767
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.5000000   0.6306811   3.5675717
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2352505   0.8031315   1.8998679
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2351544   0.4321632   3.5301627
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1390146   0.9864432   1.3151839
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 0.5082260   0.2531539   1.0203030
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.0035957   0.5795561   1.7378892
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.2648666   0.7044818   2.2710133
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8369225   0.7389262   0.9479151


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0605936   -0.1547450   0.0335577
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0166573   -0.0382443   0.0049296
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0117921   -0.0087846   0.0323687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0023900   -0.0070640   0.0022839
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0095351   -0.0513788   0.0704490
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0026466   -0.0076107   0.0129039
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0037296   -0.0048790   0.0123382
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0027784   -0.0035776   0.0091344
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0018780   -0.0074045   0.0111606
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0044742    0.0000370   0.0089114
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0453841   -0.1011620   0.0103938
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0016215   -0.0138223   0.0170654
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0068893   -0.0099771   0.0237557
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0095793   -0.0203861   0.0012274


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2259088   -0.6337598    0.0801265
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0757410   -0.1782235    0.0178275
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0484708   -0.0399904    0.1294076
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0217938   -0.0653063    0.0199413
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0720428   -0.5233430    0.4347271
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0638356   -0.2178857    0.2803892
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1269841   -0.2148048    0.3726097
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0644789   -0.0945760    0.2004212
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1087912   -0.6240960    0.5109568
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0528863   -0.0011090    0.1039693
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.5987772   -1.5088940   -0.0188109
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0151428   -0.1401789    0.1493058
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0786912   -0.1342175    0.2516340
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0439249   -0.0946535    0.0044528
