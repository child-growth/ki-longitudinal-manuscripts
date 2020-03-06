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

agecat      studyid          country        cleanck    n_cell     n
----------  ---------------  -------------  --------  -------  ----
Birth       CMC-V-BCS-2002   INDIA          1              39    92
Birth       CMC-V-BCS-2002   INDIA          0              53    92
Birth       GMS-Nepal        NEPAL          1               9   621
Birth       GMS-Nepal        NEPAL          0             612   621
Birth       IRC              INDIA          1             218   378
Birth       IRC              INDIA          0             160   378
Birth       MAL-ED           PERU           1               1     2
Birth       MAL-ED           PERU           0               1     2
Birth       NIH-Crypto       BANGLADESH     1             345   561
Birth       NIH-Crypto       BANGLADESH     0             216   561
Birth       PROVIDE          BANGLADESH     1             438   539
Birth       PROVIDE          BANGLADESH     0             101   539
6 months    CMC-V-BCS-2002   INDIA          1             163   369
6 months    CMC-V-BCS-2002   INDIA          0             206   369
6 months    GMS-Nepal        NEPAL          1               8   505
6 months    GMS-Nepal        NEPAL          0             497   505
6 months    IRC              INDIA          1             230   398
6 months    IRC              INDIA          0             168   398
6 months    MAL-ED           SOUTH AFRICA   1               1     1
6 months    MAL-ED           SOUTH AFRICA   0               0     1
6 months    NIH-Crypto       BANGLADESH     1             329   545
6 months    NIH-Crypto       BANGLADESH     0             216   545
6 months    PROVIDE          BANGLADESH     1             498   604
6 months    PROVIDE          BANGLADESH     0             106   604
24 months   CMC-V-BCS-2002   INDIA          1             163   371
24 months   CMC-V-BCS-2002   INDIA          0             208   371
24 months   GMS-Nepal        NEPAL          1               5   435
24 months   GMS-Nepal        NEPAL          0             430   435
24 months   IRC              INDIA          1             231   400
24 months   IRC              INDIA          0             169   400
24 months   MAL-ED           SOUTH AFRICA   1               1     1
24 months   MAL-ED           SOUTH AFRICA   0               0     1
24 months   NIH-Crypto       BANGLADESH     1             199   410
24 months   NIH-Crypto       BANGLADESH     0             211   410
24 months   PROVIDE          BANGLADESH     1             479   578
24 months   PROVIDE          BANGLADESH     0              99   578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

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
![](/tmp/af058d06-18ae-456f-b875-fa1ec78efb67/adfff87e-130a-4f01-b53c-8d3c85754706/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/af058d06-18ae-456f-b875-fa1ec78efb67/adfff87e-130a-4f01-b53c-8d3c85754706/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/af058d06-18ae-456f-b875-fa1ec78efb67/adfff87e-130a-4f01-b53c-8d3c85754706/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.7405128   -1.0291028   -0.4519228
Birth       CMC-V-BCS-2002   INDIA        0                    NA                -1.1235849   -1.4262083   -0.8209615
Birth       GMS-Nepal        NEPAL        1                    NA                -0.9077778   -1.0681024   -0.7474531
Birth       GMS-Nepal        NEPAL        0                    NA                -1.1026961   -1.1887883   -1.0166039
Birth       IRC              INDIA        1                    NA                -0.3869725   -0.5877836   -0.1861613
Birth       IRC              INDIA        0                    NA                -0.2231875   -0.4873693    0.0409943
Birth       NIH-Crypto       BANGLADESH   1                    NA                -0.9373043   -1.0367211   -0.8378876
Birth       NIH-Crypto       BANGLADESH   0                    NA                -0.8393981   -0.9844400   -0.6943563
Birth       PROVIDE          BANGLADESH   1                    NA                -0.8452968   -0.9275194   -0.7630742
Birth       PROVIDE          BANGLADESH   0                    NA                -1.0577228   -1.2360266   -0.8794189
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -1.1361759   -1.3567318   -0.9156199
6 months    CMC-V-BCS-2002   INDIA        0                    NA                -1.6507605   -1.8276213   -1.4738997
6 months    GMS-Nepal        NEPAL        1                    NA                -1.1500000   -1.3864333   -0.9135667
6 months    GMS-Nepal        NEPAL        0                    NA                -1.3684775   -1.4530701   -1.2838850
6 months    IRC              INDIA        1                    NA                -1.0650072   -1.2513917   -0.8786228
6 months    IRC              INDIA        0                    NA                -1.4733829   -1.6483482   -1.2984176
6 months    NIH-Crypto       BANGLADESH   1                    NA                -1.1902432   -1.2949870   -1.0854993
6 months    NIH-Crypto       BANGLADESH   0                    NA                -1.0842593   -1.2096802   -0.9588383
6 months    PROVIDE          BANGLADESH   1                    NA                -1.0153146   -1.0950278   -0.9356014
6 months    PROVIDE          BANGLADESH   0                    NA                -1.4505189   -1.6347217   -1.2663160
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -2.2467178   -2.3892109   -2.1042247
24 months   CMC-V-BCS-2002   INDIA        0                    NA                -2.8034856   -2.9319722   -2.6749990
24 months   GMS-Nepal        NEPAL        1                    NA                -1.4140000   -1.5461204   -1.2818796
24 months   GMS-Nepal        NEPAL        0                    NA                -1.9026977   -1.9936549   -1.8117404
24 months   IRC              INDIA        1                    NA                -1.6631818   -1.7926545   -1.5337092
24 months   IRC              INDIA        0                    NA                -1.9964497   -2.1260387   -1.8668607
24 months   NIH-Crypto       BANGLADESH   1                    NA                -1.3645226   -1.4946051   -1.2344401
24 months   NIH-Crypto       BANGLADESH   0                    NA                -1.3185308   -1.4413517   -1.1957099
24 months   PROVIDE          BANGLADESH   1                    NA                -1.4912735   -1.5787865   -1.4037604
24 months   PROVIDE          BANGLADESH   0                    NA                -2.1402020   -2.3494534   -1.9309507


### Parameter: E(Y)


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       GMS-Nepal        NEPAL        NA                   NA                -1.0998712   -1.1839267   -1.0158156
Birth       IRC              INDIA        NA                   NA                -0.3176455   -0.4788394   -0.1564516
Birth       NIH-Crypto       BANGLADESH   NA                   NA                -0.8996078   -0.9825064   -0.8167093
Birth       PROVIDE          BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    CMC-V-BCS-2002   INDIA        NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    GMS-Nepal        NEPAL        NA                   NA                -1.3650165   -1.4477401   -1.2822929
6 months    IRC              INDIA        NA                   NA                -1.2373869   -1.3694835   -1.1052903
6 months    NIH-Crypto       BANGLADESH   NA                   NA                -1.1482385   -1.2287866   -1.0676904
6 months    PROVIDE          BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
24 months   CMC-V-BCS-2002   INDIA        NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   GMS-Nepal        NEPAL        NA                   NA                -1.8970805   -1.9859605   -1.8082004
24 months   IRC              INDIA        NA                   NA                -1.8039875   -1.8980579   -1.7099171
24 months   NIH-Crypto       BANGLADESH   NA                   NA                -1.3408537   -1.4302211   -1.2514862
24 months   PROVIDE          BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA        0                    1                 -0.3830721   -0.8012409    0.0350967
Birth       GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL        0                    1                 -0.1949183   -0.3768960   -0.0129406
Birth       IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA        0                    1                  0.1637850   -0.1680541    0.4956240
Birth       NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH   0                    1                  0.0979062   -0.0779370    0.2737494
Birth       PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH   0                    1                 -0.2124260   -0.4087747   -0.0160773
6 months    CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA        0                    1                 -0.5145846   -0.7972942   -0.2318751
6 months    GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL        0                    1                 -0.2184775   -0.4695882    0.0326332
6 months    IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA        0                    1                 -0.4083757   -0.6640161   -0.1527353
6 months    NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH   0                    1                  0.1059839   -0.0574226    0.2693904
6 months    PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH   0                    1                 -0.4352043   -0.6359152   -0.2344933
24 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.5567678   -0.7486352   -0.3649004
24 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL        0                    1                 -0.4886977   -0.6491003   -0.3282950
24 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA        0                    1                 -0.3332679   -0.5164522   -0.1500836
24 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH   0                    1                  0.0459918   -0.1329116    0.2248952
24 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH   0                    1                 -0.6489285   -0.8757427   -0.4221144


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        1                    NA                -0.2206828   -0.4647041    0.0233384
Birth       GMS-Nepal        NEPAL        1                    NA                -0.1920934   -0.3695311   -0.0146557
Birth       IRC              INDIA        1                    NA                 0.0693270   -0.0713713    0.2100253
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.0376965   -0.0301227    0.1055157
Birth       PROVIDE          BANGLADESH   1                    NA                -0.0398052   -0.0772587   -0.0023518
6 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.2872749   -0.4472468   -0.1273030
6 months    GMS-Nepal        NEPAL        1                    NA                -0.2150165   -0.4598610    0.0298280
6 months    IRC              INDIA        1                    NA                -0.1723797   -0.2820970   -0.0626624
6 months    NIH-Crypto       BANGLADESH   1                    NA                 0.0420046   -0.0229047    0.1069139
6 months    PROVIDE          BANGLADESH   1                    NA                -0.0763769   -0.1139978   -0.0387560
24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.3121501   -0.4233438   -0.2009564
24 months   GMS-Nepal        NEPAL        1                    NA                -0.4830805   -0.6395498   -0.3266111
24 months   IRC              INDIA        1                    NA                -0.1408057   -0.2198686   -0.0617427
24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0236690   -0.0684278    0.1157657
24 months   PROVIDE          BANGLADESH   1                    NA                -0.1111487   -0.1548199   -0.0674774
