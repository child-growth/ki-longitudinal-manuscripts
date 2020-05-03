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
![](/tmp/9f12aee2-c646-4752-9fa1-51dfc30ca3ff/3af8b482-c363-4b46-88ba-279335d6d4a9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9f12aee2-c646-4752-9fa1-51dfc30ca3ff/3af8b482-c363-4b46-88ba-279335d6d4a9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9f12aee2-c646-4752-9fa1-51dfc30ca3ff/3af8b482-c363-4b46-88ba-279335d6d4a9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.9915022   -1.0396192   -0.9433851
Birth       COHORTS          INDIA                          1                    NA                -0.9403829   -1.0079910   -0.8727748
Birth       EE               PAKISTAN                       0                    NA                -0.3034816   -0.5305132   -0.0764500
Birth       EE               PAKISTAN                       1                    NA                -0.3916937   -0.7356053   -0.0477821
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.2075727   -1.4072303   -1.0079151
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.1100131   -1.2131260   -1.0069003
Birth       IRC              INDIA                          0                    NA                -0.9918991   -1.1804921   -0.8033061
Birth       IRC              INDIA                          1                    NA                -2.0600000   -3.2141159   -0.9058841
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.7037714   -1.0306383   -0.3769046
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.8695364   -0.9938429   -0.7452299
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.6897207   -0.8302553   -0.5491862
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.6908233   -0.7459605   -0.6356862
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -1.1994291   -1.2936869   -1.1051714
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -1.3717868   -1.5661149   -1.1774587
Birth       PROVIDE          BANGLADESH                     0                    NA                -1.2908257   -1.3822056   -1.1994458
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.3179154   -1.4603917   -1.1754392
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.6331755   -0.7465687   -0.5197823
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.6612605   -0.8794821   -0.4430390
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.5089262   -0.6640006   -0.3538519
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.3072917   -0.9616161    0.3470328
6 months    COHORTS          INDIA                          0                    NA                -0.6813861   -0.7273450   -0.6354272
6 months    COHORTS          INDIA                          1                    NA                -0.7484714   -0.8141472   -0.6827957
6 months    EE               PAKISTAN                       0                    NA                -0.7250284   -0.8673702   -0.5826865
6 months    EE               PAKISTAN                       1                    NA                -0.8603643   -1.0507584   -0.6699703
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.5289448   -0.7067065   -0.3511832
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.6204930   -0.7208906   -0.5200954
6 months    IRC              INDIA                          0                    NA                -0.5926333   -0.7305001   -0.4547666
6 months    IRC              INDIA                          1                    NA                -0.9137500   -1.5807163   -0.2467837
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.5149950   -0.8335392   -0.1964508
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.6201944   -0.7242709   -0.5161179
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.2966707   -0.3801430   -0.2131984
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.4020820   -0.4524989   -0.3516650
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0721591   -0.0174178    0.1617360
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0789733   -0.2594815    0.1015349
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.1873936   -0.2829343   -0.0918529
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.2336029   -0.4040658   -0.0631399
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.4484212   -0.5307327   -0.3661098
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.7057833   -0.8527199   -0.5588466
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.8523583   -1.1178596   -0.5868569
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.0764034   -1.2071387   -0.9456682
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0676569    0.0126018    0.1227121
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1603115   -0.1333725    0.4539955
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.5487673   -0.6500596   -0.4474751
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.3150000   -0.8468853    0.2168853
24 months   COHORTS          INDIA                          0                    NA                -0.5786669   -0.6238399   -0.5334939
24 months   COHORTS          INDIA                          1                    NA                -0.7797620   -0.8436516   -0.7158724
24 months   EE               PAKISTAN                       0                    NA                -0.9564422   -1.1524956   -0.7603887
24 months   EE               PAKISTAN                       1                    NA                -1.1493386   -1.4020529   -0.8966242
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.1376397   -1.3264879   -0.9487915
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1299666   -1.2348668   -1.0250663
24 months   IRC              INDIA                          0                    NA                -0.7384331   -0.8312559   -0.6456103
24 months   IRC              INDIA                          1                    NA                -1.1158333   -1.4387631   -0.7929036
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.1205038   -1.5443027   -0.6967048
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.3245075   -1.4664720   -1.1825431
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.1801404   -1.2510762   -1.1092046
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.2605291   -1.2999335   -1.2211246
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.5688734   -0.6792886   -0.4584582
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.7566354   -0.9480025   -0.5652682
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.8744432   -0.9693007   -0.7795856
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.9565782   -1.1371868   -0.7759696


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
Birth       COHORTS          INDIA                          1                    0                  0.0511193   -0.0317484    0.1339870
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                 -0.0882121   -0.5027967    0.3263724
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.0975596   -0.1273627    0.3224819
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                 -1.0681009   -2.2375241    0.1013224
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -0.1657650   -0.5382027    0.2066728
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -0.0011026   -0.1513228    0.1491176
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -0.1723577   -0.3891646    0.0444492
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.0270897   -0.1964885    0.1423090
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -0.0280850   -0.2799825    0.2238125
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.2016346   -0.4708151    0.8740843
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.0670853   -0.1468573    0.0126866
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.1353359   -0.3732256    0.1025538
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.0915482   -0.2959156    0.1128192
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.3211167   -1.0021830    0.3599496
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.1051994   -0.4184554    0.2080565
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.1054113   -0.2010608   -0.0097617
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1511324   -0.3548122    0.0525474
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.0462093   -0.2417452    0.1493266
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.2573620   -0.4212560   -0.0934681
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.2240452   -0.5204356    0.0723453
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0926546   -0.2062689    0.3915781
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.2337673   -0.3076771    0.7752117
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.2010951   -0.2785166   -0.1236735
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.1928964   -0.5111334    0.1253405
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                  0.0076731   -0.2087160    0.2240623
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.3774002   -0.7134057   -0.0413948
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.2040038   -0.6364611    0.2284536
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0803887   -0.1603789   -0.0003984
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1877620   -0.4080770    0.0325531
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0821351   -0.2859294    0.1216593


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                 0.0159155   -0.0163798    0.0482108
Birth       EE               PAKISTAN                       0                    NA                -0.0375184   -0.1707049    0.0956680
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0798378   -0.0944828    0.2541584
Birth       IRC              INDIA                          0                    NA                -0.0186840   -0.0514705    0.0141025
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.1494477   -0.4886878    0.1897923
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.0010133   -0.1203970    0.1183703
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0447222   -0.0929817    0.0035372
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0076330   -0.0537614    0.0384955
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.0239091   -0.2466022    0.1987840
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0044194   -0.0126632    0.0215020
6 months    COHORTS          INDIA                          0                    NA                -0.0346216   -0.0670754   -0.0021678
6 months    EE               PAKISTAN                       0                    NA                -0.0445516   -0.1221485    0.0330453
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0703102   -0.2271948    0.0865743
6 months    IRC              INDIA                          0                    NA                -0.0062964   -0.0238639    0.0112711
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0894960   -0.3702369    0.1912449
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0793944   -0.1503757   -0.0084130
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0423969   -0.0880451    0.0032514
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0116971   -0.0602124    0.0368182
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.2250209   -0.3713459   -0.0786958
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.1597996   -0.4055167    0.0859174
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012194   -0.0063579    0.0087967
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0050681   -0.0089078    0.0190440
24 months   COHORTS          INDIA                          0                    NA                -0.0733908   -0.1038919   -0.0428898
24 months   EE               PAKISTAN                       0                    NA                -0.0539471   -0.1548455    0.0469513
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0138009   -0.1501078    0.1777095
24 months   IRC              INDIA                          0                    NA                -0.0073819   -0.0171941    0.0024303
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.1784236   -0.5644758    0.2076287
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0620058   -0.1223373   -0.0016743
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0414768   -0.0928679    0.0099143
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0184239   -0.0669343    0.0300866
