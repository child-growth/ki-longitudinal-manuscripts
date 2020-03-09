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

agecat      studyid          country                        hdlvry    n_cell      n  outcome_variable 
----------  ---------------  -----------------------------  -------  -------  -----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0             92     92  haz              
Birth       CMC-V-BCS-2002   INDIA                          1              0     92  haz              
Birth       COHORTS          INDIA                          0           2938   4694  haz              
Birth       COHORTS          INDIA                          1           1756   4694  haz              
Birth       EE               PAKISTAN                       0            161    238  haz              
Birth       EE               PAKISTAN                       1             77    238  haz              
Birth       GMS-Nepal        NEPAL                          0            157    646  haz              
Birth       GMS-Nepal        NEPAL                          1            489    646  haz              
Birth       IRC              INDIA                          0            381    388  haz              
Birth       IRC              INDIA                          1              7    388  haz              
Birth       JiVitA-3         BANGLADESH                     0             30    334  haz              
Birth       JiVitA-3         BANGLADESH                     1            304    334  haz              
Birth       JiVitA-4         BANGLADESH                     0            554   2808  haz              
Birth       JiVitA-4         BANGLADESH                     1           2254   2808  haz              
Birth       NIH-Crypto       BANGLADESH                     0            567    732  haz              
Birth       NIH-Crypto       BANGLADESH                     1            165    732  haz              
Birth       PROVIDE          BANGLADESH                     0            391    539  haz              
Birth       PROVIDE          BANGLADESH                     1            148    539  haz              
Birth       SAS-CompFeed     INDIA                          0            124   1085  haz              
Birth       SAS-CompFeed     INDIA                          1            961   1085  haz              
6 months    CMC-V-BCS-2002   INDIA                          0            358    366  haz              
6 months    CMC-V-BCS-2002   INDIA                          1              8    366  haz              
6 months    COHORTS          INDIA                          0           2900   4699  haz              
6 months    COHORTS          INDIA                          1           1799   4699  haz              
6 months    EE               PAKISTAN                       0            250    371  haz              
6 months    EE               PAKISTAN                       1            121    371  haz              
6 months    GMS-Nepal        NEPAL                          0            129    528  haz              
6 months    GMS-Nepal        NEPAL                          1            399    528  haz              
6 months    IRC              INDIA                          0            399    407  haz              
6 months    IRC              INDIA                          1              8    407  haz              
6 months    JiVitA-3         BANGLADESH                     0             39    332  haz              
6 months    JiVitA-3         BANGLADESH                     1            293    332  haz              
6 months    JiVitA-4         BANGLADESH                     0           1081   4038  haz              
6 months    JiVitA-4         BANGLADESH                     1           2957   4038  haz              
6 months    NIH-Crypto       BANGLADESH                     0            554    715  haz              
6 months    NIH-Crypto       BANGLADESH                     1            161    715  haz              
6 months    PROVIDE          BANGLADESH                     0            450    604  haz              
6 months    PROVIDE          BANGLADESH                     1            154    604  haz              
6 months    SAS-CompFeed     INDIA                          0            147   1091  haz              
6 months    SAS-CompFeed     INDIA                          1            944   1091  haz              
6 months    SAS-FoodSuppl    INDIA                          0             76    380  haz              
6 months    SAS-FoodSuppl    INDIA                          1            304    380  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1889   1921  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1921  haz              
24 months   CMC-V-BCS-2002   INDIA                          0            360    368  haz              
24 months   CMC-V-BCS-2002   INDIA                          1              8    368  haz              
24 months   COHORTS          INDIA                          0           2233   3556  haz              
24 months   COHORTS          INDIA                          1           1323   3556  haz              
24 months   EE               PAKISTAN                       0            112    166  haz              
24 months   EE               PAKISTAN                       1             54    166  haz              
24 months   GMS-Nepal        NEPAL                          0            118    456  haz              
24 months   GMS-Nepal        NEPAL                          1            338    456  haz              
24 months   IRC              INDIA                          0            401    409  haz              
24 months   IRC              INDIA                          1              8    409  haz              
24 months   JiVitA-3         BANGLADESH                     0             35    291  haz              
24 months   JiVitA-3         BANGLADESH                     1            256    291  haz              
24 months   JiVitA-4         BANGLADESH                     0           1033   4005  haz              
24 months   JiVitA-4         BANGLADESH                     1           2972   4005  haz              
24 months   NIH-Crypto       BANGLADESH                     0            391    514  haz              
24 months   NIH-Crypto       BANGLADESH                     1            123    514  haz              
24 months   PROVIDE          BANGLADESH                     0            433    578  haz              
24 months   PROVIDE          BANGLADESH                     1            145    578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6  haz              


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
![](/tmp/efe4d0b2-b9c1-4998-9ece-d05a964a23c1/94848284-6ce0-4fec-8e13-a1899fccd173/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/efe4d0b2-b9c1-4998-9ece-d05a964a23c1/94848284-6ce0-4fec-8e13-a1899fccd173/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/efe4d0b2-b9c1-4998-9ece-d05a964a23c1/94848284-6ce0-4fec-8e13-a1899fccd173/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.6617929   -0.7086055   -0.6149802
Birth       COHORTS          INDIA                          1                    NA                -0.7163665   -0.7854151   -0.6473178
Birth       EE               PAKISTAN                       0                    NA                -1.8600562   -2.0991534   -1.6209589
Birth       EE               PAKISTAN                       1                    NA                -1.8477629   -2.1522983   -1.5432275
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.0904803   -1.2593949   -0.9215656
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.0942193   -1.1888577   -0.9995808
Birth       IRC              INDIA                          0                    NA                -0.3138845   -0.4765233   -0.1512457
Birth       IRC              INDIA                          1                    NA                 0.0100000   -1.0310607    1.0510607
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.1526561   -1.4761513   -0.8291608
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.3897039   -1.5523740   -1.2270337
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.4050081   -1.5255807   -1.2844355
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.5489782   -1.6035435   -1.4944129
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.8874609   -0.9671277   -0.8077941
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9773037   -1.1427487   -0.8118588
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8446131   -0.9346179   -0.7546084
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9868391   -1.1216407   -0.8520375
Birth       SAS-CompFeed     INDIA                          0                    NA                -1.3043049   -1.4241966   -1.1844132
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.4383865   -1.5399229   -1.3368500
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.4288687   -1.5726614   -1.2850760
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.9754167   -1.7693720   -0.1814613
6 months    COHORTS          INDIA                          0                    NA                -0.9997751   -1.0477117   -0.9518386
6 months    COHORTS          INDIA                          1                    NA                -1.1995710   -1.2647278   -1.1344142
6 months    EE               PAKISTAN                       0                    NA                -2.0412784   -2.1885557   -1.8940010
6 months    EE               PAKISTAN                       1                    NA                -2.1698493   -2.3779353   -1.9617632
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.2477259   -1.3981685   -1.0972834
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.3486957   -1.4424773   -1.2549142
6 months    IRC              INDIA                          0                    NA                -1.2276901   -1.3618868   -1.0934933
6 months    IRC              INDIA                          1                    NA                -1.5693750   -2.0379505   -1.1007995
6 months    JiVitA-3         BANGLADESH                     0                    NA                -1.2234202   -1.6126078   -0.8342327
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3025524   -1.4529610   -1.1521438
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.2707322   -1.3540410   -1.1874235
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.3736382   -1.4235339   -1.3237425
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.1544269   -1.2371523   -1.0717015
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.3603182   -1.4991665   -1.2214699
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0311289   -1.1166289   -0.9456288
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.2356807   -1.3829975   -1.0883638
6 months    SAS-CompFeed     INDIA                          0                    NA                -1.2403474   -1.3346382   -1.1460565
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.4941568   -1.5656568   -1.4226568
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -1.7709935   -2.0128068   -1.5291802
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.9575040   -2.0882691   -1.8267388
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5419450   -0.5932753   -0.4906147
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6514371   -0.9484955   -0.3543786
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.5640139   -2.6645275   -2.4635003
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.4300000   -3.0592261   -1.8007739
24 months   COHORTS          INDIA                          0                    NA                -2.1115124   -2.1651115   -2.0579133
24 months   COHORTS          INDIA                          1                    NA                -2.4994793   -2.5839655   -2.4149930
24 months   EE               PAKISTAN                       0                    NA                -2.7095613   -2.8994417   -2.5196809
24 months   EE               PAKISTAN                       1                    NA                -2.6490570   -2.8723690   -2.4257449
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.8064654   -1.9816802   -1.6312506
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.8951580   -1.9948752   -1.7954407
24 months   IRC              INDIA                          0                    NA                -1.7871446   -1.8820825   -1.6922068
24 months   IRC              INDIA                          1                    NA                -2.3818750   -2.8405973   -1.9231527
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.8726116   -2.2539004   -1.4913229
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.2049716   -2.3492647   -2.0606785
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.6774621   -1.7541324   -1.6007919
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.8039642   -1.8478058   -1.7601226
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.4038327   -1.5020223   -1.3056432
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.5558891   -1.7212562   -1.3905220
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5707515   -1.6671406   -1.4743624
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6937294   -1.8581881   -1.5292707


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
Birth       COHORTS          INDIA                          1                    0                 -0.0545736   -0.1376623    0.0285151
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.0122933   -0.3751137    0.3997003
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                 -0.0037390   -0.1965065    0.1890286
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.3238845   -0.7298036    1.3775727
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -0.2370478   -0.5918729    0.1177773
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -0.1439701   -0.2768618   -0.0110783
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -0.0898428   -0.2733461    0.0936604
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.1422260   -0.3041799    0.0197279
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -0.1340816   -0.2808769    0.0127137
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.4534520   -0.3534193    1.2603234
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.1997959   -0.2799320   -0.1196597
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.1285709   -0.3836757    0.1265339
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.1009698   -0.2778202    0.0758807
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.3416849   -0.8290982    0.1457284
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.0791322   -0.4525111    0.2942468
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.1029060   -0.1961533   -0.0096586
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.2058913   -0.3678397   -0.0439429
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.2045518   -0.3750219   -0.0340816
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.2538095   -0.3481756   -0.1594433
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.1865105   -0.4622921    0.0892712
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1094921   -0.4108574    0.1918732
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.1340139   -0.5031898    0.7712175
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.3879669   -0.4887335   -0.2872003
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                  0.0605043   -0.2337447    0.3547532
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0886926   -0.2902466    0.1128615
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.5947304   -1.0631739   -0.1262869
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.3323600   -0.7062734    0.0415534
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.1265021   -0.2122628   -0.0407414
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1520564   -0.3444395    0.0403268
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.1229779   -0.3116109    0.0656551


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.0144491   -0.0458562    0.0169579
Birth       EE               PAKISTAN                       0                    NA                -0.0013724   -0.1288466    0.1261018
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.0004640   -0.1480529    0.1471249
Birth       IRC              INDIA                          0                    NA                 0.0058433   -0.0208468    0.0325333
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.2158170   -0.5391620    0.1075281
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.1166372   -0.2235231   -0.0097513
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0220336   -0.0626541    0.0185868
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0404889   -0.0847692    0.0037913
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.1358795   -0.2679407   -0.0038183
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0099115   -0.0113762    0.0311993
6 months    COHORTS          INDIA                          0                    NA                -0.0460325   -0.0795539   -0.0125111
6 months    EE               PAKISTAN                       0                    NA                -0.0413676   -0.1257305    0.0429953
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0819016   -0.2182213    0.0544181
6 months    IRC              INDIA                          0                    NA                -0.0067162   -0.0197457    0.0063134
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0553147   -0.3972464    0.2866170
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0773980   -0.1467349   -0.0080612
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0442514   -0.0810524   -0.0074505
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0605626   -0.1057488   -0.0153764
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.2296114   -0.3155487   -0.1436741
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.1276907   -0.3541734    0.0987920
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0021124   -0.0089766    0.0047519
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0029133   -0.0131417    0.0189684
24 months   COHORTS          INDIA                          0                    NA                -0.1103212   -0.1476209   -0.0730214
24 months   EE               PAKISTAN                       0                    NA                 0.0325231   -0.0688881    0.1339344
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0653328   -0.2143853    0.0837196
24 months   IRC              INDIA                          0                    NA                -0.0116329   -0.0258108    0.0025451
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.2845705   -0.6194996    0.0503585
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0951296   -0.1613184   -0.0289408
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0374319   -0.0836738    0.0088101
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0316706   -0.0787370    0.0153957
