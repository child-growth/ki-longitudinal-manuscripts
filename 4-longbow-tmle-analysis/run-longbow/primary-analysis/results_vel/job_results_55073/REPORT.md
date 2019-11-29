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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country        cleanck    n_cell     n  outcome_variable 
-------------  -------------------------  -------------  --------  -------  ----  -----------------
0-3 months     ki0047075b-MAL-ED          PERU           1               1     1  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU           0               0     1  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               2     3  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               1     3  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1             147   331  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0             184   331  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA          1             223   386  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA          0             163   386  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH     1             529   640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH     0             111   640  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     1             337   550  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     0             213   550  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL          1               7   460  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL          0             453   460  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1             138   322  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0             184   322  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA          1             225   391  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA          0             166   391  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH     1             494   601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH     0             107   601  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     1             320   532  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     0             212   532  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL          1               6   424  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL          0             418   424  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA          1             141   325  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA          0             184   325  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA          1             231   400  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA          0             169   400  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH     1             472   576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH     0             104   576  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH     1             315   529  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH     0             214   529  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL          1               8   429  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL          0             421   429  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1             139   327  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0             188   327  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA          1             228   393  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA          0             165   393  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH     1             467   569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH     0             102   569  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH     1             310   524  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH     0             214   524  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL          1               8   412  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL          0             404   412  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA          1             140   334  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA          0             194   334  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA          1             221   382  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA          0             161   382  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH     1             445   537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH     0              92   537  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH     1             299   511  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH     0             212   511  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL          1               8   410  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL          0             402   410  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA          1             138   325  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA          0             187   325  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA          1             218   375  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA          0             157   375  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH     1             442   533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH     0              91   533  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH     1             257   467  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH     0             210   467  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL          1               8   432  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL          0             424   432  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA          1             129   310  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA          0             181   310  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA          1             213   372  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA          0             159   372  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH     1             442   542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH     0             100   542  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH     1             222   431  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH     0             209   431  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL          1               7   407  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL          0             400   407  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             126   311  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             185   311  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA          1             216   380  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA          0             164   380  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH     1             396   485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH     0              89   485  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             186   395  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             209   395  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL          1               4   310  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL          0             306   310  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/93828870-0230-467e-b3ea-6aeea3ad1566/11feed38-6822-47db-a250-50d6a2d3af5e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/93828870-0230-467e-b3ea-6aeea3ad1566/11feed38-6822-47db-a250-50d6a2d3af5e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/93828870-0230-467e-b3ea-6aeea3ad1566/11feed38-6822-47db-a250-50d6a2d3af5e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7729188   0.7392917   0.8065458
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.7332869   0.6973919   0.7691819
0-3 months     ki1000108-IRC              INDIA        1                    NA                0.7667431   0.7394590   0.7940272
0-3 months     ki1000108-IRC              INDIA        0                    NA                0.7686968   0.7385309   0.7988626
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.9116203   0.8954436   0.9277970
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.8533418   0.8184833   0.8882003
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.8843731   0.8599866   0.9087596
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.8968339   0.8705911   0.9230768
0-3 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                0.8517935   0.7801961   0.9233909
0-3 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                0.8221249   0.8038873   0.8403626
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.4937877   0.4599105   0.5276649
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.4577074   0.4354684   0.4799464
3-6 months     ki1000108-IRC              INDIA        1                    NA                0.4667889   0.4421093   0.4914684
3-6 months     ki1000108-IRC              INDIA        0                    NA                0.4518015   0.4262553   0.4773478
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.4980194   0.4827487   0.5132901
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.4485617   0.4258022   0.4713213
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.5032076   0.4860842   0.5203310
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.4958392   0.4730381   0.5186403
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                0.3977899   0.3730672   0.4225126
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                0.4950234   0.4799980   0.5100489
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2586172   0.2330530   0.2841814
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.2664486   0.2439644   0.2889328
6-9 months     ki1000108-IRC              INDIA        1                    NA                0.2695950   0.2489744   0.2902157
6-9 months     ki1000108-IRC              INDIA        0                    NA                0.2562559   0.2349784   0.2775334
6-9 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2540233   0.2401343   0.2679123
6-9 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2266527   0.2050477   0.2482578
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2693651   0.2532359   0.2854944
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2978366   0.2756927   0.3199806
6-9 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2373516   0.2071781   0.2675251
6-9 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1884564   0.1750948   0.2018179
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2324191   0.2050710   0.2597671
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1934609   0.1680958   0.2188261
9-12 months    ki1000108-IRC              INDIA        1                    NA                0.2165350   0.1967575   0.2363126
9-12 months    ki1000108-IRC              INDIA        0                    NA                0.2140649   0.1906098   0.2375200
9-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1804396   0.1697686   0.1911105
9-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1651947   0.1462152   0.1841742
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1888874   0.1725765   0.2051983
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2216487   0.2029002   0.2403972
9-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1404390   0.0774489   0.2034290
9-12 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1395699   0.1259592   0.1531806
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1580864   0.1355582   0.1806145
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1459009   0.1257413   0.1660605
12-15 months   ki1000108-IRC              INDIA        1                    NA                0.1895012   0.1718629   0.2071396
12-15 months   ki1000108-IRC              INDIA        0                    NA                0.1631039   0.1438068   0.1824009
12-15 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1846142   0.1715899   0.1976384
12-15 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1617410   0.1351442   0.1883378
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1719455   0.1543025   0.1895884
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1487608   0.1286370   0.1688846
12-15 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2124379   0.1407820   0.2840939
12-15 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1754264   0.1615923   0.1892604
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1736633   0.1507278   0.1965989
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1380641   0.1184145   0.1577137
15-18 months   ki1000108-IRC              INDIA        1                    NA                0.1692288   0.1513141   0.1871435
15-18 months   ki1000108-IRC              INDIA        0                    NA                0.1553328   0.1323224   0.1783433
15-18 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1560639   0.1429250   0.1692028
15-18 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1572174   0.1295205   0.1849142
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1521469   0.1328044   0.1714895
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1787709   0.1619305   0.1956114
15-18 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2159802   0.1441626   0.2877979
15-18 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2374486   0.2212279   0.2536693
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1337891   0.1015295   0.1660488
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1448698   0.1257203   0.1640192
18-21 months   ki1000108-IRC              INDIA        1                    NA                0.1638909   0.1446035   0.1831783
18-21 months   ki1000108-IRC              INDIA        0                    NA                0.1534450   0.1338453   0.1730446
18-21 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1307453   0.1176608   0.1438299
18-21 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1399080   0.1157904   0.1640256
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1493577   0.1313598   0.1673556
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1449852   0.1230409   0.1669296
18-21 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1069112   0.0173514   0.1964710
18-21 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1405466   0.1237035   0.1573898
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1474754   0.1269500   0.1680008
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1387038   0.1182711   0.1591365
21-24 months   ki1000108-IRC              INDIA        1                    NA                0.1808119   0.1615769   0.2000468
21-24 months   ki1000108-IRC              INDIA        0                    NA                0.1748202   0.1509356   0.1987047
21-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1422820   0.1296886   0.1548753
21-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1461599   0.1189108   0.1734089
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1550772   0.1308743   0.1792802
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1978017   0.1778465   0.2177570


### Parameter: E(Y)


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     ki1000108-IRC              INDIA        NA                   NA                0.7669350   0.7473009   0.7865692
0-3 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.8901037   0.8738687   0.9063387
0-3 months     ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.8225764   0.8047018   0.8404511
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     ki1000108-IRC              INDIA        NA                   NA                0.4640137   0.4462252   0.4818022
3-6 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.5011716   0.4886950   0.5136482
3-6 months     ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.4936475   0.4789438   0.5083512
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     ki1000108-IRC              INDIA        NA                   NA                0.2625992   0.2484830   0.2767153
6-9 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2799276   0.2681500   0.2917053
6-9 months     ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1893682   0.1763037   0.2024326
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    ki1000108-IRC              INDIA        NA                   NA                0.2148825   0.2005353   0.2292297
9-12 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1997882   0.1879938   0.2115826
9-12 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1395867   0.1262232   0.1529503
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   ki1000108-IRC              INDIA        NA                   NA                0.1807123   0.1677267   0.1936978
12-15 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1634289   0.1511149   0.1757429
12-15 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1761486   0.1625329   0.1897642
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   ki1000108-IRC              INDIA        NA                   NA                0.1621526   0.1485252   0.1757800
15-18 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1636945   0.1517037   0.1756852
15-18 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.2370510   0.2211319   0.2529701
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   ki1000108-IRC              INDIA        NA                   NA                0.1576598   0.1441337   0.1711860
18-21 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1460095   0.1336664   0.1583525
18-21 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1399681   0.1233886   0.1565477
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1775274   0.1635028   0.1915520
21-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1808389   0.1670473   0.1946304


### Parameter: ATE


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0396318   -0.0888163    0.0095526
0-3 months     ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        0                    1                  0.0019536   -0.0387414    0.0426487
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0582785   -0.0967380   -0.0198190
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0124608   -0.0229863    0.0479079
0-3 months     ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.0296686   -0.1035523    0.0442151
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0360803   -0.0764596    0.0042991
3-6 months     ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        0                    1                 -0.0149873   -0.0505055    0.0205308
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0494577   -0.0769144   -0.0220009
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.0073684   -0.0360281    0.0212913
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    1                  0.0972335    0.0683030    0.1261641
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    1                  0.0078314   -0.0267656    0.0424284
6-9 months     ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA        0                    1                 -0.0133391   -0.0435115    0.0168333
6-9 months     ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0273706   -0.0529396   -0.0018015
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0284715    0.0010366    0.0559064
6-9 months     ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.0488953   -0.0818949   -0.0158957
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0389582   -0.0763262   -0.0015901
9-12 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA        0                    1                 -0.0024701   -0.0335684    0.0286282
9-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0152448   -0.0371083    0.0066186
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0327613    0.0078433    0.0576793
9-12 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.0008691   -0.0653129    0.0635747
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0121855   -0.0423423    0.0179714
12-15 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA        0                    1                 -0.0263973   -0.0526052   -0.0001895
12-15 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0228732   -0.0525791    0.0068327
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.0231847   -0.0499863    0.0036170
12-15 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.0370116   -0.1099908    0.0359676
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0355992   -0.0658462   -0.0053523
15-18 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA        0                    1                 -0.0138960   -0.0431264    0.0153345
15-18 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                  0.0011535   -0.0296164    0.0319233
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0266240    0.0010255    0.0522226
15-18 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL        0                    1                  0.0214684   -0.0521583    0.0950951
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                  0.0110806   -0.0273138    0.0494751
18-21 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA        0                    1                 -0.0104460   -0.0380380    0.0171461
18-21 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                  0.0091627   -0.0185077    0.0368330
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.0043724   -0.0330819    0.0243370
18-21 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL        0                    1                  0.0336355   -0.0574944    0.1247653
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0087717   -0.0383171    0.0207738
21-24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA        0                    1                 -0.0059917   -0.0371869    0.0252035
21-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                  0.0038779   -0.0262273    0.0339831
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0427245    0.0112087    0.0742403


### Parameter: PAR


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0261629   -0.0537837    0.0014580
0-3 months     ki1000108-IRC              INDIA        1                    NA                 0.0001919   -0.0177114    0.0180952
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0099731   -0.0168399   -0.0031064
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0057306   -0.0108589    0.0223201
0-3 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0292171   -0.1012545    0.0428203
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0186310   -0.0429308    0.0056688
3-6 months     ki1000108-IRC              INDIA        1                    NA                -0.0027751   -0.0184350    0.0128847
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0089583   -0.0141958   -0.0037207
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0020360   -0.0136518    0.0095798
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0958576    0.0676291    0.1240861
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0009717   -0.0184030    0.0203464
6-9 months     ki1000108-IRC              INDIA        1                    NA                -0.0069959   -0.0213329    0.0073411
6-9 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0048580   -0.0096979   -0.0000180
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0105625   -0.0005663    0.0216913
6-9 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0479835   -0.0801642   -0.0158028
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0200883   -0.0426910    0.0025145
9-12 months    ki1000108-IRC              INDIA        1                    NA                -0.0016525   -0.0152256    0.0119207
9-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0029080   -0.0068104    0.0009944
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0109008   -0.0001670    0.0219686
9-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0008522   -0.0636849    0.0619804
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0076196   -0.0258923    0.0106532
12-15 months   ki1000108-IRC              INDIA        1                    NA                -0.0087890   -0.0203181    0.0027402
12-15 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0045818   -0.0096455    0.0004818
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0085165   -0.0215734    0.0045404
12-15 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0362894   -0.1074458    0.0348670
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0214798   -0.0386565   -0.0043031
15-18 months   ki1000108-IRC              INDIA        1                    NA                -0.0070762   -0.0191167    0.0049643
15-18 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0002875   -0.0048156    0.0053907
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0115475   -0.0021003    0.0251953
15-18 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0210708   -0.0507157    0.0928573
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0014436   -0.0229713    0.0258585
18-21 months   ki1000108-IRC              INDIA        1                    NA                -0.0062311   -0.0180877    0.0056255
18-21 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0017428   -0.0033162    0.0068019
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0033482   -0.0182598    0.0115634
18-21 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0330570   -0.0557956    0.1219096
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0009736   -0.0166028    0.0185501
21-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0032845   -0.0160904    0.0095214
21-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0003115   -0.0059141    0.0052911
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0257617    0.0064102    0.0451131
