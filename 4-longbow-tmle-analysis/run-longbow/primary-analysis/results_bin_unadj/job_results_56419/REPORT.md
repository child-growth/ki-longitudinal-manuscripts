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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country        cleanck    wast_rec90d   n_cell     n  outcome_variable 
------------  -------------------------  -------------  --------  ------------  -------  ----  -----------------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        0     1  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        1     1  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        0     1  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     1  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0       38   324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       80   324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0       82   324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    1      124   324  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA          1                    0       84   383  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA          1                    1      135   383  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA          0                    0       72   383  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA          0                    1       92   383  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    0       91   308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    1      144   308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    0       38   308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    1       35   308  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    0       44   215  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    1       68   215  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    0       37   215  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    1       66   215  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                    0        6   583  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                    1        3   583  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    0      259   583  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    1      315   583  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        0     1  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        1     1  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        0     1  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     1  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    0       21   201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    1       57   201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    0       45   201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    1       78   201  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA          1                    0       52   232  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA          1                    1       82   232  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA          0                    0       33   232  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA          0                    1       65   232  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                    0       27   185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                    1      117   185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                    0       13   185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                    1       28   185  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    0        8   138  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    1       60   138  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                    0        5   138  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                    1       65   138  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                    0        4   238  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                    1        2   238  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    0       90   238  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    1      142   238  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0       17   123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       23   123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0       37   123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    1       46   123  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA          1                    0       32   151  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA          1                    1       53   151  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA          0                    0       39   151  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA          0                    1       27   151  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    0       64   123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    1       27   123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    0       25   123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    1        7   123  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    0       36    77  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    1        8    77  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    0       32    77  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    1        1    77  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                    0        2   345  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                    1        1   345  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    0      169   345  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    1      173   345  wast_rec90d      


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/fa007d19-533c-45c3-abce-a1bf8b1888d7/c3462a3d-821a-4b77-a002-9051d0c87e4f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fa007d19-533c-45c3-abce-a1bf8b1888d7/c3462a3d-821a-4b77-a002-9051d0c87e4f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fa007d19-533c-45c3-abce-a1bf8b1888d7/c3462a3d-821a-4b77-a002-9051d0c87e4f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fa007d19-533c-45c3-abce-a1bf8b1888d7/c3462a3d-821a-4b77-a002-9051d0c87e4f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6779661   0.5823161   0.7736161
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.6019417   0.5333539   0.6705295
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.6164384   0.5458049   0.6870719
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.5609756   0.4816525   0.6402987
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.6127660   0.5481876   0.6773443
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.4794521   0.3658539   0.5930502
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.6071429   0.5121534   0.7021323
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.6407767   0.5528472   0.7287062
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7307692   0.6321762   0.8293623
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.6341463   0.5474639   0.7208288
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.6119403   0.5287955   0.6950851
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.6632653   0.5662486   0.7602821
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.8125000   0.7498951   0.8751049
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.6829268   0.5413937   0.8244599
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.8823529   0.8043613   0.9603446
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.9285714   0.8671951   0.9899477
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.5750000   0.3977365   0.7522635
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.5542169   0.4466172   0.6618165
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.6235294   0.5196695   0.7273893
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.4090909   0.2772063   0.5409755
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2967033   0.2039707   0.3894359
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2187500   0.0526770   0.3848230


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.5926893   0.5398764   0.6455022
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.6232558   0.5583490   0.6881627
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.6336207   0.5704020   0.6968394
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.9057971   0.8561988   0.9553954
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.5298013   0.4450066   0.6145960
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.8878641   0.7406075   1.0644001
0-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        0                    1                 0.9100271   0.7586021   1.0916781
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 0.7824391   0.6036537   1.0141758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.0553969   0.8567376   1.3001211
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.8677792   0.7161599   1.0514981
0-6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        0                    1                 1.0838726   0.8877090   1.3233838
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 0.8405253   0.6737888   1.0485227
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.0523810   0.9424090   1.1751858
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.9638554   0.6696031   1.3874149
6-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        0                    1                 0.6560892   0.4564229   0.9431014
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 0.7372685   0.3243804   1.6757021


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0483365   -0.1231827    0.0265098
0-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0237491   -0.0692802    0.0217820
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0315971   -0.0630407   -0.0001535
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0161130   -0.0463045    0.0785304
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0591274   -0.1397212    0.0214663
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0216804   -0.0323490    0.0757098
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0287162   -0.0638157    0.0063832
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0234442   -0.0270350    0.0739233
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0140244   -0.1539761    0.1259273
6-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0937281   -0.1701210   -0.0173351
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0202805   -0.0703437    0.0297826


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0767697   -0.2023133    0.0356648
0-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0400700   -0.1197874    0.0339723
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0543682   -0.1101953   -0.0013485
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0258529   -0.0799996    0.1213306
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0880342   -0.2162536    0.0266682
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0342167   -0.0550050    0.1158929
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0366379   -0.0829956    0.0077354
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0258824   -0.0318118    0.0803505
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0250000   -0.3068451    0.1960600
6-24 months   ki1000108-IRC              INDIA        1                    NA                -0.1769118   -0.3387902   -0.0346067
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0733678   -0.2738040    0.0955293
