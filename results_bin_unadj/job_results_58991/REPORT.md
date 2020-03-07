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

**Outcome Variable:** ever_stunted

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

agecat                       studyid          country        cleanck    ever_stunted   n_cell     n
---------------------------  ---------------  -------------  --------  -------------  -------  ----
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA          1                     0       21   296
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA          1                     1      121   296
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA          0                     0        7   296
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA          0                     1      147   296
0-24 months (no birth st.)   GMS-Nepal        NEPAL          1                     0        8   517
0-24 months (no birth st.)   GMS-Nepal        NEPAL          1                     1        2   517
0-24 months (no birth st.)   GMS-Nepal        NEPAL          0                     0      215   517
0-24 months (no birth st.)   GMS-Nepal        NEPAL          0                     1      292   517
0-24 months (no birth st.)   IRC              INDIA          1                     0       94   352
0-24 months (no birth st.)   IRC              INDIA          1                     1      114   352
0-24 months (no birth st.)   IRC              INDIA          0                     0       49   352
0-24 months (no birth st.)   IRC              INDIA          0                     1       95   352
0-24 months (no birth st.)   MAL-ED           PERU           1                     0        1     2
0-24 months (no birth st.)   MAL-ED           PERU           1                     1        0     2
0-24 months (no birth st.)   MAL-ED           PERU           0                     0        0     2
0-24 months (no birth st.)   MAL-ED           PERU           0                     1        1     2
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   1                     0        0     1
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   1                     1        0     1
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   0                     0        1     1
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   0                     1        0     1
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     1                     0      199   498
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     1                     1      115   498
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     0                     0      119   498
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     0                     1       65   498
0-24 months (no birth st.)   PROVIDE          BANGLADESH     1                     0      340   633
0-24 months (no birth st.)   PROVIDE          BANGLADESH     1                     1      180   633
0-24 months (no birth st.)   PROVIDE          BANGLADESH     0                     0       55   633
0-24 months (no birth st.)   PROVIDE          BANGLADESH     0                     1       58   633
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          1                     0       96   292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          1                     1       45   292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          0                     0       84   292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          0                     1       67   292
0-6 months (no birth st.)    GMS-Nepal        NEPAL          1                     0       10   517
0-6 months (no birth st.)    GMS-Nepal        NEPAL          1                     1        0   517
0-6 months (no birth st.)    GMS-Nepal        NEPAL          0                     0      416   517
0-6 months (no birth st.)    GMS-Nepal        NEPAL          0                     1       91   517
0-6 months (no birth st.)    IRC              INDIA          1                     0      143   352
0-6 months (no birth st.)    IRC              INDIA          1                     1       65   352
0-6 months (no birth st.)    IRC              INDIA          0                     0       87   352
0-6 months (no birth st.)    IRC              INDIA          0                     1       57   352
0-6 months (no birth st.)    MAL-ED           PERU           1                     0        1     2
0-6 months (no birth st.)    MAL-ED           PERU           1                     1        0     2
0-6 months (no birth st.)    MAL-ED           PERU           0                     0        0     2
0-6 months (no birth st.)    MAL-ED           PERU           0                     1        1     2
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   1                     0        0     1
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   1                     1        0     1
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   0                     0        1     1
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   0                     1        0     1
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH     1                     0      262   498
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH     1                     1       52   498
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH     0                     0      150   498
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH     0                     1       34   498
0-6 months (no birth st.)    PROVIDE          BANGLADESH     1                     0      446   633
0-6 months (no birth st.)    PROVIDE          BANGLADESH     1                     1       74   633
0-6 months (no birth st.)    PROVIDE          BANGLADESH     0                     0       86   633
0-6 months (no birth st.)    PROVIDE          BANGLADESH     0                     1       27   633
6-24 months                  CMC-V-BCS-2002   INDIA          1                     0       21   185
6-24 months                  CMC-V-BCS-2002   INDIA          1                     1       76   185
6-24 months                  CMC-V-BCS-2002   INDIA          0                     0        7   185
6-24 months                  CMC-V-BCS-2002   INDIA          0                     1       81   185
6-24 months                  GMS-Nepal        NEPAL          1                     0        6   356
6-24 months                  GMS-Nepal        NEPAL          1                     1        2   356
6-24 months                  GMS-Nepal        NEPAL          0                     0      147   356
6-24 months                  GMS-Nepal        NEPAL          0                     1      201   356
6-24 months                  IRC              INDIA          1                     0       94   230
6-24 months                  IRC              INDIA          1                     1       49   230
6-24 months                  IRC              INDIA          0                     0       49   230
6-24 months                  IRC              INDIA          0                     1       38   230
6-24 months                  NIH-Crypto       BANGLADESH     1                     0      185   397
6-24 months                  NIH-Crypto       BANGLADESH     1                     1       63   397
6-24 months                  NIH-Crypto       BANGLADESH     0                     0      118   397
6-24 months                  NIH-Crypto       BANGLADESH     0                     1       31   397
6-24 months                  PROVIDE          BANGLADESH     1                     0      284   456
6-24 months                  PROVIDE          BANGLADESH     1                     1      106   456
6-24 months                  PROVIDE          BANGLADESH     0                     0       35   456
6-24 months                  PROVIDE          BANGLADESH     0                     1       31   456


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/ab841866-725e-46df-a00b-4653e26cd10a/42c0e931-624f-4783-983d-1cbc44da83d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ab841866-725e-46df-a00b-4653e26cd10a/42c0e931-624f-4783-983d-1cbc44da83d4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ab841866-725e-46df-a00b-4653e26cd10a/42c0e931-624f-4783-983d-1cbc44da83d4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ab841866-725e-46df-a00b-4653e26cd10a/42c0e931-624f-4783-983d-1cbc44da83d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        1                    NA                0.8521127   0.7936266   0.9105988
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        0                    NA                0.9545455   0.9215913   0.9874996
0-24 months (no birth st.)   IRC              INDIA        1                    NA                0.5480769   0.4803460   0.6158079
0-24 months (no birth st.)   IRC              INDIA        0                    NA                0.6597222   0.5822257   0.7372187
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   1                    NA                0.3662420   0.3129005   0.4195836
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   0                    NA                0.3532609   0.2841275   0.4223943
0-24 months (no birth st.)   PROVIDE          BANGLADESH   1                    NA                0.3461538   0.3052314   0.3870763
0-24 months (no birth st.)   PROVIDE          BANGLADESH   0                    NA                0.5132743   0.4210450   0.6055037
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        1                    NA                0.3191489   0.2420752   0.3962226
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        0                    NA                0.4437086   0.3643298   0.5230874
0-6 months (no birth st.)    IRC              INDIA        1                    NA                0.3125000   0.2494194   0.3755806
0-6 months (no birth st.)    IRC              INDIA        0                    NA                0.3958333   0.3158464   0.4758203
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   1                    NA                0.1656051   0.1244482   0.2067620
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   0                    NA                0.1847826   0.1286464   0.2409188
0-6 months (no birth st.)    PROVIDE          BANGLADESH   1                    NA                0.1423077   0.1122559   0.1723594
0-6 months (no birth st.)    PROVIDE          BANGLADESH   0                    NA                0.2389381   0.1602507   0.3176254
6-24 months                  CMC-V-BCS-2002   INDIA        1                    NA                0.7835052   0.7013218   0.8656885
6-24 months                  CMC-V-BCS-2002   INDIA        0                    NA                0.9204545   0.8637664   0.9771427
6-24 months                  IRC              INDIA        1                    NA                0.3426573   0.2647009   0.4206138
6-24 months                  IRC              INDIA        0                    NA                0.4367816   0.3323324   0.5412308
6-24 months                  NIH-Crypto       BANGLADESH   1                    NA                0.2540323   0.1997854   0.3082791
6-24 months                  NIH-Crypto       BANGLADESH   0                    NA                0.2080537   0.1427950   0.2733124
6-24 months                  PROVIDE          BANGLADESH   1                    NA                0.2717949   0.2275931   0.3159967
6-24 months                  PROVIDE          BANGLADESH   0                    NA                0.4696970   0.3491590   0.5902349


### Parameter: E(Y)


agecat                       studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        NA                   NA                0.9054054   0.8720096   0.9388012
0-24 months (no birth st.)   IRC              INDIA        NA                   NA                0.5937500   0.5423701   0.6451299
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   NA                   NA                0.3614458   0.3192090   0.4036825
0-24 months (no birth st.)   PROVIDE          BANGLADESH   NA                   NA                0.3759874   0.3382238   0.4137509
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    IRC              INDIA        NA                   NA                0.3465909   0.2968062   0.3963756
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   NA                   NA                0.1726908   0.1394601   0.2059214
0-6 months (no birth st.)    PROVIDE          BANGLADESH   NA                   NA                0.1595577   0.1310079   0.1881074
6-24 months                  CMC-V-BCS-2002   INDIA        NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months                  IRC              INDIA        NA                   NA                0.3782609   0.3154507   0.4410711
6-24 months                  NIH-Crypto       BANGLADESH   NA                   NA                0.2367758   0.1949066   0.2786451
6-24 months                  PROVIDE          BANGLADESH   NA                   NA                0.3004386   0.2583143   0.3425629


### Parameter: RR


agecat                       studyid          country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        0                    1                 1.1202104   1.0373678   1.209669
0-24 months (no birth st.)   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   IRC              INDIA        0                    1                 1.2037037   1.0150136   1.427471
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   0                    1                 0.9645558   0.7557556   1.231043
0-24 months (no birth st.)   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROVIDE          BANGLADESH   0                    1                 1.4827925   1.1958253   1.838624
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        0                    1                 1.3902870   1.0293914   1.877709
0-6 months (no birth st.)    IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    IRC              INDIA        0                    1                 1.2666667   0.9519593   1.685413
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   0                    1                 1.1158027   0.7535756   1.652144
0-6 months (no birth st.)    PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROVIDE          BANGLADESH   0                    1                 1.6790242   1.1354176   2.482894
6-24 months                  CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  CMC-V-BCS-2002   INDIA        0                    1                 1.1747907   1.0402427   1.326741
6-24 months                  IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  IRC              INDIA        0                    1                 1.2746892   0.9163436   1.773170
6-24 months                  NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  NIH-Crypto       BANGLADESH   0                    1                 0.8190050   0.5603921   1.196964
6-24 months                  PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  PROVIDE          BANGLADESH   0                    1                 1.7281304   1.2753488   2.341661


### Parameter: PAR


agecat                       studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        1                    NA                 0.0532927    0.0178815   0.0887039
0-24 months (no birth st.)   IRC              INDIA        1                    NA                 0.0456731    0.0031783   0.0881678
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   1                    NA                -0.0047963   -0.0370637   0.0274712
0-24 months (no birth st.)   PROVIDE          BANGLADESH   1                    NA                 0.0298335    0.0111430   0.0485240
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        1                    NA                 0.0644127    0.0067526   0.1220728
0-6 months (no birth st.)    IRC              INDIA        1                    NA                 0.0340909   -0.0078022   0.0759840
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   1                    NA                 0.0070857   -0.0186455   0.0328169
0-6 months (no birth st.)    PROVIDE          BANGLADESH   1                    NA                 0.0172500    0.0019393   0.0325607
6-24 months                  CMC-V-BCS-2002   INDIA        1                    NA                 0.0651435    0.0166356   0.1136514
6-24 months                  IRC              INDIA        1                    NA                 0.0356035   -0.0140498   0.0852568
6-24 months                  NIH-Crypto       BANGLADESH   1                    NA                -0.0172564   -0.0491815   0.0146686
6-24 months                  PROVIDE          BANGLADESH   1                    NA                 0.0286437    0.0089909   0.0482966


### Parameter: PAF


agecat                       studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        1                    NA                 0.0588606    0.0178699   0.0981405
0-24 months (no birth st.)   IRC              INDIA        1                    NA                 0.0769231    0.0019391   0.1462735
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   1                    NA                -0.0132696   -0.1065958   0.0721858
0-24 months (no birth st.)   PROVIDE          BANGLADESH   1                    NA                 0.0793471    0.0281963   0.1278056
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        1                    NA                 0.1679331    0.0030847   0.3055225
0-6 months (no birth st.)    IRC              INDIA        1                    NA                 0.0983607   -0.0309466   0.2114494
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   1                    NA                 0.0410310   -0.1200232   0.1789263
0-6 months (no birth st.)    PROVIDE          BANGLADESH   1                    NA                 0.1081112    0.0082466   0.1979199
6-24 months                  CMC-V-BCS-2002   INDIA        1                    NA                 0.0767614    0.0159136   0.1338470
6-24 months                  IRC              INDIA        1                    NA                 0.0941243   -0.0472404   0.2164064
6-24 months                  NIH-Crypto       BANGLADESH   1                    NA                -0.0728809   -0.2163184   0.0536413
6-24 months                  PROVIDE          BANGLADESH   1                    NA                 0.0953397    0.0278309   0.1581606
