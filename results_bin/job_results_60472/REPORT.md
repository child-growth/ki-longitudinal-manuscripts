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

agecat                        studyid          country        cleanck    ever_swasted   n_cell     n
----------------------------  ---------------  -------------  --------  -------------  -------  ----
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA          1                     0      141   368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA          1                     1       22   368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA          0                     0      172   368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA          0                     1       33   368
0-24 months (no birth wast)   GMS-Nepal        NEPAL          1                     0        8   589
0-24 months (no birth wast)   GMS-Nepal        NEPAL          1                     1        1   589
0-24 months (no birth wast)   GMS-Nepal        NEPAL          0                     0      460   589
0-24 months (no birth wast)   GMS-Nepal        NEPAL          0                     1      120   589
0-24 months (no birth wast)   IRC              INDIA          1                     0      179   399
0-24 months (no birth wast)   IRC              INDIA          1                     1       51   399
0-24 months (no birth wast)   IRC              INDIA          0                     0      144   399
0-24 months (no birth wast)   IRC              INDIA          0                     1       25   399
0-24 months (no birth wast)   MAL-ED           PERU           1                     0        1     2
0-24 months (no birth wast)   MAL-ED           PERU           1                     1        0     2
0-24 months (no birth wast)   MAL-ED           PERU           0                     0        1     2
0-24 months (no birth wast)   MAL-ED           PERU           0                     1        0     2
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA   1                     0        2     3
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA   1                     1        0     3
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA   0                     0        1     3
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA   0                     1        0     3
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH     1                     0      352   575
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH     1                     1        6   575
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH     0                     0      212   575
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH     0                     1        5   575
0-24 months (no birth wast)   PROVIDE          BANGLADESH     1                     0      548   687
0-24 months (no birth wast)   PROVIDE          BANGLADESH     1                     1       13   687
0-24 months (no birth wast)   PROVIDE          BANGLADESH     0                     0      120   687
0-24 months (no birth wast)   PROVIDE          BANGLADESH     0                     1        6   687
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA          1                     0      147   350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA          1                     1       10   350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA          0                     0      173   350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA          0                     1       20   350
0-6 months (no birth wast)    GMS-Nepal        NEPAL          1                     0        8   576
0-6 months (no birth wast)    GMS-Nepal        NEPAL          1                     1        0   576
0-6 months (no birth wast)    GMS-Nepal        NEPAL          0                     0      539   576
0-6 months (no birth wast)    GMS-Nepal        NEPAL          0                     1       29   576
0-6 months (no birth wast)    IRC              INDIA          1                     0      179   381
0-6 months (no birth wast)    IRC              INDIA          1                     1       43   381
0-6 months (no birth wast)    IRC              INDIA          0                     0      145   381
0-6 months (no birth wast)    IRC              INDIA          0                     1       14   381
0-6 months (no birth wast)    MAL-ED           PERU           1                     0        1     2
0-6 months (no birth wast)    MAL-ED           PERU           1                     1        0     2
0-6 months (no birth wast)    MAL-ED           PERU           0                     0        1     2
0-6 months (no birth wast)    MAL-ED           PERU           0                     1        0     2
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA   1                     0        2     3
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA   1                     1        0     3
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA   0                     0        1     3
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA   0                     1        0     3
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH     1                     0      355   572
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH     1                     1        0   572
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH     0                     0      216   572
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH     0                     1        1   572
0-6 months (no birth wast)    PROVIDE          BANGLADESH     1                     0      552   683
0-6 months (no birth wast)    PROVIDE          BANGLADESH     1                     1        5   683
0-6 months (no birth wast)    PROVIDE          BANGLADESH     0                     0      125   683
0-6 months (no birth wast)    PROVIDE          BANGLADESH     0                     1        1   683
6-24 months                   CMC-V-BCS-2002   INDIA          1                     0      150   373
6-24 months                   CMC-V-BCS-2002   INDIA          1                     1       13   373
6-24 months                   CMC-V-BCS-2002   INDIA          0                     0      193   373
6-24 months                   CMC-V-BCS-2002   INDIA          0                     1       17   373
6-24 months                   GMS-Nepal        NEPAL          1                     0        7   529
6-24 months                   GMS-Nepal        NEPAL          1                     1        1   529
6-24 months                   GMS-Nepal        NEPAL          0                     0      421   529
6-24 months                   GMS-Nepal        NEPAL          0                     1      100   529
6-24 months                   IRC              INDIA          1                     0      219   400
6-24 months                   IRC              INDIA          1                     1       12   400
6-24 months                   IRC              INDIA          0                     0      156   400
6-24 months                   IRC              INDIA          0                     1       13   400
6-24 months                   MAL-ED           SOUTH AFRICA   1                     0        1     1
6-24 months                   MAL-ED           SOUTH AFRICA   1                     1        0     1
6-24 months                   MAL-ED           SOUTH AFRICA   0                     0        0     1
6-24 months                   MAL-ED           SOUTH AFRICA   0                     1        0     1
6-24 months                   NIH-Crypto       BANGLADESH     1                     0      336   559
6-24 months                   NIH-Crypto       BANGLADESH     1                     1        7   559
6-24 months                   NIH-Crypto       BANGLADESH     0                     0      212   559
6-24 months                   NIH-Crypto       BANGLADESH     0                     1        4   559
6-24 months                   PROVIDE          BANGLADESH     1                     0      500   615
6-24 months                   PROVIDE          BANGLADESH     1                     1        8   615
6-24 months                   PROVIDE          BANGLADESH     0                     0      102   615
6-24 months                   PROVIDE          BANGLADESH     0                     1        5   615


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

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
![](/tmp/49049e30-ee32-4b34-9bed-fc29a0e8b57c/5e02affa-5019-431b-a4d5-41097ba4c805/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/49049e30-ee32-4b34-9bed-fc29a0e8b57c/5e02affa-5019-431b-a4d5-41097ba4c805/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/49049e30-ee32-4b34-9bed-fc29a0e8b57c/5e02affa-5019-431b-a4d5-41097ba4c805/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/49049e30-ee32-4b34-9bed-fc29a0e8b57c/5e02affa-5019-431b-a4d5-41097ba4c805/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        1                    NA                0.1303820   0.0779599   0.1828041
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        0                    NA                0.1598568   0.1090219   0.2106918
0-24 months (no birth wast)   IRC              INDIA        1                    NA                0.2220740   0.1674291   0.2767188
0-24 months (no birth wast)   IRC              INDIA        0                    NA                0.1497837   0.0962000   0.2033675
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   1                    NA                0.0167598   0.0034507   0.0300689
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   0                    NA                0.0230415   0.0030618   0.0430212
0-24 months (no birth wast)   PROVIDE          BANGLADESH   1                    NA                0.0231729   0.0107139   0.0356319
0-24 months (no birth wast)   PROVIDE          BANGLADESH   0                    NA                0.0476190   0.0104077   0.0848303
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        1                    NA                0.0615936   0.0247404   0.0984468
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        0                    NA                0.1085799   0.0649228   0.1522369
0-6 months (no birth wast)    IRC              INDIA        1                    NA                0.1900425   0.1379558   0.2421292
0-6 months (no birth wast)    IRC              INDIA        0                    NA                0.0876081   0.0435808   0.1316353
6-24 months                   CMC-V-BCS-2002   INDIA        1                    NA                0.0751565   0.0350444   0.1152685
6-24 months                   CMC-V-BCS-2002   INDIA        0                    NA                0.0830685   0.0453909   0.1207461
6-24 months                   IRC              INDIA        1                    NA                0.0518181   0.0229159   0.0807204
6-24 months                   IRC              INDIA        0                    NA                0.0809616   0.0381859   0.1237374
6-24 months                   PROVIDE          BANGLADESH   1                    NA                0.0157480   0.0049129   0.0265832
6-24 months                   PROVIDE          BANGLADESH   0                    NA                0.0467290   0.0067059   0.0867521


### Parameter: E(Y)


agecat                        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   IRC              INDIA        NA                   NA                0.1904762   0.1518980   0.2290544
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   NA                   NA                0.0191304   0.0079242   0.0303367
0-24 months (no birth wast)   PROVIDE          BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        NA                   NA                0.0857143   0.0563444   0.1150842
0-6 months (no birth wast)    IRC              INDIA        NA                   NA                0.1496063   0.1137437   0.1854689
6-24 months                   CMC-V-BCS-2002   INDIA        NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months                   IRC              INDIA        NA                   NA                0.0625000   0.0387487   0.0862513
6-24 months                   PROVIDE          BANGLADESH   NA                   NA                0.0211382   0.0097604   0.0325160


### Parameter: RR


agecat                        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        0                    1                 1.2260653   0.7335305   2.0493167
0-24 months (no birth wast)   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   IRC              INDIA        0                    1                 0.6744767   0.4366584   1.0418186
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   0                    1                 1.3748080   0.4242272   4.4553890
0-24 months (no birth wast)   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROVIDE          BANGLADESH   0                    1                 2.0549451   0.7958985   5.3057006
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        0                    1                 1.7628427   0.8616552   3.6065635
0-6 months (no birth wast)    IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    IRC              INDIA        0                    1                 0.4609922   0.2592586   0.8196983
6-24 months                   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   CMC-V-BCS-2002   INDIA        0                    1                 1.1052740   0.5481722   2.2285528
6-24 months                   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   IRC              INDIA        0                    1                 1.5624184   0.7237922   3.3727242
6-24 months                   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   PROVIDE          BANGLADESH   0                    1                 2.9672897   0.9890856   8.9019676


### Parameter: PAR


agecat                        studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        1                    NA                 0.0190745   -0.0215803    0.0597294
0-24 months (no birth wast)   IRC              INDIA        1                    NA                -0.0315978   -0.0648627    0.0016672
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   1                    NA                 0.0023707   -0.0066927    0.0114340
0-24 months (no birth wast)   PROVIDE          BANGLADESH   1                    NA                 0.0044836   -0.0027483    0.0117155
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        1                    NA                 0.0241207   -0.0064978    0.0547391
0-6 months (no birth wast)    IRC              INDIA        1                    NA                -0.0404362   -0.0697596   -0.0111127
6-24 months                   CMC-V-BCS-2002   INDIA        1                    NA                 0.0052725   -0.0253076    0.0358526
6-24 months                   IRC              INDIA        1                    NA                 0.0106819   -0.0105885    0.0319522
6-24 months                   PROVIDE          BANGLADESH   1                    NA                 0.0053902   -0.0018834    0.0126638


### Parameter: PAF


agecat                        studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        1                    NA                 0.1276259   -0.1906352    0.3608147
0-24 months (no birth wast)   IRC              INDIA        1                    NA                -0.1658883   -0.3520825   -0.0053347
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   1                    NA                 0.1239208   -0.4952816    0.4867088
0-24 months (no birth wast)   PROVIDE          BANGLADESH   1                    NA                 0.1621165   -0.1317354    0.3796706
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        1                    NA                 0.2814076   -0.1636397    0.5562415
0-6 months (no birth wast)    IRC              INDIA        1                    NA                -0.2702838   -0.4742123   -0.0945649
6-24 months                   CMC-V-BCS-2002   INDIA        1                    NA                 0.0655547   -0.4028621    0.3775668
6-24 months                   IRC              INDIA        1                    NA                 0.1709097   -0.2416329    0.4463816
6-24 months                   PROVIDE          BANGLADESH   1                    NA                 0.2549970   -0.1393521    0.5128551
