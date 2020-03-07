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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        hdlvry    swasted   n_cell      n
----------  ---------------  -----------------------------  -------  --------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0               0       85     86
Birth       CMC-V-BCS-2002   INDIA                          0               1        1     86
Birth       CMC-V-BCS-2002   INDIA                          1               0        0     86
Birth       CMC-V-BCS-2002   INDIA                          1               1        0     86
Birth       COHORTS          INDIA                          0               0     2642   4389
Birth       COHORTS          INDIA                          0               1      121   4389
Birth       COHORTS          INDIA                          1               0     1539   4389
Birth       COHORTS          INDIA                          1               1       87   4389
Birth       EE               PAKISTAN                       0               0      117    175
Birth       EE               PAKISTAN                       0               1        3    175
Birth       EE               PAKISTAN                       1               0       52    175
Birth       EE               PAKISTAN                       1               1        3    175
Birth       GMS-Nepal        NEPAL                          0               0      135    596
Birth       GMS-Nepal        NEPAL                          0               1        8    596
Birth       GMS-Nepal        NEPAL                          1               0      437    596
Birth       GMS-Nepal        NEPAL                          1               1       16    596
Birth       IRC              INDIA                          0               0      285    343
Birth       IRC              INDIA                          0               1       52    343
Birth       IRC              INDIA                          1               0        4    343
Birth       IRC              INDIA                          1               1        2    343
Birth       JiVitA-3         BANGLADESH                     0               0       27    292
Birth       JiVitA-3         BANGLADESH                     0               1        0    292
Birth       JiVitA-3         BANGLADESH                     1               0      263    292
Birth       JiVitA-3         BANGLADESH                     1               1        2    292
Birth       JiVitA-4         BANGLADESH                     0               0      494   2384
Birth       JiVitA-4         BANGLADESH                     0               1        6   2384
Birth       JiVitA-4         BANGLADESH                     1               0     1859   2384
Birth       JiVitA-4         BANGLADESH                     1               1       25   2384
Birth       NIH-Crypto       BANGLADESH                     0               0      515    707
Birth       NIH-Crypto       BANGLADESH                     0               1       33    707
Birth       NIH-Crypto       BANGLADESH                     1               0      145    707
Birth       NIH-Crypto       BANGLADESH                     1               1       14    707
Birth       PROVIDE          BANGLADESH                     0               0      378    532
Birth       PROVIDE          BANGLADESH                     0               1        9    532
Birth       PROVIDE          BANGLADESH                     1               0      141    532
Birth       PROVIDE          BANGLADESH                     1               1        4    532
Birth       SAS-CompFeed     INDIA                          0               0      107    957
Birth       SAS-CompFeed     INDIA                          0               1        1    957
Birth       SAS-CompFeed     INDIA                          1               0      824    957
Birth       SAS-CompFeed     INDIA                          1               1       25    957
6 months    CMC-V-BCS-2002   INDIA                          0               0      345    365
6 months    CMC-V-BCS-2002   INDIA                          0               1       12    365
6 months    CMC-V-BCS-2002   INDIA                          1               0        8    365
6 months    CMC-V-BCS-2002   INDIA                          1               1        0    365
6 months    COHORTS          INDIA                          0               0     2823   4694
6 months    COHORTS          INDIA                          0               1       73   4694
6 months    COHORTS          INDIA                          1               0     1722   4694
6 months    COHORTS          INDIA                          1               1       76   4694
6 months    EE               PAKISTAN                       0               0      242    373
6 months    EE               PAKISTAN                       0               1       10    373
6 months    EE               PAKISTAN                       1               0      118    373
6 months    EE               PAKISTAN                       1               1        3    373
6 months    GMS-Nepal        NEPAL                          0               0      127    528
6 months    GMS-Nepal        NEPAL                          0               1        2    528
6 months    GMS-Nepal        NEPAL                          1               0      395    528
6 months    GMS-Nepal        NEPAL                          1               1        4    528
6 months    IRC              INDIA                          0               0      379    408
6 months    IRC              INDIA                          0               1       21    408
6 months    IRC              INDIA                          1               0        7    408
6 months    IRC              INDIA                          1               1        1    408
6 months    JiVitA-3         BANGLADESH                     0               0       39    334
6 months    JiVitA-3         BANGLADESH                     0               1        0    334
6 months    JiVitA-3         BANGLADESH                     1               0      289    334
6 months    JiVitA-3         BANGLADESH                     1               1        6    334
6 months    JiVitA-4         BANGLADESH                     0               0     1076   4042
6 months    JiVitA-4         BANGLADESH                     0               1        6   4042
6 months    JiVitA-4         BANGLADESH                     1               0     2938   4042
6 months    JiVitA-4         BANGLADESH                     1               1       22   4042
6 months    NIH-Crypto       BANGLADESH                     0               0      554    715
6 months    NIH-Crypto       BANGLADESH                     0               1        0    715
6 months    NIH-Crypto       BANGLADESH                     1               0      161    715
6 months    NIH-Crypto       BANGLADESH                     1               1        0    715
6 months    PROVIDE          BANGLADESH                     0               0      446    603
6 months    PROVIDE          BANGLADESH                     0               1        4    603
6 months    PROVIDE          BANGLADESH                     1               0      152    603
6 months    PROVIDE          BANGLADESH                     1               1        1    603
6 months    SAS-CompFeed     INDIA                          0               0      144   1088
6 months    SAS-CompFeed     INDIA                          0               1        3   1088
6 months    SAS-CompFeed     INDIA                          1               0      907   1088
6 months    SAS-CompFeed     INDIA                          1               1       34   1088
6 months    SAS-FoodSuppl    INDIA                          0               0       74    380
6 months    SAS-FoodSuppl    INDIA                          0               1        2    380
6 months    SAS-FoodSuppl    INDIA                          1               0      287    380
6 months    SAS-FoodSuppl    INDIA                          1               1       17    380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1876   1920
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       12   1920
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       32   1920
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0   1920
24 months   CMC-V-BCS-2002   INDIA                          0               0      359    369
24 months   CMC-V-BCS-2002   INDIA                          0               1        2    369
24 months   CMC-V-BCS-2002   INDIA                          1               0        8    369
24 months   CMC-V-BCS-2002   INDIA                          1               1        0    369
24 months   COHORTS          INDIA                          0               0     2199   3533
24 months   COHORTS          INDIA                          0               1       15   3533
24 months   COHORTS          INDIA                          1               0     1297   3533
24 months   COHORTS          INDIA                          1               1       22   3533
24 months   EE               PAKISTAN                       0               0      109    167
24 months   EE               PAKISTAN                       0               1        3    167
24 months   EE               PAKISTAN                       1               0       54    167
24 months   EE               PAKISTAN                       1               1        1    167
24 months   GMS-Nepal        NEPAL                          0               0      114    455
24 months   GMS-Nepal        NEPAL                          0               1        4    455
24 months   GMS-Nepal        NEPAL                          1               0      327    455
24 months   GMS-Nepal        NEPAL                          1               1       10    455
24 months   IRC              INDIA                          0               0      396    409
24 months   IRC              INDIA                          0               1        5    409
24 months   IRC              INDIA                          1               0        8    409
24 months   IRC              INDIA                          1               1        0    409
24 months   JiVitA-3         BANGLADESH                     0               0       34    289
24 months   JiVitA-3         BANGLADESH                     0               1        0    289
24 months   JiVitA-3         BANGLADESH                     1               0      246    289
24 months   JiVitA-3         BANGLADESH                     1               1        9    289
24 months   JiVitA-4         BANGLADESH                     0               0     1007   3993
24 months   JiVitA-4         BANGLADESH                     0               1       25   3993
24 months   JiVitA-4         BANGLADESH                     1               0     2875   3993
24 months   JiVitA-4         BANGLADESH                     1               1       86   3993
24 months   NIH-Crypto       BANGLADESH                     0               0      388    514
24 months   NIH-Crypto       BANGLADESH                     0               1        3    514
24 months   NIH-Crypto       BANGLADESH                     1               0      122    514
24 months   NIH-Crypto       BANGLADESH                     1               1        1    514
24 months   PROVIDE          BANGLADESH                     0               0      427    579
24 months   PROVIDE          BANGLADESH                     0               1        6    579
24 months   PROVIDE          BANGLADESH                     1               0      143    579
24 months   PROVIDE          BANGLADESH                     1               1        3    579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        6      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0      6


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
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
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
![](/tmp/81c8da91-4a4f-4a6d-be14-b712db41b3ee/4b75029c-f548-4ac0-9c33-b9fce5b16ac6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/81c8da91-4a4f-4a6d-be14-b712db41b3ee/4b75029c-f548-4ac0-9c33-b9fce5b16ac6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/81c8da91-4a4f-4a6d-be14-b712db41b3ee/4b75029c-f548-4ac0-9c33-b9fce5b16ac6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/81c8da91-4a4f-4a6d-be14-b712db41b3ee/4b75029c-f548-4ac0-9c33-b9fce5b16ac6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS      INDIA        0                    NA                0.0437930    0.0361619   0.0514240
Birth       COHORTS      INDIA        1                    NA                0.0535055    0.0425661   0.0644450
Birth       GMS-Nepal    NEPAL        0                    NA                0.0559441    0.0182459   0.0936423
Birth       GMS-Nepal    NEPAL        1                    NA                0.0353201    0.0183077   0.0523325
Birth       JiVitA-4     BANGLADESH   0                    NA                0.0120000   -0.0054099   0.0294099
Birth       JiVitA-4     BANGLADESH   1                    NA                0.0132696    0.0081641   0.0183752
Birth       NIH-Crypto   BANGLADESH   0                    NA                0.0602190    0.0402872   0.0801507
Birth       NIH-Crypto   BANGLADESH   1                    NA                0.0880503    0.0439737   0.1321269
6 months    COHORTS      INDIA        0                    NA                0.0252072    0.0194975   0.0309169
6 months    COHORTS      INDIA        1                    NA                0.0422692    0.0329681   0.0515703
6 months    JiVitA-4     BANGLADESH   0                    NA                0.0055453    0.0008107   0.0102799
6 months    JiVitA-4     BANGLADESH   1                    NA                0.0074324    0.0015459   0.0133190
24 months   COHORTS      INDIA        0                    NA                0.0067751    0.0033576   0.0101925
24 months   COHORTS      INDIA        1                    NA                0.0166793    0.0097670   0.0235916
24 months   JiVitA-4     BANGLADESH   0                    NA                0.0242248    0.0146005   0.0338491
24 months   JiVitA-4     BANGLADESH   1                    NA                0.0290442    0.0222093   0.0358791


### Parameter: E(Y)


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      INDIA        NA                   NA                0.0473912   0.0411045   0.0536779
Birth       GMS-Nepal    NEPAL        NA                   NA                0.0402685   0.0244725   0.0560645
Birth       JiVitA-4     BANGLADESH   NA                   NA                0.0130034   0.0075709   0.0184358
Birth       NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539
6 months    COHORTS      INDIA        NA                   NA                0.0317427   0.0267269   0.0367584
6 months    JiVitA-4     BANGLADESH   NA                   NA                0.0069273   0.0024440   0.0114105
24 months   COHORTS      INDIA        NA                   NA                0.0104727   0.0071155   0.0138299
24 months   JiVitA-4     BANGLADESH   NA                   NA                0.0277986   0.0219343   0.0336630


### Parameter: RR


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS      INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       COHORTS      INDIA        1                    0                 1.2217834   0.9339564   1.598313
Birth       GMS-Nepal    NEPAL        0                    0                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal    NEPAL        1                    0                 0.6313466   0.2757666   1.445420
Birth       JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4     BANGLADESH   1                    0                 1.1058033   0.2462205   4.966284
Birth       NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH   1                    0                 1.4621689   0.8023636   2.664550
6 months    COHORTS      INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    COHORTS      INDIA        1                    0                 1.6768708   1.2227891   2.299575
6 months    JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4     BANGLADESH   1                    0                 1.3403153   0.4160078   4.318297
24 months   COHORTS      INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   COHORTS      INDIA        1                    0                 2.4618650   1.2815790   4.729150
24 months   JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4     BANGLADESH   1                    0                 1.1989463   0.7711695   1.864016


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      INDIA        0                    NA                 0.0035982   -0.0013451   0.0085416
Birth       GMS-Nepal    NEPAL        0                    NA                -0.0156756   -0.0471193   0.0157681
Birth       JiVitA-4     BANGLADESH   0                    NA                 0.0010034   -0.0133484   0.0153551
Birth       NIH-Crypto   BANGLADESH   0                    NA                 0.0062591   -0.0046536   0.0171718
6 months    COHORTS      INDIA        0                    NA                 0.0065355    0.0023483   0.0107226
6 months    JiVitA-4     BANGLADESH   0                    NA                 0.0013820   -0.0041754   0.0069393
24 months   COHORTS      INDIA        0                    NA                 0.0036976    0.0008145   0.0065807
24 months   JiVitA-4     BANGLADESH   0                    NA                 0.0035738   -0.0047575   0.0119052


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      INDIA        0                    NA                 0.0759260   -0.0340029   0.1741680
Birth       GMS-Nepal    NEPAL        0                    NA                -0.3892774   -1.4139478   0.2004418
Birth       JiVitA-4     BANGLADESH   0                    NA                 0.0771613   -2.0994742   0.7252336
Birth       NIH-Crypto   BANGLADESH   0                    NA                 0.0941528   -0.0836524   0.2427838
6 months    COHORTS      INDIA        0                    NA                 0.2058892    0.0669367   0.3241488
6 months    JiVitA-4     BANGLADESH   0                    NA                 0.1994983   -1.0071943   0.6807469
24 months   COHORTS      INDIA        0                    NA                 0.3530726    0.0459709   0.5613183
24 months   JiVitA-4     BANGLADESH   0                    NA                 0.1285617   -0.2264823   0.3808270
