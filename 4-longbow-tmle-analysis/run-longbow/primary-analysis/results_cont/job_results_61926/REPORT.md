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
![](/tmp/40e3a7da-3b96-4bc0-86f9-6f10dd267c1d/76f3ff16-0a76-45d2-9412-992f8b1e7289/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/40e3a7da-3b96-4bc0-86f9-6f10dd267c1d/76f3ff16-0a76-45d2-9412-992f8b1e7289/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/40e3a7da-3b96-4bc0-86f9-6f10dd267c1d/76f3ff16-0a76-45d2-9412-992f8b1e7289/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.6639537   -0.7097901   -0.6181174
Birth       COHORTS          INDIA                          1                    NA                -0.7266314   -0.7933261   -0.6599367
Birth       EE               PAKISTAN                       0                    NA                -1.8743840   -2.1131173   -1.6356508
Birth       EE               PAKISTAN                       1                    NA                -1.8917723   -2.2003106   -1.5832339
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.0913496   -1.2706036   -0.9120956
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.0917682   -1.1872304   -0.9963060
Birth       IRC              INDIA                          0                    NA                -0.3138845   -0.4765233   -0.1512457
Birth       IRC              INDIA                          1                    NA                 0.0100000   -1.0310607    1.0510607
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.1652857   -1.4950930   -0.8354784
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.3900866   -1.5529503   -1.2272229
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.3943263   -1.5169185   -1.2717340
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.5493350   -1.6037836   -1.4948864
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.8931210   -0.9742637   -0.8119783
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9503377   -1.1204488   -0.7802265
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8397106   -0.9299288   -0.7494924
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9889114   -1.1259437   -0.8518792
Birth       SAS-CompFeed     INDIA                          0                    NA                -1.3043049   -1.4241966   -1.1844132
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.4383865   -1.5399229   -1.3368500
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.4288687   -1.5726614   -1.2850760
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.9754167   -1.7693720   -0.1814613
6 months    COHORTS          INDIA                          0                    NA                -0.9946754   -1.0415186   -0.9478321
6 months    COHORTS          INDIA                          1                    NA                -1.1823761   -1.2488665   -1.1158858
6 months    EE               PAKISTAN                       0                    NA                -2.0475689   -2.1949474   -1.9001905
6 months    EE               PAKISTAN                       1                    NA                -2.1513206   -2.3581728   -1.9444683
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.2554359   -1.4061873   -1.1046845
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.3315525   -1.4268522   -1.2362528
6 months    IRC              INDIA                          0                    NA                -1.2276901   -1.3618868   -1.0934933
6 months    IRC              INDIA                          1                    NA                -1.5693750   -2.0379505   -1.1007995
6 months    JiVitA-3         BANGLADESH                     0                    NA                -1.2210180   -1.5785675   -0.8634685
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3060853   -1.4599929   -1.1521776
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.2685278   -1.3508608   -1.1861949
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.3743497   -1.4244472   -1.3242522
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.1591580   -1.2421431   -1.0761729
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.3447244   -1.4902701   -1.1991787
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0330585   -1.1177503   -0.9483667
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.2489883   -1.4133211   -1.0846555
6 months    SAS-CompFeed     INDIA                          0                    NA                -1.2403474   -1.3346382   -1.1460565
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.4941568   -1.5656568   -1.4226568
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -1.7640350   -1.9960507   -1.5320192
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.9507968   -2.0832614   -1.8183322
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5415055   -0.5928240   -0.4901870
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6846950   -0.9784878   -0.3909023
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.5640139   -2.6645275   -2.4635003
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.4300000   -3.0592261   -1.8007739
24 months   COHORTS          INDIA                          0                    NA                -2.1174157   -2.1734402   -2.0613912
24 months   COHORTS          INDIA                          1                    NA                -2.4853344   -2.5698862   -2.4007826
24 months   EE               PAKISTAN                       0                    NA                -2.7001513   -2.8888330   -2.5114697
24 months   EE               PAKISTAN                       1                    NA                -2.6590963   -2.8845509   -2.4336418
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.7788957   -1.9508669   -1.6069245
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.8979435   -1.9977811   -1.7981059
24 months   IRC              INDIA                          0                    NA                -1.7871446   -1.8820825   -1.6922068
24 months   IRC              INDIA                          1                    NA                -2.3818750   -2.8405973   -1.9231527
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.8561603   -2.2343928   -1.4779278
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.2035942   -2.3478263   -2.0593621
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.6755670   -1.7527048   -1.5984292
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.8029105   -1.8468122   -1.7590089
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.4052915   -1.5030049   -1.3075780
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.5774962   -1.7427685   -1.4122240
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5664245   -1.6628051   -1.4700439
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6987480   -1.8640174   -1.5334786


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
Birth       COHORTS          INDIA                          1                    0                 -0.0626777   -0.1432966    0.0179412
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                 -0.0173882   -0.4087014    0.3739249
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                 -0.0004186   -0.2035605    0.2027232
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.3238845   -0.7298036    1.3775727
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -0.2248009   -0.5798028    0.1302010
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -0.1550087   -0.2899928   -0.0200247
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -0.0572167   -0.2458845    0.1314512
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.1492009   -0.3129957    0.0145939
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -0.1340816   -0.2808769    0.0127137
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.4534520   -0.3534193    1.2603234
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.1877008   -0.2681826   -0.1072190
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.1037516   -0.3577957    0.1502925
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.0761166   -0.2547057    0.1024725
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.3416849   -0.8290982    0.1457284
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.0850672   -0.4313005    0.2611660
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.1058219   -0.1983592   -0.0132846
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1855664   -0.3532786   -0.0178541
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.2159298   -0.4009060   -0.0309535
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.2538095   -0.3481756   -0.1594433
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.1867618   -0.4543450    0.0808213
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1431895   -0.4413422    0.1549631
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.1340139   -0.5031898    0.7712175
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.3679187   -0.4699804   -0.2658570
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                  0.0410550   -0.2520661    0.3341761
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.1190478   -0.3180058    0.0799102
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.5947304   -1.0631739   -0.1262869
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.3474339   -0.7167554    0.0218876
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.1273436   -0.2137689   -0.0409182
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1722048   -0.3641141    0.0197045
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.1323235   -0.3225384    0.0578915


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.0122883   -0.0424834    0.0179068
Birth       EE               PAKISTAN                       0                    NA                 0.0129555   -0.1134229    0.1393338
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0004053   -0.1571782    0.1579888
Birth       IRC              INDIA                          0                    NA                 0.0058433   -0.0208468    0.0325333
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.2031874   -0.5283345    0.1219598
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.1273190   -0.2363436   -0.0182944
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0163735   -0.0582498    0.0255028
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0453915   -0.0898366   -0.0009464
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.1358795   -0.2679407   -0.0038183
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0099115   -0.0113762    0.0311993
6 months    COHORTS          INDIA                          0                    NA                -0.0511323   -0.0833514   -0.0189131
6 months    EE               PAKISTAN                       0                    NA                -0.0350771   -0.1181883    0.0480342
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0741916   -0.2122405    0.0638572
6 months    IRC              INDIA                          0                    NA                -0.0067162   -0.0197457    0.0063134
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0577169   -0.3680568    0.2526230
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0796024   -0.1480977   -0.0111071
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0395203   -0.0764660   -0.0025746
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0586330   -0.1030436   -0.0142223
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.2296114   -0.3155487   -0.1436741
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.1346492   -0.3514893    0.0821908
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0025518   -0.0093934    0.0042898
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0029133   -0.0131417    0.0189684
24 months   COHORTS          INDIA                          0                    NA                -0.1044178   -0.1446169   -0.0642188
24 months   EE               PAKISTAN                       0                    NA                 0.0231132   -0.0763615    0.1225878
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0929025   -0.2393397    0.0535346
24 months   IRC              INDIA                          0                    NA                -0.0116329   -0.0258108    0.0025451
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.3010218   -0.6318627    0.0298191
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0970248   -0.1637377   -0.0303119
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0359731   -0.0816249    0.0096786
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0359976   -0.0834340    0.0114388
