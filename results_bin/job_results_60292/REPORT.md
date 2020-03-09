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

agecat      studyid          country                        hdlvry    wasted   n_cell      n
----------  ---------------  -----------------------------  -------  -------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0              0       75     86
Birth       CMC-V-BCS-2002   INDIA                          0              1       11     86
Birth       CMC-V-BCS-2002   INDIA                          1              0        0     86
Birth       CMC-V-BCS-2002   INDIA                          1              1        0     86
Birth       COHORTS          INDIA                          0              0     2284   4389
Birth       COHORTS          INDIA                          0              1      479   4389
Birth       COHORTS          INDIA                          1              0     1344   4389
Birth       COHORTS          INDIA                          1              1      282   4389
Birth       EE               PAKISTAN                       0              0      106    175
Birth       EE               PAKISTAN                       0              1       14    175
Birth       EE               PAKISTAN                       1              0       47    175
Birth       EE               PAKISTAN                       1              1        8    175
Birth       GMS-Nepal        NEPAL                          0              0      109    596
Birth       GMS-Nepal        NEPAL                          0              1       34    596
Birth       GMS-Nepal        NEPAL                          1              0      364    596
Birth       GMS-Nepal        NEPAL                          1              1       89    596
Birth       IRC              INDIA                          0              0      249    343
Birth       IRC              INDIA                          0              1       88    343
Birth       IRC              INDIA                          1              0        2    343
Birth       IRC              INDIA                          1              1        4    343
Birth       JiVitA-3         BANGLADESH                     0              0       25    292
Birth       JiVitA-3         BANGLADESH                     0              1        2    292
Birth       JiVitA-3         BANGLADESH                     1              0      232    292
Birth       JiVitA-3         BANGLADESH                     1              1       33    292
Birth       JiVitA-4         BANGLADESH                     0              0      445   2384
Birth       JiVitA-4         BANGLADESH                     0              1       55   2384
Birth       JiVitA-4         BANGLADESH                     1              0     1700   2384
Birth       JiVitA-4         BANGLADESH                     1              1      184   2384
Birth       NIH-Crypto       BANGLADESH                     0              0      426    707
Birth       NIH-Crypto       BANGLADESH                     0              1      122    707
Birth       NIH-Crypto       BANGLADESH                     1              0      109    707
Birth       NIH-Crypto       BANGLADESH                     1              1       50    707
Birth       PROVIDE          BANGLADESH                     0              0      303    532
Birth       PROVIDE          BANGLADESH                     0              1       84    532
Birth       PROVIDE          BANGLADESH                     1              0      112    532
Birth       PROVIDE          BANGLADESH                     1              1       33    532
Birth       SAS-CompFeed     INDIA                          0              0       98    957
Birth       SAS-CompFeed     INDIA                          0              1       10    957
Birth       SAS-CompFeed     INDIA                          1              0      755    957
Birth       SAS-CompFeed     INDIA                          1              1       94    957
6 months    CMC-V-BCS-2002   INDIA                          0              0      312    365
6 months    CMC-V-BCS-2002   INDIA                          0              1       45    365
6 months    CMC-V-BCS-2002   INDIA                          1              0        7    365
6 months    CMC-V-BCS-2002   INDIA                          1              1        1    365
6 months    COHORTS          INDIA                          0              0     2571   4694
6 months    COHORTS          INDIA                          0              1      325   4694
6 months    COHORTS          INDIA                          1              0     1501   4694
6 months    COHORTS          INDIA                          1              1      297   4694
6 months    EE               PAKISTAN                       0              0      222    373
6 months    EE               PAKISTAN                       0              1       30    373
6 months    EE               PAKISTAN                       1              0      105    373
6 months    EE               PAKISTAN                       1              1       16    373
6 months    GMS-Nepal        NEPAL                          0              0      118    528
6 months    GMS-Nepal        NEPAL                          0              1       11    528
6 months    GMS-Nepal        NEPAL                          1              0      362    528
6 months    GMS-Nepal        NEPAL                          1              1       37    528
6 months    IRC              INDIA                          0              0      347    408
6 months    IRC              INDIA                          0              1       53    408
6 months    IRC              INDIA                          1              0        7    408
6 months    IRC              INDIA                          1              1        1    408
6 months    JiVitA-3         BANGLADESH                     0              0       37    334
6 months    JiVitA-3         BANGLADESH                     0              1        2    334
6 months    JiVitA-3         BANGLADESH                     1              0      274    334
6 months    JiVitA-3         BANGLADESH                     1              1       21    334
6 months    JiVitA-4         BANGLADESH                     0              0     1033   4042
6 months    JiVitA-4         BANGLADESH                     0              1       49   4042
6 months    JiVitA-4         BANGLADESH                     1              0     2792   4042
6 months    JiVitA-4         BANGLADESH                     1              1      168   4042
6 months    NIH-Crypto       BANGLADESH                     0              0      538    715
6 months    NIH-Crypto       BANGLADESH                     0              1       16    715
6 months    NIH-Crypto       BANGLADESH                     1              0      156    715
6 months    NIH-Crypto       BANGLADESH                     1              1        5    715
6 months    PROVIDE          BANGLADESH                     0              0      428    603
6 months    PROVIDE          BANGLADESH                     0              1       22    603
6 months    PROVIDE          BANGLADESH                     1              0      150    603
6 months    PROVIDE          BANGLADESH                     1              1        3    603
6 months    SAS-CompFeed     INDIA                          0              0      135   1088
6 months    SAS-CompFeed     INDIA                          0              1       12   1088
6 months    SAS-CompFeed     INDIA                          1              0      821   1088
6 months    SAS-CompFeed     INDIA                          1              1      120   1088
6 months    SAS-FoodSuppl    INDIA                          0              0       68    380
6 months    SAS-FoodSuppl    INDIA                          0              1        8    380
6 months    SAS-FoodSuppl    INDIA                          1              0      243    380
6 months    SAS-FoodSuppl    INDIA                          1              1       61    380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0     1807   1920
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1       81   1920
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       30   1920
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        2   1920
24 months   CMC-V-BCS-2002   INDIA                          0              0      339    369
24 months   CMC-V-BCS-2002   INDIA                          0              1       22    369
24 months   CMC-V-BCS-2002   INDIA                          1              0        8    369
24 months   CMC-V-BCS-2002   INDIA                          1              1        0    369
24 months   COHORTS          INDIA                          0              0     2075   3533
24 months   COHORTS          INDIA                          0              1      139   3533
24 months   COHORTS          INDIA                          1              0     1125   3533
24 months   COHORTS          INDIA                          1              1      194   3533
24 months   EE               PAKISTAN                       0              0       90    167
24 months   EE               PAKISTAN                       0              1       22    167
24 months   EE               PAKISTAN                       1              0       47    167
24 months   EE               PAKISTAN                       1              1        8    167
24 months   GMS-Nepal        NEPAL                          0              0       93    455
24 months   GMS-Nepal        NEPAL                          0              1       25    455
24 months   GMS-Nepal        NEPAL                          1              0      278    455
24 months   GMS-Nepal        NEPAL                          1              1       59    455
24 months   IRC              INDIA                          0              0      370    409
24 months   IRC              INDIA                          0              1       31    409
24 months   IRC              INDIA                          1              0        8    409
24 months   IRC              INDIA                          1              1        0    409
24 months   JiVitA-3         BANGLADESH                     0              0       27    289
24 months   JiVitA-3         BANGLADESH                     0              1        7    289
24 months   JiVitA-3         BANGLADESH                     1              0      199    289
24 months   JiVitA-3         BANGLADESH                     1              1       56    289
24 months   JiVitA-4         BANGLADESH                     0              0      823   3993
24 months   JiVitA-4         BANGLADESH                     0              1      209   3993
24 months   JiVitA-4         BANGLADESH                     1              0     2363   3993
24 months   JiVitA-4         BANGLADESH                     1              1      598   3993
24 months   NIH-Crypto       BANGLADESH                     0              0      360    514
24 months   NIH-Crypto       BANGLADESH                     0              1       31    514
24 months   NIH-Crypto       BANGLADESH                     1              0      109    514
24 months   NIH-Crypto       BANGLADESH                     1              1       14    514
24 months   PROVIDE          BANGLADESH                     0              0      389    579
24 months   PROVIDE          BANGLADESH                     0              1       44    579
24 months   PROVIDE          BANGLADESH                     1              0      128    579
24 months   PROVIDE          BANGLADESH                     1              1       18    579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0        6      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1        0      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        0      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0      6


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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
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
![](/tmp/ca8e4ed3-a7ab-4fbf-9256-09534a5bad15/45bf18a5-b325-4550-bcdb-1a1b65b3aeb0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ca8e4ed3-a7ab-4fbf-9256-09534a5bad15/45bf18a5-b325-4550-bcdb-1a1b65b3aeb0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ca8e4ed3-a7ab-4fbf-9256-09534a5bad15/45bf18a5-b325-4550-bcdb-1a1b65b3aeb0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ca8e4ed3-a7ab-4fbf-9256-09534a5bad15/45bf18a5-b325-4550-bcdb-1a1b65b3aeb0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         INDIA        0                    NA                0.1767910   0.1611172   0.1924649
Birth       COHORTS         INDIA        1                    NA                0.1708485   0.1487573   0.1929398
Birth       EE              PAKISTAN     0                    NA                0.1166667   0.0590647   0.1742687
Birth       EE              PAKISTAN     1                    NA                0.1454545   0.0520125   0.2388966
Birth       GMS-Nepal       NEPAL        0                    NA                0.2286535   0.1561952   0.3011118
Birth       GMS-Nepal       NEPAL        1                    NA                0.2018230   0.1643422   0.2393037
Birth       JiVitA-4        BANGLADESH   0                    NA                0.1094195   0.0694488   0.1493903
Birth       JiVitA-4        BANGLADESH   1                    NA                0.0977588   0.0811117   0.1144059
Birth       NIH-Crypto      BANGLADESH   0                    NA                0.2235049   0.1886012   0.2584087
Birth       NIH-Crypto      BANGLADESH   1                    NA                0.3217856   0.2495368   0.3940343
Birth       PROVIDE         BANGLADESH   0                    NA                0.2174787   0.1764608   0.2584965
Birth       PROVIDE         BANGLADESH   1                    NA                0.2110235   0.1438683   0.2781788
Birth       SAS-CompFeed    INDIA        0                    NA                0.1056888   0.0648967   0.1464809
Birth       SAS-CompFeed    INDIA        1                    NA                0.1112984   0.0727912   0.1498055
6 months    COHORTS         INDIA        0                    NA                0.1232985   0.1096933   0.1369037
6 months    COHORTS         INDIA        1                    NA                0.1471902   0.1292400   0.1651403
6 months    EE              PAKISTAN     0                    NA                0.1180358   0.0780243   0.1580473
6 months    EE              PAKISTAN     1                    NA                0.1298491   0.0689401   0.1907581
6 months    GMS-Nepal       NEPAL        0                    NA                0.0814169   0.0339137   0.1289202
6 months    GMS-Nepal       NEPAL        1                    NA                0.0937408   0.0648997   0.1225820
6 months    JiVitA-4        BANGLADESH   0                    NA                0.0472058   0.0275985   0.0668131
6 months    JiVitA-4        BANGLADESH   1                    NA                0.0543774   0.0431653   0.0655895
6 months    NIH-Crypto      BANGLADESH   0                    NA                0.0288809   0.0149256   0.0428361
6 months    NIH-Crypto      BANGLADESH   1                    NA                0.0310559   0.0042420   0.0578698
6 months    SAS-CompFeed    INDIA        0                    NA                0.0652664   0.0351566   0.0953763
6 months    SAS-CompFeed    INDIA        1                    NA                0.1276495   0.1029424   0.1523566
6 months    SAS-FoodSuppl   INDIA        0                    NA                0.1052632   0.0361757   0.1743506
6 months    SAS-FoodSuppl   INDIA        1                    NA                0.2006579   0.1555785   0.2457373
24 months   COHORTS         INDIA        0                    NA                0.0741375   0.0617236   0.0865514
24 months   COHORTS         INDIA        1                    NA                0.1238089   0.1040340   0.1435838
24 months   EE              PAKISTAN     0                    NA                0.1964286   0.1226283   0.2702288
24 months   EE              PAKISTAN     1                    NA                0.1454545   0.0519996   0.2389095
24 months   GMS-Nepal       NEPAL        0                    NA                0.2193359   0.1383317   0.3003401
24 months   GMS-Nepal       NEPAL        1                    NA                0.1749901   0.1337281   0.2162520
24 months   JiVitA-3        BANGLADESH   0                    NA                0.2058824   0.0691344   0.3426304
24 months   JiVitA-3        BANGLADESH   1                    NA                0.2196078   0.1605007   0.2787149
24 months   JiVitA-4        BANGLADESH   0                    NA                0.1990222   0.1685905   0.2294539
24 months   JiVitA-4        BANGLADESH   1                    NA                0.2009709   0.1843640   0.2175778
24 months   NIH-Crypto      BANGLADESH   0                    NA                0.0784192   0.0515551   0.1052833
24 months   NIH-Crypto      BANGLADESH   1                    NA                0.1034295   0.0463477   0.1605114
24 months   PROVIDE         BANGLADESH   0                    NA                0.1023032   0.0738161   0.1307904
24 months   PROVIDE         BANGLADESH   1                    NA                0.1188301   0.0653321   0.1723281


### Parameter: E(Y)


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         INDIA        NA                   NA                0.1733880   0.1621865   0.1845895
Birth       EE              PAKISTAN     NA                   NA                0.1257143   0.0764545   0.1749741
Birth       GMS-Nepal       NEPAL        NA                   NA                0.2063758   0.1738576   0.2388940
Birth       JiVitA-4        BANGLADESH   NA                   NA                0.1002517   0.0845941   0.1159092
Birth       NIH-Crypto      BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROVIDE         BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
Birth       SAS-CompFeed    INDIA        NA                   NA                0.1086729   0.0774328   0.1399131
6 months    COHORTS         INDIA        NA                   NA                0.1325096   0.1228094   0.1422097
6 months    EE              PAKISTAN     NA                   NA                0.1233244   0.0899110   0.1567378
6 months    GMS-Nepal       NEPAL        NA                   NA                0.0909091   0.0663648   0.1154534
6 months    JiVitA-4        BANGLADESH   NA                   NA                0.0536863   0.0440214   0.0633512
6 months    NIH-Crypto      BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
6 months    SAS-CompFeed    INDIA        NA                   NA                0.1213235   0.0974115   0.1452356
6 months    SAS-FoodSuppl   INDIA        NA                   NA                0.1815789   0.1427684   0.2203895
24 months   COHORTS         INDIA        NA                   NA                0.0942542   0.0846183   0.1038901
24 months   EE              PAKISTAN     NA                   NA                0.1796407   0.1212426   0.2380388
24 months   GMS-Nepal       NEPAL        NA                   NA                0.1846154   0.1489263   0.2203045
24 months   JiVitA-3        BANGLADESH   NA                   NA                0.2179931   0.1635507   0.2724354
24 months   JiVitA-4        BANGLADESH   NA                   NA                0.2021037   0.1874836   0.2167238
24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE         BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       COHORTS         INDIA        1                    0                 0.9663869   0.8263078   1.130213
Birth       EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
Birth       EE              PAKISTAN     1                    0                 1.2467532   0.5545027   2.803221
Birth       GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal       NEPAL        1                    0                 0.8826585   0.6114032   1.274259
Birth       JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4        BANGLADESH   1                    0                 0.8934307   0.5983523   1.334027
Birth       NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto      BANGLADESH   1                    0                 1.4397247   1.0951549   1.892707
Birth       PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       PROVIDE         BANGLADESH   1                    0                 0.9703182   0.6717243   1.401643
Birth       SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed    INDIA        1                    0                 1.0530762   0.5593990   1.982430
6 months    COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    COHORTS         INDIA        1                    0                 1.1937711   1.0130115   1.406785
6 months    EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6 months    EE              PAKISTAN     1                    0                 1.1000825   0.6178005   1.958855
6 months    GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal       NEPAL        1                    0                 1.1513682   0.5952717   2.226964
6 months    JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4        BANGLADESH   1                    0                 1.1519218   0.7304067   1.816692
6 months    NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto      BANGLADESH   1                    0                 1.0753106   0.3997909   2.892244
6 months    SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed    INDIA        1                    0                 1.9558222   1.2026350   3.180716
6 months    SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl   INDIA        1                    0                 1.9062500   0.9525832   3.814668
24 months   COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   COHORTS         INDIA        1                    0                 1.6699901   1.3259476   2.103301
24 months   EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
24 months   EE              PAKISTAN     1                    0                 0.7404959   0.3517884   1.558704
24 months   GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal       NEPAL        1                    0                 0.7978177   0.5146420   1.236807
24 months   JiVitA-3        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3        BANGLADESH   1                    0                 1.0666667   0.5204438   2.186168
24 months   JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4        BANGLADESH   1                    0                 1.0097916   0.8471804   1.203615
24 months   NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto      BANGLADESH   1                    0                 1.3189318   0.6882560   2.527521
24 months   PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   PROVIDE         BANGLADESH   1                    0                 1.1615477   0.6839279   1.972712


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS         INDIA        0                    NA                -0.0034030   -0.0140502   0.0072441
Birth       EE              PAKISTAN     0                    NA                 0.0090476   -0.0255086   0.0436038
Birth       GMS-Nepal       NEPAL        0                    NA                -0.0222777   -0.0854135   0.0408581
Birth       JiVitA-4        BANGLADESH   0                    NA                -0.0091679   -0.0436171   0.0252813
Birth       NIH-Crypto      BANGLADESH   0                    NA                 0.0197765    0.0014963   0.0380567
Birth       PROVIDE         BANGLADESH   0                    NA                 0.0024461   -0.0191263   0.0240186
Birth       SAS-CompFeed    INDIA        0                    NA                 0.0029841   -0.0560845   0.0620528
6 months    COHORTS         INDIA        0                    NA                 0.0092111   -0.0008255   0.0192477
6 months    EE              PAKISTAN     0                    NA                 0.0052886   -0.0181644   0.0287416
6 months    GMS-Nepal       NEPAL        0                    NA                 0.0094922   -0.0325023   0.0514867
6 months    JiVitA-4        BANGLADESH   0                    NA                 0.0064805   -0.0102327   0.0231937
6 months    NIH-Crypto      BANGLADESH   0                    NA                 0.0004898   -0.0063172   0.0072967
6 months    SAS-CompFeed    INDIA        0                    NA                 0.0560571    0.0236760   0.0884383
6 months    SAS-FoodSuppl   INDIA        0                    NA                 0.0763158    0.0102090   0.1424226
24 months   COHORTS         INDIA        0                    NA                 0.0201167    0.0102245   0.0300089
24 months   EE              PAKISTAN     0                    NA                -0.0167879   -0.0561751   0.0225994
24 months   GMS-Nepal       NEPAL        0                    NA                -0.0347205   -0.1047067   0.0352656
24 months   JiVitA-3        BANGLADESH   0                    NA                 0.0121107   -0.1194466   0.1436680
24 months   JiVitA-4        BANGLADESH   0                    NA                 0.0030815   -0.0231171   0.0292801
24 months   NIH-Crypto      BANGLADESH   0                    NA                 0.0091295   -0.0059225   0.0241814
24 months   PROVIDE         BANGLADESH   0                    NA                 0.0047779   -0.0105173   0.0200732


### Parameter: PAF


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS         INDIA        0                    NA                -0.0196265   -0.0828951   0.0399456
Birth       EE              PAKISTAN     0                    NA                 0.0719697   -0.2465253   0.3090873
Birth       GMS-Nepal       NEPAL        0                    NA                -0.1079471   -0.4597755   0.1590852
Birth       JiVitA-4        BANGLADESH   0                    NA                -0.0914485   -0.4927173   0.2019522
Birth       NIH-Crypto      BANGLADESH   0                    NA                 0.0812908    0.0033517   0.1531349
Birth       PROVIDE         BANGLADESH   0                    NA                 0.0111226   -0.0919843   0.1044940
Birth       SAS-CompFeed    INDIA        0                    NA                 0.0274598   -0.6903119   0.4404379
6 months    COHORTS         INDIA        0                    NA                 0.0695127   -0.0093076   0.1421777
6 months    EE              PAKISTAN     0                    NA                 0.0428838   -0.1673388   0.2152480
6 months    GMS-Nepal       NEPAL        0                    NA                 0.1044140   -0.4990148   0.4649324
6 months    JiVitA-4        BANGLADESH   0                    NA                 0.1207101   -0.2550332   0.3839600
6 months    NIH-Crypto      BANGLADESH   0                    NA                 0.0166753   -0.2445475   0.2230690
6 months    SAS-CompFeed    INDIA        0                    NA                 0.4620465    0.1611253   0.6550212
6 months    SAS-FoodSuppl   INDIA        0                    NA                 0.4202899   -0.0708179   0.6861615
24 months   COHORTS         INDIA        0                    NA                 0.2134300    0.1033664   0.3099829
24 months   EE              PAKISTAN     0                    NA                -0.0934524   -0.3348934   0.1043194
24 months   GMS-Nepal       NEPAL        0                    NA                -0.1880695   -0.6331151   0.1356952
24 months   JiVitA-3        BANGLADESH   0                    NA                 0.0555556   -0.7867351   0.5007792
24 months   JiVitA-4        BANGLADESH   0                    NA                 0.0152471   -0.1233496   0.1367439
24 months   NIH-Crypto      BANGLADESH   0                    NA                 0.1042787   -0.0832980   0.2593759
24 months   PROVIDE         BANGLADESH   0                    NA                 0.0446197   -0.1089807   0.1769455
