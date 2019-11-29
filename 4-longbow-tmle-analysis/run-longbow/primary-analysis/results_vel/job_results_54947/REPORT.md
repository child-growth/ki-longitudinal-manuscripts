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
0-3 months     ki0047075b-MAL-ED          PERU           1               1     1  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU           0               0     1  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     2  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               1     2  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1              40    88  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0              48    88  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA          1             212   369  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA          0             157   369  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH     1             529   640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH     0             111   640  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     1             334   547  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     0             213   547  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL          1               6   460  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL          0             454   460  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1             133   307  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0             174   307  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA          1             224   390  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA          0             166   390  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH     1             492   598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH     0             106   598  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     1             315   527  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     0             212   527  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL          1               6   424  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL          0             418   424  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA          1             136   313  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA          0             177   313  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA          1             230   398  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA          0             168   398  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH     1             462   565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH     0             103   565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH     1             311   525  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH     0             214   525  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL          1               8   433  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL          0             425   433  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1             132   317  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0             185   317  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA          1             227   391  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA          0             164   391  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH     1             464   566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH     0             102   566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH     1             304   518  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH     0             214   518  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL          1               8   424  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL          0             416   424  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA          1             136   329  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA          0             193   329  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA          1             220   380  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA          0             160   380  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH     1             441   532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH     0              91   532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH     1             295   507  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH     0             212   507  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL          1               8   423  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL          0             415   423  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA          1             135   321  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA          0             186   321  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA          1             217   374  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA          0             157   374  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH     1             438   528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH     0              90   528  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH     1             256   466  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH     0             210   466  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL          1               8   434  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL          0             426   434  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA          1             127   305  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA          0             178   305  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA          1             212   371  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA          0             159   371  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH     1             441   541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH     0             100   541  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH     1             222   431  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH     0             209   431  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL          1               7   406  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL          0             399   406  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             125   308  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             183   308  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA          1             216   380  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA          0             164   380  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH     1             387   471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH     0              84   471  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             184   393  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             209   393  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL          1               4   310  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL          0             306   310  y_rate_haz       


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
![](/tmp/48fb026b-4bd5-4a54-a815-ff6badf3ba30/e15b12bb-f253-4ed7-84f3-29b0aec9d0b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/48fb026b-4bd5-4a54-a815-ff6badf3ba30/e15b12bb-f253-4ed7-84f3-29b0aec9d0b2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/48fb026b-4bd5-4a54-a815-ff6badf3ba30/e15b12bb-f253-4ed7-84f3-29b0aec9d0b2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0606891   -0.0912810    0.2126593
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.2090825   -0.3539703   -0.0641947
0-3 months     ki1000108-IRC              INDIA        1                    NA                -0.1752829   -0.2470041   -0.1035617
0-3 months     ki1000108-IRC              INDIA        0                    NA                -0.3620917   -0.4523583   -0.2718251
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.1817673   -0.2007752   -0.1627593
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.2152720   -0.2592787   -0.1712654
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.2021800   -0.2306854   -0.1736745
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.2794228   -0.3087964   -0.2500492
0-3 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.1731986    0.0774761    0.2689210
0-3 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0350183   -0.0621623   -0.0078743
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0836457   -0.1575218   -0.0097696
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1031850   -0.1703277   -0.0360423
3-6 months     ki1000108-IRC              INDIA        1                    NA                -0.0494232   -0.0946683   -0.0041781
3-6 months     ki1000108-IRC              INDIA        0                    NA                -0.0619970   -0.1023330   -0.0216609
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0241882   -0.0421840   -0.0061923
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0400926   -0.0731028   -0.0070823
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0059678   -0.0301865    0.0182508
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0713373    0.0352600    0.1074146
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.3974205   -0.4687983   -0.3260427
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.1617840   -0.1819009   -0.1416670
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0899474   -0.1481761   -0.0317187
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0838220   -0.1287796   -0.0388643
6-9 months     ki1000108-IRC              INDIA        1                    NA                -0.0196387   -0.0496586    0.0103812
6-9 months     ki1000108-IRC              INDIA        0                    NA                -0.0176844   -0.0468101    0.0114413
6-9 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0555724   -0.0676716   -0.0434731
6-9 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0822448   -0.1065485   -0.0579411
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0006854   -0.0223553    0.0209845
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0499953   -0.0727071   -0.0272834
6-9 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0321023   -0.1124147    0.0482102
6-9 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0450512   -0.0643517   -0.0257508
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1086951   -0.1523934   -0.0649967
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1300289   -0.1669011   -0.0931567
9-12 months    ki1000108-IRC              INDIA        1                    NA                -0.0463002   -0.0701746   -0.0224258
9-12 months    ki1000108-IRC              INDIA        0                    NA                -0.0228739   -0.0490955    0.0033477
9-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0580368   -0.0704467   -0.0456270
9-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0857847   -0.1084491   -0.0631202
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0419773   -0.0593679   -0.0245866
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0241365   -0.0436805   -0.0045925
9-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0314007   -0.0618148   -0.0009866
9-12 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0780277   -0.0930251   -0.0630303
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0526389   -0.1062545    0.0009767
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0724908   -0.1116434   -0.0333383
12-15 months   ki1000108-IRC              INDIA        1                    NA                -0.0498262   -0.0734482   -0.0262041
12-15 months   ki1000108-IRC              INDIA        0                    NA                -0.0359933   -0.0600467   -0.0119399
12-15 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0374623   -0.0487043   -0.0262203
12-15 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0569956   -0.0795619   -0.0344294
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0322247   -0.0473481   -0.0171013
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0400524   -0.0576828   -0.0224220
12-15 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0525575   -0.0932027   -0.0119122
12-15 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0684343   -0.0802563   -0.0566123
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0665246   -0.1102169   -0.0228323
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0703960   -0.1028811   -0.0379109
15-18 months   ki1000108-IRC              INDIA        1                    NA                -0.0410568   -0.0625490   -0.0195645
15-18 months   ki1000108-IRC              INDIA        0                    NA                -0.0310302   -0.0517781   -0.0102822
15-18 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0380146   -0.0477228   -0.0283065
15-18 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0360948   -0.0563613   -0.0158283
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0206888   -0.0348790   -0.0064986
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0081894   -0.0246029    0.0082240
15-18 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.1358700   -0.1700189   -0.1017211
15-18 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0662360   -0.0800615   -0.0524104
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0669091   -0.1031836   -0.0306345
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0442018   -0.0726179   -0.0157856
18-21 months   ki1000108-IRC              INDIA        1                    NA                -0.0339049   -0.0521136   -0.0156962
18-21 months   ki1000108-IRC              INDIA        0                    NA                -0.0488518   -0.0687807   -0.0289230
18-21 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0122323   -0.0210925   -0.0033721
18-21 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0031723   -0.0238940    0.0175494
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0331059   -0.0467809   -0.0194310
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0218803   -0.0355066   -0.0082540
18-21 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0084094   -0.0345648    0.0177460
18-21 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0169791    0.0040007    0.0299576
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0110531   -0.0554488    0.0333425
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0242248    0.0000792    0.0483704
21-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0106734   -0.0296557    0.0083089
21-24 months   ki1000108-IRC              INDIA        0                    NA                -0.0167821   -0.0365957    0.0030315
21-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0454766    0.0359161    0.0550372
21-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0495556    0.0288622    0.0702490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0527972    0.0379569    0.0676374
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0738692    0.0609099    0.0868285


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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.2697716   -0.4809379   -0.0586053
0-3 months     ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        0                    1                 -0.1868088   -0.3022408   -0.0713768
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0335048   -0.0817088    0.0146993
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.0772428   -0.1182827   -0.0362030
0-3 months     ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.2082168   -0.3077134   -0.1087202
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0195393   -0.1194732    0.0803946
3-6 months     ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        0                    1                 -0.0125738   -0.0734320    0.0482844
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0159044   -0.0535211    0.0217123
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0773051    0.0336459    0.1209643
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    1                  0.2356365    0.1614780    0.3097950
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    1                  0.0061255   -0.0675257    0.0797766
6-9 months     ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA        0                    1                  0.0019543   -0.0399863    0.0438949
6-9 months     ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0266724   -0.0539213    0.0005765
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.0493099   -0.0807020   -0.0179178
6-9 months     ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.0129489   -0.0955480    0.0696501
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0213338   -0.0788683    0.0362006
9-12 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA        0                    1                  0.0234263   -0.0119269    0.0587796
9-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0277478   -0.0536285   -0.0018672
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0178408   -0.0083079    0.0439896
9-12 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.0466270   -0.0805378   -0.0127163
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0198519   -0.0865715    0.0468676
12-15 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA        0                    1                  0.0138329   -0.0198149    0.0474806
12-15 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0195333   -0.0447355    0.0056688
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.0078277   -0.0310588    0.0154035
12-15 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.0158768   -0.0582064    0.0264528
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.0038715   -0.0588335    0.0510906
15-18 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA        0                    1                  0.0100266   -0.0203985    0.0404516
15-18 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                  0.0019199   -0.0205912    0.0244309
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0124993   -0.0092252    0.0342239
15-18 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL        0                    1                  0.0696340    0.0327926    0.1064755
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                  0.0227073   -0.0236044    0.0690190
18-21 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA        0                    1                 -0.0149469   -0.0420966    0.0122027
18-21 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                  0.0090600   -0.0135068    0.0316267
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0112256   -0.0081559    0.0306071
18-21 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL        0                    1                  0.0253885   -0.0038098    0.0545869
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                  0.0352780   -0.0152515    0.0858075
21-24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA        0                    1                 -0.0061087   -0.0335918    0.0213744
21-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                  0.0040790   -0.0187284    0.0268864
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0210721    0.0013255    0.0408187


### Parameter: PAR


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1485277   -0.2721447   -0.0249107
0-3 months     ki1000108-IRC              INDIA        1                    NA                -0.0767401   -0.1270779   -0.0264022
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0062729   -0.0147304    0.0021845
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0226833   -0.0403518   -0.0050149
0-3 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.2055009   -0.3025342   -0.1084677
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0143158   -0.0724827    0.0438511
3-6 months     ki1000108-IRC              INDIA        1                    NA                -0.0023516   -0.0286327    0.0239296
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0027743   -0.0093795    0.0038308
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0362321    0.0167777    0.0556865
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.2323021    0.1599489    0.3046552
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0079818   -0.0359116    0.0518752
6-9 months     ki1000108-IRC              INDIA        1                    NA                 0.0004934   -0.0175908    0.0185776
6-9 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0058540   -0.0109778   -0.0007303
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0212316   -0.0355425   -0.0069207
6-9 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0127097   -0.0932439    0.0678245
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0101205   -0.0462412    0.0260001
9-12 months    ki1000108-IRC              INDIA        1                    NA                 0.0101819   -0.0047822    0.0251459
9-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0050102   -0.0096796   -0.0003407
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0067556   -0.0048584    0.0183695
9-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0457472   -0.0788158   -0.0126787
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0185947   -0.0623427    0.0251532
12-15 months   ki1000108-IRC              INDIA        1                    NA                 0.0052120   -0.0087697    0.0191936
12-15 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0034484   -0.0077680    0.0008712
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0042982   -0.0145092    0.0059128
12-15 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0155766   -0.0568484    0.0256953
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0015625   -0.0340681    0.0309431
15-18 months   ki1000108-IRC              INDIA        1                    NA                 0.0042829   -0.0081547    0.0167205
15-18 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0003709   -0.0035530    0.0042948
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0043984   -0.0061210    0.0149177
15-18 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0683504    0.0324192    0.1042817
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0231433   -0.0053697    0.0516562
18-21 months   ki1000108-IRC              INDIA        1                    NA                -0.0070962   -0.0185627    0.0043703
18-21 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0012924   -0.0028989    0.0054836
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0077095   -0.0025751    0.0179942
18-21 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0249508   -0.0035194    0.0534210
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0287543   -0.0049469    0.0624554
21-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0035084   -0.0158844    0.0088676
21-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0007576   -0.0032469    0.0047621
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0106151   -0.0004831    0.0217134
