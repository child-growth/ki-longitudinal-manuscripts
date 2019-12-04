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

**Outcome Variable:** y_rate_len

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
0-3 months     ki0047075b-MAL-ED          PERU           1               1     1  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU           0               0     1  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     2  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               1     2  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1              40    88  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0              48    88  y_rate_len       
0-3 months     ki1000108-IRC              INDIA          1             212   369  y_rate_len       
0-3 months     ki1000108-IRC              INDIA          0             157   369  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH     1             529   640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH     0             111   640  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     1             334   547  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     0             213   547  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL          1               6   460  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL          0             454   460  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1             133   307  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0             174   307  y_rate_len       
3-6 months     ki1000108-IRC              INDIA          1             224   390  y_rate_len       
3-6 months     ki1000108-IRC              INDIA          0             166   390  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH     1             492   598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH     0             106   598  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     1             315   527  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     0             212   527  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL          1               6   424  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL          0             418   424  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA          1             136   313  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA          0             177   313  y_rate_len       
6-9 months     ki1000108-IRC              INDIA          1             230   398  y_rate_len       
6-9 months     ki1000108-IRC              INDIA          0             168   398  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH     1             462   565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH     0             103   565  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH     1             311   525  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH     0             214   525  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL          1               8   433  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL          0             425   433  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1             132   317  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0             185   317  y_rate_len       
9-12 months    ki1000108-IRC              INDIA          1             227   391  y_rate_len       
9-12 months    ki1000108-IRC              INDIA          0             164   391  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH     1             464   566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH     0             102   566  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH     1             304   518  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH     0             214   518  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL          1               8   424  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL          0             416   424  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA          1             136   329  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA          0             193   329  y_rate_len       
12-15 months   ki1000108-IRC              INDIA          1             220   380  y_rate_len       
12-15 months   ki1000108-IRC              INDIA          0             160   380  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH     1             441   532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH     0              91   532  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH     1             295   507  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH     0             212   507  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL          1               8   423  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL          0             415   423  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA          1             135   321  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA          0             186   321  y_rate_len       
15-18 months   ki1000108-IRC              INDIA          1             217   374  y_rate_len       
15-18 months   ki1000108-IRC              INDIA          0             157   374  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH     1             438   528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH     0              90   528  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH     1             256   466  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH     0             210   466  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL          1               8   434  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL          0             426   434  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA          1             127   305  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA          0             178   305  y_rate_len       
18-21 months   ki1000108-IRC              INDIA          1             212   371  y_rate_len       
18-21 months   ki1000108-IRC              INDIA          0             159   371  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH     1             441   541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH     0             100   541  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH     1             222   431  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH     0             209   431  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL          1               7   406  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL          0             399   406  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             125   308  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             183   308  y_rate_len       
21-24 months   ki1000108-IRC              INDIA          1             216   380  y_rate_len       
21-24 months   ki1000108-IRC              INDIA          0             164   380  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH     1             387   471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH     0              84   471  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             184   393  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             209   393  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL          1               4   310  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL          0             306   310  y_rate_len       


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
![](/tmp/ae951d86-9724-49e8-ab8c-592399ed4d4c/f02ed6a0-9565-4cd7-883c-90d52c94fb0e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ae951d86-9724-49e8-ab8c-592399ed4d4c/f02ed6a0-9565-4cd7-883c-90d52c94fb0e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ae951d86-9724-49e8-ab8c-592399ed4d4c/f02ed6a0-9565-4cd7-883c-90d52c94fb0e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                3.7383240   3.4168325   4.0598155
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                3.2340980   2.9372544   3.5309416
0-3 months     ki1000108-IRC              INDIA        1                    NA                3.3045509   3.1566283   3.4524735
0-3 months     ki1000108-IRC              INDIA        0                    NA                2.9462888   2.7665936   3.1259839
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                3.2731483   3.2327874   3.3135092
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                3.1828377   3.0912738   3.2744016
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                3.1992799   3.1393152   3.2592445
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                2.9922689   2.9338459   3.0506919
0-3 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                4.0267398   3.8145010   4.2389786
0-3 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                3.5890576   3.5338399   3.6442753
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                1.8436243   1.6897699   1.9974788
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                1.7770374   1.6376584   1.9164165
3-6 months     ki1000108-IRC              INDIA        1                    NA                1.8994966   1.8017877   1.9972056
3-6 months     ki1000108-IRC              INDIA        0                    NA                1.8351761   1.7506940   1.9196582
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                1.9740028   1.9355909   2.0124148
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                1.9287620   1.8589378   1.9985861
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                1.9439584   1.8896057   1.9983110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                2.0790613   2.0042208   2.1539019
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                1.2139650   1.0591458   1.3687842
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                1.7068916   1.6642904   1.7494928
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                1.2305454   1.1052502   1.3558406
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                1.2073994   1.1050958   1.3097029
6-9 months     ki1000108-IRC              INDIA        1                    NA                1.3583813   1.2889051   1.4278575
6-9 months     ki1000108-IRC              INDIA        0                    NA                1.3718173   1.3050848   1.4385498
6-9 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                1.2996070   1.2715444   1.3276696
6-9 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                1.2015973   1.1437106   1.2594839
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                1.3929493   1.3409840   1.4449147
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                1.2826087   1.2280193   1.3371982
6-9 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                1.3515781   1.1725495   1.5306067
6-9 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                1.3140376   1.2691138   1.3589614
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.9549920   0.8446153   1.0653687
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.8580704   0.7694981   0.9466427
9-12 months    ki1000108-IRC              INDIA        1                    NA                1.1083734   1.0529170   1.1638299
9-12 months    ki1000108-IRC              INDIA        0                    NA                1.1534252   1.0927537   1.2140966
9-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                1.0665000   1.0359920   1.0970079
9-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.9749183   0.9205535   1.0292832
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                1.1085606   1.0670090   1.1501121
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                1.1467886   1.1005231   1.1930542
9-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                1.1461261   1.0720811   1.2201711
9-12 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                1.0011032   0.9653508   1.0368557
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.9161568   0.7894691   1.0428444
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.8296788   0.7322526   0.9271050
12-15 months   ki1000108-IRC              INDIA        1                    NA                0.9423626   0.8833797   1.0013455
12-15 months   ki1000108-IRC              INDIA        0                    NA                0.9784997   0.9148494   1.0421500
12-15 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.9730829   0.9440271   1.0021386
12-15 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.8671979   0.8093562   0.9250395
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.9900392   0.9517372   1.0283412
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.9697890   0.9217294   1.0178486
12-15 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.9345104   0.8314399   1.0375809
12-15 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.8742379   0.8427187   0.9057571
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7898659   0.6741081   0.9056237
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.7183330   0.6291741   0.8074919
15-18 months   ki1000108-IRC              INDIA        1                    NA                0.8634919   0.8042415   0.9227423
15-18 months   ki1000108-IRC              INDIA        0                    NA                0.8635015   0.8104769   0.9165260
15-18 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.8603691   0.8337616   0.8869766
15-18 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.8440780   0.7852140   0.9029420
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.9156000   0.8757143   0.9554858
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.9321176   0.8888969   0.9753383
15-18 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.5938125   0.5084972   0.6791279
15-18 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.7611989   0.7229049   0.7994929
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6672673   0.5484160   0.7861185
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.6728969   0.5941413   0.7516525
18-21 months   ki1000108-IRC              INDIA        1                    NA                0.7840579   0.7320719   0.8360438
18-21 months   ki1000108-IRC              INDIA        0                    NA                0.7223436   0.6641295   0.7805577
18-21 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.8422167   0.8162779   0.8681555
18-21 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.8212446   0.7611346   0.8813546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.7920743   0.7534971   0.8306515
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.8088463   0.7681925   0.8495002
18-21 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.8652948   0.7802558   0.9503338
18-21 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.9075162   0.8701345   0.9448979
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6634578   0.5358588   0.7910569
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.7225583   0.6514642   0.7936523
21-24 months   ki1000108-IRC              INDIA        1                    NA                0.7161386   0.6600336   0.7722436
21-24 months   ki1000108-IRC              INDIA        0                    NA                0.6889741   0.6301555   0.7477928
21-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.7676296   0.7399284   0.7953309
21-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.7525020   0.6903044   0.8146995
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.7988321   0.7527716   0.8448925
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.8312215   0.7942715   0.8681715


### Parameter: E(Y)


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     ki1000108-IRC              INDIA        NA                   NA                3.1459932   3.0340880   3.2578984
0-3 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                3.1373236   3.0972506   3.1773966
0-3 months     ki1113344-GMS-Nepal        NEPAL        NA                   NA                3.5947665   3.5404780   3.6490550
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA        NA                   NA                1.8807708   1.8161067   1.9454349
3-6 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                2.0125524   1.9699507   2.0551541
3-6 months     ki1113344-GMS-Nepal        NEPAL        NA                   NA                1.6999162   1.6578328   1.7419997
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     ki1000108-IRC              INDIA        NA                   NA                1.3656516   1.3178011   1.4135021
6-9 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                1.3527759   1.3181375   1.3874142
6-9 months     ki1113344-GMS-Nepal        NEPAL        NA                   NA                1.3147312   1.2706998   1.3587625
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    ki1000108-IRC              INDIA        NA                   NA                1.1229343   1.0831083   1.1627603
9-12 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                1.1243367   1.0942919   1.1543816
9-12 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                1.0038395   0.9688811   1.0387978
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   ki1000108-IRC              INDIA        NA                   NA                0.9574323   0.9150475   0.9998172
12-15 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.9797232   0.9513105   1.0081359
12-15 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.8753778   0.8445288   0.9062268
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   ki1000108-IRC              INDIA        NA                   NA                0.8635602   0.8235728   0.9035477
15-18 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.9239169   0.8976277   0.9502061
15-18 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.7581134   0.7206558   0.7955710
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   ki1000108-IRC              INDIA        NA                   NA                0.7567726   0.7181843   0.7953609
18-21 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.8098412   0.7838581   0.8358244
18-21 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.9067882   0.8702752   0.9433012
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   ki1000108-IRC              INDIA        NA                   NA                0.7066493   0.6649098   0.7483888
21-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.8147508   0.7880257   0.8414758


### Parameter: ATE


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.5042260   -0.9469869   -0.0614651
0-3 months     ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        0                    1                 -0.3582621   -0.5911138   -0.1254105
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0903106   -0.1904091    0.0097879
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.2070109   -0.2912540   -0.1227679
0-3 months     ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.4376822   -0.6569863   -0.2183781
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0665869   -0.2745676    0.1413939
3-6 months     ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        0                    1                 -0.0643205   -0.1941825    0.0655414
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0452409   -0.1249208    0.0344391
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.1351030    0.0425596    0.2276464
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    1                  0.4929266    0.3323531    0.6535001
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0231460   -0.1845639    0.1382718
6-9 months     ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA        0                    1                  0.0134360   -0.0841214    0.1109934
6-9 months     ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0980097   -0.1626205   -0.0333989
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.1103406   -0.1858642   -0.0348170
6-9 months     ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.0375405   -0.2221194    0.1470385
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0969216   -0.2388830    0.0450398
9-12 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA        0                    1                  0.0450517   -0.0369758    0.1270792
9-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0915816   -0.1539609   -0.0292024
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0382281   -0.0238723    0.1003284
9-12 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.1450229   -0.2272476   -0.0627982
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0864780   -0.2483433    0.0753873
12-15 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA        0                    1                  0.0361371   -0.0505354    0.1228095
12-15 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.1058850   -0.1707752   -0.0409948
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.0202502   -0.0815796    0.0410792
12-15 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.0602725   -0.1680547    0.0475096
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0715329   -0.2203578    0.0772920
15-18 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA        0                    1                  0.0000096   -0.0799747    0.0799938
15-18 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0162911   -0.0811109    0.0485286
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0165176   -0.0425903    0.0756256
15-18 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL        0                    1                  0.1673863    0.0738709    0.2609018
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                  0.0056296   -0.1375815    0.1488407
18-21 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA        0                    1                 -0.0617143   -0.1402344    0.0168059
18-21 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0209721   -0.0863384    0.0443942
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0167721   -0.0394298    0.0729739
18-21 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL        0                    1                  0.0422214   -0.0506711    0.1351139
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                  0.0591004   -0.0869979    0.2051987
21-24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA        0                    1                 -0.0271645   -0.1087516    0.0544227
21-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0151277   -0.0832502    0.0529948
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0323894   -0.0266786    0.0914575


### Parameter: PAR


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2781364   -0.5431705   -0.0131023
0-3 months     ki1000108-IRC              INDIA        1                    NA                -0.1585577   -0.2600481   -0.0570672
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0154673   -0.0329802    0.0020457
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0619562   -0.0988459   -0.0250666
0-3 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.4319733   -0.6458430   -0.2181035
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0398363   -0.1604080    0.0807354
3-6 months     ki1000108-IRC              INDIA        1                    NA                -0.0187258   -0.0761385    0.0386869
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0082571   -0.0223249    0.0058107
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0685941    0.0254456    0.1117426
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.4859512    0.3292938    0.6426086
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0132072   -0.1061202    0.0797058
6-9 months     ki1000108-IRC              INDIA        1                    NA                 0.0072703   -0.0350983    0.0496389
6-9 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0171885   -0.0294395   -0.0049375
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0401735   -0.0748433   -0.0055036
6-9 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0368469   -0.2168120    0.1431182
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0554696   -0.1458022    0.0348630
9-12 months    ki1000108-IRC              INDIA        1                    NA                 0.0145608   -0.0203068    0.0494284
9-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0165250   -0.0280229   -0.0050270
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0157761   -0.0115285    0.0430808
9-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.1422866   -0.2224777   -0.0620955
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0627844   -0.1662699    0.0407011
12-15 months   ki1000108-IRC              INDIA        1                    NA                 0.0150697   -0.0206826    0.0508220
12-15 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0133328   -0.0247860   -0.0018796
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0103160   -0.0362522    0.0156201
12-15 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0591326   -0.1642231    0.0459579
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0559524   -0.1426088    0.0307041
15-18 months   ki1000108-IRC              INDIA        1                    NA                 0.0000683   -0.0341520    0.0342886
15-18 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0042693   -0.0149956    0.0064570
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0083169   -0.0206191    0.0372529
15-18 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.1643009    0.0730987    0.2555031
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0327247   -0.0631087    0.1285581
18-21 months   ki1000108-IRC              INDIA        1                    NA                -0.0272853   -0.0604436    0.0058730
18-21 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0028790   -0.0152576    0.0094996
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0177670   -0.0113853    0.0469192
18-21 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0414934   -0.0490784    0.1320652
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0433893   -0.0538355    0.1406142
21-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0094893   -0.0463714    0.0273928
21-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0044906   -0.0169391    0.0079580
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0159187   -0.0182529    0.0500903
