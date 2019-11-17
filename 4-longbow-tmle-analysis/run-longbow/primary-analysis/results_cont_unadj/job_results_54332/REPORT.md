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

**Outcome Variable:** y_rate_haz

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

agecat         studyid                    country        cleanck    n_cell     n
-------------  -------------------------  -------------  --------  -------  ----
0-3 months     ki0047075b-MAL-ED          PERU           1               1     1
0-3 months     ki0047075b-MAL-ED          PERU           0               0     1
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     2
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               1     2
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1              40    88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0              48    88
0-3 months     ki1000108-IRC              INDIA          1             212   369
0-3 months     ki1000108-IRC              INDIA          0             157   369
0-3 months     ki1017093b-PROVIDE         BANGLADESH     1             529   640
0-3 months     ki1017093b-PROVIDE         BANGLADESH     0             111   640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     1             334   547
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     0             213   547
0-3 months     ki1113344-GMS-Nepal        NEPAL          1               6   460
0-3 months     ki1113344-GMS-Nepal        NEPAL          0             454   460
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1             133   307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0             174   307
3-6 months     ki1000108-IRC              INDIA          1             224   390
3-6 months     ki1000108-IRC              INDIA          0             166   390
3-6 months     ki1017093b-PROVIDE         BANGLADESH     1             492   598
3-6 months     ki1017093b-PROVIDE         BANGLADESH     0             106   598
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     1             315   527
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     0             212   527
3-6 months     ki1113344-GMS-Nepal        NEPAL          1               6   424
3-6 months     ki1113344-GMS-Nepal        NEPAL          0             418   424
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA          1             136   313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA          0             177   313
6-9 months     ki1000108-IRC              INDIA          1             230   398
6-9 months     ki1000108-IRC              INDIA          0             168   398
6-9 months     ki1017093b-PROVIDE         BANGLADESH     1             462   565
6-9 months     ki1017093b-PROVIDE         BANGLADESH     0             103   565
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH     1             311   525
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH     0             214   525
6-9 months     ki1113344-GMS-Nepal        NEPAL          1               8   433
6-9 months     ki1113344-GMS-Nepal        NEPAL          0             425   433
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1             132   317
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0             185   317
9-12 months    ki1000108-IRC              INDIA          1             227   391
9-12 months    ki1000108-IRC              INDIA          0             164   391
9-12 months    ki1017093b-PROVIDE         BANGLADESH     1             464   566
9-12 months    ki1017093b-PROVIDE         BANGLADESH     0             102   566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH     1             304   518
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH     0             214   518
9-12 months    ki1113344-GMS-Nepal        NEPAL          1               8   424
9-12 months    ki1113344-GMS-Nepal        NEPAL          0             416   424
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA          1             136   329
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA          0             193   329
12-15 months   ki1000108-IRC              INDIA          1             220   380
12-15 months   ki1000108-IRC              INDIA          0             160   380
12-15 months   ki1017093b-PROVIDE         BANGLADESH     1             441   532
12-15 months   ki1017093b-PROVIDE         BANGLADESH     0              91   532
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH     1             295   507
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH     0             212   507
12-15 months   ki1113344-GMS-Nepal        NEPAL          1               8   423
12-15 months   ki1113344-GMS-Nepal        NEPAL          0             415   423
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA          1             135   321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA          0             186   321
15-18 months   ki1000108-IRC              INDIA          1             217   374
15-18 months   ki1000108-IRC              INDIA          0             157   374
15-18 months   ki1017093b-PROVIDE         BANGLADESH     1             438   528
15-18 months   ki1017093b-PROVIDE         BANGLADESH     0              90   528
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH     1             256   466
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH     0             210   466
15-18 months   ki1113344-GMS-Nepal        NEPAL          1               8   434
15-18 months   ki1113344-GMS-Nepal        NEPAL          0             426   434
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA          1             127   305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA          0             178   305
18-21 months   ki1000108-IRC              INDIA          1             212   371
18-21 months   ki1000108-IRC              INDIA          0             159   371
18-21 months   ki1017093b-PROVIDE         BANGLADESH     1             441   541
18-21 months   ki1017093b-PROVIDE         BANGLADESH     0             100   541
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH     1             222   431
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH     0             209   431
18-21 months   ki1113344-GMS-Nepal        NEPAL          1               7   406
18-21 months   ki1113344-GMS-Nepal        NEPAL          0             399   406
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             125   308
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             183   308
21-24 months   ki1000108-IRC              INDIA          1             216   380
21-24 months   ki1000108-IRC              INDIA          0             164   380
21-24 months   ki1017093b-PROVIDE         BANGLADESH     1             387   471
21-24 months   ki1017093b-PROVIDE         BANGLADESH     0              84   471
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             184   393
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             209   393
21-24 months   ki1113344-GMS-Nepal        NEPAL          1               4   310
21-24 months   ki1113344-GMS-Nepal        NEPAL          0             306   310


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
![](/tmp/7c15304f-b933-434b-8c95-0cee82be0e04/3c34c8f8-7ae1-428b-af49-2190bc27b83b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7c15304f-b933-434b-8c95-0cee82be0e04/3c34c8f8-7ae1-428b-af49-2190bc27b83b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7c15304f-b933-434b-8c95-0cee82be0e04/3c34c8f8-7ae1-428b-af49-2190bc27b83b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0579061   -0.0837153    0.1995275
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.2092925   -0.3548044   -0.0637805
0-3 months     ki1000108-IRC              INDIA        1                    NA                -0.1728369   -0.2436314   -0.1020424
0-3 months     ki1000108-IRC              INDIA        0                    NA                -0.3589492   -0.4460276   -0.2718709
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.1815644   -0.2004830   -0.1626458
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.2189023   -0.2620618   -0.1757427
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.1826945   -0.2093853   -0.1560037
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.2909872   -0.3162143   -0.2657601
0-3 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.1731986    0.0774761    0.2689210
0-3 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0350183   -0.0621623   -0.0078743
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0800404   -0.1498831   -0.0101977
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1116598   -0.1764945   -0.0468252
3-6 months     ki1000108-IRC              INDIA        1                    NA                -0.0425010   -0.0870207    0.0020187
3-6 months     ki1000108-IRC              INDIA        0                    NA                -0.0642886   -0.1031990   -0.0253782
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0242945   -0.0422999   -0.0062891
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0393461   -0.0718318   -0.0068603
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0104667   -0.0328936    0.0119601
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0907843    0.0564599    0.1251088
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.3974205   -0.4687983   -0.3260427
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.1617840   -0.1819009   -0.1416670
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0809157   -0.1351818   -0.0266495
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0827724   -0.1265838   -0.0389609
6-9 months     ki1000108-IRC              INDIA        1                    NA                -0.0174993   -0.0472837    0.0122851
6-9 months     ki1000108-IRC              INDIA        0                    NA                -0.0213987   -0.0506521    0.0078547
6-9 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0547504   -0.0668063   -0.0426946
6-9 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0913709   -0.1152927   -0.0674491
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0019721   -0.0182329    0.0221770
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0566343   -0.0780579   -0.0352107
6-9 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0321023   -0.1124147    0.0482102
6-9 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0450512   -0.0643517   -0.0257508
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1049542   -0.1455974   -0.0643111
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1287059   -0.1679779   -0.0894340
9-12 months    ki1000108-IRC              INDIA        1                    NA                -0.0487200   -0.0722130   -0.0252271
9-12 months    ki1000108-IRC              INDIA        0                    NA                -0.0186757   -0.0432174    0.0058660
9-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0581867   -0.0706112   -0.0457623
9-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0851565   -0.1072804   -0.0630325
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0420476   -0.0588406   -0.0252545
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0255252   -0.0439986   -0.0070518
9-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0314007   -0.0618148   -0.0009866
9-12 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0780277   -0.0930251   -0.0630303
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0598186   -0.1026936   -0.0169437
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0792773   -0.1160607   -0.0424940
12-15 months   ki1000108-IRC              INDIA        1                    NA                -0.0514631   -0.0756113   -0.0273148
12-15 months   ki1000108-IRC              INDIA        0                    NA                -0.0351970   -0.0583302   -0.0120638
12-15 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0370429   -0.0482785   -0.0258074
12-15 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0596546   -0.0820172   -0.0372919
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0367068   -0.0515327   -0.0218808
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0362671   -0.0527184   -0.0198158
12-15 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0525575   -0.0932027   -0.0119122
12-15 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0684343   -0.0802563   -0.0566123
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0540725   -0.0954041   -0.0127409
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0782589   -0.1052480   -0.0512699
15-18 months   ki1000108-IRC              INDIA        1                    NA                -0.0397542   -0.0616089   -0.0178996
15-18 months   ki1000108-IRC              INDIA        0                    NA                -0.0326545   -0.0513423   -0.0139668
15-18 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0382304   -0.0478959   -0.0285650
15-18 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0347883   -0.0552518   -0.0143249
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0224434   -0.0351600   -0.0097269
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0087895   -0.0233201    0.0057410
15-18 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.1358700   -0.1700189   -0.1017211
15-18 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0662360   -0.0800615   -0.0524104
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0503369   -0.0864009   -0.0142729
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0390774   -0.0674042   -0.0107506
18-21 months   ki1000108-IRC              INDIA        1                    NA                -0.0342084   -0.0526854   -0.0157314
18-21 months   ki1000108-IRC              INDIA        0                    NA                -0.0500582   -0.0692541   -0.0308623
18-21 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0120383   -0.0208918   -0.0031848
18-21 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0060961   -0.0266528    0.0144606
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0300446   -0.0426852   -0.0174039
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0204590   -0.0333131   -0.0076050
18-21 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0084094   -0.0345648    0.0177460
18-21 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0169791    0.0040007    0.0299576
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0091230   -0.0287319    0.0469779
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0235604   -0.0004636    0.0475845
21-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0112086   -0.0298099    0.0073928
21-24 months   ki1000108-IRC              INDIA        0                    NA                -0.0180978   -0.0388190    0.0026234
21-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0454126    0.0358573    0.0549678
21-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0500198    0.0297217    0.0703179
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0523623    0.0387294    0.0659953
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0731405    0.0614262    0.0848548


### Parameter: E(Y)


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     ki1000108-IRC              INDIA        NA                   NA                -0.2520229   -0.3078384   -0.1962074
0-3 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.2248633   -0.2444011   -0.2053256
0-3 months     ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.0323024   -0.0589635   -0.0056413
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA        NA                   NA                -0.0517747   -0.0822588   -0.0212906
3-6 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0302642    0.0105575    0.0499710
3-6 months     ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.1651184   -0.1849912   -0.1452456
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     ki1000108-IRC              INDIA        NA                   NA                -0.0191453   -0.0403295    0.0020389
6-9 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0219170   -0.0369369   -0.0068971
6-9 months     ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.0448120   -0.0637374   -0.0258865
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    ki1000108-IRC              INDIA        NA                   NA                -0.0361183   -0.0532692   -0.0189675
9-12 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0352217   -0.0477064   -0.0227371
9-12 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.0771479   -0.0918027   -0.0624932
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   ki1000108-IRC              INDIA        NA                   NA                -0.0446142   -0.0616724   -0.0275560
12-15 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0365229   -0.0475564   -0.0254894
12-15 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.0681340   -0.0797070   -0.0565610
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   ki1000108-IRC              INDIA        NA                   NA                -0.0367739   -0.0516890   -0.0218588
15-18 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0162904   -0.0258853   -0.0066955
15-18 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.0675196   -0.0810553   -0.0539839
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   ki1000108-IRC              INDIA        NA                   NA                -0.0410011   -0.0544100   -0.0275923
18-21 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0253964   -0.0344213   -0.0163714
18-21 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                 0.0165414    0.0038665    0.0292163
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   ki1000108-IRC              INDIA        NA                   NA                -0.0141818   -0.0280342   -0.0003294
21-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0634123    0.0544343    0.0723903


### Parameter: ATE


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.2671985   -0.4702512   -0.0641459
0-3 months     ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        0                    1                 -0.1861123   -0.2983375   -0.0738871
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0373379   -0.0844617    0.0097860
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.1082927   -0.1450187   -0.0715667
0-3 months     ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.2082168   -0.3077134   -0.1087202
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0316194   -0.1269165    0.0636776
3-6 months     ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        0                    1                 -0.0217876   -0.0809148    0.0373396
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0150516   -0.0521935    0.0220903
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.1012511    0.0602495    0.1422527
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    1                  0.2356365    0.1614780    0.3097950
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0018567   -0.0716009    0.0678875
6-9 months     ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA        0                    1                 -0.0038994   -0.0456471    0.0378484
6-9 months     ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0366205   -0.0634085   -0.0098325
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.0586063   -0.0880547   -0.0291579
6-9 months     ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.0129489   -0.0955480    0.0696501
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0237517   -0.0802685    0.0327651
9-12 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA        0                    1                  0.0300443   -0.0039294    0.0640180
9-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0269697   -0.0523437   -0.0015958
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0165224   -0.0084431    0.0414878
9-12 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.0466270   -0.0805378   -0.0127163
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0194587   -0.0759501    0.0370327
12-15 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA        0                    1                  0.0162661   -0.0171747    0.0497068
12-15 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0226116   -0.0476381    0.0024148
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0004396   -0.0217065    0.0225858
12-15 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.0158768   -0.0582064    0.0264528
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0241864   -0.0735494    0.0251766
15-18 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA        0                    1                  0.0070997   -0.0216554    0.0358548
15-18 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                  0.0034421   -0.0191892    0.0260734
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0136539   -0.0056554    0.0329632
15-18 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL        0                    1                  0.0696340    0.0327926    0.1064755
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                  0.0112594   -0.0345993    0.0571181
18-21 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA        0                    1                 -0.0158498   -0.0424934    0.0107938
18-21 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                  0.0059422   -0.0164400    0.0283244
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0095855   -0.0084425    0.0276136
18-21 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL        0                    1                  0.0253885   -0.0038098    0.0545869
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                  0.0144374   -0.0303973    0.0592721
21-24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA        0                    1                 -0.0068893   -0.0347348    0.0209563
21-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                  0.0046072   -0.0178275    0.0270419
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0207782    0.0028037    0.0387527


### Parameter: PAR


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1457447   -0.2599746   -0.0315147
0-3 months     ki1000108-IRC              INDIA        1                    NA                -0.0791860   -0.1278517   -0.0305203
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0064758   -0.0147220    0.0017704
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0421688   -0.0571400   -0.0271976
0-3 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.2055009   -0.3025342   -0.1084677
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0179211   -0.0719617    0.0361194
3-6 months     ki1000108-IRC              INDIA        1                    NA                -0.0092737   -0.0344634    0.0159160
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0026680   -0.0092678    0.0039318
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0407310    0.0237000    0.0577620
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.2323021    0.1599489    0.3046552
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0010500   -0.0404901    0.0383902
6-9 months     ki1000108-IRC              INDIA        1                    NA                -0.0016460   -0.0192691    0.0159772
6-9 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0066759   -0.0116969   -0.0016550
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0238891   -0.0361434   -0.0116347
6-9 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0127097   -0.0932439    0.0678245
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0138614   -0.0468696    0.0191469
9-12 months    ki1000108-IRC              INDIA        1                    NA                 0.0126017   -0.0017239    0.0269273
9-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0048603   -0.0095122   -0.0002084
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0068258   -0.0035119    0.0171636
9-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0457472   -0.0788158   -0.0126787
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0114150   -0.0445705    0.0217406
12-15 months   ki1000108-IRC              INDIA        1                    NA                 0.0068489   -0.0072546    0.0209524
12-15 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0038678   -0.0082094    0.0004739
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0001838   -0.0090765    0.0094442
12-15 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0155766   -0.0568484    0.0256953
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0140145   -0.0426473    0.0146182
15-18 months   ki1000108-IRC              INDIA        1                    NA                 0.0029804   -0.0090959    0.0150566
15-18 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0005867   -0.0032725    0.0044459
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0061530   -0.0025704    0.0148765
15-18 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0683504    0.0324192    0.1042817
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0065711   -0.0201996    0.0333418
18-21 months   ki1000108-IRC              INDIA        1                    NA                -0.0067928   -0.0182394    0.0046538
18-21 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0010984   -0.0030434    0.0052401
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0046482   -0.0041057    0.0134021
18-21 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0249508   -0.0035194    0.0534210
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0085781   -0.0180725    0.0352286
21-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0029733   -0.0149957    0.0090492
21-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0008217   -0.0031826    0.0048259
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0110500    0.0014361    0.0206639
