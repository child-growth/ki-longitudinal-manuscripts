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
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      224   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1      118   758
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      251   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       91   758
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
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              0       68   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              1       27   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    0      159   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    1       72   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    0       91   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    1       38   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     0       65   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     1       22   542
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
![](/tmp/5c46a4b7-a4ba-4bc2-986e-f38b497e7fa8/1a281345-101c-4a56-9d37-678d4dd2ce83/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5c46a4b7-a4ba-4bc2-986e-f38b497e7fa8/1a281345-101c-4a56-9d37-678d4dd2ce83/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5c46a4b7-a4ba-4bc2-986e-f38b497e7fa8/1a281345-101c-4a56-9d37-678d4dd2ce83/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5c46a4b7-a4ba-4bc2-986e-f38b497e7fa8/1a281345-101c-4a56-9d37-678d4dd2ce83/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.6532312   0.5286324   0.7778299
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.6028916   0.5247697   0.6810135
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.6428813   0.5471997   0.7385628
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.7710999   0.6796240   0.8625759
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3498263   0.1892533   0.5103994
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4802066   0.4073010   0.5531123
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.4808052   0.3932472   0.5683631
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.4844966   0.3665765   0.6024167
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.5561696   0.4690153   0.6433238
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.4847292   0.4227692   0.5466893
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.4952559   0.4077255   0.5827863
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.4231418   0.3134153   0.5328684
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.3025681   0.2256474   0.3794887
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.3472744   0.2950409   0.3995079
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.3706631   0.2942110   0.4471152
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.4089855   0.3083623   0.5096088
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.3048720   0.2214369   0.3883072
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.3569073   0.3056178   0.4081968
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.3197669   0.2475560   0.3919777
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.3039768   0.2231899   0.3847637
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.0680146   0.0349199   0.1011092
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.0884126   0.0581808   0.1186443
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.0555979   0.0222732   0.0889225
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1563552   0.0706245   0.2420859
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                0.5467663   0.4162165   0.6773161
0-6 months    ki1000108-IRC              INDIA        4-5                  NA                0.4863154   0.4057558   0.5668751
0-6 months    ki1000108-IRC              INDIA        6-7                  NA                0.5598474   0.4599643   0.6597305
0-6 months    ki1000108-IRC              INDIA        8+                   NA                0.6157736   0.5120437   0.7195035
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.4443223   0.3527264   0.5359181
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3285650   0.2707735   0.3863564
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3755999   0.2910068   0.4601930
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.3512095   0.2431780   0.4592410
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2386150   0.1686777   0.3085523
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2777775   0.2279594   0.3275955
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2466022   0.1735795   0.3196248
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2795947   0.1783956   0.3807938
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2567039   0.1760696   0.3373381
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2728367   0.2259815   0.3196919
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2541905   0.1871094   0.3212716
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2355132   0.1593722   0.3116541
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.1768100   0.0778474   0.2757727
6-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.2864946   0.2154945   0.3574946
6-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3170917   0.2300429   0.4041406
6-24 months   ki1000108-IRC              INDIA        8+                   NA                0.4233206   0.3153225   0.5313187
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3067129   0.1329824   0.4804435
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.3660093   0.2938646   0.4381539
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.3543456   0.2692258   0.4394655
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.3543392   0.2381814   0.4704971
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.3580823   0.2621273   0.4540372
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3178726   0.2546460   0.3810992
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.2725671   0.1888024   0.3563317
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.2755737   0.1643388   0.3868085
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.0982339   0.0428756   0.1535922
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1392803   0.0992655   0.1792951
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2224221   0.1504514   0.2943927
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2297665   0.1382528   0.3212803
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1244384   0.0621425   0.1867342
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1552938   0.1161536   0.1944340
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1209333   0.0727208   0.1691459
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.0962430   0.0429341   0.1495520
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
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.0807834   0.0620863   0.0994804
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2572559   0.2261171   0.2883948
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.0782609   0.0596958   0.0968259


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         0.9229375   0.7327510   1.1624872
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         0.9841558   0.7725472   1.2537262
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.1804396   0.9427324   1.4780839
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.3727001   0.8462197   2.2267331
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.3744110   0.8388487   2.2519027
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.3849632   0.8235833   2.3289972
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.8715494   0.7123360   1.0663484
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.8904764   0.7033217   1.1274331
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.7608144   0.5619427   1.0300669
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.1477563   0.8541126   1.5423545
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.2250569   0.8835895   1.6984859
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.3517141   0.9498156   1.9236693
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.1706790   0.8600056   1.5935819
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0488561   0.7358925   1.4949182
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9970637   0.6813736   1.4590176
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.2999066   0.7172457   2.3558972
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.8174406   0.3776426   1.7694222
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         2.2988494   1.1044452   4.7849443
0-6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        4-5                  3 or less         0.8894393   0.6649237   1.1897640
0-6 months    ki1000108-IRC              INDIA        6-7                  3 or less         1.0239246   0.7599024   1.3796791
0-6 months    ki1000108-IRC              INDIA        8+                   3 or less         1.1262099   0.8407721   1.5085523
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.7394745   0.5638068   0.9698756
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.8453322   0.6230536   1.1469101
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.7904388   0.5457009   1.1449375
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.1641244   0.8254528   1.6417480
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0334732   0.6815797   1.5670462
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.1717400   0.7357383   1.8661182
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.0628461   0.7429703   1.5204401
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9902089   0.6569616   1.4924978
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9174507   0.5845693   1.4398906
6-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.6203524   0.8781246   2.9899425
6-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.7934034   0.9604265   3.3488206
6-24 months   ki1000108-IRC              INDIA        8+                   3 or less         2.3942110   1.2929502   4.4334625
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.1933285   0.6542613   2.1765506
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.1553006   0.6243894   2.1376396
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.1552797   0.6002396   2.2235637
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.8877084   0.6364666   1.2381266
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.7611856   0.5065215   1.1438872
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.7695820   0.4739281   1.2496758
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.4178438   0.7528813   2.6701168
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         2.2642091   1.1817440   4.3382010
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         2.3389742   1.1732801   4.6628252
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.2479579   0.7124813   2.1858805
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9718333   0.5123245   1.8434803
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.7734194   0.3664516   1.6323509
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.2543651   0.6884364   2.2855150
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.6423573   0.2785228   1.4814690
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         2.2838095   1.1001482   4.7409848


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0028664   -0.1130140    0.1187467
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1214655   -0.0322836    0.2752147
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0786055   -0.1583761    0.0011652
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0488605   -0.0205399    0.1182609
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0249433   -0.0522359    0.1021225
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0127688   -0.0163967    0.0419343
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0028638   -0.1244422    0.1187145
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0874091   -0.1709709   -0.0038472
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0199565   -0.0436062    0.0835191
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0005521   -0.0738363    0.0749405
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.1329461    0.0377636    0.2281285
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0490085   -0.1172521    0.2152690
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0647243   -0.1535069    0.0240582
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0627417    0.0098344    0.1156491
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0070685   -0.0508279    0.0649649
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0094535   -0.0199207    0.0388278


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0043688   -0.1888861    0.1662099
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.2577289   -0.1531716    0.5222165
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1645967   -0.3455959   -0.0079441
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1390340   -0.0830092    0.3155529
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0756280   -0.1906038    0.2823276
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1580623   -0.2901763    0.4505719
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0052654   -0.2556002    0.1951591
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.2449029   -0.5042705   -0.0302557
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0771797   -0.2041238    0.2927660
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0021459   -0.3332702    0.2531801
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.4291959    0.0272825    0.6650443
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1377720   -0.4839530    0.4990158
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.2206326   -0.5666501    0.0489619
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.3897592   -0.0358425    0.6404918
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0537500   -0.5066093    0.4056926
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1207951   -0.3459615    0.4256884
