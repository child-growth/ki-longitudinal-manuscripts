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

**Intervention Variable:** cleanck

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country        cleanck    n_cell     n
----------  -------------------------  -------------  --------  -------  ----
Birth       ki0047075b-MAL-ED          PERU           1               1     2
Birth       ki0047075b-MAL-ED          PERU           0               1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1               1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0               1     2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1              38    90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0              52    90
Birth       ki1000108-IRC              INDIA          1             218   378
Birth       ki1000108-IRC              INDIA          0             160   378
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1              12    20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0               8    20
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1             163   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0             206   369
6 months    ki1000108-IRC              INDIA          1             230   398
6 months    ki1000108-IRC              INDIA          0             168   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1             482   583
6 months    ki1017093b-PROVIDE         BANGLADESH     0             101   583
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1             329   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0             216   545
6 months    ki1113344-GMS-Nepal        NEPAL          1               8   504
6 months    ki1113344-GMS-Nepal        NEPAL          0             496   504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             163   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             209   372
24 months   ki1000108-IRC              INDIA          1             231   400
24 months   ki1000108-IRC              INDIA          0             169   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1             479   577
24 months   ki1017093b-PROVIDE         BANGLADESH     0              98   577
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             199   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   410
24 months   ki1113344-GMS-Nepal        NEPAL          1               7   446
24 months   ki1113344-GMS-Nepal        NEPAL          0             439   446


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

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
![](/tmp/306c6de6-2b57-46d4-8567-cc5412a0a212/21bf526c-55c8-46a5-85cb-1bb2b7de7d84/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/306c6de6-2b57-46d4-8567-cc5412a0a212/21bf526c-55c8-46a5-85cb-1bb2b7de7d84/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/306c6de6-2b57-46d4-8567-cc5412a0a212/21bf526c-55c8-46a5-85cb-1bb2b7de7d84/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.8015789   -1.0692150   -0.5339429
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -1.0851923   -1.3848062   -0.7855784
Birth       ki1000108-IRC              INDIA        1                    NA                -0.3869725   -0.5877836   -0.1861613
Birth       ki1000108-IRC              INDIA        0                    NA                -0.2231875   -0.4873693    0.0409943
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.8708333   -1.3741980   -0.3674687
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.1837500   -2.1056553   -0.2618447
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -1.1361759   -1.3567318   -0.9156199
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -1.6507605   -1.8276213   -1.4738997
6 months    ki1000108-IRC              INDIA        1                    NA                -1.0650072   -1.2513917   -0.8786228
6 months    ki1000108-IRC              INDIA        0                    NA                -1.4733829   -1.6483482   -1.2984176
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -1.0115906   -1.0935299   -0.9296513
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.4474752   -1.6367939   -1.2581566
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -1.1902432   -1.2949870   -1.0854993
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.0842593   -1.2096802   -0.9588383
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -1.1268750   -1.3633603   -0.8903897
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.3503763   -1.4349591   -1.2657936
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -2.2420859   -2.3845379   -2.0996338
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -2.8068182   -2.9380784   -2.6755580
24 months   ki1000108-IRC              INDIA        1                    NA                -1.6442496   -1.7740028   -1.5144965
24 months   ki1000108-IRC              INDIA        0                    NA                -1.9848028   -2.1154081   -1.8541974
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -1.4750939   -1.5623908   -1.3877971
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -2.1287755   -2.3391492   -1.9184018
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -1.3451256   -1.4744152   -1.2158361
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.3165403   -1.4391902   -1.1938903
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -1.4150000   -1.5449685   -1.2850315
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.9011314   -1.9910305   -1.8112322


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA        NA                   NA                -0.3176455   -0.4788394   -0.1564516
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.9960000   -1.4776141   -0.5143859
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA        NA                   NA                -1.2373869   -1.3694835   -1.1052903
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.1482385   -1.2287866   -1.0676904
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                -1.3468287   -1.4295445   -1.2641129
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA        NA                   NA                -1.7881333   -1.8826438   -1.6936229
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.3304146   -1.4194311   -1.2413981
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                -1.8935015   -1.9813928   -1.8056102


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.2836134   -0.6853565    0.1181298
Birth       ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        0                    1                  0.1637850   -0.1680541    0.4956240
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.3129167   -1.3632906    0.7374572
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.5145846   -0.7972942   -0.2318751
6 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        0                    1                 -0.4083757   -0.6640161   -0.1527353
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.4358847   -0.6421748   -0.2295945
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.1059839   -0.0574226    0.2693904
6 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.2235013   -0.4746577    0.0276550
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.5647323   -0.7584378   -0.3710268
24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        0                    1                 -0.3405531   -0.5246554   -0.1564509
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.6536816   -0.8814487   -0.4259145
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0285853   -0.1496246    0.2067953
24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.4861314   -0.6441619   -0.3281008


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1638655   -0.3978011    0.0700701
Birth       ki1000108-IRC              INDIA        1                    NA                 0.0693270   -0.0713713    0.2100253
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.1251667   -0.5509330    0.3005996
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2872749   -0.4472468   -0.1273030
6 months    ki1000108-IRC              INDIA        1                    NA                -0.1723797   -0.2820970   -0.0626624
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0755135   -0.1136819   -0.0373451
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0420046   -0.0229047    0.1069139
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.2199537   -0.4648433    0.0249359
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3172824   -0.4297845   -0.2047803
24 months   ki1000108-IRC              INDIA        1                    NA                -0.1438837   -0.2233989   -0.0643685
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.1110239   -0.1545937   -0.0674541
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0147110   -0.0770124    0.1064344
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.4785015   -0.6326836   -0.3243194
