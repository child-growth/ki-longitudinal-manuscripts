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

agecat      studyid          country                        nchldlt5    wasted   n_cell       n
----------  ---------------  -----------------------------  ---------  -------  -------  ------
Birth       IRC              INDIA                          1                0       50     343
Birth       IRC              INDIA                          1                1       22     343
Birth       IRC              INDIA                          2+               0      201     343
Birth       IRC              INDIA                          2+               1       70     343
Birth       JiVitA-3         BANGLADESH                     1                0     9573   17991
Birth       JiVitA-3         BANGLADESH                     1                1     1305   17991
Birth       JiVitA-3         BANGLADESH                     2+               0     6445   17991
Birth       JiVitA-3         BANGLADESH                     2+               1      668   17991
Birth       NIH-Crypto       BANGLADESH                     1                0      385     707
Birth       NIH-Crypto       BANGLADESH                     1                1      119     707
Birth       NIH-Crypto       BANGLADESH                     2+               0      150     707
Birth       NIH-Crypto       BANGLADESH                     2+               1       53     707
Birth       PROVIDE          BANGLADESH                     1                0      295     532
Birth       PROVIDE          BANGLADESH                     1                1       90     532
Birth       PROVIDE          BANGLADESH                     2+               0      120     532
Birth       PROVIDE          BANGLADESH                     2+               1       27     532
6 months    IRC              INDIA                          1                0       77     408
6 months    IRC              INDIA                          1                1       11     408
6 months    IRC              INDIA                          2+               0      277     408
6 months    IRC              INDIA                          2+               1       43     408
6 months    JiVitA-3         BANGLADESH                     1                0     9976   16773
6 months    JiVitA-3         BANGLADESH                     1                1      896   16773
6 months    JiVitA-3         BANGLADESH                     2+               0     5378   16773
6 months    JiVitA-3         BANGLADESH                     2+               1      523   16773
6 months    LCNI-5           MALAWI                         1                0      384     811
6 months    LCNI-5           MALAWI                         1                1        6     811
6 months    LCNI-5           MALAWI                         2+               0      413     811
6 months    LCNI-5           MALAWI                         2+               1        8     811
6 months    NIH-Crypto       BANGLADESH                     1                0      494     715
6 months    NIH-Crypto       BANGLADESH                     1                1       13     715
6 months    NIH-Crypto       BANGLADESH                     2+               0      200     715
6 months    NIH-Crypto       BANGLADESH                     2+               1        8     715
6 months    PROVIDE          BANGLADESH                     1                0      421     603
6 months    PROVIDE          BANGLADESH                     1                1       17     603
6 months    PROVIDE          BANGLADESH                     2+               0      157     603
6 months    PROVIDE          BANGLADESH                     2+               1        8     603
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1335    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       55    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0      597    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       32    2019
24 months   IRC              INDIA                          1                0       78     409
24 months   IRC              INDIA                          1                1       11     409
24 months   IRC              INDIA                          2+               0      300     409
24 months   IRC              INDIA                          2+               1       20     409
24 months   JiVitA-3         BANGLADESH                     1                0     4203    8593
24 months   JiVitA-3         BANGLADESH                     1                1     1231    8593
24 months   JiVitA-3         BANGLADESH                     2+               0     2516    8593
24 months   JiVitA-3         BANGLADESH                     2+               1      643    8593
24 months   LCNI-5           MALAWI                         1                0      271     555
24 months   LCNI-5           MALAWI                         1                1        6     555
24 months   LCNI-5           MALAWI                         2+               0      274     555
24 months   LCNI-5           MALAWI                         2+               1        4     555
24 months   NIH-Crypto       BANGLADESH                     1                0      328     514
24 months   NIH-Crypto       BANGLADESH                     1                1       29     514
24 months   NIH-Crypto       BANGLADESH                     2+               0      141     514
24 months   NIH-Crypto       BANGLADESH                     2+               1       16     514
24 months   PROVIDE          BANGLADESH                     1                0      379     579
24 months   PROVIDE          BANGLADESH                     1                1       45     579
24 months   PROVIDE          BANGLADESH                     2+               0      138     579
24 months   PROVIDE          BANGLADESH                     2+               1       17     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1        0       6


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/30168171-2706-4a66-aa7e-e5485df1289a/420075ae-0564-46ed-94a7-a52f17ec94f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/30168171-2706-4a66-aa7e-e5485df1289a/420075ae-0564-46ed-94a7-a52f17ec94f2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/30168171-2706-4a66-aa7e-e5485df1289a/420075ae-0564-46ed-94a7-a52f17ec94f2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/30168171-2706-4a66-aa7e-e5485df1289a/420075ae-0564-46ed-94a7-a52f17ec94f2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          1                    NA                0.3027463   0.1959944   0.4094982
Birth       IRC              INDIA                          2+                   NA                0.2593335   0.2069622   0.3117049
Birth       JiVitA-3         BANGLADESH                     1                    NA                0.1124472   0.1054017   0.1194927
Birth       JiVitA-3         BANGLADESH                     2+                   NA                0.1044438   0.0929225   0.1159651
Birth       NIH-Crypto       BANGLADESH                     1                    NA                0.2315260   0.1944410   0.2686111
Birth       NIH-Crypto       BANGLADESH                     2+                   NA                0.2747366   0.2120337   0.3374395
Birth       PROVIDE          BANGLADESH                     1                    NA                0.2357700   0.1929794   0.2785607
Birth       PROVIDE          BANGLADESH                     2+                   NA                0.1953266   0.1300562   0.2605971
6 months    IRC              INDIA                          1                    NA                0.1231586   0.0555867   0.1907305
6 months    IRC              INDIA                          2+                   NA                0.1345200   0.0969454   0.1720945
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.0808015   0.0742121   0.0873908
6 months    JiVitA-3         BANGLADESH                     2+                   NA                0.0900858   0.0779240   0.1022476
6 months    LCNI-5           MALAWI                         1                    NA                0.0153846   0.0031621   0.0276071
6 months    LCNI-5           MALAWI                         2+                   NA                0.0190024   0.0059523   0.0320524
6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.0256410   0.0118729   0.0394092
6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.0384615   0.0123088   0.0646143
6 months    PROVIDE          BANGLADESH                     1                    NA                0.0388128   0.0207093   0.0569163
6 months    PROVIDE          BANGLADESH                     2+                   NA                0.0484848   0.0156846   0.0812851
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0397449   0.0294700   0.0500197
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0494476   0.0325706   0.0663246
24 months   IRC              INDIA                          1                    NA                0.1253317   0.0578972   0.1927663
24 months   IRC              INDIA                          2+                   NA                0.0622882   0.0357810   0.0887955
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.2276399   0.2125798   0.2427001
24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.1902634   0.1709491   0.2095777
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.0814738   0.0530083   0.1099393
24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1005538   0.0528076   0.1483001
24 months   PROVIDE          BANGLADESH                     1                    NA                0.1064784   0.0770778   0.1358790
24 months   PROVIDE          BANGLADESH                     2+                   NA                0.1085439   0.0591376   0.1579502


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1096659   0.1045396   0.1147922
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
6 months    IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0846003   0.0797949   0.0894056
6 months    LCNI-5           MALAWI                         NA                   NA                0.0172626   0.0082929   0.0262323
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0430906   0.0342310   0.0519502
24 months   IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2180845   0.2082032   0.2279658
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          2+                   1                 0.8566035   0.5708861   1.2853168
Birth       JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     2+                   1                 0.9288251   0.8190172   1.0533553
Birth       NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH                     2+                   1                 1.1866336   0.8987838   1.5666720
Birth       PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     2+                   1                 0.8284624   0.5666645   1.2112106
6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          2+                   1                 1.0922497   0.5897804   2.0228025
6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     2+                   1                 1.1149033   0.9587913   1.2964338
6 months    LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    LCNI-5           MALAWI                         2+                   1                 1.2351544   0.4321632   3.5301627
6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto       BANGLADESH                     2+                   1                 1.5000000   0.6306811   3.5675717
6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     2+                   1                 1.2491979   0.5492426   2.8411767
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2441254   0.8107463   1.9091645
24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          2+                   1                 0.4969869   0.2495355   0.9898231
24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     2+                   1                 0.8358087   0.7409420   0.9428217
24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.2341859   0.6838601   2.2273780
24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     2+                   1                 1.0193983   0.5983767   1.7366531


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA                          1                    NA                -0.0345247   -0.1286772   0.0596277
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0027813   -0.0074809   0.0019183
Birth       NIH-Crypto       BANGLADESH                     1                    NA                 0.0117555   -0.0087759   0.0322868
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.0158452   -0.0374650   0.0057746
6 months    IRC              INDIA                          1                    NA                 0.0091943   -0.0511595   0.0695482
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0037988   -0.0006518   0.0082493
6 months    LCNI-5           MALAWI                         1                    NA                 0.0018780   -0.0074045   0.0111606
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0037296   -0.0048790   0.0123382
6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0026466   -0.0076107   0.0129039
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0033458   -0.0029233   0.0096148
24 months   IRC              INDIA                          1                    NA                -0.0495371   -0.1063796   0.0073054
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0095554   -0.0206670   0.0015561
24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0060748   -0.0109612   0.0231109
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0006028   -0.0147811   0.0159866


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.1287173   -0.5403038    0.1728888
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0253612   -0.0691076    0.0165952
Birth       NIH-Crypto       BANGLADESH                     1                    NA                 0.0483204   -0.0399304    0.1290820
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.0720484   -0.1747269    0.0216553
6 months    IRC              INDIA                          1                    NA                 0.0694682   -0.5183929    0.4297330
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0449027   -0.0092779    0.0961747
6 months    LCNI-5           MALAWI                         1                    NA                 0.1087912   -0.6240960    0.5109568
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.1269841   -0.2148048    0.3726097
6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0638356   -0.2178857    0.2803892
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0776452   -0.0789081    0.2114821
24 months   IRC              INDIA                          1                    NA                -0.6535704   -1.5753793   -0.0617058
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0438152   -0.0960163    0.0058995
24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0693880   -0.1459890    0.2442871
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0056291   -0.1489249    0.1393924
