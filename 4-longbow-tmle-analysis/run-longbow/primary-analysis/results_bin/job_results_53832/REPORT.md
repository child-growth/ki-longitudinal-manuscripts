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




# Results Detail

## Results Plots
![](/tmp/daf1c551-2884-41da-bc43-abcd1b492c05/1f8037fc-030c-4e7e-9de6-ab9fa89840b5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/daf1c551-2884-41da-bc43-abcd1b492c05/1f8037fc-030c-4e7e-9de6-ab9fa89840b5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/daf1c551-2884-41da-bc43-abcd1b492c05/1f8037fc-030c-4e7e-9de6-ab9fa89840b5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/daf1c551-2884-41da-bc43-abcd1b492c05/1f8037fc-030c-4e7e-9de6-ab9fa89840b5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1358947   0.0812307   0.1905587
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3091841   0.2459346   0.3724336
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.1411352   0.0960571   0.1862133
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.2322274   0.1673376   0.2971173
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1103928   0.0846633   0.1361223
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2085586   0.1376818   0.2794354
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0856195   0.0566774   0.1145615
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0778839   0.0422630   0.1135049
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0370370   0.0079162   0.0661579
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1213592   0.0767066   0.1660119
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.0534207   0.0245212   0.0823202
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.0705384   0.0311541   0.1099227
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0385289   0.0227309   0.0543269
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0620155   0.0203658   0.1036652
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0138889   0.0017893   0.0259885
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0322581   0.0087296   0.0557865
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0989951   0.0525993   0.1453908
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.2572132   0.1979511   0.3164753
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.1254065   0.0825893   0.1682237
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.1910128   0.1314702   0.2505554
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1010349   0.0747998   0.1272701
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2275841   0.1478566   0.3073115
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0791497   0.0504864   0.1078129
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0714722   0.0373195   0.1056249


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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.2751740   1.4484596   3.573739
0-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        0                    1                 1.6454255   1.0756549   2.517002
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.8892403   1.2509565   2.853200
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.9096520   0.5147646   1.607466
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 3.2766990   1.3753959   7.806302
0-6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        0                    1                 1.3204327   0.6081327   2.867043
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.6095842   0.7327878   3.535487
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 2.3225806   0.7456384   7.234581
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.5982429   1.5392412   4.385840
6-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        0                    1                 1.5231498   0.9591994   2.418668
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 2.2525289   1.4560607   3.484667
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.9030007   0.4957133   1.644923


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0946683    0.0459274   0.1434092
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0388648    0.0053673   0.0723624
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0181786    0.0040819   0.0322753
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0024306   -0.0197830   0.0149219
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0472021    0.0170547   0.0773495
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0067297   -0.0138472   0.0273066
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0043282   -0.0039085   0.0125650
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0069083   -0.0030683   0.0168850
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0886725    0.0453057   0.1320393
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0270935   -0.0039747   0.0581618
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0211149    0.0060822   0.0361476
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0022266   -0.0197916   0.0153385


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4105962    0.1687006   0.5821038
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.2159157    0.0105504   0.3786564
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1413892    0.0273679   0.2420437
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0292174   -0.2602873   0.1594865
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.5603345    0.1129210   0.7820874
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.1118809   -0.3005827   0.3935368
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1009924   -0.1095560   0.2715873
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.3321759   -0.2968904   0.6561089
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4724977    0.2081868   0.6485805
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.1776626   -0.0497713   0.3558227
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1728609    0.0453544   0.2833370
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0289456   -0.2844768   0.1757508
