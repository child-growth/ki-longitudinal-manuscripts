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

**Outcome Variable:** swasted

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

agecat      studyid                    country        cleanck    swasted   n_cell     n  outcome_variable 
----------  -------------------------  -------------  --------  --------  -------  ----  -----------------
Birth       ki0047075b-MAL-ED          PERU           1                0        1     2  swasted          
Birth       ki0047075b-MAL-ED          PERU           1                1        0     2  swasted          
Birth       ki0047075b-MAL-ED          PERU           0                0        1     2  swasted          
Birth       ki0047075b-MAL-ED          PERU           0                1        0     2  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                0       37    86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                1        0    86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                0       48    86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                1        1    86  swasted          
Birth       ki1000108-IRC              INDIA          1                0      172   337  swasted          
Birth       ki1000108-IRC              INDIA          1                1       26   337  swasted          
Birth       ki1000108-IRC              INDIA          0                0      113   337  swasted          
Birth       ki1000108-IRC              INDIA          0                1       26   337  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH     1                0      423   532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH     1                1       10   532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH     0                0       96   532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH     0                1        3   532  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                0      319   543  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                1       17   543  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                0      192   543  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                1       15   543  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL          1                0        8   570  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL          1                1        1   570  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL          0                0      539   570  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL          0                1       22   570  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     1  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                1        0     1  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                0        0     1  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     1  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                0      157   368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                1        5   368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                0      199   368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                1        7   368  swasted          
6 months    ki1000108-IRC              INDIA          1                0      215   398  swasted          
6 months    ki1000108-IRC              INDIA          1                1       14   398  swasted          
6 months    ki1000108-IRC              INDIA          0                0      161   398  swasted          
6 months    ki1000108-IRC              INDIA          0                1        8   398  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH     1                0      494   603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH     1                1        3   603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH     0                0      104   603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH     0                1        2   603  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                0      329   545  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                1        0   545  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                0      216   545  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                1        0   545  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL          1                0        8   505  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL          1                1        0   505  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL          0                0      492   505  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL          0                1        5   505  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     1  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                1        0     1  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                0        0     1  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     1  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                0      163   372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                1        0   372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                0      206   372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                1        3   372  swasted          
24 months   ki1000108-IRC              INDIA          1                0      227   400  swasted          
24 months   ki1000108-IRC              INDIA          1                1        4   400  swasted          
24 months   ki1000108-IRC              INDIA          0                0      168   400  swasted          
24 months   ki1000108-IRC              INDIA          0                1        1   400  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH     1                0      475   579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH     1                1        5   579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH     0                0       95   579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH     0                1        4   579  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                0      197   410  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                1        2   410  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                0      210   410  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                1        1   410  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL          1                0        5   434  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL          1                1        0   434  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL          0                0      416   434  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL          0                1       13   434  swasted          


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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/d5024d70-0042-4efa-b9f6-374a9d7e8619/a1cbb44d-3b13-47a8-a7f1-3dcc374d2368/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d5024d70-0042-4efa-b9f6-374a9d7e8619/a1cbb44d-3b13-47a8-a7f1-3dcc374d2368/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d5024d70-0042-4efa-b9f6-374a9d7e8619/a1cbb44d-3b13-47a8-a7f1-3dcc374d2368/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d5024d70-0042-4efa-b9f6-374a9d7e8619/a1cbb44d-3b13-47a8-a7f1-3dcc374d2368/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1000108-IRC              INDIA        1                    NA                0.1313131   0.0841995   0.1784268
Birth      ki1000108-IRC              INDIA        0                    NA                0.1870504   0.1221276   0.2519731
Birth      ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0505952   0.0271390   0.0740515
Birth      ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0724638   0.0371138   0.1078137
6 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0308642   0.0041955   0.0575329
6 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0339806   0.0092056   0.0587556
6 months   ki1000108-IRC              INDIA        1                    NA                0.0611354   0.0300666   0.0922042
6 months   ki1000108-IRC              INDIA        0                    NA                0.0473373   0.0152803   0.0793942


### Parameter: E(Y)


agecat     studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1000108-IRC              INDIA        NA                   NA                0.1543027   0.1156773   0.1929280
Birth      ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0589319   0.0391059   0.0787578
6 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0326087   0.0144375   0.0507799
6 months   ki1000108-IRC              INDIA        NA                   NA                0.0552764   0.0327975   0.0777553


### Parameter: RR


agecat     studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth      ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth      ki1000108-IRC              INDIA        0                    1                 1.4244604   0.8646722   2.346655
Birth      ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth      ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.4322251   0.7306975   2.807275
6 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.1009709   0.3554482   3.410165
6 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months   ki1000108-IRC              INDIA        0                    1                 0.7743026   0.3320489   1.805591


### Parameter: PAR


agecat     studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1000108-IRC              INDIA        1                    NA                 0.0229895   -0.0102265   0.0562056
Birth      ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0083366   -0.0078609   0.0245341
6 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0017445   -0.0186327   0.0221216
6 months   ki1000108-IRC              INDIA        1                    NA                -0.0058590   -0.0248269   0.0131090


### Parameter: PAF


agecat     studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1000108-IRC              INDIA        1                    NA                 0.1489899   -0.0930706   0.3374461
Birth      ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.1414621   -0.1773922   0.3739661
6 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0534979   -0.8303987   0.5105623
6 months   ki1000108-IRC              INDIA        1                    NA                -0.1059944   -0.5051128   0.1872877
