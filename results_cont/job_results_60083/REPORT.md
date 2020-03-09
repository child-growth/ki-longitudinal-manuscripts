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

agecat      studyid          country                        hdlvry    n_cell      n
----------  ---------------  -----------------------------  -------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0             86     86
Birth       CMC-V-BCS-2002   INDIA                          1              0     86
Birth       COHORTS          INDIA                          0           2763   4389
Birth       COHORTS          INDIA                          1           1626   4389
Birth       EE               PAKISTAN                       0            120    175
Birth       EE               PAKISTAN                       1             55    175
Birth       GMS-Nepal        NEPAL                          0            143    596
Birth       GMS-Nepal        NEPAL                          1            453    596
Birth       IRC              INDIA                          0            337    343
Birth       IRC              INDIA                          1              6    343
Birth       JiVitA-3         BANGLADESH                     0             27    292
Birth       JiVitA-3         BANGLADESH                     1            265    292
Birth       JiVitA-4         BANGLADESH                     0            500   2384
Birth       JiVitA-4         BANGLADESH                     1           1884   2384
Birth       NIH-Crypto       BANGLADESH                     0            548    707
Birth       NIH-Crypto       BANGLADESH                     1            159    707
Birth       PROVIDE          BANGLADESH                     0            387    532
Birth       PROVIDE          BANGLADESH                     1            145    532
Birth       SAS-CompFeed     INDIA                          0            108    957
Birth       SAS-CompFeed     INDIA                          1            849    957
6 months    CMC-V-BCS-2002   INDIA                          0            357    365
6 months    CMC-V-BCS-2002   INDIA                          1              8    365
6 months    COHORTS          INDIA                          0           2896   4694
6 months    COHORTS          INDIA                          1           1798   4694
6 months    EE               PAKISTAN                       0            252    373
6 months    EE               PAKISTAN                       1            121    373
6 months    GMS-Nepal        NEPAL                          0            129    528
6 months    GMS-Nepal        NEPAL                          1            399    528
6 months    IRC              INDIA                          0            400    408
6 months    IRC              INDIA                          1              8    408
6 months    JiVitA-3         BANGLADESH                     0             39    334
6 months    JiVitA-3         BANGLADESH                     1            295    334
6 months    JiVitA-4         BANGLADESH                     0           1082   4042
6 months    JiVitA-4         BANGLADESH                     1           2960   4042
6 months    NIH-Crypto       BANGLADESH                     0            554    715
6 months    NIH-Crypto       BANGLADESH                     1            161    715
6 months    PROVIDE          BANGLADESH                     0            450    603
6 months    PROVIDE          BANGLADESH                     1            153    603
6 months    SAS-CompFeed     INDIA                          0            147   1088
6 months    SAS-CompFeed     INDIA                          1            941   1088
6 months    SAS-FoodSuppl    INDIA                          0             76    380
6 months    SAS-FoodSuppl    INDIA                          1            304    380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1888   1920
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1920
24 months   CMC-V-BCS-2002   INDIA                          0            361    369
24 months   CMC-V-BCS-2002   INDIA                          1              8    369
24 months   COHORTS          INDIA                          0           2214   3533
24 months   COHORTS          INDIA                          1           1319   3533
24 months   EE               PAKISTAN                       0            112    167
24 months   EE               PAKISTAN                       1             55    167
24 months   GMS-Nepal        NEPAL                          0            118    455
24 months   GMS-Nepal        NEPAL                          1            337    455
24 months   IRC              INDIA                          0            401    409
24 months   IRC              INDIA                          1              8    409
24 months   JiVitA-3         BANGLADESH                     0             34    289
24 months   JiVitA-3         BANGLADESH                     1            255    289
24 months   JiVitA-4         BANGLADESH                     0           1032   3993
24 months   JiVitA-4         BANGLADESH                     1           2961   3993
24 months   NIH-Crypto       BANGLADESH                     0            391    514
24 months   NIH-Crypto       BANGLADESH                     1            123    514
24 months   PROVIDE          BANGLADESH                     0            433    579
24 months   PROVIDE          BANGLADESH                     1            146    579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6


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
![](/tmp/be204457-1e53-4085-8a97-15ad8c106e18/d2cae7b0-41a6-4eff-878a-4b7c2b09bcfa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/be204457-1e53-4085-8a97-15ad8c106e18/d2cae7b0-41a6-4eff-878a-4b7c2b09bcfa/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/be204457-1e53-4085-8a97-15ad8c106e18/d2cae7b0-41a6-4eff-878a-4b7c2b09bcfa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.9910685   -1.0396996   -0.9424374
Birth       COHORTS          INDIA                          1                    NA                -0.9542945   -1.0222689   -0.8863201
Birth       EE               PAKISTAN                       0                    NA                -0.3007954   -0.5309745   -0.0706162
Birth       EE               PAKISTAN                       1                    NA                -0.3790885   -0.7275050   -0.0306720
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.1544834   -1.3539093   -0.9550574
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.1221131   -1.2254921   -1.0187342
Birth       IRC              INDIA                          0                    NA                -0.9918991   -1.1804921   -0.8033061
Birth       IRC              INDIA                          1                    NA                -2.0600000   -3.2141159   -0.9058841
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.7569072   -1.0932446   -0.4205698
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.8705154   -0.9958753   -0.7451555
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.7135198   -0.8498074   -0.5772322
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.6890575   -0.7440516   -0.6340634
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -1.1999848   -1.2936234   -1.1063462
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -1.3962551   -1.5855533   -1.2069568
Birth       PROVIDE          BANGLADESH                     0                    NA                -1.2912979   -1.3826301   -1.1999657
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.3155604   -1.4560514   -1.1750693
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.6331755   -0.7465687   -0.5197823
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.6612605   -0.8794821   -0.4430390
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.5089262   -0.6640006   -0.3538519
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.3072917   -0.9616161    0.3470328
6 months    COHORTS          INDIA                          0                    NA                -0.6765250   -0.7221292   -0.6309207
6 months    COHORTS          INDIA                          1                    NA                -0.7392512   -0.8059556   -0.6725469
6 months    EE               PAKISTAN                       0                    NA                -0.7232854   -0.8659565   -0.5806143
6 months    EE               PAKISTAN                       1                    NA                -0.8657262   -1.0568325   -0.6746200
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.5222701   -0.7076899   -0.3368504
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.6204313   -0.7213698   -0.5194928
6 months    IRC              INDIA                          0                    NA                -0.5926333   -0.7305001   -0.4547666
6 months    IRC              INDIA                          1                    NA                -0.9137500   -1.5807163   -0.2467837
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.5235171   -0.8445361   -0.2024981
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.6161110   -0.7230576   -0.5091644
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.2900923   -0.3724378   -0.2077467
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.4036849   -0.4558173   -0.3515525
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0652608   -0.0241608    0.1546824
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0813732   -0.2555254    0.0927789
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.1955990   -0.2910642   -0.1001338
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.1890275   -0.3583821   -0.0196728
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.4484212   -0.5307327   -0.3661098
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.7057833   -0.8527199   -0.5588466
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.8110515   -1.0741246   -0.5479784
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.0726176   -1.2027628   -0.9424724
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0676537    0.0126246    0.1226828
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1443575   -0.1508558    0.4395707
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.5487673   -0.6500596   -0.4474751
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.3150000   -0.8468853    0.2168853
24 months   COHORTS          INDIA                          0                    NA                -0.5776763   -0.6236271   -0.5317254
24 months   COHORTS          INDIA                          1                    NA                -0.7781430   -0.8397635   -0.7165225
24 months   EE               PAKISTAN                       0                    NA                -0.9589763   -1.1530627   -0.7648899
24 months   EE               PAKISTAN                       1                    NA                -1.1277896   -1.3586768   -0.8969025
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.1478762   -1.3375703   -0.9581820
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1331801   -1.2396196   -1.0267406
24 months   IRC              INDIA                          0                    NA                -0.7384331   -0.8312559   -0.6456103
24 months   IRC              INDIA                          1                    NA                -1.1158333   -1.4387631   -0.7929036
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.0633514   -1.5582541   -0.5684486
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.3320414   -1.4748871   -1.1891957
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.1853662   -1.2553936   -1.1153387
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.2591964   -1.2979405   -1.2204524
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.5607748   -0.6712834   -0.4502661
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.7583215   -0.9501319   -0.5665111
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.8722594   -0.9679595   -0.7765592
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.9352337   -1.1126783   -0.7577892


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
Birth       COHORTS          INDIA                          1                    0                  0.0367740   -0.0466360    0.1201840
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                 -0.0782932   -0.4968606    0.3402743
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.0323702   -0.1917823    0.2565227
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                 -1.0681009   -2.2375241    0.1013224
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -0.1136082   -0.4891456    0.2619292
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.0244623   -0.1215968    0.1705214
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -0.1962703   -0.4078005    0.0152600
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.0242624   -0.1920397    0.1435149
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -0.0280850   -0.2799825    0.2238125
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.2016346   -0.4708151    0.8740843
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.0627263   -0.1431526    0.0177000
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.1424408   -0.3810463    0.0961647
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.0981612   -0.3095087    0.1131864
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.3211167   -1.0021830    0.3599496
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.0925939   -0.4140703    0.2288824
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.1135926   -0.2091063   -0.0180790
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1466340   -0.3428918    0.0496238
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                  0.0065715   -0.1876768    0.2008198
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.2573620   -0.4212560   -0.0934681
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.2615661   -0.5540264    0.0308941
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0767038   -0.2236673    0.3770748
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.2337673   -0.3076771    0.7752117
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.2004668   -0.2765415   -0.1243920
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.1688133   -0.4708007    0.1331742
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                  0.0146961   -0.2054917    0.2348838
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.3774002   -0.7134057   -0.0413948
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.2686900   -0.7612942    0.2239142
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0738303   -0.1521499    0.0044894
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1975467   -0.4184227    0.0233293
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0629744   -0.2629555    0.1370068


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                 0.0154818   -0.0173722    0.0483358
Birth       EE               PAKISTAN                       0                    NA                -0.0402046   -0.1754448    0.0950355
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0267485   -0.1471364    0.2006333
Birth       IRC              INDIA                          0                    NA                -0.0186840   -0.0514705    0.0141025
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.0963120   -0.4385690    0.2459450
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0227858   -0.0927898    0.1383613
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0441665   -0.0917434    0.0034103
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0071607   -0.0530576    0.0387361
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.0239091   -0.2466022    0.1987840
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0044194   -0.0126632    0.0215020
6 months    COHORTS          INDIA                          0                    NA                -0.0394827   -0.0715143   -0.0074511
6 months    EE               PAKISTAN                       0                    NA                -0.0462946   -0.1240254    0.0314362
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0769849   -0.2414445    0.0874746
6 months    IRC              INDIA                          0                    NA                -0.0062964   -0.0238639    0.0112711
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0809739   -0.3663472    0.2043994
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0859728   -0.1560052   -0.0159404
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0354986   -0.0797925    0.0087954
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0034917   -0.0517306    0.0447472
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.2250209   -0.3713459   -0.0786958
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.2011064   -0.4429248    0.0407120
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012226   -0.0063257    0.0087710
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0050681   -0.0089078    0.0190440
24 months   COHORTS          INDIA                          0                    NA                -0.0743815   -0.1057224   -0.0430406
24 months   EE               PAKISTAN                       0                    NA                -0.0514129   -0.1507578    0.0479320
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0240373   -0.1409630    0.1890377
24 months   IRC              INDIA                          0                    NA                -0.0073819   -0.0171941    0.0024303
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.2355760   -0.6820691    0.2109171
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0567801   -0.1158005    0.0022403
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0495754   -0.1010946    0.0019437
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0206076   -0.0684236    0.0272083
