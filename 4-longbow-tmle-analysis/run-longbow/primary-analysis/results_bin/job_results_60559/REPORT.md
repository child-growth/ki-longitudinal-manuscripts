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

agecat        studyid          country        cleanck    ever_co   n_cell     n
------------  ---------------  -------------  --------  --------  -------  ----
0-24 months   CMC-V-BCS-2002   INDIA          1                0      142   373
0-24 months   CMC-V-BCS-2002   INDIA          1                1       21   373
0-24 months   CMC-V-BCS-2002   INDIA          0                0      145   373
0-24 months   CMC-V-BCS-2002   INDIA          0                1       65   373
0-24 months   GMS-Nepal        NEPAL          1                0       10   612
0-24 months   GMS-Nepal        NEPAL          1                1        0   612
0-24 months   GMS-Nepal        NEPAL          0                0      421   612
0-24 months   GMS-Nepal        NEPAL          0                1      181   612
0-24 months   IRC              INDIA          1                0      198   400
0-24 months   IRC              INDIA          1                1       33   400
0-24 months   IRC              INDIA          0                0      130   400
0-24 months   IRC              INDIA          0                1       39   400
0-24 months   MAL-ED           PERU           1                0        1     2
0-24 months   MAL-ED           PERU           1                1        0     2
0-24 months   MAL-ED           PERU           0                0        1     2
0-24 months   MAL-ED           PERU           0                1        0     2
0-24 months   MAL-ED           SOUTH AFRICA   1                0        1     3
0-24 months   MAL-ED           SOUTH AFRICA   1                1        1     3
0-24 months   MAL-ED           SOUTH AFRICA   0                0        1     3
0-24 months   MAL-ED           SOUTH AFRICA   0                1        0     3
0-24 months   NIH-Crypto       BANGLADESH     1                0      329   577
0-24 months   NIH-Crypto       BANGLADESH     1                1       31   577
0-24 months   NIH-Crypto       BANGLADESH     0                0      200   577
0-24 months   NIH-Crypto       BANGLADESH     0                1       17   577
0-24 months   PROVIDE          BANGLADESH     1                0      508   700
0-24 months   PROVIDE          BANGLADESH     1                1       63   700
0-24 months   PROVIDE          BANGLADESH     0                0      102   700
0-24 months   PROVIDE          BANGLADESH     0                1       27   700
0-6 months    CMC-V-BCS-2002   INDIA          1                0      156   368
0-6 months    CMC-V-BCS-2002   INDIA          1                1        6   368
0-6 months    CMC-V-BCS-2002   INDIA          0                0      181   368
0-6 months    CMC-V-BCS-2002   INDIA          0                1       25   368
0-6 months    GMS-Nepal        NEPAL          1                0       10   612
0-6 months    GMS-Nepal        NEPAL          1                1        0   612
0-6 months    GMS-Nepal        NEPAL          0                0      572   612
0-6 months    GMS-Nepal        NEPAL          0                1       30   612
0-6 months    IRC              INDIA          1                0      219   399
0-6 months    IRC              INDIA          1                1       12   399
0-6 months    IRC              INDIA          0                0      156   399
0-6 months    IRC              INDIA          0                1       12   399
0-6 months    MAL-ED           PERU           1                0        1     2
0-6 months    MAL-ED           PERU           1                1        0     2
0-6 months    MAL-ED           PERU           0                0        1     2
0-6 months    MAL-ED           PERU           0                1        0     2
0-6 months    MAL-ED           SOUTH AFRICA   1                0        1     3
0-6 months    MAL-ED           SOUTH AFRICA   1                1        1     3
0-6 months    MAL-ED           SOUTH AFRICA   0                0        1     3
0-6 months    MAL-ED           SOUTH AFRICA   0                1        0     3
0-6 months    NIH-Crypto       BANGLADESH     1                0      355   577
0-6 months    NIH-Crypto       BANGLADESH     1                1        5   577
0-6 months    NIH-Crypto       BANGLADESH     0                0      210   577
0-6 months    NIH-Crypto       BANGLADESH     0                1        7   577
0-6 months    PROVIDE          BANGLADESH     1                0      549   700
0-6 months    PROVIDE          BANGLADESH     1                1       22   700
0-6 months    PROVIDE          BANGLADESH     0                0      121   700
0-6 months    PROVIDE          BANGLADESH     0                1        8   700
6-24 months   CMC-V-BCS-2002   INDIA          1                0      147   373
6-24 months   CMC-V-BCS-2002   INDIA          1                1       16   373
6-24 months   CMC-V-BCS-2002   INDIA          0                0      156   373
6-24 months   CMC-V-BCS-2002   INDIA          0                1       54   373
6-24 months   GMS-Nepal        NEPAL          1                0        8   529
6-24 months   GMS-Nepal        NEPAL          1                1        0   529
6-24 months   GMS-Nepal        NEPAL          0                0      348   529
6-24 months   GMS-Nepal        NEPAL          0                1      173   529
6-24 months   IRC              INDIA          1                0      202   400
6-24 months   IRC              INDIA          1                1       29   400
6-24 months   IRC              INDIA          0                0      137   400
6-24 months   IRC              INDIA          0                1       32   400
6-24 months   MAL-ED           SOUTH AFRICA   1                0        1     1
6-24 months   MAL-ED           SOUTH AFRICA   1                1        0     1
6-24 months   MAL-ED           SOUTH AFRICA   0                0        0     1
6-24 months   MAL-ED           SOUTH AFRICA   0                1        0     1
6-24 months   NIH-Crypto       BANGLADESH     1                0      316   559
6-24 months   NIH-Crypto       BANGLADESH     1                1       27   559
6-24 months   NIH-Crypto       BANGLADESH     0                0      200   559
6-24 months   NIH-Crypto       BANGLADESH     0                1       16   559
6-24 months   PROVIDE          BANGLADESH     1                0      456   614
6-24 months   PROVIDE          BANGLADESH     1                1       51   614
6-24 months   PROVIDE          BANGLADESH     0                0       83   614
6-24 months   PROVIDE          BANGLADESH     0                1       24   614


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/da10600c-78d7-447f-91b7-63e0595a5bb3/16be2b4f-67bc-4a9f-9c95-2412e008b3de/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/da10600c-78d7-447f-91b7-63e0595a5bb3/16be2b4f-67bc-4a9f-9c95-2412e008b3de/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/da10600c-78d7-447f-91b7-63e0595a5bb3/16be2b4f-67bc-4a9f-9c95-2412e008b3de/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/da10600c-78d7-447f-91b7-63e0595a5bb3/16be2b4f-67bc-4a9f-9c95-2412e008b3de/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.1310409   0.0777548   0.1843269
0-24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.3050139   0.2424635   0.3675643
0-24 months   IRC              INDIA        1                    NA                0.1447710   0.0996804   0.1898617
0-24 months   IRC              INDIA        0                    NA                0.2268458   0.1625675   0.2911241
0-24 months   NIH-Crypto       BANGLADESH   1                    NA                0.0846371   0.0559104   0.1133638
0-24 months   NIH-Crypto       BANGLADESH   0                    NA                0.0791933   0.0413199   0.1170667
0-24 months   PROVIDE          BANGLADESH   1                    NA                0.1136270   0.0871274   0.1401265
0-24 months   PROVIDE          BANGLADESH   0                    NA                0.1826296   0.1161957   0.2490635
0-6 months    CMC-V-BCS-2002   INDIA        1                    NA                0.0370370   0.0079162   0.0661579
0-6 months    CMC-V-BCS-2002   INDIA        0                    NA                0.1213592   0.0767066   0.1660119
0-6 months    IRC              INDIA        1                    NA                0.0518970   0.0214138   0.0823802
0-6 months    IRC              INDIA        0                    NA                0.0619748   0.0259635   0.0979861
0-6 months    NIH-Crypto       BANGLADESH   1                    NA                0.0138889   0.0017893   0.0259885
0-6 months    NIH-Crypto       BANGLADESH   0                    NA                0.0322581   0.0087296   0.0557865
0-6 months    PROVIDE          BANGLADESH   1                    NA                0.0385289   0.0227309   0.0543269
0-6 months    PROVIDE          BANGLADESH   0                    NA                0.0620155   0.0203658   0.1036652
6-24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.0987439   0.0519469   0.1455408
6-24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.2518399   0.1922234   0.3114564
6-24 months   IRC              INDIA        1                    NA                0.1265979   0.0836389   0.1695568
6-24 months   IRC              INDIA        0                    NA                0.1913637   0.1319753   0.2507521
6-24 months   NIH-Crypto       BANGLADESH   1                    NA                0.0774560   0.0490708   0.1058412
6-24 months   NIH-Crypto       BANGLADESH   0                    NA                0.0765771   0.0395311   0.1136230
6-24 months   PROVIDE          BANGLADESH   1                    NA                0.1038552   0.0768337   0.1308768
6-24 months   PROVIDE          BANGLADESH   0                    NA                0.1883211   0.1147192   0.2619230


### Parameter: E(Y)


agecat        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   IRC              INDIA        NA                   NA                0.1800000   0.1423032   0.2176968
0-24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.0831889   0.0606356   0.1057422
0-24 months   PROVIDE          BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-6 months    CMC-V-BCS-2002   INDIA        NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    IRC              INDIA        NA                   NA                0.0601504   0.0367913   0.0835094
0-6 months    NIH-Crypto       BANGLADESH   NA                   NA                0.0207972   0.0091432   0.0324513
0-6 months    PROVIDE          BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
6-24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   IRC              INDIA        NA                   NA                0.1525000   0.1172250   0.1877750
6-24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.0769231   0.0548136   0.0990325
6-24 months   PROVIDE          BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722


### Parameter: RR


agecat        studyid          country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   CMC-V-BCS-2002   INDIA        0                    1                 2.3276246   1.4777814   3.666196
0-24 months   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA        0                    1                 1.5669284   1.0287843   2.386569
0-24 months   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH   0                    1                 0.9356808   0.5204005   1.682355
0-24 months   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH   0                    1                 1.6072735   1.0444235   2.473449
0-6 months    CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA        0                    1                 3.2766990   1.3753959   7.806302
0-6 months    IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA        0                    1                 1.1941886   0.5223857   2.729949
0-6 months    NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH   0                    1                 2.3225806   0.7456384   7.234581
0-6 months    PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH   0                    1                 1.6095842   0.7327878   3.535487
6-24 months   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   CMC-V-BCS-2002   INDIA        0                    1                 2.5504362   1.4978922   4.342586
6-24 months   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA        0                    1                 1.5115870   0.9537795   2.395622
6-24 months   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH   0                    1                 0.9886526   0.5392755   1.812494
6-24 months   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH   0                    1                 1.8133038   1.1354603   2.895804


### Parameter: PAR


agecat        studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0995222    0.0519516   0.1470927
0-24 months   IRC              INDIA        1                    NA                 0.0352290    0.0018960   0.0685620
0-24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0014482   -0.0188550   0.0159586
0-24 months   PROVIDE          BANGLADESH   1                    NA                 0.0149444    0.0005273   0.0293615
0-6 months    CMC-V-BCS-2002   INDIA        1                    NA                 0.0472021    0.0170547   0.0773495
0-6 months    IRC              INDIA        1                    NA                 0.0082534   -0.0147011   0.0312079
0-6 months    NIH-Crypto       BANGLADESH   1                    NA                 0.0069083   -0.0030683   0.0168850
0-6 months    PROVIDE          BANGLADESH   1                    NA                 0.0043282   -0.0039085   0.0125650
6-24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0889237    0.0451675   0.1326799
6-24 months   IRC              INDIA        1                    NA                 0.0259021   -0.0053697   0.0571740
6-24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0005329   -0.0180699   0.0170040
6-24 months   PROVIDE          BANGLADESH   1                    NA                 0.0182946    0.0030466   0.0335426


### Parameter: PAF


agecat        studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.4316484    0.1962431   0.5981079
0-24 months   IRC              INDIA        1                    NA                 0.1957166   -0.0079513   0.3582311
0-24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0174085   -0.2496886   0.1716976
0-24 months   PROVIDE          BANGLADESH   1                    NA                 0.1162346   -0.0015395   0.2201593
0-6 months    CMC-V-BCS-2002   INDIA        1                    NA                 0.5603345    0.1129210   0.7820874
0-6 months    IRC              INDIA        1                    NA                 0.1372127   -0.3374455   0.4434151
0-6 months    NIH-Crypto       BANGLADESH   1                    NA                 0.3321759   -0.2968904   0.6561089
0-6 months    PROVIDE          BANGLADESH   1                    NA                 0.1009924   -0.1095560   0.2715873
6-24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.4738363    0.2058248   0.6514016
6-24 months   IRC              INDIA        1                    NA                 0.1698501   -0.0589667   0.3492253
6-24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0069277   -0.2627608   0.1970740
6-24 months   PROVIDE          BANGLADESH   1                    NA                 0.1497719    0.0187782   0.2632779
