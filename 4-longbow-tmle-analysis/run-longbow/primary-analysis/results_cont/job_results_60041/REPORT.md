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
Birth       CMC-V-BCS-2002   INDIA                          0             92     92
Birth       CMC-V-BCS-2002   INDIA                          1              0     92
Birth       COHORTS          INDIA                          0           2938   4694
Birth       COHORTS          INDIA                          1           1756   4694
Birth       EE               PAKISTAN                       0            161    238
Birth       EE               PAKISTAN                       1             77    238
Birth       GMS-Nepal        NEPAL                          0            157    646
Birth       GMS-Nepal        NEPAL                          1            489    646
Birth       IRC              INDIA                          0            381    388
Birth       IRC              INDIA                          1              7    388
Birth       JiVitA-3         BANGLADESH                     0             30    334
Birth       JiVitA-3         BANGLADESH                     1            304    334
Birth       JiVitA-4         BANGLADESH                     0            554   2808
Birth       JiVitA-4         BANGLADESH                     1           2254   2808
Birth       NIH-Crypto       BANGLADESH                     0            567    732
Birth       NIH-Crypto       BANGLADESH                     1            165    732
Birth       PROVIDE          BANGLADESH                     0            391    539
Birth       PROVIDE          BANGLADESH                     1            148    539
Birth       SAS-CompFeed     INDIA                          0            124   1085
Birth       SAS-CompFeed     INDIA                          1            961   1085
6 months    CMC-V-BCS-2002   INDIA                          0            358    366
6 months    CMC-V-BCS-2002   INDIA                          1              8    366
6 months    COHORTS          INDIA                          0           2900   4699
6 months    COHORTS          INDIA                          1           1799   4699
6 months    EE               PAKISTAN                       0            250    371
6 months    EE               PAKISTAN                       1            121    371
6 months    GMS-Nepal        NEPAL                          0            129    528
6 months    GMS-Nepal        NEPAL                          1            399    528
6 months    IRC              INDIA                          0            399    407
6 months    IRC              INDIA                          1              8    407
6 months    JiVitA-3         BANGLADESH                     0             39    332
6 months    JiVitA-3         BANGLADESH                     1            293    332
6 months    JiVitA-4         BANGLADESH                     0           1081   4038
6 months    JiVitA-4         BANGLADESH                     1           2957   4038
6 months    NIH-Crypto       BANGLADESH                     0            554    715
6 months    NIH-Crypto       BANGLADESH                     1            161    715
6 months    PROVIDE          BANGLADESH                     0            450    604
6 months    PROVIDE          BANGLADESH                     1            154    604
6 months    SAS-CompFeed     INDIA                          0            147   1091
6 months    SAS-CompFeed     INDIA                          1            944   1091
6 months    SAS-FoodSuppl    INDIA                          0             76    380
6 months    SAS-FoodSuppl    INDIA                          1            304    380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1889   1921
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1921
24 months   CMC-V-BCS-2002   INDIA                          0            360    368
24 months   CMC-V-BCS-2002   INDIA                          1              8    368
24 months   COHORTS          INDIA                          0           2233   3556
24 months   COHORTS          INDIA                          1           1323   3556
24 months   EE               PAKISTAN                       0            112    166
24 months   EE               PAKISTAN                       1             54    166
24 months   GMS-Nepal        NEPAL                          0            118    456
24 months   GMS-Nepal        NEPAL                          1            338    456
24 months   IRC              INDIA                          0            401    409
24 months   IRC              INDIA                          1              8    409
24 months   JiVitA-3         BANGLADESH                     0             35    291
24 months   JiVitA-3         BANGLADESH                     1            256    291
24 months   JiVitA-4         BANGLADESH                     0           1033   4005
24 months   JiVitA-4         BANGLADESH                     1           2972   4005
24 months   NIH-Crypto       BANGLADESH                     0            391    514
24 months   NIH-Crypto       BANGLADESH                     1            123    514
24 months   PROVIDE          BANGLADESH                     0            433    578
24 months   PROVIDE          BANGLADESH                     1            145    578
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
![](/tmp/404e1e48-c571-4ba2-b234-6579dfbfb2a8/7f16d564-d4b1-47db-b90e-56fada799ffb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/404e1e48-c571-4ba2-b234-6579dfbfb2a8/7f16d564-d4b1-47db-b90e-56fada799ffb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/404e1e48-c571-4ba2-b234-6579dfbfb2a8/7f16d564-d4b1-47db-b90e-56fada799ffb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.6657892   -0.7127192   -0.6188592
Birth       COHORTS          INDIA                          1                    NA                -0.7175855   -0.7845609   -0.6506101
Birth       EE               PAKISTAN                       0                    NA                -1.8394447   -2.0786931   -1.6001964
Birth       EE               PAKISTAN                       1                    NA                -1.8982742   -2.2066603   -1.5898881
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.1051150   -1.2761388   -0.9340912
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.0922063   -1.1861097   -0.9983030
Birth       IRC              INDIA                          0                    NA                -0.3138845   -0.4765233   -0.1512457
Birth       IRC              INDIA                          1                    NA                 0.0100000   -1.0310607    1.0510607
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.1731561   -1.5014417   -0.8448706
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.3888607   -1.5513999   -1.2263216
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.3903651   -1.5105420   -1.2701881
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.5497288   -1.6044294   -1.4950281
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.8921498   -0.9725445   -0.8117551
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9553416   -1.1209945   -0.7896886
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8422105   -0.9323225   -0.7520985
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9881617   -1.1253023   -0.8510210
Birth       SAS-CompFeed     INDIA                          0                    NA                -1.3043049   -1.4241966   -1.1844132
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.4383865   -1.5399229   -1.3368500
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.4288687   -1.5726614   -1.2850760
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.9754167   -1.7693720   -0.1814613
6 months    COHORTS          INDIA                          0                    NA                -1.0002850   -1.0479537   -0.9526163
6 months    COHORTS          INDIA                          1                    NA                -1.1958600   -1.2603338   -1.1313862
6 months    EE               PAKISTAN                       0                    NA                -2.0500608   -2.1974625   -1.9026591
6 months    EE               PAKISTAN                       1                    NA                -2.1483685   -2.3557536   -1.9409834
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.2154976   -1.3658857   -1.0651094
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.3547667   -1.4497927   -1.2597407
6 months    IRC              INDIA                          0                    NA                -1.2276901   -1.3618868   -1.0934933
6 months    IRC              INDIA                          1                    NA                -1.5693750   -2.0379505   -1.1007995
6 months    JiVitA-3         BANGLADESH                     0                    NA                -1.2113215   -1.6221181   -0.8005250
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3032089   -1.4570324   -1.1493854
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.2776107   -1.3621588   -1.1930625
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.3731441   -1.4229245   -1.3233638
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.1581738   -1.2409558   -1.0753917
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.3276022   -1.4751358   -1.1800686
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0350866   -1.1202827   -0.9498905
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.2405292   -1.3950752   -1.0859833
6 months    SAS-CompFeed     INDIA                          0                    NA                -1.2403474   -1.3346382   -1.1460565
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.4941568   -1.5656568   -1.4226568
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -1.7519222   -2.0126809   -1.4911635
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.9579739   -2.0889904   -1.8269575
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5416256   -0.5929467   -0.4903045
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6457448   -0.9327804   -0.3587092
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.5640139   -2.6645275   -2.4635003
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.4300000   -3.0592261   -1.8007739
24 months   COHORTS          INDIA                          0                    NA                -2.1127545   -2.1673751   -2.0581338
24 months   COHORTS          INDIA                          1                    NA                -2.5013432   -2.5824185   -2.4202680
24 months   EE               PAKISTAN                       0                    NA                -2.7147626   -2.9051573   -2.5243679
24 months   EE               PAKISTAN                       1                    NA                -2.6590034   -2.8779474   -2.4400595
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.7855927   -1.9643389   -1.6068465
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.9005178   -1.9994884   -1.8015472
24 months   IRC              INDIA                          0                    NA                -1.7871446   -1.8820825   -1.6922068
24 months   IRC              INDIA                          1                    NA                -2.3818750   -2.8405973   -1.9231527
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.8451807   -2.2682119   -1.4221496
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.2025746   -2.3464683   -2.0586808
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.6730213   -1.7492437   -1.5967988
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.8040634   -1.8476485   -1.7604783
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.4066439   -1.5047134   -1.3085743
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.5645279   -1.7296038   -1.3994520
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5735409   -1.6694328   -1.4776491
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.7032326   -1.8723478   -1.5341175


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          NA                   NA                -0.6762420   -0.7093108   -0.6431732
Birth       EE               PAKISTAN                       NA                   NA                -1.8614286   -2.0501173   -1.6727398
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0909443   -1.1734385   -1.0084500
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.3684731   -1.5219775   -1.2149687
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5216453   -1.5715117   -1.4717789
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4401843   -1.5334809   -1.3468878
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4189572   -1.5607165   -1.2771979
6 months    COHORTS          INDIA                          NA                   NA                -1.0458076   -1.0793244   -1.0122908
6 months    EE               PAKISTAN                       NA                   NA                -2.0826460   -2.2022514   -1.9630406
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3296275   -1.4093037   -1.2499514
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.2787349   -1.4248268   -1.1326431
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3481303   -1.3904710   -1.3057895
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4699588   -1.5446559   -1.3952616
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5440573   -0.5945614   -0.4935533
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5611005   -2.6603759   -2.4618252
24 months   COHORTS          INDIA                          NA                   NA                -2.2218335   -2.2619519   -2.1817151
24 months   EE               PAKISTAN                       NA                   NA                -2.6770382   -2.8210532   -2.5330231
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8717982   -1.9591776   -1.7844189
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.1571821   -2.2993457   -2.0150186
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7725918   -1.8111207   -1.7340629
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                 -0.0517964   -0.1332649    0.0296721
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                 -0.0588295   -0.4488667    0.3312078
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.0129087   -0.1814699    0.2072873
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.3238845   -0.7298036    1.3775727
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -0.2157046   -0.5726734    0.1412641
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -0.1593637   -0.2924622   -0.0262652
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -0.0631918   -0.2476324    0.1212488
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.1459512   -0.3091670    0.0172647
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -0.1340816   -0.2808769    0.0127137
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.4534520   -0.3534193    1.2603234
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.1955750   -0.2749822   -0.1161678
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.0983077   -0.3532190    0.1566036
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.1392691   -0.3172814    0.0387431
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.3416849   -0.8290982    0.1457284
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.0918873   -0.4903684    0.3065937
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.0955335   -0.1901172   -0.0009498
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1694285   -0.3391130    0.0002561
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.2054426   -0.3813762   -0.0295091
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.2538095   -0.3481756   -0.1594433
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.2060518   -0.4982141    0.0861106
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1041192   -0.3956502    0.1874118
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.1340139   -0.5031898    0.7712175
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.3885888   -0.4871106   -0.2900669
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                  0.0557591   -0.2362981    0.3478164
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.1149251   -0.3194998    0.0896496
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.5947304   -1.0631739   -0.1262869
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.3573938   -0.7698904    0.0551028
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.1310422   -0.2161051   -0.0459793
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1578840   -0.3495303    0.0337623
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.1296917   -0.3232385    0.0638551


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.0104528   -0.0419775    0.0210718
Birth       EE               PAKISTAN                       0                    NA                -0.0219838   -0.1493353    0.1053677
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0141707   -0.1347495    0.1630909
Birth       IRC              INDIA                          0                    NA                 0.0058433   -0.0208468    0.0325333
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.1953169   -0.5221413    0.1315075
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.1312802   -0.2382806   -0.0242799
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0173448   -0.0586536    0.0239641
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0428915   -0.0871543    0.0013712
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.1358795   -0.2679407   -0.0038183
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0099115   -0.0113762    0.0311993
6 months    COHORTS          INDIA                          0                    NA                -0.0455226   -0.0788212   -0.0122241
6 months    EE               PAKISTAN                       0                    NA                -0.0325852   -0.1161837    0.0510133
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.1141300   -0.2512205    0.0229605
6 months    IRC              INDIA                          0                    NA                -0.0067162   -0.0197457    0.0063134
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0674134   -0.4278392    0.2930123
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0705196   -0.1412672    0.0002280
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0405046   -0.0781589   -0.0028502
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0566049   -0.1009816   -0.0122283
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.2296114   -0.3155487   -0.1436741
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.1467620   -0.3898319    0.0963078
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0024318   -0.0092690    0.0044055
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0029133   -0.0131417    0.0189684
24 months   COHORTS          INDIA                          0                    NA                -0.1090791   -0.1475618   -0.0705963
24 months   EE               PAKISTAN                       0                    NA                 0.0377244   -0.0650907    0.1405395
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0862056   -0.2370635    0.0646524
24 months   IRC              INDIA                          0                    NA                -0.0116329   -0.0258108    0.0025451
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.3120014   -0.6863164    0.0623136
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0995705   -0.1654954   -0.0336456
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0346207   -0.0807307    0.0114893
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0288812   -0.0757780    0.0180156
