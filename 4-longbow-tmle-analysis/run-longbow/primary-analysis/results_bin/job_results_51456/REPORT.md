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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country        cleanck    pers_wast   n_cell     n
------------  -------------------------  -------------  --------  ----------  -------  ----
0-24 months   ki0047075b-MAL-ED          PERU           1                  0        1     1
0-24 months   ki0047075b-MAL-ED          PERU           1                  1        0     1
0-24 months   ki0047075b-MAL-ED          PERU           0                  0        0     1
0-24 months   ki0047075b-MAL-ED          PERU           0                  1        0     1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  0        1     2
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  1        0     2
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  0        1     2
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  1        0     2
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  0      157   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  1        6   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  0      193   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  1       17   373
0-24 months   ki1000108-IRC              INDIA          1                  0      204   400
0-24 months   ki1000108-IRC              INDIA          1                  1       27   400
0-24 months   ki1000108-IRC              INDIA          0                  0      148   400
0-24 months   ki1000108-IRC              INDIA          0                  1       21   400
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  0      520   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  1        9   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  0      105   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  1        6   640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  0      335   559
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  1        8   559
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  0      210   559
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  1        6   559
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                  0        7   530
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                  1        1   530
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                  0      447   530
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                  1       75   530
0-6 months    ki0047075b-MAL-ED          PERU           1                  0        1     1
0-6 months    ki0047075b-MAL-ED          PERU           1                  1        0     1
0-6 months    ki0047075b-MAL-ED          PERU           0                  0        0     1
0-6 months    ki0047075b-MAL-ED          PERU           0                  1        0     1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                  0        1     2
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                  1        0     2
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                  0        1     2
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                  1        0     2
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                  0      143   358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                  1       15   358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                  0      165   358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                  1       35   358
0-6 months    ki1000108-IRC              INDIA          1                  0      189   392
0-6 months    ki1000108-IRC              INDIA          1                  1       38   392
0-6 months    ki1000108-IRC              INDIA          0                  0      141   392
0-6 months    ki1000108-IRC              INDIA          0                  1       24   392
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                  0      516   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                  1       10   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                  0      107   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                  1        4   637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                  0      155   162
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                  1        3   162
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                  0        4   162
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                  1        0   162
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                  0        5   486
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                  1        2   486
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                  0      420   486
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                  1       59   486
6-24 months   ki0047075b-MAL-ED          PERU           1                  0        1     1
6-24 months   ki0047075b-MAL-ED          PERU           1                  1        0     1
6-24 months   ki0047075b-MAL-ED          PERU           0                  0        0     1
6-24 months   ki0047075b-MAL-ED          PERU           0                  1        0     1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  0        1     2
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  1        0     2
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  0        1     2
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  1        0     2
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  0      157   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  1        6   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  0      193   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  1       17   373
6-24 months   ki1000108-IRC              INDIA          1                  0      204   400
6-24 months   ki1000108-IRC              INDIA          1                  1       27   400
6-24 months   ki1000108-IRC              INDIA          0                  0      148   400
6-24 months   ki1000108-IRC              INDIA          0                  1       21   400
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  0      520   640
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  1        9   640
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  0      105   640
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  1        6   640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  0      335   559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  1        8   559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  0      210   559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  1        6   559
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                  0        7   530
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                  1        1   530
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                  0      447   530
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                  1       75   530


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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/99cc61d9-cb73-4214-b433-59b82b7ddaaa/6d5733c3-fff1-4351-aa14-bf8a52c154f5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/99cc61d9-cb73-4214-b433-59b82b7ddaaa/6d5733c3-fff1-4351-aa14-bf8a52c154f5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/99cc61d9-cb73-4214-b433-59b82b7ddaaa/6d5733c3-fff1-4351-aa14-bf8a52c154f5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/99cc61d9-cb73-4214-b433-59b82b7ddaaa/6d5733c3-fff1-4351-aa14-bf8a52c154f5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0368098   0.0078647   0.0657549
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0809524   0.0440117   0.1178931
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.1118054   0.0710338   0.1525771
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.1312991   0.0800240   0.1825741
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0170132   0.0059845   0.0280420
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0540541   0.0119549   0.0961532
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0233236   0.0073368   0.0393105
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0277778   0.0058426   0.0497130
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0927082   0.0467482   0.1386682
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1744785   0.1215135   0.2274435
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.1651956   0.1163975   0.2139938
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.1469360   0.0915329   0.2023392
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0368098   0.0078647   0.0657549
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0809524   0.0440117   0.1178931
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.1123451   0.0719221   0.1527681
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.1282231   0.0767191   0.1797271
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0170132   0.0059845   0.0280420
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0540541   0.0119549   0.0961532
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0233236   0.0073368   0.0393105
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0277778   0.0058426   0.0497130


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1200000   0.0881145   0.1518855
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0250447   0.0120795   0.0380100
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.1581633   0.1219951   0.1943314
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1200000   0.0881145   0.1518855
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0250447   0.0120795   0.0380100


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.199206   0.8859799   5.458937
0-24 months   ki1000108-IRC              INDIA        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        0                    1                 1.174353   0.6885597   2.002885
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 3.177177   1.1533587   8.752224
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.190972   0.4185803   3.388632
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.882017   1.0521135   3.366546
0-6 months    ki1000108-IRC              INDIA        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        0                    1                 0.889467   0.5503580   1.437522
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.199206   0.8859799   5.458937
6-24 months   ki1000108-IRC              INDIA        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        0                    1                 1.141332   0.6653367   1.957865
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 3.177177   1.1533587   8.752224
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.190972   0.4185803   3.388632


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0248524   -0.0016629   0.0513677
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0081946   -0.0188385   0.0352277
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0064243   -0.0012016   0.0140502
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0017211   -0.0087685   0.0122108
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0469566    0.0074918   0.0864213
0-6 months    ki1000108-IRC              INDIA        1                    NA                -0.0070324   -0.0381927   0.0241280
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0248524   -0.0016629   0.0513677
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0076549   -0.0192158   0.0345256
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0064243   -0.0012016   0.0140502
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0017211   -0.0087685   0.0122108


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4030408   -0.1700513   0.6954319
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0682883   -0.1863459   0.2682684
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.2741021   -0.0915806   0.5172800
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0687214   -0.4579033   0.4051184
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.3362091   -0.0017251   0.5601404
0-6 months    ki1000108-IRC              INDIA        1                    NA                -0.0444626   -0.2610434   0.1349210
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4030408   -0.1700513   0.6954319
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0637907   -0.1886788   0.2626369
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.2741021   -0.0915806   0.5172800
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0687214   -0.4579033   0.4051184
