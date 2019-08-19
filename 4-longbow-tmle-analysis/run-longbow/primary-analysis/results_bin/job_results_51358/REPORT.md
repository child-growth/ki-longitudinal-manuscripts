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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country      nhh          ever_wasted   n_cell     n
------------  -------------------------  -----------  ----------  ------------  -------  ----
0-24 months   ki1000108-IRC              INDIA        3 or less              0       20   410
0-24 months   ki1000108-IRC              INDIA        3 or less              1       38   410
0-24 months   ki1000108-IRC              INDIA        4-5                    0       63   410
0-24 months   ki1000108-IRC              INDIA        4-5                    1       95   410
0-24 months   ki1000108-IRC              INDIA        6-7                    0       38   410
0-24 months   ki1000108-IRC              INDIA        6-7                    1       69   410
0-24 months   ki1000108-IRC              INDIA        8+                     0       20   410
0-24 months   ki1000108-IRC              INDIA        8+                     1       67   410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0       24   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1       14   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0       95   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1       88   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       66   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1       61   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       36   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     1       34   418
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              0       58   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              1       57   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    0      134   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    1      129   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    0       72   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    1       69   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     0       62   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     1       43   624
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              0       98   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              1       42   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    0      211   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1      111   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0       94   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1       57   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     0       51   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     1       36   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       75   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       39   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      223   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1      119   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0      120   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       58   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     0       89   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       35   758
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less              0      210   817
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less              1       15   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                    0      310   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                    1       30   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                    0      172   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                    1       10   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                     0       59   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                     1       11   817
0-6 months    ki1000108-IRC              INDIA        3 or less              0       25   410
0-6 months    ki1000108-IRC              INDIA        3 or less              1       33   410
0-6 months    ki1000108-IRC              INDIA        4-5                    0       81   410
0-6 months    ki1000108-IRC              INDIA        4-5                    1       77   410
0-6 months    ki1000108-IRC              INDIA        6-7                    0       47   410
0-6 months    ki1000108-IRC              INDIA        6-7                    1       60   410
0-6 months    ki1000108-IRC              INDIA        8+                     0       34   410
0-6 months    ki1000108-IRC              INDIA        8+                     1       53   410
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0       35   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1        3   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0      152   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1       31   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0      100   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1       27   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       53   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                     1       17   418
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less              0       67   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less              1       47   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                    0      175   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                    1       88   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                    0       88   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                    1       53   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                     0       70   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                     1       34   622
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              0      107   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              1       33   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    0      235   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    1       87   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    0      113   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    1       38   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     0       64   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     1       23   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       84   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       30   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      250   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       92   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0      133   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       45   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     0       95   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       29   758
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less              0       70   269
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less              1        0   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                    0      109   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                    1        2   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                    0       65   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                    1        2   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                     0       21   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                     1        0   269
6-24 months   ki1000108-IRC              INDIA        3 or less              0       48   410
6-24 months   ki1000108-IRC              INDIA        3 or less              1       10   410
6-24 months   ki1000108-IRC              INDIA        4-5                    0      112   410
6-24 months   ki1000108-IRC              INDIA        4-5                    1       46   410
6-24 months   ki1000108-IRC              INDIA        6-7                    0       74   410
6-24 months   ki1000108-IRC              INDIA        6-7                    1       33   410
6-24 months   ki1000108-IRC              INDIA        8+                     0       49   410
6-24 months   ki1000108-IRC              INDIA        8+                     1       38   410
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0       24   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1       12   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0      111   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1       64   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       81   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1       44   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       43   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     1       23   402
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              0       68   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              1       27   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    0      159   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    1       72   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    0       90   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    1       38   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     0       65   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     1       22   541
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              0      101   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              1       11   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    0      249   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1       40   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0      101   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1       29   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     0       65   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     1       19   615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       94   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       13   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      279   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       51   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0      155   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       21   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     0      106   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       11   730
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less              0      203   805
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less              1       15   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                    0      307   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                    1       29   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                    0      173   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                    1        8   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                     0       59   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                     1       11   805


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/3b2e2e03-91d1-4ce2-a0aa-63d4ba85e1f9/01a208a5-fd13-4537-b297-635cc62fe459/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3b2e2e03-91d1-4ce2-a0aa-63d4ba85e1f9/01a208a5-fd13-4537-b297-635cc62fe459/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3b2e2e03-91d1-4ce2-a0aa-63d4ba85e1f9/01a208a5-fd13-4537-b297-635cc62fe459/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3b2e2e03-91d1-4ce2-a0aa-63d4ba85e1f9/01a208a5-fd13-4537-b297-635cc62fe459/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.6507288   0.5254562   0.7760013
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.6024484   0.5232567   0.6816400
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.6460454   0.5505849   0.7415059
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.7766456   0.6871628   0.8661284
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3299800   0.1651149   0.4948450
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4826854   0.4100675   0.5553034
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.4756297   0.3877152   0.5635441
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.4817282   0.3631003   0.6003562
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.5297745   0.4390164   0.6205325
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.4865508   0.4247614   0.5483401
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.4808410   0.3927030   0.5689789
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.4308426   0.3234081   0.5382772
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2923798   0.2173199   0.3674396
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.3464953   0.2944286   0.3985620
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.3649226   0.2844169   0.4454284
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.4409176   0.3297562   0.5520790
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.3081420   0.2219509   0.3943332
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.3548698   0.3039949   0.4057447
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.3236787   0.2525135   0.3948438
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.3033332   0.2234838   0.3831826
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.0670997   0.0344972   0.0997022
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.0895316   0.0592416   0.1198217
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.0549407   0.0220973   0.0877841
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1643068   0.0771671   0.2514464
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                0.5626082   0.4330769   0.6921395
0-6 months    ki1000108-IRC              INDIA        4-5                  NA                0.4881437   0.4079506   0.5683368
0-6 months    ki1000108-IRC              INDIA        6-7                  NA                0.5597495   0.4596052   0.6598938
0-6 months    ki1000108-IRC              INDIA        8+                   NA                0.6260556   0.5234747   0.7286366
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.4246880   0.3355145   0.5138616
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3306231   0.2719834   0.3892628
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3707470   0.2859757   0.4555184
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.3447454   0.2381300   0.4513609
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2354899   0.1664979   0.3044820
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2762105   0.2259491   0.3264719
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2350322   0.1650392   0.3050252
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2782283   0.1754892   0.3809674
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2567519   0.1772416   0.3362623
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2730358   0.2259829   0.3200887
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2543938   0.1872386   0.3215490
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2344393   0.1574125   0.3114661
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.1726944   0.0730980   0.2722907
6-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.2877557   0.2174985   0.3580129
6-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3204554   0.2319929   0.4089179
6-24 months   ki1000108-IRC              INDIA        8+                   NA                0.4143930   0.3068933   0.5218927
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3152486   0.1506457   0.4798515
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.3667952   0.2948065   0.4387839
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.3542722   0.2687895   0.4397548
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.3498607   0.2345392   0.4651822
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.3410797   0.2469430   0.4352164
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3210475   0.2582222   0.3838729
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.2759779   0.1939588   0.3579970
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.2738570   0.1645498   0.3831642
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.1005824   0.0435121   0.1576527
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1399760   0.0998910   0.1800610
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2185284   0.1467738   0.2902831
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2234077   0.1351791   0.3116363
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1156029   0.0523177   0.1788881
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1522535   0.1131002   0.1914069
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1174075   0.0693034   0.1655115
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.0918982   0.0386521   0.1451442
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.0688073   0.0351851   0.1024296
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.0863095   0.0562642   0.1163549
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.0441989   0.0142371   0.0741607
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1571429   0.0718342   0.2424516


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.0807834   0.0620863   0.0994804
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2585752   0.2273844   0.2897660
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.0782609   0.0596958   0.0968259


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         0.9258056   0.7331655   1.169062
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         0.9928028   0.7788265   1.265567
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.1935012   0.9533019   1.494223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.4627719   0.8678083   2.465639
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.4413895   0.8458914   2.456112
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.4598712   0.8365922   2.547506
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.9184111   0.7422847   1.136328
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.9076333   0.7061899   1.166539
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.8132567   0.6009941   1.100488
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.1850865   0.8807674   1.594553
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.2481118   0.8903802   1.749571
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.5080306   1.0534959   2.158676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.1516436   0.8414198   1.576244
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0504203   0.7360803   1.498998
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9843940   0.6708181   1.444552
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.3343081   0.7379006   2.412761
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.8187922   0.3788843   1.769460
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         2.4486966   1.1928712   5.026624
0-6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        4-5                  3 or less         0.8676441   0.6537509   1.151518
0-6 months    ki1000108-IRC              INDIA        6-7                  3 or less         0.9949188   0.7431540   1.331976
0-6 months    ki1000108-IRC              INDIA        8+                   3 or less         1.1127737   0.8385564   1.476663
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.7785082   0.5912697   1.025040
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.8729867   0.6400438   1.190709
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.8117616   0.5585308   1.179804
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.1729185   0.8307320   1.656055
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         0.9980561   0.6572551   1.515570
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.1814870   0.7374956   1.892773
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.0634227   0.7458940   1.516124
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9908155   0.6595434   1.488477
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9130966   0.5812072   1.434506
6-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.6662716   0.8910453   3.115960
6-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.8556215   0.9778071   3.521483
6-24 months   ki1000108-IRC              INDIA        8+                   3 or less         2.3995745   1.2732115   4.522389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.1635108   0.6654009   2.034499
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.1237866   0.6317330   1.999098
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.1097931   0.5985790   2.057608
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.9412684   0.6718741   1.318679
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.8091302   0.5393154   1.213931
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.8029121   0.4939620   1.305096
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.3916553   0.7368622   2.628313
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         2.1726315   1.1284935   4.182858
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         2.2211415   1.1130933   4.432216
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.3170389   0.7186164   2.413793
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0156101   0.5126548   2.012005
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.7949469   0.3584289   1.763085
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.2543651   0.6884364   2.285515
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.6423573   0.2785228   1.481469
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         2.2838095   1.1001482   4.740985


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0053688   -0.1112040   0.1219415
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1413119   -0.0167006   0.2993244
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0522104   -0.1352566   0.0308359
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0590488   -0.0091217   0.1272193
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0229925   -0.0565323   0.1025173
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0136837   -0.0150829   0.0424502
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0187058   -0.1393377   0.1019261
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0677748   -0.1492113   0.0136616
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0230815   -0.0396960   0.0858590
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0018233   -0.0716253   0.0752719
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.1370617    0.0413635   0.2327600
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0404728   -0.1170230   0.1979685
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0471795   -0.1340194   0.0396604
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0603932    0.0060692   0.1147173
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0159039   -0.0429321   0.0747400
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0094535   -0.0199207   0.0388278


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0081829   -0.1864022   0.1708536
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.2998394   -0.1321819   0.5670088
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1093264   -0.2981823   0.0520553
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1680251   -0.0501899   0.3408980
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0694356   -0.2046605   0.2811667
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1693873   -0.2721441   0.4576735
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0343918   -0.2818132   0.1652712
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1898917   -0.4428637   0.0187277
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0892655   -0.1884546   0.3020875
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0070512   -0.3217873   0.2540802
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.4424828    0.0343282   0.6781252
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1137766   -0.4611145   0.4624706
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1605290   -0.4986145   0.1012849
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.3751701   -0.0641122   0.6331097
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1209362   -0.4625455   0.4716383
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1207951   -0.3459615   0.4256884
