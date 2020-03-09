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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        hdlvry    n_cell      n  outcome_variable 
----------  ---------------  -----------------------------  -------  -------  -----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0             86     86  whz              
Birth       CMC-V-BCS-2002   INDIA                          1              0     86  whz              
Birth       COHORTS          INDIA                          0           2763   4389  whz              
Birth       COHORTS          INDIA                          1           1626   4389  whz              
Birth       EE               PAKISTAN                       0            120    175  whz              
Birth       EE               PAKISTAN                       1             55    175  whz              
Birth       GMS-Nepal        NEPAL                          0            143    596  whz              
Birth       GMS-Nepal        NEPAL                          1            453    596  whz              
Birth       IRC              INDIA                          0            337    343  whz              
Birth       IRC              INDIA                          1              6    343  whz              
Birth       JiVitA-3         BANGLADESH                     0             27    292  whz              
Birth       JiVitA-3         BANGLADESH                     1            265    292  whz              
Birth       JiVitA-4         BANGLADESH                     0            500   2384  whz              
Birth       JiVitA-4         BANGLADESH                     1           1884   2384  whz              
Birth       NIH-Crypto       BANGLADESH                     0            548    707  whz              
Birth       NIH-Crypto       BANGLADESH                     1            159    707  whz              
Birth       PROVIDE          BANGLADESH                     0            387    532  whz              
Birth       PROVIDE          BANGLADESH                     1            145    532  whz              
Birth       SAS-CompFeed     INDIA                          0            108    957  whz              
Birth       SAS-CompFeed     INDIA                          1            849    957  whz              
6 months    CMC-V-BCS-2002   INDIA                          0            357    365  whz              
6 months    CMC-V-BCS-2002   INDIA                          1              8    365  whz              
6 months    COHORTS          INDIA                          0           2896   4694  whz              
6 months    COHORTS          INDIA                          1           1798   4694  whz              
6 months    EE               PAKISTAN                       0            252    373  whz              
6 months    EE               PAKISTAN                       1            121    373  whz              
6 months    GMS-Nepal        NEPAL                          0            129    528  whz              
6 months    GMS-Nepal        NEPAL                          1            399    528  whz              
6 months    IRC              INDIA                          0            400    408  whz              
6 months    IRC              INDIA                          1              8    408  whz              
6 months    JiVitA-3         BANGLADESH                     0             39    334  whz              
6 months    JiVitA-3         BANGLADESH                     1            295    334  whz              
6 months    JiVitA-4         BANGLADESH                     0           1082   4042  whz              
6 months    JiVitA-4         BANGLADESH                     1           2960   4042  whz              
6 months    NIH-Crypto       BANGLADESH                     0            554    715  whz              
6 months    NIH-Crypto       BANGLADESH                     1            161    715  whz              
6 months    PROVIDE          BANGLADESH                     0            450    603  whz              
6 months    PROVIDE          BANGLADESH                     1            153    603  whz              
6 months    SAS-CompFeed     INDIA                          0            147   1088  whz              
6 months    SAS-CompFeed     INDIA                          1            941   1088  whz              
6 months    SAS-FoodSuppl    INDIA                          0             76    380  whz              
6 months    SAS-FoodSuppl    INDIA                          1            304    380  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1888   1920  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1920  whz              
24 months   CMC-V-BCS-2002   INDIA                          0            361    369  whz              
24 months   CMC-V-BCS-2002   INDIA                          1              8    369  whz              
24 months   COHORTS          INDIA                          0           2214   3533  whz              
24 months   COHORTS          INDIA                          1           1319   3533  whz              
24 months   EE               PAKISTAN                       0            112    167  whz              
24 months   EE               PAKISTAN                       1             55    167  whz              
24 months   GMS-Nepal        NEPAL                          0            118    455  whz              
24 months   GMS-Nepal        NEPAL                          1            337    455  whz              
24 months   IRC              INDIA                          0            401    409  whz              
24 months   IRC              INDIA                          1              8    409  whz              
24 months   JiVitA-3         BANGLADESH                     0             34    289  whz              
24 months   JiVitA-3         BANGLADESH                     1            255    289  whz              
24 months   JiVitA-4         BANGLADESH                     0           1032   3993  whz              
24 months   JiVitA-4         BANGLADESH                     1           2961   3993  whz              
24 months   NIH-Crypto       BANGLADESH                     0            391    514  whz              
24 months   NIH-Crypto       BANGLADESH                     1            123    514  whz              
24 months   PROVIDE          BANGLADESH                     0            433    579  whz              
24 months   PROVIDE          BANGLADESH                     1            146    579  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6  whz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/c6a4f5e8-06e5-4a05-92d6-bc0d24ebc03a/e1ec0016-a018-44e6-ae27-00df69d59005/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c6a4f5e8-06e5-4a05-92d6-bc0d24ebc03a/e1ec0016-a018-44e6-ae27-00df69d59005/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c6a4f5e8-06e5-4a05-92d6-bc0d24ebc03a/e1ec0016-a018-44e6-ae27-00df69d59005/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.9931490   -1.0413979   -0.9449002
Birth       COHORTS          INDIA                          1                    NA                -0.9614142   -1.0312894   -0.8915390
Birth       EE               PAKISTAN                       0                    NA                -0.3116922   -0.5401035   -0.0832809
Birth       EE               PAKISTAN                       1                    NA                -0.3984189   -0.7453366   -0.0515012
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.1978305   -1.4006889   -0.9949721
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.1101583   -1.2123015   -1.0080151
Birth       IRC              INDIA                          0                    NA                -0.9918991   -1.1804921   -0.8033061
Birth       IRC              INDIA                          1                    NA                -2.0600000   -3.2141159   -0.9058841
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.7213440   -1.0297166   -0.4129713
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.8700230   -0.9948667   -0.7451793
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.7003071   -0.8437478   -0.5568665
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.6899151   -0.7451588   -0.6346713
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -1.1996498   -1.2933749   -1.1059248
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -1.3867293   -1.5757288   -1.1977299
Birth       PROVIDE          BANGLADESH                     0                    NA                -1.2899534   -1.3810519   -1.1988549
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.3178718   -1.4587143   -1.1770294
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.6331755   -0.7465687   -0.5197823
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.6612605   -0.8794821   -0.4430390
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.5089262   -0.6640006   -0.3538519
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.3072917   -0.9616161    0.3470328
6 months    COHORTS          INDIA                          0                    NA                -0.6810510   -0.7260364   -0.6360657
6 months    COHORTS          INDIA                          1                    NA                -0.7469618   -0.8156437   -0.6782798
6 months    EE               PAKISTAN                       0                    NA                -0.7264083   -0.8687563   -0.5840603
6 months    EE               PAKISTAN                       1                    NA                -0.8595534   -1.0538701   -0.6652366
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.5585260   -0.7407462   -0.3763058
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.6096103   -0.7113937   -0.5078270
6 months    IRC              INDIA                          0                    NA                -0.5926333   -0.7305001   -0.4547666
6 months    IRC              INDIA                          1                    NA                -0.9137500   -1.5807163   -0.2467837
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.5210472   -0.8840543   -0.1580401
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.6152309   -0.7226055   -0.5078563
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.2880417   -0.3718294   -0.2042540
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.4042118   -0.4585151   -0.3499085
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0678306   -0.0217397    0.1574008
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0903374   -0.2668467    0.0861718
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.2006586   -0.2970082   -0.1043089
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.2041198   -0.3796424   -0.0285971
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.4484212   -0.5307327   -0.3661098
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.7057833   -0.8527199   -0.5588466
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.7533932   -1.0281822   -0.4786042
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.0790520   -1.2104880   -0.9476161
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0676272    0.0125998    0.1226546
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1747461   -0.1254505    0.4749426
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.5487673   -0.6500596   -0.4474751
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.3150000   -0.8468853    0.2168853
24 months   COHORTS          INDIA                          0                    NA                -0.5745621   -0.6203785   -0.5287457
24 months   COHORTS          INDIA                          1                    NA                -0.7723626   -0.8370455   -0.7076797
24 months   EE               PAKISTAN                       0                    NA                -0.9716217   -1.1681960   -0.7750474
24 months   EE               PAKISTAN                       1                    NA                -1.1129355   -1.3332332   -0.8926378
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.1282493   -1.3150585   -0.9414401
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1324462   -1.2374332   -1.0274592
24 months   IRC              INDIA                          0                    NA                -0.7384331   -0.8312559   -0.6456103
24 months   IRC              INDIA                          1                    NA                -1.1158333   -1.4387631   -0.7929036
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.1521407   -1.5744095   -0.7298718
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.3265817   -1.4699751   -1.1831882
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.1818048   -1.2513268   -1.1122827
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.2588551   -1.2979996   -1.2197106
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.5650671   -0.6755033   -0.4546310
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.7530438   -0.9397269   -0.5663607
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.8723618   -0.9669903   -0.7777332
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.9734542   -1.1515822   -0.7953261


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          NA                   NA                -0.9755867   -1.0106993   -0.9404741
Birth       EE               PAKISTAN                       NA                   NA                -0.3410000   -0.5302198   -0.1517802
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1277349   -1.2174865   -1.0379833
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.8532192   -0.9644938   -0.7419446
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6907341   -0.7437042   -0.6377640
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6570846   -0.8496671   -0.4645022
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5045068   -0.6566169   -0.3523968
6 months    COHORTS          INDIA                          NA                   NA                -0.7160077   -0.7492815   -0.6827338
6 months    EE               PAKISTAN                       NA                   NA                -0.7695800   -0.8839306   -0.6552294
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.5992551   -0.6878945   -0.5106156
6 months    IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.6044910   -0.7122040   -0.4967781
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3760651   -0.4191017   -0.3330285
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6734421   -0.8121314   -0.5347528
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0688763    0.0147308    0.1230218
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5436992   -0.6434110   -0.4439874
24 months   COHORTS          INDIA                          NA                   NA                -0.6520577   -0.6860033   -0.6181122
24 months   EE               PAKISTAN                       NA                   NA                -1.0103892   -1.1580613   -0.8627171
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1238388   -1.2161263   -1.0315513
24 months   IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2989273   -1.4377964   -1.1600583
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2421463   -1.2763113   -1.2079812
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                  0.0317349   -0.0531108    0.1165806
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                 -0.0867267   -0.5026826    0.3292291
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.0876722   -0.1393458    0.3146902
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                 -1.0681009   -2.2375241    0.1013224
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -0.1486791   -0.4880906    0.1907325
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.0103921   -0.1432383    0.1640225
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -0.1870795   -0.3981748    0.0240158
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.0279184   -0.1954102    0.1395734
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -0.0280850   -0.2799825    0.2238125
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.2016346   -0.4708151    0.8740843
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.0659107   -0.1476990    0.0158775
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.1331451   -0.3743109    0.1080207
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.0510843   -0.2605050    0.1583364
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.3211167   -1.0021830    0.3599496
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.0941837   -0.4531000    0.2647325
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.1161701   -0.2139728   -0.0183674
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1581680   -0.3563842    0.0400483
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.0034612   -0.2036379    0.1967156
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.2573620   -0.4212560   -0.0934681
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.3256588   -0.6289084   -0.0224092
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1071189   -0.1982276    0.4124653
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.2337673   -0.3076771    0.7752117
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.1978005   -0.2762181   -0.1193829
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.1413138   -0.4367220    0.1540945
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0041969   -0.2188678    0.2104741
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.3774002   -0.7134057   -0.0413948
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.1744410   -0.5980797    0.2491977
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0770503   -0.1551474    0.0010467
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1879767   -0.4044950    0.0285416
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.1010924   -0.3030548    0.1008700


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                 0.0175624   -0.0147718    0.0498965
Birth       EE               PAKISTAN                       0                    NA                -0.0293078   -0.1614836    0.1028680
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0700956   -0.1068306    0.2470218
Birth       IRC              INDIA                          0                    NA                -0.0186840   -0.0514705    0.0141025
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.1318752   -0.4433987    0.1796482
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0095731   -0.1128350    0.1319812
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0445015   -0.0920948    0.0030917
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0085052   -0.0544833    0.0374728
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.0239091   -0.2466022    0.1987840
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0044194   -0.0126632    0.0215020
6 months    COHORTS          INDIA                          0                    NA                -0.0349566   -0.0663091   -0.0036041
6 months    EE               PAKISTAN                       0                    NA                -0.0431717   -0.1209471    0.0346037
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0407290   -0.2021116    0.1206535
6 months    IRC              INDIA                          0                    NA                -0.0062964   -0.0238639    0.0112711
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0834438   -0.4053370    0.2384493
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0880234   -0.1594124   -0.0166344
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0380683   -0.0823492    0.0062126
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0015679   -0.0470682    0.0502040
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.2250209   -0.3713459   -0.0786958
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.2587647   -0.5124084   -0.0051209
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012491   -0.0063729    0.0088711
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0050681   -0.0089078    0.0190440
24 months   COHORTS          INDIA                          0                    NA                -0.0774956   -0.1088028   -0.0461885
24 months   EE               PAKISTAN                       0                    NA                -0.0387675   -0.1384026    0.0608675
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0044105   -0.1570717    0.1658927
24 months   IRC              INDIA                          0                    NA                -0.0073819   -0.0171941    0.0024303
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.1467867   -0.5245830    0.2310097
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0603415   -0.1191789   -0.0015041
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0452831   -0.0964474    0.0058812
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0205052   -0.0689994    0.0279889
