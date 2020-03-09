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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* W_parity
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_W_parity
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid          country        cleanck    ever_stunted   n_cell     n
---------------------------  ---------------  -------------  --------  -------------  -------  ----
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA          1                     0       21   296
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA          1                     1      121   296
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA          0                     0        7   296
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA          0                     1      147   296
0-24 months (no birth st.)   GMS-Nepal        NEPAL          1                     0        8   517
0-24 months (no birth st.)   GMS-Nepal        NEPAL          1                     1        2   517
0-24 months (no birth st.)   GMS-Nepal        NEPAL          0                     0      215   517
0-24 months (no birth st.)   GMS-Nepal        NEPAL          0                     1      292   517
0-24 months (no birth st.)   IRC              INDIA          1                     0       94   352
0-24 months (no birth st.)   IRC              INDIA          1                     1      114   352
0-24 months (no birth st.)   IRC              INDIA          0                     0       49   352
0-24 months (no birth st.)   IRC              INDIA          0                     1       95   352
0-24 months (no birth st.)   MAL-ED           PERU           1                     0        1     2
0-24 months (no birth st.)   MAL-ED           PERU           1                     1        0     2
0-24 months (no birth st.)   MAL-ED           PERU           0                     0        0     2
0-24 months (no birth st.)   MAL-ED           PERU           0                     1        1     2
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   1                     0        0     1
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   1                     1        0     1
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   0                     0        1     1
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   0                     1        0     1
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     1                     0      199   498
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     1                     1      115   498
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     0                     0      119   498
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     0                     1       65   498
0-24 months (no birth st.)   PROVIDE          BANGLADESH     1                     0      340   633
0-24 months (no birth st.)   PROVIDE          BANGLADESH     1                     1      180   633
0-24 months (no birth st.)   PROVIDE          BANGLADESH     0                     0       55   633
0-24 months (no birth st.)   PROVIDE          BANGLADESH     0                     1       58   633
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          1                     0       96   292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          1                     1       45   292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          0                     0       84   292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          0                     1       67   292
0-6 months (no birth st.)    GMS-Nepal        NEPAL          1                     0       10   517
0-6 months (no birth st.)    GMS-Nepal        NEPAL          1                     1        0   517
0-6 months (no birth st.)    GMS-Nepal        NEPAL          0                     0      416   517
0-6 months (no birth st.)    GMS-Nepal        NEPAL          0                     1       91   517
0-6 months (no birth st.)    IRC              INDIA          1                     0      143   352
0-6 months (no birth st.)    IRC              INDIA          1                     1       65   352
0-6 months (no birth st.)    IRC              INDIA          0                     0       87   352
0-6 months (no birth st.)    IRC              INDIA          0                     1       57   352
0-6 months (no birth st.)    MAL-ED           PERU           1                     0        1     2
0-6 months (no birth st.)    MAL-ED           PERU           1                     1        0     2
0-6 months (no birth st.)    MAL-ED           PERU           0                     0        0     2
0-6 months (no birth st.)    MAL-ED           PERU           0                     1        1     2
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   1                     0        0     1
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   1                     1        0     1
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   0                     0        1     1
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   0                     1        0     1
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH     1                     0      262   498
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH     1                     1       52   498
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH     0                     0      150   498
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH     0                     1       34   498
0-6 months (no birth st.)    PROVIDE          BANGLADESH     1                     0      446   633
0-6 months (no birth st.)    PROVIDE          BANGLADESH     1                     1       74   633
0-6 months (no birth st.)    PROVIDE          BANGLADESH     0                     0       86   633
0-6 months (no birth st.)    PROVIDE          BANGLADESH     0                     1       27   633
6-24 months                  CMC-V-BCS-2002   INDIA          1                     0       21   185
6-24 months                  CMC-V-BCS-2002   INDIA          1                     1       76   185
6-24 months                  CMC-V-BCS-2002   INDIA          0                     0        7   185
6-24 months                  CMC-V-BCS-2002   INDIA          0                     1       81   185
6-24 months                  GMS-Nepal        NEPAL          1                     0        6   356
6-24 months                  GMS-Nepal        NEPAL          1                     1        2   356
6-24 months                  GMS-Nepal        NEPAL          0                     0      147   356
6-24 months                  GMS-Nepal        NEPAL          0                     1      201   356
6-24 months                  IRC              INDIA          1                     0       94   230
6-24 months                  IRC              INDIA          1                     1       49   230
6-24 months                  IRC              INDIA          0                     0       49   230
6-24 months                  IRC              INDIA          0                     1       38   230
6-24 months                  NIH-Crypto       BANGLADESH     1                     0      185   397
6-24 months                  NIH-Crypto       BANGLADESH     1                     1       63   397
6-24 months                  NIH-Crypto       BANGLADESH     0                     0      118   397
6-24 months                  NIH-Crypto       BANGLADESH     0                     1       31   397
6-24 months                  PROVIDE          BANGLADESH     1                     0      284   456
6-24 months                  PROVIDE          BANGLADESH     1                     1      106   456
6-24 months                  PROVIDE          BANGLADESH     0                     0       35   456
6-24 months                  PROVIDE          BANGLADESH     0                     1       31   456


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/69d76119-f0f7-4e71-9a99-13c8b805ca77/58a6eae5-42a9-4b71-bc69-6d345c63d16b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/69d76119-f0f7-4e71-9a99-13c8b805ca77/58a6eae5-42a9-4b71-bc69-6d345c63d16b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/69d76119-f0f7-4e71-9a99-13c8b805ca77/58a6eae5-42a9-4b71-bc69-6d345c63d16b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/69d76119-f0f7-4e71-9a99-13c8b805ca77/58a6eae5-42a9-4b71-bc69-6d345c63d16b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        1                    NA                0.8521127   0.7936266   0.9105988
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        0                    NA                0.9545455   0.9215913   0.9874996
0-24 months (no birth st.)   IRC              INDIA        1                    NA                0.5562316   0.4856844   0.6267788
0-24 months (no birth st.)   IRC              INDIA        0                    NA                0.6496802   0.5647941   0.7345663
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   1                    NA                0.3701942   0.3122218   0.4281667
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   0                    NA                0.3683008   0.2913752   0.4452265
0-24 months (no birth st.)   PROVIDE          BANGLADESH   1                    NA                0.3494075   0.3082550   0.3905600
0-24 months (no birth st.)   PROVIDE          BANGLADESH   0                    NA                0.4908001   0.3950403   0.5865600
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        1                    NA                0.3024783   0.2259829   0.3789737
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        0                    NA                0.4453662   0.3640701   0.5266624
0-6 months (no birth st.)    IRC              INDIA        1                    NA                0.3113856   0.2462827   0.3764886
0-6 months (no birth st.)    IRC              INDIA        0                    NA                0.3825641   0.2963246   0.4688036
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   1                    NA                0.1708234   0.1284057   0.2132412
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   0                    NA                0.1761708   0.1183042   0.2340373
0-6 months (no birth st.)    PROVIDE          BANGLADESH   1                    NA                0.1460253   0.1151928   0.1768579
0-6 months (no birth st.)    PROVIDE          BANGLADESH   0                    NA                0.2060686   0.1301327   0.2820044
6-24 months                  CMC-V-BCS-2002   INDIA        1                    NA                0.7835052   0.7013218   0.8656885
6-24 months                  CMC-V-BCS-2002   INDIA        0                    NA                0.9204545   0.8637664   0.9771427
6-24 months                  IRC              INDIA        1                    NA                0.3468187   0.2658849   0.4277525
6-24 months                  IRC              INDIA        0                    NA                0.4299168   0.3177687   0.5420649
6-24 months                  NIH-Crypto       BANGLADESH   1                    NA                0.2585304   0.2033008   0.3137599
6-24 months                  NIH-Crypto       BANGLADESH   0                    NA                0.2050695   0.1389040   0.2712349
6-24 months                  PROVIDE          BANGLADESH   1                    NA                0.2733440   0.2289890   0.3176990
6-24 months                  PROVIDE          BANGLADESH   0                    NA                0.4555822   0.3311261   0.5800383


### Parameter: E(Y)


agecat                       studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        NA                   NA                0.9054054   0.8720096   0.9388012
0-24 months (no birth st.)   IRC              INDIA        NA                   NA                0.5937500   0.5423701   0.6451299
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   NA                   NA                0.3614458   0.3192090   0.4036825
0-24 months (no birth st.)   PROVIDE          BANGLADESH   NA                   NA                0.3759874   0.3382238   0.4137509
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    IRC              INDIA        NA                   NA                0.3465909   0.2968062   0.3963756
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   NA                   NA                0.1726908   0.1394601   0.2059214
0-6 months (no birth st.)    PROVIDE          BANGLADESH   NA                   NA                0.1595577   0.1310079   0.1881074
6-24 months                  CMC-V-BCS-2002   INDIA        NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months                  IRC              INDIA        NA                   NA                0.3782609   0.3154507   0.4410711
6-24 months                  NIH-Crypto       BANGLADESH   NA                   NA                0.2367758   0.1949066   0.2786451
6-24 months                  PROVIDE          BANGLADESH   NA                   NA                0.3004386   0.2583143   0.3425629


### Parameter: RR


agecat                       studyid          country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        0                    1                 1.1202104   1.0373678   1.209669
0-24 months (no birth st.)   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   IRC              INDIA        0                    1                 1.1680031   0.9741165   1.400480
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   0                    1                 0.9948854   0.7662584   1.291727
0-24 months (no birth st.)   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROVIDE          BANGLADESH   0                    1                 1.4046640   1.1184955   1.764049
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        0                    1                 1.4723905   1.0772881   2.012399
0-6 months (no birth st.)    IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    IRC              INDIA        0                    1                 1.2285862   0.9031592   1.671271
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   0                    1                 1.0313032   0.6830587   1.557093
0-6 months (no birth st.)    PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROVIDE          BANGLADESH   0                    1                 1.4111835   0.9242418   2.154673
6-24 months                  CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  CMC-V-BCS-2002   INDIA        0                    1                 1.1747907   1.0402427   1.326741
6-24 months                  IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  IRC              INDIA        0                    1                 1.2396009   0.8775519   1.751019
6-24 months                  NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  NIH-Crypto       BANGLADESH   0                    1                 0.7932124   0.5391270   1.167046
6-24 months                  PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  PROVIDE          BANGLADESH   0                    1                 1.6666992   1.2116727   2.292604


### Parameter: PAR


agecat                       studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        1                    NA                 0.0532927    0.0178815   0.0887039
0-24 months (no birth st.)   IRC              INDIA        1                    NA                 0.0375184   -0.0096211   0.0846579
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   1                    NA                -0.0087484   -0.0472705   0.0297736
0-24 months (no birth st.)   PROVIDE          BANGLADESH   1                    NA                 0.0265799    0.0077519   0.0454079
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        1                    NA                 0.0810833    0.0226017   0.1395650
0-6 months (no birth st.)    IRC              INDIA        1                    NA                 0.0352053   -0.0102112   0.0806218
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   1                    NA                 0.0018673   -0.0252921   0.0290267
0-6 months (no birth st.)    PROVIDE          BANGLADESH   1                    NA                 0.0135323   -0.0021613   0.0292260
6-24 months                  CMC-V-BCS-2002   INDIA        1                    NA                 0.0651435    0.0166356   0.1136514
6-24 months                  IRC              INDIA        1                    NA                 0.0314422   -0.0224759   0.0853602
6-24 months                  NIH-Crypto       BANGLADESH   1                    NA                -0.0217545   -0.0545794   0.0110703
6-24 months                  PROVIDE          BANGLADESH   1                    NA                 0.0270946    0.0073374   0.0468518


### Parameter: PAF


agecat                       studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA        1                    NA                 0.0588606    0.0178699   0.0981405
0-24 months (no birth st.)   IRC              INDIA        1                    NA                 0.0631889   -0.0200107   0.1396021
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH   1                    NA                -0.0242040   -0.1364764   0.0769770
0-24 months (no birth st.)   PROVIDE          BANGLADESH   1                    NA                 0.0706935    0.0191711   0.1195095
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA        1                    NA                 0.2113958    0.0433602   0.3499156
0-6 months (no birth st.)    IRC              INDIA        1                    NA                 0.1015759   -0.0393094   0.2233633
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH   1                    NA                 0.0108131   -0.1596094   0.1561893
0-6 months (no birth st.)    PROVIDE          BANGLADESH   1                    NA                 0.0848115   -0.0182387   0.1774326
6-24 months                  CMC-V-BCS-2002   INDIA        1                    NA                 0.0767614    0.0159136   0.1338470
6-24 months                  IRC              INDIA        1                    NA                 0.0831230   -0.0711580   0.2151825
6-24 months                  NIH-Crypto       BANGLADESH   1                    NA                -0.0918782   -0.2393019   0.0380084
6-24 months                  PROVIDE          BANGLADESH   1                    NA                 0.0901835    0.0222935   0.1533593
