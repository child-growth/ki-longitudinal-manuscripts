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

agecat      studyid                    country                        hdlvry    wasted   n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0       75     86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              1       11     86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0        0     86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              1        0     86
Birth       ki1000108-IRC              INDIA                          0              0      249    343
Birth       ki1000108-IRC              INDIA                          0              1       88    343
Birth       ki1000108-IRC              INDIA                          1              0        2    343
Birth       ki1000108-IRC              INDIA                          1              1        4    343
Birth       ki1000109-EE               PAKISTAN                       0              0      106    175
Birth       ki1000109-EE               PAKISTAN                       0              1       14    175
Birth       ki1000109-EE               PAKISTAN                       1              0       47    175
Birth       ki1000109-EE               PAKISTAN                       1              1        8    175
Birth       ki1000304b-SAS-CompFeed    INDIA                          0              0       98    957
Birth       ki1000304b-SAS-CompFeed    INDIA                          0              1       10    957
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              0      755    957
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              1       94    957
Birth       ki1017093b-PROVIDE         BANGLADESH                     0              0      303    532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0              1       84    532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              0      112    532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              1       33    532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              0      426    707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              1      122    707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              0      109    707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              1       50    707
Birth       ki1113344-GMS-Nepal        NEPAL                          0              0      109    596
Birth       ki1113344-GMS-Nepal        NEPAL                          0              1       34    596
Birth       ki1113344-GMS-Nepal        NEPAL                          1              0      364    596
Birth       ki1113344-GMS-Nepal        NEPAL                          1              1       89    596
Birth       ki1135781-COHORTS          INDIA                          0              0     2284   4389
Birth       ki1135781-COHORTS          INDIA                          0              1      479   4389
Birth       ki1135781-COHORTS          INDIA                          1              0     1344   4389
Birth       ki1135781-COHORTS          INDIA                          1              1      282   4389
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              0       25    292
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1        2    292
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0      232    292
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1       33    292
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              0      445   2384
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              1       55   2384
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              0     1700   2384
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1      184   2384
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0      312    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              1       45    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              0        7    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              1        1    365
6 months    ki1000108-IRC              INDIA                          0              0      347    408
6 months    ki1000108-IRC              INDIA                          0              1       53    408
6 months    ki1000108-IRC              INDIA                          1              0        7    408
6 months    ki1000108-IRC              INDIA                          1              1        1    408
6 months    ki1000109-EE               PAKISTAN                       0              0      222    373
6 months    ki1000109-EE               PAKISTAN                       0              1       30    373
6 months    ki1000109-EE               PAKISTAN                       1              0      105    373
6 months    ki1000109-EE               PAKISTAN                       1              1       16    373
6 months    ki1000304b-SAS-CompFeed    INDIA                          0              0      135   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          0              1       12   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              0      821   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              1      120   1088
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0              0       68    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0              1        8    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0      243    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1       61    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0              0      428    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0              1       22    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              0      150    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              1        3    603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              0      538    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              1       16    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              0      156    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              1        5    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0     1807   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1       81   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       30   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        2   1920
6 months    ki1113344-GMS-Nepal        NEPAL                          0              0      118    528
6 months    ki1113344-GMS-Nepal        NEPAL                          0              1       11    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0      362    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1       37    528
6 months    ki1135781-COHORTS          INDIA                          0              0     2571   4694
6 months    ki1135781-COHORTS          INDIA                          0              1      325   4694
6 months    ki1135781-COHORTS          INDIA                          1              0     1501   4694
6 months    ki1135781-COHORTS          INDIA                          1              1      297   4694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              0       37    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              1        2    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0      274    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1       21    334
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0              0     1033   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0              1       49   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              0     2792   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              1      168   4042
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0      339    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              1       22    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0        8    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1        0    369
24 months   ki1000108-IRC              INDIA                          0              0      370    409
24 months   ki1000108-IRC              INDIA                          0              1       31    409
24 months   ki1000108-IRC              INDIA                          1              0        8    409
24 months   ki1000108-IRC              INDIA                          1              1        0    409
24 months   ki1000109-EE               PAKISTAN                       0              0       90    167
24 months   ki1000109-EE               PAKISTAN                       0              1       22    167
24 months   ki1000109-EE               PAKISTAN                       1              0       47    167
24 months   ki1000109-EE               PAKISTAN                       1              1        8    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0              0      389    579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0              1       44    579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              0      128    579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              1       18    579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              0      360    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              1       31    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              0      109    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              1       14    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0        6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0              0       93    455
24 months   ki1113344-GMS-Nepal        NEPAL                          0              1       25    455
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0      278    455
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1       59    455
24 months   ki1135781-COHORTS          INDIA                          0              0     2075   3533
24 months   ki1135781-COHORTS          INDIA                          0              1      139   3533
24 months   ki1135781-COHORTS          INDIA                          1              0     1125   3533
24 months   ki1135781-COHORTS          INDIA                          1              1      194   3533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              0       27    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1        7    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0      199    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1       56    289
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              0      823   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              1      209   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0     2363   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1      598   3993


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/48f1a165-6e93-4d72-a816-90aa2e475188/34417bed-d705-4d89-8156-88c778c5404a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/48f1a165-6e93-4d72-a816-90aa2e475188/34417bed-d705-4d89-8156-88c778c5404a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/48f1a165-6e93-4d72-a816-90aa2e475188/34417bed-d705-4d89-8156-88c778c5404a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/48f1a165-6e93-4d72-a816-90aa2e475188/34417bed-d705-4d89-8156-88c778c5404a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN     0                    NA                0.1166667   0.0590647   0.1742687
Birth       ki1000109-EE               PAKISTAN     1                    NA                0.1454545   0.0520125   0.2388966
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.1182950   0.0702485   0.1663414
Birth       ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1113588   0.0732336   0.1494840
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2148690   0.1737505   0.2559874
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2249520   0.1558980   0.2940060
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2227470   0.1878621   0.2576318
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.3142000   0.2417627   0.3866373
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2221511   0.1534067   0.2908955
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2014728   0.1640318   0.2389139
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.1763736   0.1614028   0.1913443
Birth       ki1135781-COHORTS          INDIA        1                    NA                0.1827842   0.1614350   0.2041334
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.1092303   0.0690505   0.1494101
Birth       kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0976954   0.0810925   0.1142983
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.1190069   0.0789174   0.1590964
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.1301358   0.0690621   0.1912096
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0652664   0.0351565   0.0953762
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1276495   0.1029424   0.1523566
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1052632   0.0361757   0.1743506
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.2006579   0.1555785   0.2457373
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0288809   0.0149256   0.0428361
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0310559   0.0042420   0.0578698
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0867928   0.0370943   0.1364912
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0914969   0.0632873   0.1197065
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.1187962   0.1061513   0.1314411
6 months    ki1135781-COHORTS          INDIA        1                    NA                0.1580145   0.1396146   0.1764144
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0461304   0.0292283   0.0630324
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0561860   0.0445133   0.0678587
24 months   ki1000109-EE               PAKISTAN     0                    NA                0.1964286   0.1226283   0.2702288
24 months   ki1000109-EE               PAKISTAN     1                    NA                0.1454545   0.0519996   0.2389095
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1011002   0.0725731   0.1296272
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1254142   0.0727720   0.1780565
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0797122   0.0528124   0.1066120
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1151402   0.0585331   0.1717473
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2158204   0.1389093   0.2927314
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1748448   0.1339442   0.2157454
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0694644   0.0578569   0.0810720
24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1421552   0.1215152   0.1627953
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.2058824   0.0691344   0.3426304
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.2196078   0.1605007   0.2787149
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.2020349   0.1704810   0.2335889
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.2012944   0.1847238   0.2178649


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN     NA                   NA                0.1257143   0.0764545   0.1749741
Birth       ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1086729   0.0774328   0.1399131
Birth       ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.2063758   0.1738576   0.2388940
Birth       ki1135781-COHORTS          INDIA        NA                   NA                0.1733880   0.1621865   0.1845895
Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1002517   0.0845941   0.1159092
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.1233244   0.0899110   0.1567378
6 months    ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1213235   0.0974115   0.1452356
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.0909091   0.0663648   0.1154534
6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.1325096   0.1228094   0.1422097
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0536863   0.0440214   0.0633512
24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.1796407   0.1212426   0.2380388
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1846154   0.1489263   0.2203045
24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0942542   0.0846183   0.1038901
24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.2179931   0.1635507   0.2724354
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2021037   0.1874836   0.2167238


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000109-EE               PAKISTAN     1                    0                 1.2467532   0.5545027   2.803221
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA        1                    0                 0.9413653   0.4985732   1.777409
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.0469264   0.7293556   1.502772
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.4105691   1.0673888   1.864086
Birth       ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal        NEPAL        1                    0                 0.9069180   0.6319422   1.301543
Birth       ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA        1                    0                 1.0363471   0.8971099   1.197195
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH   1                    0                 0.8943985   0.5981480   1.337376
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 1.0935149   0.6148589   1.944796
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.9558231   1.2026353   3.180718
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.9062500   0.9525832   3.814668
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0753106   0.3997909   2.892244
6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.0541997   0.5499607   2.020757
6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA        1                    0                 1.3301307   1.1362727   1.557062
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.2179837   0.8049192   1.843023
24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000109-EE               PAKISTAN     1                    0                 0.7404959   0.3517884   1.558704
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.2404946   0.7478734   2.057604
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.4444487   0.7951397   2.623982
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.8101405   0.5287379   1.241310
24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA        1                    0                 2.0464455   1.6403602   2.553061
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.0666667   0.5204438   2.186168
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 0.9963344   0.8339566   1.190328


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000109-EE               PAKISTAN     0                    NA                 0.0090476   -0.0255086   0.0436038
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                -0.0096220   -0.0734756   0.0542316
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0050559   -0.0167150   0.0268267
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0205345    0.0022592   0.0388098
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0157753   -0.0751869   0.0436364
Birth       ki1135781-COHORTS          INDIA        0                    NA                -0.0029855   -0.0126688   0.0066977
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.0089786   -0.0436252   0.0256680
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0043175   -0.0191736   0.0278086
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0560571    0.0236760   0.0884383
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0763158    0.0102090   0.1424226
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0004898   -0.0063172   0.0072967
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0041163   -0.0397536   0.0479863
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0137134    0.0046582   0.0227686
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0075559   -0.0067302   0.0218421
24 months   ki1000109-EE               PAKISTAN     0                    NA                -0.0167879   -0.0561751   0.0225994
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0059810   -0.0093609   0.0213229
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0078364   -0.0071748   0.0228477
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0312050   -0.0968275   0.0344176
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0247897    0.0155141   0.0340653
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0121107   -0.1194466   0.1436680
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0000687   -0.0268405   0.0269780


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000109-EE               PAKISTAN     0                    NA                 0.0719697   -0.2465253   0.3090873
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                -0.0885412   -0.8983156   0.3758035
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0229890   -0.0812029   0.1171403
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0844063    0.0064714   0.1562278
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0764394   -0.4062539   0.1760223
Birth       ki1135781-COHORTS          INDIA        0                    NA                -0.0172189   -0.0746130   0.0371099
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.0895605   -0.4936461   0.2052053
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0350092   -0.1754115   0.2077606
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.4620467    0.1611255   0.6550214
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.4202899   -0.0708179   0.6861615
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0166753   -0.2445475   0.2230690
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0452795   -0.5823997   0.4239817
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.1034898    0.0327827   0.1690280
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1407422   -0.1713364   0.3696739
24 months   ki1000109-EE               PAKISTAN     0                    NA                -0.0934524   -0.3348934   0.1043194
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0558547   -0.0984339   0.1884716
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0895095   -0.0972463   0.2444788
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.1690269   -0.5833074   0.1368549
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.2630093    0.1611635   0.3524897
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0555556   -0.7867351   0.5007792
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0003401   -0.1420815   0.1250013
