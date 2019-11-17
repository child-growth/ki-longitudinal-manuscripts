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

**Outcome Variable:** ever_co

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

agecat        studyid                    country        cleanck    ever_co   n_cell     n
------------  -------------------------  -------------  --------  --------  -------  ----
0-24 months   ki0047075b-MAL-ED          PERU           1                0        1     2
0-24 months   ki0047075b-MAL-ED          PERU           1                1        0     2
0-24 months   ki0047075b-MAL-ED          PERU           0                0        1     2
0-24 months   ki0047075b-MAL-ED          PERU           0                1        0     2
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     3
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                1        1     3
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                0        1     3
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     3
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                0      142   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                1       21   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                0      145   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                1       65   373
0-24 months   ki1000108-IRC              INDIA          1                0      198   400
0-24 months   ki1000108-IRC              INDIA          1                1       33   400
0-24 months   ki1000108-IRC              INDIA          0                0      130   400
0-24 months   ki1000108-IRC              INDIA          0                1       39   400
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                0      508   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                1       63   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                0      102   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                1       27   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                0      329   577
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                1       31   577
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                0      200   577
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                1       17   577
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                0       10   612
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                1        0   612
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                0      421   612
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                1      181   612
0-6 months    ki0047075b-MAL-ED          PERU           1                0        1     2
0-6 months    ki0047075b-MAL-ED          PERU           1                1        0     2
0-6 months    ki0047075b-MAL-ED          PERU           0                0        1     2
0-6 months    ki0047075b-MAL-ED          PERU           0                1        0     2
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                1        1     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                0        1     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                0      156   368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                1        6   368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                0      181   368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                1       25   368
0-6 months    ki1000108-IRC              INDIA          1                0      219   399
0-6 months    ki1000108-IRC              INDIA          1                1       12   399
0-6 months    ki1000108-IRC              INDIA          0                0      156   399
0-6 months    ki1000108-IRC              INDIA          0                1       12   399
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                0      549   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                1       22   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                0      121   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                1        8   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                0      355   577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                1        5   577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                0      210   577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                1        7   577
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                0       10   612
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                1        0   612
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                0      572   612
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                1       30   612
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                1        0     1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                0        0     1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     1
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                0      147   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                1       16   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                0      156   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                1       54   373
6-24 months   ki1000108-IRC              INDIA          1                0      202   400
6-24 months   ki1000108-IRC              INDIA          1                1       29   400
6-24 months   ki1000108-IRC              INDIA          0                0      137   400
6-24 months   ki1000108-IRC              INDIA          0                1       32   400
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                0      456   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                1       51   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                0       83   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                1       24   614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                0      316   559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                1       27   559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                0      200   559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                1       16   559
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                0        8   529
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                1        0   529
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                0      348   529
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                1      173   529


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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
![](/tmp/a7af6184-088d-4968-ad6b-ffc06d728171/a5306312-66b3-4f4d-b798-d2ebcd7fd79b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a7af6184-088d-4968-ad6b-ffc06d728171/a5306312-66b3-4f4d-b798-d2ebcd7fd79b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a7af6184-088d-4968-ad6b-ffc06d728171/a5306312-66b3-4f4d-b798-d2ebcd7fd79b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a7af6184-088d-4968-ad6b-ffc06d728171/a5306312-66b3-4f4d-b798-d2ebcd7fd79b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1288344   0.0773348   0.1803339
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3095238   0.2469139   0.3721337
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.1428571   0.0976754   0.1880389
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.2307692   0.1671680   0.2943705
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1103327   0.0846166   0.1360489
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2093023   0.1390508   0.2795539
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0861111   0.0571077   0.1151146
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0783410   0.0425582   0.1141238
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0370370   0.0079162   0.0661579
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1213592   0.0767066   0.1660119
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.0519481   0.0232939   0.0806022
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.0714286   0.0324360   0.1104212
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0385289   0.0227309   0.0543269
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0620155   0.0203658   0.1036652
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0138889   0.0017893   0.0259885
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0322581   0.0087296   0.0557865
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0981595   0.0524224   0.1438966
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.2571429   0.1979511   0.3163346
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.1255411   0.0827604   0.1683219
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.1893491   0.1302070   0.2484912
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1005917   0.0743883   0.1267951
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2242991   0.1452001   0.3033981
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0787172   0.0501925   0.1072419
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0740741   0.0391173   0.1090308


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1800000   0.1423032   0.2176968
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0831889   0.0606356   0.1057422
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.0601504   0.0367913   0.0835094
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0207972   0.0091432   0.0324513
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1525000   0.1172250   0.1877750
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0769231   0.0548136   0.0990325


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.4024943   1.5349646   3.760334
0-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        0                    1                 1.6153846   1.0619062   2.457343
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.8970100   1.2606686   2.854554
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.9097666   0.5157773   1.604715
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 3.2766990   1.3753959   7.806302
0-6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        0                    1                 1.3750000   0.6328015   2.987706
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.6095842   0.7327878   3.535487
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 2.3225806   0.7456384   7.234581
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.6196428   1.5578906   4.405013
6-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        0                    1                 1.5082636   0.9499934   2.394605
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 2.2297966   1.4383309   3.456779
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.9410151   0.5190324   1.706077


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1017286    0.0551867   0.1482706
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0371429    0.0039068   0.0703789
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0182387    0.0041618   0.0323156
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0029222   -0.0202477   0.0144033
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0472021    0.0170547   0.0773495
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0082023   -0.0121938   0.0285985
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0043282   -0.0039085   0.0125650
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0069083   -0.0030683   0.0168850
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0895080    0.0466379   0.1323782
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0269589   -0.0040354   0.0579531
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0215581    0.0065694   0.0365468
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0017941   -0.0192289   0.0156407


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4412184    0.2142334   0.6026341
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.2063492    0.0026453   0.3684477
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1418564    0.0280124   0.2423664
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0351273   -0.2656079   0.1533804
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.5603345    0.1129210   0.7820874
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.1363636   -0.2734637   0.4142999
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1009924   -0.1095560   0.2715873
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.3321759   -0.2968904   0.6561089
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4769500    0.2172135   0.6505033
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.1767795   -0.0500229   0.3545931
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1764891    0.0493635   0.2866147
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0233236   -0.2769341   0.1799175
