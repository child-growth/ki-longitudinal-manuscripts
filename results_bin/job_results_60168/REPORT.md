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

agecat      studyid          country                        hdlvry    sstunted   n_cell      n
----------  ---------------  -----------------------------  -------  ---------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0                0       88     92
Birth       CMC-V-BCS-2002   INDIA                          0                1        4     92
Birth       CMC-V-BCS-2002   INDIA                          1                0        0     92
Birth       CMC-V-BCS-2002   INDIA                          1                1        0     92
Birth       COHORTS          INDIA                          0                0     2855   4694
Birth       COHORTS          INDIA                          0                1       83   4694
Birth       COHORTS          INDIA                          1                0     1702   4694
Birth       COHORTS          INDIA                          1                1       54   4694
Birth       EE               PAKISTAN                       0                0      130    238
Birth       EE               PAKISTAN                       0                1       31    238
Birth       EE               PAKISTAN                       1                0       60    238
Birth       EE               PAKISTAN                       1                1       17    238
Birth       GMS-Nepal        NEPAL                          0                0      150    646
Birth       GMS-Nepal        NEPAL                          0                1        7    646
Birth       GMS-Nepal        NEPAL                          1                0      469    646
Birth       GMS-Nepal        NEPAL                          1                1       20    646
Birth       IRC              INDIA                          0                0      365    388
Birth       IRC              INDIA                          0                1       16    388
Birth       IRC              INDIA                          1                0        7    388
Birth       IRC              INDIA                          1                1        0    388
Birth       JiVitA-3         BANGLADESH                     0                0       30    334
Birth       JiVitA-3         BANGLADESH                     0                1        0    334
Birth       JiVitA-3         BANGLADESH                     1                0      284    334
Birth       JiVitA-3         BANGLADESH                     1                1       20    334
Birth       JiVitA-4         BANGLADESH                     0                0      520   2808
Birth       JiVitA-4         BANGLADESH                     0                1       34   2808
Birth       JiVitA-4         BANGLADESH                     1                0     2056   2808
Birth       JiVitA-4         BANGLADESH                     1                1      198   2808
Birth       NIH-Crypto       BANGLADESH                     0                0      558    732
Birth       NIH-Crypto       BANGLADESH                     0                1        9    732
Birth       NIH-Crypto       BANGLADESH                     1                0      164    732
Birth       NIH-Crypto       BANGLADESH                     1                1        1    732
Birth       PROVIDE          BANGLADESH                     0                0      389    539
Birth       PROVIDE          BANGLADESH                     0                1        2    539
Birth       PROVIDE          BANGLADESH                     1                0      146    539
Birth       PROVIDE          BANGLADESH                     1                1        2    539
Birth       SAS-CompFeed     INDIA                          0                0      117   1085
Birth       SAS-CompFeed     INDIA                          0                1        7   1085
Birth       SAS-CompFeed     INDIA                          1                0      894   1085
Birth       SAS-CompFeed     INDIA                          1                1       67   1085
6 months    CMC-V-BCS-2002   INDIA                          0                0      318    366
6 months    CMC-V-BCS-2002   INDIA                          0                1       40    366
6 months    CMC-V-BCS-2002   INDIA                          1                0        7    366
6 months    CMC-V-BCS-2002   INDIA                          1                1        1    366
6 months    COHORTS          INDIA                          0                0     2788   4699
6 months    COHORTS          INDIA                          0                1      112   4699
6 months    COHORTS          INDIA                          1                0     1680   4699
6 months    COHORTS          INDIA                          1                1      119   4699
6 months    EE               PAKISTAN                       0                0      198    371
6 months    EE               PAKISTAN                       0                1       52    371
6 months    EE               PAKISTAN                       1                0       93    371
6 months    EE               PAKISTAN                       1                1       28    371
6 months    GMS-Nepal        NEPAL                          0                0      127    528
6 months    GMS-Nepal        NEPAL                          0                1        2    528
6 months    GMS-Nepal        NEPAL                          1                0      383    528
6 months    GMS-Nepal        NEPAL                          1                1       16    528
6 months    IRC              INDIA                          0                0      370    407
6 months    IRC              INDIA                          0                1       29    407
6 months    IRC              INDIA                          1                0        8    407
6 months    IRC              INDIA                          1                1        0    407
6 months    JiVitA-3         BANGLADESH                     0                0       37    332
6 months    JiVitA-3         BANGLADESH                     0                1        2    332
6 months    JiVitA-3         BANGLADESH                     1                0      283    332
6 months    JiVitA-3         BANGLADESH                     1                1       10    332
6 months    JiVitA-4         BANGLADESH                     0                0     1028   4038
6 months    JiVitA-4         BANGLADESH                     0                1       53   4038
6 months    JiVitA-4         BANGLADESH                     1                0     2790   4038
6 months    JiVitA-4         BANGLADESH                     1                1      167   4038
6 months    NIH-Crypto       BANGLADESH                     0                0      535    715
6 months    NIH-Crypto       BANGLADESH                     0                1       19    715
6 months    NIH-Crypto       BANGLADESH                     1                0      157    715
6 months    NIH-Crypto       BANGLADESH                     1                1        4    715
6 months    PROVIDE          BANGLADESH                     0                0      443    604
6 months    PROVIDE          BANGLADESH                     0                1        7    604
6 months    PROVIDE          BANGLADESH                     1                0      147    604
6 months    PROVIDE          BANGLADESH                     1                1        7    604
6 months    SAS-CompFeed     INDIA                          0                0      141   1091
6 months    SAS-CompFeed     INDIA                          0                1        6   1091
6 months    SAS-CompFeed     INDIA                          1                0      839   1091
6 months    SAS-CompFeed     INDIA                          1                1      105   1091
6 months    SAS-FoodSuppl    INDIA                          0                0       69    380
6 months    SAS-FoodSuppl    INDIA                          0                1        7    380
6 months    SAS-FoodSuppl    INDIA                          1                0      257    380
6 months    SAS-FoodSuppl    INDIA                          1                1       47    380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1873   1921
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       16   1921
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       30   1921
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        2   1921
24 months   CMC-V-BCS-2002   INDIA                          0                0      238    368
24 months   CMC-V-BCS-2002   INDIA                          0                1      122    368
24 months   CMC-V-BCS-2002   INDIA                          1                0        6    368
24 months   CMC-V-BCS-2002   INDIA                          1                1        2    368
24 months   COHORTS          INDIA                          0                0     1819   3556
24 months   COHORTS          INDIA                          0                1      414   3556
24 months   COHORTS          INDIA                          1                0      816   3556
24 months   COHORTS          INDIA                          1                1      507   3556
24 months   EE               PAKISTAN                       0                0       70    166
24 months   EE               PAKISTAN                       0                1       42    166
24 months   EE               PAKISTAN                       1                0       37    166
24 months   EE               PAKISTAN                       1                1       17    166
24 months   GMS-Nepal        NEPAL                          0                0      105    456
24 months   GMS-Nepal        NEPAL                          0                1       13    456
24 months   GMS-Nepal        NEPAL                          1                0      305    456
24 months   GMS-Nepal        NEPAL                          1                1       33    456
24 months   IRC              INDIA                          0                0      362    409
24 months   IRC              INDIA                          0                1       39    409
24 months   IRC              INDIA                          1                0        6    409
24 months   IRC              INDIA                          1                1        2    409
24 months   JiVitA-3         BANGLADESH                     0                0       31    291
24 months   JiVitA-3         BANGLADESH                     0                1        4    291
24 months   JiVitA-3         BANGLADESH                     1                0      204    291
24 months   JiVitA-3         BANGLADESH                     1                1       52    291
24 months   JiVitA-4         BANGLADESH                     0                0      971   4005
24 months   JiVitA-4         BANGLADESH                     0                1       62   4005
24 months   JiVitA-4         BANGLADESH                     1                0     2659   4005
24 months   JiVitA-4         BANGLADESH                     1                1      313   4005
24 months   NIH-Crypto       BANGLADESH                     0                0      364    514
24 months   NIH-Crypto       BANGLADESH                     0                1       27    514
24 months   NIH-Crypto       BANGLADESH                     1                0      114    514
24 months   NIH-Crypto       BANGLADESH                     1                1        9    514
24 months   PROVIDE          BANGLADESH                     0                0      397    578
24 months   PROVIDE          BANGLADESH                     0                1       36    578
24 months   PROVIDE          BANGLADESH                     1                0      129    578
24 months   PROVIDE          BANGLADESH                     1                1       16    578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0      6


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
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
![](/tmp/1077f7de-2406-4ff5-8748-ca8b51a13a98/0bf328c3-8154-4821-94ff-1703eb36e10a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1077f7de-2406-4ff5-8748-ca8b51a13a98/0bf328c3-8154-4821-94ff-1703eb36e10a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1077f7de-2406-4ff5-8748-ca8b51a13a98/0bf328c3-8154-4821-94ff-1703eb36e10a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1077f7de-2406-4ff5-8748-ca8b51a13a98/0bf328c3-8154-4821-94ff-1703eb36e10a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         INDIA        0                    NA                0.0315212   0.0242327   0.0388097
Birth       COHORTS         INDIA        1                    NA                0.0267431   0.0190787   0.0344076
Birth       EE              PAKISTAN     0                    NA                0.1926337   0.1314733   0.2537940
Birth       EE              PAKISTAN     1                    NA                0.2226902   0.1286909   0.3166895
Birth       GMS-Nepal       NEPAL        0                    NA                0.0445860   0.0122765   0.0768954
Birth       GMS-Nepal       NEPAL        1                    NA                0.0408998   0.0233318   0.0584678
Birth       JiVitA-4        BANGLADESH   0                    NA                0.0646932   0.0388907   0.0904958
Birth       JiVitA-4        BANGLADESH   1                    NA                0.0866350   0.0725747   0.1006953
Birth       SAS-CompFeed    INDIA        0                    NA                0.0564516   0.0274585   0.0854447
Birth       SAS-CompFeed    INDIA        1                    NA                0.0697190   0.0451096   0.0943285
6 months    COHORTS         INDIA        0                    NA                0.0501484   0.0404094   0.0598874
6 months    COHORTS         INDIA        1                    NA                0.0544874   0.0434148   0.0655600
6 months    EE              PAKISTAN     0                    NA                0.2073146   0.1567648   0.2578644
6 months    EE              PAKISTAN     1                    NA                0.2317895   0.1549856   0.3085934
6 months    JiVitA-4        BANGLADESH   0                    NA                0.0611576   0.0449229   0.0773923
6 months    JiVitA-4        BANGLADESH   1                    NA                0.0534393   0.0429769   0.0639017
6 months    PROVIDE         BANGLADESH   0                    NA                0.0155556   0.0041126   0.0269986
6 months    PROVIDE         BANGLADESH   1                    NA                0.0454545   0.0125289   0.0783802
6 months    SAS-CompFeed    INDIA        0                    NA                0.0408163   0.0221750   0.0594577
6 months    SAS-CompFeed    INDIA        1                    NA                0.1112288   0.0906768   0.1317809
6 months    SAS-FoodSuppl   INDIA        0                    NA                0.0921053   0.0270064   0.1572041
6 months    SAS-FoodSuppl   INDIA        1                    NA                0.1546053   0.1139117   0.1952988
24 months   COHORTS         INDIA        0                    NA                0.2332196   0.2135645   0.2528748
24 months   COHORTS         INDIA        1                    NA                0.2980029   0.2723195   0.3236864
24 months   EE              PAKISTAN     0                    NA                0.3810330   0.2904521   0.4716139
24 months   EE              PAKISTAN     1                    NA                0.3288322   0.2070285   0.4506359
24 months   GMS-Nepal       NEPAL        0                    NA                0.1048984   0.0474992   0.1622976
24 months   GMS-Nepal       NEPAL        1                    NA                0.0973723   0.0656238   0.1291208
24 months   JiVitA-4        BANGLADESH   0                    NA                0.0706679   0.0499086   0.0914271
24 months   JiVitA-4        BANGLADESH   1                    NA                0.1000811   0.0878273   0.1123348
24 months   NIH-Crypto      BANGLADESH   0                    NA                0.0690537   0.0438979   0.0942095
24 months   NIH-Crypto      BANGLADESH   1                    NA                0.0731707   0.0271040   0.1192374
24 months   PROVIDE         BANGLADESH   0                    NA                0.0822702   0.0562252   0.1083152
24 months   PROVIDE         BANGLADESH   1                    NA                0.1043892   0.0527971   0.1559812


### Parameter: E(Y)


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         INDIA        NA                   NA                0.0291862   0.0243703   0.0340021
Birth       EE              PAKISTAN     NA                   NA                0.2016807   0.1505956   0.2527658
Birth       GMS-Nepal       NEPAL        NA                   NA                0.0417957   0.0263516   0.0572398
Birth       JiVitA-4        BANGLADESH   NA                   NA                0.0826211   0.0705468   0.0946953
Birth       SAS-CompFeed    INDIA        NA                   NA                0.0682028   0.0450759   0.0913296
6 months    COHORTS         INDIA        NA                   NA                0.0491594   0.0429771   0.0553417
6 months    EE              PAKISTAN     NA                   NA                0.2156334   0.1737285   0.2575383
6 months    JiVitA-4        BANGLADESH   NA                   NA                0.0544824   0.0460698   0.0628950
6 months    PROVIDE         BANGLADESH   NA                   NA                0.0231788   0.0111688   0.0351888
6 months    SAS-CompFeed    INDIA        NA                   NA                0.1017415   0.0806841   0.1227990
6 months    SAS-FoodSuppl   INDIA        NA                   NA                0.1421053   0.1069532   0.1772573
24 months   COHORTS         INDIA        NA                   NA                0.2589989   0.2445981   0.2733997
24 months   EE              PAKISTAN     NA                   NA                0.3554217   0.2823892   0.4284541
24 months   GMS-Nepal       NEPAL        NA                   NA                0.1008772   0.0732047   0.1285497
24 months   JiVitA-4        BANGLADESH   NA                   NA                0.0936330   0.0833093   0.1039566
24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236
24 months   PROVIDE         BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122


### Parameter: RR


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       COHORTS         INDIA        1                    0                 0.8484183   0.5871659   1.225912
Birth       EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
Birth       EE              PAKISTAN     1                    0                 1.1560296   0.6813182   1.961498
Birth       GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal       NEPAL        1                    0                 0.9173240   0.3950715   2.129952
Birth       JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4        BANGLADESH   1                    0                 1.3391665   0.8643402   2.074839
Birth       SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed    INDIA        1                    0                 1.2350230   0.7402466   2.060505
6 months    COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    COHORTS         INDIA        1                    0                 1.0865228   0.8211392   1.437676
6 months    EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6 months    EE              PAKISTAN     1                    0                 1.1180569   0.7406482   1.687780
6 months    JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4        BANGLADESH   1                    0                 0.8737968   0.6350591   1.202283
6 months    PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    PROVIDE         BANGLADESH   1                    0                 2.9220779   1.0407048   8.204574
6 months    SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed    INDIA        1                    0                 2.7251059   1.6370779   4.536255
6 months    SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl   INDIA        1                    0                 1.6785714   0.7895724   3.568516
24 months   COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   COHORTS         INDIA        1                    0                 1.2777781   1.1355184   1.437860
24 months   EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
24 months   EE              PAKISTAN     1                    0                 0.8630019   0.5549302   1.342101
24 months   GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal       NEPAL        1                    0                 0.9282536   0.4914192   1.753401
24 months   JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4        BANGLADESH   1                    0                 1.4162175   1.0348023   1.938217
24 months   NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto      BANGLADESH   1                    0                 1.0596206   0.5119815   2.193040
24 months   PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   PROVIDE         BANGLADESH   1                    0                 1.2688580   0.7053060   2.282698


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS         INDIA        0                    NA                -0.0023350   -0.0074096   0.0027396
Birth       EE              PAKISTAN     0                    NA                 0.0090470   -0.0270886   0.0451827
Birth       GMS-Nepal       NEPAL        0                    NA                -0.0027903   -0.0306294   0.0250488
Birth       JiVitA-4        BANGLADESH   0                    NA                 0.0179278   -0.0058727   0.0417284
Birth       SAS-CompFeed    INDIA        0                    NA                 0.0117512   -0.0152182   0.0387205
6 months    COHORTS         INDIA        0                    NA                -0.0009890   -0.0084424   0.0064643
6 months    EE              PAKISTAN     0                    NA                 0.0083188   -0.0214572   0.0380948
6 months    JiVitA-4        BANGLADESH   0                    NA                -0.0066752   -0.0210587   0.0077083
6 months    PROVIDE         BANGLADESH   0                    NA                 0.0076233   -0.0013249   0.0165714
6 months    SAS-CompFeed    INDIA        0                    NA                 0.0609252    0.0357423   0.0861081
6 months    SAS-FoodSuppl   INDIA        0                    NA                 0.0500000   -0.0114686   0.1114686
24 months   COHORTS         INDIA        0                    NA                 0.0257792    0.0114135   0.0401449
24 months   EE              PAKISTAN     0                    NA                -0.0256113   -0.0774225   0.0261999
24 months   GMS-Nepal       NEPAL        0                    NA                -0.0040212   -0.0528474   0.0448050
24 months   JiVitA-4        BANGLADESH   0                    NA                 0.0229651    0.0043225   0.0416077
24 months   NIH-Crypto      BANGLADESH   0                    NA                 0.0009852   -0.0115760   0.0135464
24 months   PROVIDE         BANGLADESH   0                    NA                 0.0076952   -0.0068084   0.0221988


### Parameter: PAF


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS         INDIA        0                    NA                -0.0800031   -0.2679146   0.0800589
Birth       EE              PAKISTAN     0                    NA                 0.0448581   -0.1520070   0.2080812
Birth       GMS-Nepal       NEPAL        0                    NA                -0.0667610   -0.9909847   0.4284340
Birth       JiVitA-4        BANGLADESH   0                    NA                 0.2169887   -0.1300286   0.4574415
Birth       SAS-CompFeed    INDIA        0                    NA                 0.1722973   -0.3094683   0.4768169
6 months    COHORTS         INDIA        0                    NA                -0.0201191   -0.1835722   0.1207609
6 months    EE              PAKISTAN     0                    NA                 0.0385785   -0.1098486   0.1671555
6 months    JiVitA-4        BANGLADESH   0                    NA                -0.1225199   -0.4223974   0.1141358
6 months    PROVIDE         BANGLADESH   0                    NA                 0.3288889   -0.1267356   0.6002699
6 months    SAS-CompFeed    INDIA        0                    NA                 0.5988233    0.3630717   0.7473142
6 months    SAS-FoodSuppl   INDIA        0                    NA                 0.3518519   -0.2498734   0.6638891
24 months   COHORTS         INDIA        0                    NA                 0.0995342    0.0424206   0.1532412
24 months   EE              PAKISTAN     0                    NA                -0.0720590   -0.2286509   0.0645753
24 months   GMS-Nepal       NEPAL        0                    NA                -0.0398624   -0.6555032   0.3468368
24 months   JiVitA-4        BANGLADESH   0                    NA                 0.2452673    0.0171615   0.4204323
24 months   NIH-Crypto      BANGLADESH   0                    NA                 0.0140665   -0.1825711   0.1780073
24 months   PROVIDE         BANGLADESH   0                    NA                 0.0855354   -0.0895671   0.2324976
