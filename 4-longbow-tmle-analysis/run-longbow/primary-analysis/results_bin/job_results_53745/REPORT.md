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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country        cleanck    ever_swasted   n_cell     n
----------------------------  -------------------------  -------------  --------  -------------  -------  ----
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           1                     0        1     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           1                     1        0     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           0                     0        1     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           0                     1        0     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        2     3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     3
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          1                     0      141   368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          1                     1       22   368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          0                     0      172   368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          0                     1       33   368
0-24 months (no birth wast)   ki1000108-IRC              INDIA          1                     0      179   399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          1                     1       51   399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          0                     0      144   399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          0                     1       25   399
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     1                     0      548   687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     1                     1       13   687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     0                     0      120   687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     0                     1        6   687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     1                     0      352   575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     1                     1        6   575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     0                     0      212   575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     0                     1        5   575
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          1                     0        8   589
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          1                     1        1   589
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          0                     0      460   589
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          0                     1      120   589
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           1                     0        1     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           1                     1        0     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           0                     0        1     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           0                     1        0     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        2     3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     3
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          1                     0      147   350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          1                     1       10   350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          0                     0      173   350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          0                     1       20   350
0-6 months (no birth wast)    ki1000108-IRC              INDIA          1                     0      179   381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          1                     1       43   381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          0                     0      145   381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          0                     1       14   381
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     1                     0      552   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     1                     1        5   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     0                     0      125   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     0                     1        1   683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     1                     0      355   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     1                     1        0   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     0                     0      216   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     0                     1        1   572
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          1                     0        8   576
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          1                     1        0   576
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          0                     0      539   576
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          0                     1       29   576
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        1     1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        0     1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     1
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          1                     0      150   373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          1                     1       13   373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          0                     0      193   373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          0                     1       17   373
6-24 months                   ki1000108-IRC              INDIA          1                     0      219   400
6-24 months                   ki1000108-IRC              INDIA          1                     1       12   400
6-24 months                   ki1000108-IRC              INDIA          0                     0      156   400
6-24 months                   ki1000108-IRC              INDIA          0                     1       13   400
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     1                     0      500   615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     1                     1        8   615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     0                     0      102   615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     0                     1        5   615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     1                     0      336   559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     1                     1        7   559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     0                     0      212   559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     0                     1        4   559
6-24 months                   ki1113344-GMS-Nepal        NEPAL          1                     0        7   529
6-24 months                   ki1113344-GMS-Nepal        NEPAL          1                     1        1   529
6-24 months                   ki1113344-GMS-Nepal        NEPAL          0                     0      421   529
6-24 months                   ki1113344-GMS-Nepal        NEPAL          0                     1      100   529


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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




# Results Detail

## Results Plots
![](/tmp/fef9f28e-0e0e-40dc-9f59-181e421d9376/620b7211-a77f-4d71-bcaf-7d318e58e975/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fef9f28e-0e0e-40dc-9f59-181e421d9376/620b7211-a77f-4d71-bcaf-7d318e58e975/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fef9f28e-0e0e-40dc-9f59-181e421d9376/620b7211-a77f-4d71-bcaf-7d318e58e975/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fef9f28e-0e0e-40dc-9f59-181e421d9376/620b7211-a77f-4d71-bcaf-7d318e58e975/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1380549   0.0831446   0.1929651
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1690351   0.1149080   0.2231621
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                0.2209385   0.1666909   0.2751862
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    NA                0.1533091   0.0986479   0.2079703
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0231729   0.0107139   0.0356319
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0476190   0.0104077   0.0848303
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0167598   0.0034507   0.0300689
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0230415   0.0030618   0.0430212
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0634683   0.0247759   0.1021607
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1020784   0.0588355   0.1453213
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                0.1940379   0.1413642   0.2467116
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    NA                0.0857442   0.0422668   0.1292217
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0825561   0.0397109   0.1254013
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0784789   0.0418256   0.1151322
6-24 months                   ki1000108-IRC              INDIA        1                    NA                0.0528502   0.0236631   0.0820373
6-24 months                   ki1000108-IRC              INDIA        0                    NA                0.0792732   0.0367092   0.1218372
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0157480   0.0049129   0.0265832
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0467290   0.0067059   0.0867521


### Parameter: E(Y)


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   ki1000108-IRC              INDIA        NA                   NA                0.1904762   0.1518980   0.2290544
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0191304   0.0079242   0.0303367
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0857143   0.0563444   0.1150842
0-6 months (no birth wast)    ki1000108-IRC              INDIA        NA                   NA                0.1496063   0.1137437   0.1854689
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months                   ki1000108-IRC              INDIA        NA                   NA                0.0625000   0.0387487   0.0862513
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0211382   0.0097604   0.0325160


### Parameter: RR


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.2244049   0.7333359   2.0443121
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    1                 0.6938993   0.4498588   1.0703276
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    1                 2.0549451   0.7958985   5.3057006
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.3748079   0.4242271   4.4553885
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.6083362   0.7643973   3.3840323
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    1                 0.4418942   0.2477695   0.7881136
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.9506126   0.4734568   1.9086522
6-24 months                   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA        0                    1                 1.4999590   0.6934807   3.2443254
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    1                 2.9672897   0.9890856   8.9019676


### Parameter: PAR


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0114017   -0.0316953    0.0544987
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                -0.0304624   -0.0634708    0.0025461
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0044836   -0.0027483    0.0117155
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0023707   -0.0066927    0.0114340
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0222460   -0.0099361    0.0544280
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                -0.0444316   -0.0743135   -0.0145498
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0021272   -0.0343610    0.0301067
6-24 months                   ki1000108-IRC              INDIA        1                    NA                 0.0096498   -0.0117634    0.0310630
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0053902   -0.0018834    0.0126638


### Parameter: PAF


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0762875   -0.2615755    0.3236672
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                -0.1599273   -0.3449539   -0.0003551
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1621165   -0.1317354    0.3796706
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.1239207   -0.4952816    0.4867088
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.2595363   -0.2155369    0.5489348
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                -0.2969904   -0.5045258   -0.1180826
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0264478   -0.5166271    0.3053038
6-24 months                   ki1000108-IRC              INDIA        1                    NA                 0.1543965   -0.2607605    0.4328461
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.2549970   -0.1393521    0.5128551
