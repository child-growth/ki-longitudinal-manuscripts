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

agecat        studyid         country      nhh          ever_wasted   n_cell     n
------------  --------------  -----------  ----------  ------------  -------  ----
0-24 months   IRC             INDIA        3 or less              0       20   410
0-24 months   IRC             INDIA        3 or less              1       38   410
0-24 months   IRC             INDIA        4-5                    0       63   410
0-24 months   IRC             INDIA        4-5                    1       95   410
0-24 months   IRC             INDIA        6-7                    0       38   410
0-24 months   IRC             INDIA        6-7                    1       69   410
0-24 months   IRC             INDIA        8+                     0       20   410
0-24 months   IRC             INDIA        8+                     1       67   410
0-24 months   LCNI-5          MALAWI       3 or less              0      210   817
0-24 months   LCNI-5          MALAWI       3 or less              1       15   817
0-24 months   LCNI-5          MALAWI       4-5                    0      310   817
0-24 months   LCNI-5          MALAWI       4-5                    1       30   817
0-24 months   LCNI-5          MALAWI       6-7                    0      172   817
0-24 months   LCNI-5          MALAWI       6-7                    1       10   817
0-24 months   LCNI-5          MALAWI       8+                     0       59   817
0-24 months   LCNI-5          MALAWI       8+                     1       11   817
0-24 months   NIH-Birth       BANGLADESH   3 or less              0       58   624
0-24 months   NIH-Birth       BANGLADESH   3 or less              1       57   624
0-24 months   NIH-Birth       BANGLADESH   4-5                    0      134   624
0-24 months   NIH-Birth       BANGLADESH   4-5                    1      129   624
0-24 months   NIH-Birth       BANGLADESH   6-7                    0       72   624
0-24 months   NIH-Birth       BANGLADESH   6-7                    1       69   624
0-24 months   NIH-Birth       BANGLADESH   8+                     0       62   624
0-24 months   NIH-Birth       BANGLADESH   8+                     1       43   624
0-24 months   NIH-Crypto      BANGLADESH   3 or less              0       75   758
0-24 months   NIH-Crypto      BANGLADESH   3 or less              1       39   758
0-24 months   NIH-Crypto      BANGLADESH   4-5                    0      224   758
0-24 months   NIH-Crypto      BANGLADESH   4-5                    1      118   758
0-24 months   NIH-Crypto      BANGLADESH   6-7                    0      120   758
0-24 months   NIH-Crypto      BANGLADESH   6-7                    1       58   758
0-24 months   NIH-Crypto      BANGLADESH   8+                     0       89   758
0-24 months   NIH-Crypto      BANGLADESH   8+                     1       35   758
0-24 months   PROVIDE         BANGLADESH   3 or less              0       98   700
0-24 months   PROVIDE         BANGLADESH   3 or less              1       42   700
0-24 months   PROVIDE         BANGLADESH   4-5                    0      211   700
0-24 months   PROVIDE         BANGLADESH   4-5                    1      111   700
0-24 months   PROVIDE         BANGLADESH   6-7                    0       94   700
0-24 months   PROVIDE         BANGLADESH   6-7                    1       57   700
0-24 months   PROVIDE         BANGLADESH   8+                     0       51   700
0-24 months   PROVIDE         BANGLADESH   8+                     1       36   700
0-24 months   SAS-FoodSuppl   INDIA        3 or less              0       24   418
0-24 months   SAS-FoodSuppl   INDIA        3 or less              1       14   418
0-24 months   SAS-FoodSuppl   INDIA        4-5                    0       95   418
0-24 months   SAS-FoodSuppl   INDIA        4-5                    1       88   418
0-24 months   SAS-FoodSuppl   INDIA        6-7                    0       66   418
0-24 months   SAS-FoodSuppl   INDIA        6-7                    1       61   418
0-24 months   SAS-FoodSuppl   INDIA        8+                     0       36   418
0-24 months   SAS-FoodSuppl   INDIA        8+                     1       34   418
0-6 months    IRC             INDIA        3 or less              0       25   410
0-6 months    IRC             INDIA        3 or less              1       33   410
0-6 months    IRC             INDIA        4-5                    0       81   410
0-6 months    IRC             INDIA        4-5                    1       77   410
0-6 months    IRC             INDIA        6-7                    0       47   410
0-6 months    IRC             INDIA        6-7                    1       60   410
0-6 months    IRC             INDIA        8+                     0       34   410
0-6 months    IRC             INDIA        8+                     1       53   410
0-6 months    LCNI-5          MALAWI       3 or less              0       70   269
0-6 months    LCNI-5          MALAWI       3 or less              1        0   269
0-6 months    LCNI-5          MALAWI       4-5                    0      109   269
0-6 months    LCNI-5          MALAWI       4-5                    1        2   269
0-6 months    LCNI-5          MALAWI       6-7                    0       65   269
0-6 months    LCNI-5          MALAWI       6-7                    1        2   269
0-6 months    LCNI-5          MALAWI       8+                     0       21   269
0-6 months    LCNI-5          MALAWI       8+                     1        0   269
0-6 months    NIH-Birth       BANGLADESH   3 or less              0       67   622
0-6 months    NIH-Birth       BANGLADESH   3 or less              1       47   622
0-6 months    NIH-Birth       BANGLADESH   4-5                    0      175   622
0-6 months    NIH-Birth       BANGLADESH   4-5                    1       88   622
0-6 months    NIH-Birth       BANGLADESH   6-7                    0       88   622
0-6 months    NIH-Birth       BANGLADESH   6-7                    1       53   622
0-6 months    NIH-Birth       BANGLADESH   8+                     0       70   622
0-6 months    NIH-Birth       BANGLADESH   8+                     1       34   622
0-6 months    NIH-Crypto      BANGLADESH   3 or less              0       84   758
0-6 months    NIH-Crypto      BANGLADESH   3 or less              1       30   758
0-6 months    NIH-Crypto      BANGLADESH   4-5                    0      251   758
0-6 months    NIH-Crypto      BANGLADESH   4-5                    1       91   758
0-6 months    NIH-Crypto      BANGLADESH   6-7                    0      133   758
0-6 months    NIH-Crypto      BANGLADESH   6-7                    1       45   758
0-6 months    NIH-Crypto      BANGLADESH   8+                     0       95   758
0-6 months    NIH-Crypto      BANGLADESH   8+                     1       29   758
0-6 months    PROVIDE         BANGLADESH   3 or less              0      107   700
0-6 months    PROVIDE         BANGLADESH   3 or less              1       33   700
0-6 months    PROVIDE         BANGLADESH   4-5                    0      235   700
0-6 months    PROVIDE         BANGLADESH   4-5                    1       87   700
0-6 months    PROVIDE         BANGLADESH   6-7                    0      113   700
0-6 months    PROVIDE         BANGLADESH   6-7                    1       38   700
0-6 months    PROVIDE         BANGLADESH   8+                     0       64   700
0-6 months    PROVIDE         BANGLADESH   8+                     1       23   700
0-6 months    SAS-FoodSuppl   INDIA        3 or less              0       35   418
0-6 months    SAS-FoodSuppl   INDIA        3 or less              1        3   418
0-6 months    SAS-FoodSuppl   INDIA        4-5                    0      152   418
0-6 months    SAS-FoodSuppl   INDIA        4-5                    1       31   418
0-6 months    SAS-FoodSuppl   INDIA        6-7                    0      100   418
0-6 months    SAS-FoodSuppl   INDIA        6-7                    1       27   418
0-6 months    SAS-FoodSuppl   INDIA        8+                     0       53   418
0-6 months    SAS-FoodSuppl   INDIA        8+                     1       17   418
6-24 months   IRC             INDIA        3 or less              0       48   410
6-24 months   IRC             INDIA        3 or less              1       10   410
6-24 months   IRC             INDIA        4-5                    0      112   410
6-24 months   IRC             INDIA        4-5                    1       46   410
6-24 months   IRC             INDIA        6-7                    0       74   410
6-24 months   IRC             INDIA        6-7                    1       33   410
6-24 months   IRC             INDIA        8+                     0       49   410
6-24 months   IRC             INDIA        8+                     1       38   410
6-24 months   LCNI-5          MALAWI       3 or less              0      203   805
6-24 months   LCNI-5          MALAWI       3 or less              1       15   805
6-24 months   LCNI-5          MALAWI       4-5                    0      307   805
6-24 months   LCNI-5          MALAWI       4-5                    1       29   805
6-24 months   LCNI-5          MALAWI       6-7                    0      173   805
6-24 months   LCNI-5          MALAWI       6-7                    1        8   805
6-24 months   LCNI-5          MALAWI       8+                     0       59   805
6-24 months   LCNI-5          MALAWI       8+                     1       11   805
6-24 months   NIH-Birth       BANGLADESH   3 or less              0       68   542
6-24 months   NIH-Birth       BANGLADESH   3 or less              1       27   542
6-24 months   NIH-Birth       BANGLADESH   4-5                    0      159   542
6-24 months   NIH-Birth       BANGLADESH   4-5                    1       72   542
6-24 months   NIH-Birth       BANGLADESH   6-7                    0       91   542
6-24 months   NIH-Birth       BANGLADESH   6-7                    1       38   542
6-24 months   NIH-Birth       BANGLADESH   8+                     0       65   542
6-24 months   NIH-Birth       BANGLADESH   8+                     1       22   542
6-24 months   NIH-Crypto      BANGLADESH   3 or less              0       94   730
6-24 months   NIH-Crypto      BANGLADESH   3 or less              1       13   730
6-24 months   NIH-Crypto      BANGLADESH   4-5                    0      279   730
6-24 months   NIH-Crypto      BANGLADESH   4-5                    1       51   730
6-24 months   NIH-Crypto      BANGLADESH   6-7                    0      155   730
6-24 months   NIH-Crypto      BANGLADESH   6-7                    1       21   730
6-24 months   NIH-Crypto      BANGLADESH   8+                     0      106   730
6-24 months   NIH-Crypto      BANGLADESH   8+                     1       11   730
6-24 months   PROVIDE         BANGLADESH   3 or less              0      101   615
6-24 months   PROVIDE         BANGLADESH   3 or less              1       11   615
6-24 months   PROVIDE         BANGLADESH   4-5                    0      249   615
6-24 months   PROVIDE         BANGLADESH   4-5                    1       40   615
6-24 months   PROVIDE         BANGLADESH   6-7                    0      101   615
6-24 months   PROVIDE         BANGLADESH   6-7                    1       29   615
6-24 months   PROVIDE         BANGLADESH   8+                     0       65   615
6-24 months   PROVIDE         BANGLADESH   8+                     1       19   615
6-24 months   SAS-FoodSuppl   INDIA        3 or less              0       24   402
6-24 months   SAS-FoodSuppl   INDIA        3 or less              1       12   402
6-24 months   SAS-FoodSuppl   INDIA        4-5                    0      111   402
6-24 months   SAS-FoodSuppl   INDIA        4-5                    1       64   402
6-24 months   SAS-FoodSuppl   INDIA        6-7                    0       81   402
6-24 months   SAS-FoodSuppl   INDIA        6-7                    1       44   402
6-24 months   SAS-FoodSuppl   INDIA        8+                     0       43   402
6-24 months   SAS-FoodSuppl   INDIA        8+                     1       23   402


The following strata were considered:

* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/638aa295-3a32-4bb9-9ab8-8c74bdd44a13/7def32c7-44fd-4630-9bf0-1b5d02e0530e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/638aa295-3a32-4bb9-9ab8-8c74bdd44a13/7def32c7-44fd-4630-9bf0-1b5d02e0530e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/638aa295-3a32-4bb9-9ab8-8c74bdd44a13/7def32c7-44fd-4630-9bf0-1b5d02e0530e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/638aa295-3a32-4bb9-9ab8-8c74bdd44a13/7def32c7-44fd-4630-9bf0-1b5d02e0530e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                0.6561403   0.5326223   0.7796584
0-24 months   IRC             INDIA        4-5                  NA                0.6039279   0.5258181   0.6820377
0-24 months   IRC             INDIA        6-7                  NA                0.6432654   0.5459758   0.7405550
0-24 months   IRC             INDIA        8+                   NA                0.7737136   0.6845923   0.8628348
0-24 months   LCNI-5          MALAWI       3 or less            NA                0.0675322   0.0350125   0.1000519
0-24 months   LCNI-5          MALAWI       4-5                  NA                0.0897186   0.0591348   0.1203023
0-24 months   LCNI-5          MALAWI       6-7                  NA                0.0493296   0.0184079   0.0802513
0-24 months   LCNI-5          MALAWI       8+                   NA                0.1604280   0.0748525   0.2460035
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.5627322   0.4752691   0.6501952
0-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.4866890   0.4241153   0.5492626
0-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.5057388   0.4176507   0.5938270
0-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.4215416   0.3127722   0.5303110
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.3088665   0.2237357   0.3939972
0-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.3565329   0.3055180   0.4075479
0-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.3176112   0.2465835   0.3886389
0-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.3034026   0.2217145   0.3850907
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.3012040   0.2249343   0.3774737
0-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.3470365   0.2949628   0.3991103
0-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.3806546   0.3040474   0.4572619
0-24 months   PROVIDE         BANGLADESH   8+                   NA                0.4180115   0.3164456   0.5195774
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.3485120   0.1882859   0.5087382
0-24 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.4806364   0.4079699   0.5533029
0-24 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.4812844   0.3939399   0.5686289
0-24 months   SAS-FoodSuppl   INDIA        8+                   NA                0.4754781   0.3550681   0.5958882
0-6 months    IRC             INDIA        3 or less            NA                0.5747313   0.4450298   0.7044329
0-6 months    IRC             INDIA        4-5                  NA                0.4880819   0.4079858   0.5681780
0-6 months    IRC             INDIA        6-7                  NA                0.5576655   0.4593485   0.6559825
0-6 months    IRC             INDIA        8+                   NA                0.6214438   0.5174678   0.7254198
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                0.4280578   0.3375829   0.5185327
0-6 months    NIH-Birth       BANGLADESH   4-5                  NA                0.3287421   0.2691883   0.3882959
0-6 months    NIH-Birth       BANGLADESH   6-7                  NA                0.3726951   0.2880879   0.4573022
0-6 months    NIH-Birth       BANGLADESH   8+                   NA                0.3501960   0.2485786   0.4518135
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                0.2622496   0.1816477   0.3428516
0-6 months    NIH-Crypto      BANGLADESH   4-5                  NA                0.2705177   0.2235829   0.3174526
0-6 months    NIH-Crypto      BANGLADESH   6-7                  NA                0.2549280   0.1872993   0.3225566
0-6 months    NIH-Crypto      BANGLADESH   8+                   NA                0.2312852   0.1544348   0.3081357
0-6 months    PROVIDE         BANGLADESH   3 or less            NA                0.2243817   0.1568496   0.2919139
0-6 months    PROVIDE         BANGLADESH   4-5                  NA                0.2759837   0.2260127   0.3259547
0-6 months    PROVIDE         BANGLADESH   6-7                  NA                0.2357633   0.1665183   0.3050082
0-6 months    PROVIDE         BANGLADESH   8+                   NA                0.2764467   0.1730090   0.3798843
6-24 months   IRC             INDIA        3 or less            NA                0.1850344   0.0837053   0.2863634
6-24 months   IRC             INDIA        4-5                  NA                0.2889791   0.2177338   0.3602243
6-24 months   IRC             INDIA        6-7                  NA                0.3149351   0.2271494   0.4027209
6-24 months   IRC             INDIA        8+                   NA                0.4211473   0.3153230   0.5269715
6-24 months   LCNI-5          MALAWI       3 or less            NA                0.0688073   0.0351851   0.1024296
6-24 months   LCNI-5          MALAWI       4-5                  NA                0.0863095   0.0562642   0.1163549
6-24 months   LCNI-5          MALAWI       6-7                  NA                0.0441989   0.0142371   0.0741607
6-24 months   LCNI-5          MALAWI       8+                   NA                0.1571429   0.0718342   0.2424516
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.3678232   0.2699722   0.4656741
6-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.3166312   0.2550666   0.3781958
6-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.2821155   0.1986425   0.3655885
6-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.2674083   0.1620041   0.3728124
6-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.1210604   0.0585994   0.1835214
6-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1539516   0.1148099   0.1930932
6-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.1197796   0.0714670   0.1680921
6-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.0916686   0.0386125   0.1447246
6-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.0995712   0.0431699   0.1559726
6-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.1378518   0.0978503   0.1778533
6-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.2244881   0.1515986   0.2973776
6-24 months   PROVIDE         BANGLADESH   8+                   NA                0.2260557   0.1358578   0.3162537
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.3181885   0.1506419   0.4857351
6-24 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.3663160   0.2946226   0.4380094
6-24 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.3514285   0.2659872   0.4368698
6-24 months   SAS-FoodSuppl   INDIA        8+                   NA                0.3601761   0.2456342   0.4747179


### Parameter: E(Y)


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC             INDIA        NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   LCNI-5          MALAWI       NA                   NA                0.0807834   0.0620863   0.0994804
0-24 months   NIH-Birth       BANGLADESH   NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   PROVIDE         BANGLADESH   NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.4712919   0.4233811   0.5192026
0-6 months    IRC             INDIA        NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    NIH-Birth       BANGLADESH   NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    NIH-Crypto      BANGLADESH   NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    PROVIDE         BANGLADESH   NA                   NA                0.2585714   0.2261125   0.2910304
6-24 months   IRC             INDIA        NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   LCNI-5          MALAWI       NA                   NA                0.0782609   0.0596958   0.0968259
6-24 months   NIH-Birth       BANGLADESH   NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   PROVIDE         BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.3557214   0.3088651   0.4025777


### Parameter: RR


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   IRC             INDIA        4-5                  3 or less         0.9204249   0.7324204   1.156688
0-24 months   IRC             INDIA        6-7                  3 or less         0.9803778   0.7700113   1.248216
0-24 months   IRC             INDIA        8+                   3 or less         1.1791891   0.9454567   1.470704
0-24 months   LCNI-5          MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   LCNI-5          MALAWI       4-5                  3 or less         1.3285296   0.7367555   2.395626
0-24 months   LCNI-5          MALAWI       6-7                  3 or less         0.7304600   0.3314374   1.609872
0-24 months   LCNI-5          MALAWI       8+                   3 or less         2.3755771   1.1582225   4.872437
0-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         0.8648679   0.7070968   1.057842
0-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         0.8987204   0.7115233   1.135168
0-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         0.7490981   0.5540604   1.012792
0-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         1.1543272   0.8467359   1.573656
0-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0283123   0.7213663   1.465866
0-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         0.9823101   0.6687183   1.442959
0-24 months   PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         1.1521645   0.8583786   1.546501
0-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         1.2637769   0.9154360   1.744668
0-24 months   PROVIDE         BANGLADESH   8+                   3 or less         1.3878022   0.9779087   1.969504
0-24 months   SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         1.3791098   0.8499471   2.237720
0-24 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         1.3809691   0.8423926   2.263880
0-24 months   SAS-FoodSuppl   INDIA        8+                   3 or less         1.3643090   0.8077764   2.304275
0-6 months    IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    IRC             INDIA        4-5                  3 or less         0.8492348   0.6422796   1.122875
0-6 months    IRC             INDIA        6-7                  3 or less         0.9703064   0.7286022   1.292193
0-6 months    IRC             INDIA        8+                   3 or less         1.0812771   0.8161714   1.432493
0-6 months    NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth       BANGLADESH   4-5                  3 or less         0.7679853   0.5812221   1.014761
0-6 months    NIH-Birth       BANGLADESH   6-7                  3 or less         0.8706652   0.6384135   1.187409
0-6 months    NIH-Birth       BANGLADESH   8+                   3 or less         0.8181045   0.5712495   1.171633
0-6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less         1.0315276   0.7247316   1.468198
0-6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9720813   0.6474691   1.459439
0-6 months    NIH-Crypto      BANGLADESH   8+                   3 or less         0.8819278   0.5607606   1.387039
0-6 months    PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    PROVIDE         BANGLADESH   4-5                  3 or less         1.2299738   0.8656633   1.747603
0-6 months    PROVIDE         BANGLADESH   6-7                  3 or less         1.0507239   0.6898475   1.600384
0-6 months    PROVIDE         BANGLADESH   8+                   3 or less         1.2320373   0.7621483   1.991628
6-24 months   IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   IRC             INDIA        4-5                  3 or less         1.5617590   0.8560311   2.849302
6-24 months   IRC             INDIA        6-7                  3 or less         1.7020359   0.9201103   3.148455
6-24 months   IRC             INDIA        8+                   3 or less         2.2760489   1.2445453   4.162483
6-24 months   LCNI-5          MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   LCNI-5          MALAWI       4-5                  3 or less         1.2543651   0.6884364   2.285515
6-24 months   LCNI-5          MALAWI       6-7                  3 or less         0.6423573   0.2785228   1.481469
6-24 months   LCNI-5          MALAWI       8+                   3 or less         2.2838095   1.1001482   4.740985
6-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         0.8608244   0.6200427   1.195109
6-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         0.7669868   0.5151756   1.141880
6-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         0.7270023   0.4513108   1.171105
6-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         1.2716921   0.7154452   2.260412
6-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9894197   0.5139946   1.904595
6-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         0.7572133   0.3487423   1.644113
6-24 months   PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         1.3844540   0.7326888   2.615998
6-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         2.2545476   1.1732597   4.332362
6-24 months   PROVIDE         BANGLADESH   8+                   3 or less         2.2702913   1.1357743   4.538069
6-24 months   SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         1.1512546   0.6555956   2.021654
6-24 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         1.1044662   0.6182606   1.973028
6-24 months   SAS-FoodSuppl   INDIA        8+                   3 or less         1.1319581   0.6113999   2.095730


### Parameter: PAR


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   IRC             INDIA        3 or less            NA                -0.0000428   -0.1148318    0.1147462
0-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0132511   -0.0154275    0.0419297
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0851681   -0.1656089   -0.0047272
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0209489   -0.0576335    0.0995312
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0502246   -0.0185065    0.1189557
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.1227798   -0.0305396    0.2760993
0-6 months    IRC             INDIA        3 or less            NA                -0.0308289   -0.1517229    0.0900651
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0711447   -0.1536379    0.0113486
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.0049937   -0.0795169    0.0695295
0-6 months    PROVIDE         BANGLADESH   3 or less            NA                 0.0341897   -0.0272827    0.0956621
6-24 months   IRC             INDIA        3 or less            NA                 0.1247217    0.0274345    0.2220089
6-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0094535   -0.0199207    0.0388278
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0744652   -0.1646694    0.0157389
6-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0104464   -0.0476042    0.0684970
6-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0614044    0.0076115    0.1151972
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.0375329   -0.1227426    0.1978084


### Parameter: PAF


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   IRC             INDIA        3 or less            NA                -0.0000652   -0.1912594    0.1604428
0-24 months   LCNI-5          MALAWI       3 or less            NA                 0.1640328   -0.2751599    0.4519581
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.1783385   -0.3611029   -0.0201151
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0635169   -0.2078311    0.2739046
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.1429155   -0.0768459    0.3178283
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.2605176   -0.1494238    0.5242536
0-6 months    IRC             INDIA        3 or less            NA                -0.0566809   -0.3041943    0.1438587
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.1993332   -0.4555568    0.0117870
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.0194114   -0.3544791    0.2327680
0-6 months    PROVIDE         BANGLADESH   3 or less            NA                 0.1322253   -0.1405428    0.3397592
6-24 months   IRC             INDIA        3 or less            NA                 0.4026450   -0.0060974    0.6453295
6-24 months   LCNI-5          MALAWI       3 or less            NA                 0.1207951   -0.3459615    0.4256884
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.2538374   -0.6048027    0.0203728
6-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0794364   -0.4867925    0.4300231
6-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.3814514   -0.0527679    0.6365748
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.1055120   -0.4808891    0.4597105
