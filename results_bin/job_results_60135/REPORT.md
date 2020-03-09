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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country      nhh          stunted   n_cell     n
----------  --------------  -----------  ----------  --------  -------  ----
Birth       IRC             INDIA        3 or less          0       51   388
Birth       IRC             INDIA        3 or less          1        3   388
Birth       IRC             INDIA        4-5                0      128   388
Birth       IRC             INDIA        4-5                1       22   388
Birth       IRC             INDIA        6-7                0       89   388
Birth       IRC             INDIA        6-7                1       14   388
Birth       IRC             INDIA        8+                 0       75   388
Birth       IRC             INDIA        8+                 1        6   388
Birth       NIH-Birth       BANGLADESH   3 or less          0       93   608
Birth       NIH-Birth       BANGLADESH   3 or less          1       19   608
Birth       NIH-Birth       BANGLADESH   4-5                0      214   608
Birth       NIH-Birth       BANGLADESH   4-5                1       41   608
Birth       NIH-Birth       BANGLADESH   6-7                0      118   608
Birth       NIH-Birth       BANGLADESH   6-7                1       20   608
Birth       NIH-Birth       BANGLADESH   8+                 0       86   608
Birth       NIH-Birth       BANGLADESH   8+                 1       17   608
Birth       NIH-Crypto      BANGLADESH   3 or less          0       89   732
Birth       NIH-Crypto      BANGLADESH   3 or less          1       19   732
Birth       NIH-Crypto      BANGLADESH   4-5                0      285   732
Birth       NIH-Crypto      BANGLADESH   4-5                1       43   732
Birth       NIH-Crypto      BANGLADESH   6-7                0      151   732
Birth       NIH-Crypto      BANGLADESH   6-7                1       25   732
Birth       NIH-Crypto      BANGLADESH   8+                 0      106   732
Birth       NIH-Crypto      BANGLADESH   8+                 1       14   732
Birth       PROVIDE         BANGLADESH   3 or less          0       96   539
Birth       PROVIDE         BANGLADESH   3 or less          1        8   539
Birth       PROVIDE         BANGLADESH   4-5                0      227   539
Birth       PROVIDE         BANGLADESH   4-5                1       24   539
Birth       PROVIDE         BANGLADESH   6-7                0      107   539
Birth       PROVIDE         BANGLADESH   6-7                1        9   539
Birth       PROVIDE         BANGLADESH   8+                 0       61   539
Birth       PROVIDE         BANGLADESH   8+                 1        7   539
6 months    IRC             INDIA        3 or less          0       44   407
6 months    IRC             INDIA        3 or less          1       14   407
6 months    IRC             INDIA        4-5                0      116   407
6 months    IRC             INDIA        4-5                1       42   407
6 months    IRC             INDIA        6-7                0       81   407
6 months    IRC             INDIA        6-7                1       25   407
6 months    IRC             INDIA        8+                 0       66   407
6 months    IRC             INDIA        8+                 1       19   407
6 months    LCNI-5          MALAWI       3 or less          0      146   816
6 months    LCNI-5          MALAWI       3 or less          1       78   816
6 months    LCNI-5          MALAWI       4-5                0      212   816
6 months    LCNI-5          MALAWI       4-5                1      128   816
6 months    LCNI-5          MALAWI       6-7                0      117   816
6 months    LCNI-5          MALAWI       6-7                1       65   816
6 months    LCNI-5          MALAWI       8+                 0       45   816
6 months    LCNI-5          MALAWI       8+                 1       25   816
6 months    NIH-Birth       BANGLADESH   3 or less          0       74   537
6 months    NIH-Birth       BANGLADESH   3 or less          1       21   537
6 months    NIH-Birth       BANGLADESH   4-5                0      151   537
6 months    NIH-Birth       BANGLADESH   4-5                1       76   537
6 months    NIH-Birth       BANGLADESH   6-7                0      101   537
6 months    NIH-Birth       BANGLADESH   6-7                1       27   537
6 months    NIH-Birth       BANGLADESH   8+                 0       67   537
6 months    NIH-Birth       BANGLADESH   8+                 1       20   537
6 months    NIH-Crypto      BANGLADESH   3 or less          0       78   715
6 months    NIH-Crypto      BANGLADESH   3 or less          1       26   715
6 months    NIH-Crypto      BANGLADESH   4-5                0      257   715
6 months    NIH-Crypto      BANGLADESH   4-5                1       69   715
6 months    NIH-Crypto      BANGLADESH   6-7                0      138   715
6 months    NIH-Crypto      BANGLADESH   6-7                1       32   715
6 months    NIH-Crypto      BANGLADESH   8+                 0       92   715
6 months    NIH-Crypto      BANGLADESH   8+                 1       23   715
6 months    PROVIDE         BANGLADESH   3 or less          0       87   604
6 months    PROVIDE         BANGLADESH   3 or less          1       18   604
6 months    PROVIDE         BANGLADESH   4-5                0      242   604
6 months    PROVIDE         BANGLADESH   4-5                1       47   604
6 months    PROVIDE         BANGLADESH   6-7                0      114   604
6 months    PROVIDE         BANGLADESH   6-7                1       16   604
6 months    PROVIDE         BANGLADESH   8+                 0       65   604
6 months    PROVIDE         BANGLADESH   8+                 1       15   604
6 months    SAS-FoodSuppl   INDIA        3 or less          0       23   380
6 months    SAS-FoodSuppl   INDIA        3 or less          1       10   380
6 months    SAS-FoodSuppl   INDIA        4-5                0       96   380
6 months    SAS-FoodSuppl   INDIA        4-5                1       70   380
6 months    SAS-FoodSuppl   INDIA        6-7                0       65   380
6 months    SAS-FoodSuppl   INDIA        6-7                1       50   380
6 months    SAS-FoodSuppl   INDIA        8+                 0       33   380
6 months    SAS-FoodSuppl   INDIA        8+                 1       33   380
24 months   IRC             INDIA        3 or less          0       39   409
24 months   IRC             INDIA        3 or less          1       19   409
24 months   IRC             INDIA        4-5                0       86   409
24 months   IRC             INDIA        4-5                1       72   409
24 months   IRC             INDIA        6-7                0       66   409
24 months   IRC             INDIA        6-7                1       41   409
24 months   IRC             INDIA        8+                 0       46   409
24 months   IRC             INDIA        8+                 1       40   409
24 months   LCNI-5          MALAWI       3 or less          0       87   574
24 months   LCNI-5          MALAWI       3 or less          1       72   574
24 months   LCNI-5          MALAWI       4-5                0      129   574
24 months   LCNI-5          MALAWI       4-5                1      108   574
24 months   LCNI-5          MALAWI       6-7                0       75   574
24 months   LCNI-5          MALAWI       6-7                1       54   574
24 months   LCNI-5          MALAWI       8+                 0       29   574
24 months   LCNI-5          MALAWI       8+                 1       20   574
24 months   NIH-Birth       BANGLADESH   3 or less          0       34   429
24 months   NIH-Birth       BANGLADESH   3 or less          1       41   429
24 months   NIH-Birth       BANGLADESH   4-5                0       69   429
24 months   NIH-Birth       BANGLADESH   4-5                1      115   429
24 months   NIH-Birth       BANGLADESH   6-7                0       49   429
24 months   NIH-Birth       BANGLADESH   6-7                1       51   429
24 months   NIH-Birth       BANGLADESH   8+                 0       33   429
24 months   NIH-Birth       BANGLADESH   8+                 1       37   429
24 months   NIH-Crypto      BANGLADESH   3 or less          0       53   514
24 months   NIH-Crypto      BANGLADESH   3 or less          1       16   514
24 months   NIH-Crypto      BANGLADESH   4-5                0      168   514
24 months   NIH-Crypto      BANGLADESH   4-5                1       64   514
24 months   NIH-Crypto      BANGLADESH   6-7                0       95   514
24 months   NIH-Crypto      BANGLADESH   6-7                1       35   514
24 months   NIH-Crypto      BANGLADESH   8+                 0       66   514
24 months   NIH-Crypto      BANGLADESH   8+                 1       17   514
24 months   PROVIDE         BANGLADESH   3 or less          0       76   578
24 months   PROVIDE         BANGLADESH   3 or less          1       30   578
24 months   PROVIDE         BANGLADESH   4-5                0      177   578
24 months   PROVIDE         BANGLADESH   4-5                1       96   578
24 months   PROVIDE         BANGLADESH   6-7                0       82   578
24 months   PROVIDE         BANGLADESH   6-7                1       35   578
24 months   PROVIDE         BANGLADESH   8+                 0       53   578
24 months   PROVIDE         BANGLADESH   8+                 1       29   578


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: IRC, country: INDIA

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
![](/tmp/985a15e8-6976-42d6-a271-bfdaee841038/a5695c15-bb7d-4920-aaec-4315f1a92297/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/985a15e8-6976-42d6-a271-bfdaee841038/a5695c15-bb7d-4920-aaec-4315f1a92297/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/985a15e8-6976-42d6-a271-bfdaee841038/a5695c15-bb7d-4920-aaec-4315f1a92297/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/985a15e8-6976-42d6-a271-bfdaee841038/a5695c15-bb7d-4920-aaec-4315f1a92297/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NIH-Birth       BANGLADESH   3 or less            NA                0.1719119   0.1016304   0.2421934
Birth       NIH-Birth       BANGLADESH   4-5                  NA                0.1579927   0.1132404   0.2027449
Birth       NIH-Birth       BANGLADESH   6-7                  NA                0.1449732   0.0850980   0.2048483
Birth       NIH-Birth       BANGLADESH   8+                   NA                0.1719454   0.0968880   0.2470029
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                0.1654801   0.0933657   0.2375946
Birth       NIH-Crypto      BANGLADESH   4-5                  NA                0.1294266   0.0928794   0.1659738
Birth       NIH-Crypto      BANGLADESH   6-7                  NA                0.1379555   0.0857585   0.1901524
Birth       NIH-Crypto      BANGLADESH   8+                   NA                0.1151247   0.0572996   0.1729497
Birth       PROVIDE         BANGLADESH   3 or less            NA                0.0769231   0.0256627   0.1281835
Birth       PROVIDE         BANGLADESH   4-5                  NA                0.0956175   0.0592043   0.1320308
Birth       PROVIDE         BANGLADESH   6-7                  NA                0.0775862   0.0288583   0.1263141
Birth       PROVIDE         BANGLADESH   8+                   NA                0.1029412   0.0306472   0.1752351
6 months    IRC             INDIA        3 or less            NA                0.2438848   0.1321104   0.3556593
6 months    IRC             INDIA        4-5                  NA                0.2658625   0.1966130   0.3351120
6 months    IRC             INDIA        6-7                  NA                0.2400654   0.1576735   0.3224572
6 months    IRC             INDIA        8+                   NA                0.2265297   0.1362306   0.3168288
6 months    LCNI-5          MALAWI       3 or less            NA                0.3521511   0.2847029   0.4195992
6 months    LCNI-5          MALAWI       4-5                  NA                0.3701836   0.3161094   0.4242578
6 months    LCNI-5          MALAWI       6-7                  NA                0.3592801   0.2831086   0.4354516
6 months    LCNI-5          MALAWI       8+                   NA                0.3238998   0.2103253   0.4374742
6 months    NIH-Birth       BANGLADESH   3 or less            NA                0.2696880   0.1887869   0.3505891
6 months    NIH-Birth       BANGLADESH   4-5                  NA                0.3339134   0.2703167   0.3975101
6 months    NIH-Birth       BANGLADESH   6-7                  NA                0.1834949   0.1148368   0.2521531
6 months    NIH-Birth       BANGLADESH   8+                   NA                0.2527679   0.1474682   0.3580677
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                0.2453958   0.1636779   0.3271138
6 months    NIH-Crypto      BANGLADESH   4-5                  NA                0.2168755   0.1721012   0.2616498
6 months    NIH-Crypto      BANGLADESH   6-7                  NA                0.1868545   0.1251964   0.2485126
6 months    NIH-Crypto      BANGLADESH   8+                   NA                0.2095286   0.1342298   0.2848273
6 months    PROVIDE         BANGLADESH   3 or less            NA                0.1711442   0.0982106   0.2440777
6 months    PROVIDE         BANGLADESH   4-5                  NA                0.1621425   0.1195141   0.2047710
6 months    PROVIDE         BANGLADESH   6-7                  NA                0.1238239   0.0667277   0.1809201
6 months    PROVIDE         BANGLADESH   8+                   NA                0.1879305   0.1010372   0.2748238
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                0.2600360   0.1203706   0.3997015
6 months    SAS-FoodSuppl   INDIA        4-5                  NA                0.4179880   0.3409952   0.4949809
6 months    SAS-FoodSuppl   INDIA        6-7                  NA                0.4120912   0.3195682   0.5046141
6 months    SAS-FoodSuppl   INDIA        8+                   NA                0.4998923   0.3636735   0.6361112
24 months   IRC             INDIA        3 or less            NA                0.3320046   0.2098288   0.4541803
24 months   IRC             INDIA        4-5                  NA                0.4552020   0.3769993   0.5334048
24 months   IRC             INDIA        6-7                  NA                0.3839210   0.2906570   0.4771850
24 months   IRC             INDIA        8+                   NA                0.4630808   0.3560196   0.5701420
24 months   LCNI-5          MALAWI       3 or less            NA                0.4526165   0.3753510   0.5298820
24 months   LCNI-5          MALAWI       4-5                  NA                0.4531254   0.3898242   0.5164267
24 months   LCNI-5          MALAWI       6-7                  NA                0.4184180   0.3321043   0.5047317
24 months   LCNI-5          MALAWI       8+                   NA                0.4017465   0.2640949   0.5393980
24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.5570198   0.4431758   0.6708638
24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.6249920   0.5548854   0.6950987
24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.4862350   0.3928704   0.5795995
24 months   NIH-Birth       BANGLADESH   8+                   NA                0.5598719   0.4346570   0.6850868
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.2272427   0.1247103   0.3297751
24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.2722781   0.2144363   0.3301200
24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.2717479   0.1954673   0.3480286
24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.2633197   0.1754369   0.3512024
24 months   PROVIDE         BANGLADESH   3 or less            NA                0.2738902   0.1936107   0.3541697
24 months   PROVIDE         BANGLADESH   4-5                  NA                0.3518957   0.2953442   0.4084472
24 months   PROVIDE         BANGLADESH   6-7                  NA                0.2850721   0.1988033   0.3713408
24 months   PROVIDE         BANGLADESH   8+                   NA                0.4005557   0.2960401   0.5050714


### Parameter: E(Y)


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NIH-Birth       BANGLADESH   NA                   NA                0.1595395   0.1304091   0.1886699
Birth       NIH-Crypto      BANGLADESH   NA                   NA                0.1379781   0.1129774   0.1629789
Birth       PROVIDE         BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212
6 months    IRC             INDIA        NA                   NA                0.2457002   0.2038248   0.2875757
6 months    LCNI-5          MALAWI       NA                   NA                0.3627451   0.3297365   0.3957537
6 months    NIH-Birth       BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto      BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROVIDE         BANGLADESH   NA                   NA                0.1589404   0.1297581   0.1881227
6 months    SAS-FoodSuppl   INDIA        NA                   NA                0.4289474   0.3791199   0.4787748
24 months   IRC             INDIA        NA                   NA                0.4205379   0.3726382   0.4684376
24 months   LCNI-5          MALAWI       NA                   NA                0.4425087   0.4018409   0.4831765
24 months   NIH-Birth       BANGLADESH   NA                   NA                0.5687646   0.5218455   0.6156837
24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROVIDE         BANGLADESH   NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth       NIH-Birth       BANGLADESH   4-5                  3 or less         0.9190326   0.5595831   1.509375
Birth       NIH-Birth       BANGLADESH   6-7                  3 or less         0.8432990   0.4721866   1.506085
Birth       NIH-Birth       BANGLADESH   8+                   3 or less         1.0001950   0.5503776   1.817643
Birth       NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth       NIH-Crypto      BANGLADESH   4-5                  3 or less         0.7821277   0.4658455   1.313147
Birth       NIH-Crypto      BANGLADESH   6-7                  3 or less         0.8336678   0.4680050   1.485032
Birth       NIH-Crypto      BANGLADESH   8+                   3 or less         0.6957008   0.3575601   1.353617
Birth       PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth       PROVIDE         BANGLADESH   4-5                  3 or less         1.2430279   0.5769645   2.678013
Birth       PROVIDE         BANGLADESH   6-7                  3 or less         1.0086207   0.4036851   2.520072
Birth       PROVIDE         BANGLADESH   8+                   3 or less         1.3382353   0.5082528   3.523588
6 months    IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    IRC             INDIA        4-5                  3 or less         1.0901150   0.6433551   1.847115
6 months    IRC             INDIA        6-7                  3 or less         0.9843391   0.5549567   1.745944
6 months    IRC             INDIA        8+                   3 or less         0.9288387   0.5059478   1.705198
6 months    LCNI-5          MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    LCNI-5          MALAWI       4-5                  3 or less         1.0512068   0.8259859   1.337839
6 months    LCNI-5          MALAWI       6-7                  3 or less         1.0202442   0.7666906   1.357651
6 months    LCNI-5          MALAWI       8+                   3 or less         0.9197751   0.6167688   1.371642
6 months    NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    NIH-Birth       BANGLADESH   4-5                  3 or less         1.2381472   0.8712698   1.759510
6 months    NIH-Birth       BANGLADESH   6-7                  3 or less         0.6803971   0.4232312   1.093823
6 months    NIH-Birth       BANGLADESH   8+                   3 or less         0.9372605   0.5625224   1.561640
6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less         0.8837783   0.5978234   1.306513
6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         0.7614412   0.4765198   1.216723
6 months    NIH-Crypto      BANGLADESH   8+                   3 or less         0.8538392   0.5235754   1.392429
6 months    PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    PROVIDE         BANGLADESH   4-5                  3 or less         0.9474032   0.5740957   1.563455
6 months    PROVIDE         BANGLADESH   6-7                  3 or less         0.7235063   0.3861067   1.355743
6 months    PROVIDE         BANGLADESH   8+                   3 or less         1.0980830   0.5854615   2.059548
6 months    SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         1.6074235   0.9111892   2.835646
6 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         1.5847464   0.8839466   2.841146
6 months    SAS-FoodSuppl   INDIA        8+                   3 or less         1.9223965   1.0524262   3.511513
24 months   IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   IRC             INDIA        4-5                  3 or less         1.3710716   0.9133717   2.058130
24 months   IRC             INDIA        6-7                  3 or less         1.1563727   0.7439553   1.797417
24 months   IRC             INDIA        8+                   3 or less         1.3948024   0.9031040   2.154208
24 months   LCNI-5          MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   LCNI-5          MALAWI       4-5                  3 or less         1.0011243   0.8036904   1.247060
24 months   LCNI-5          MALAWI       6-7                  3 or less         0.9244426   0.7075703   1.207787
24 months   LCNI-5          MALAWI       8+                   3 or less         0.8876090   0.6056712   1.300788
24 months   NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         1.1220284   0.8892804   1.415693
24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         0.8729223   0.6621661   1.150759
24 months   NIH-Birth       BANGLADESH   8+                   3 or less         1.0051204   0.7430559   1.359611
24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         1.1981820   0.7281305   1.971680
24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         1.1958489   0.7047130   2.029272
24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         1.1587596   0.6622792   2.027429
24 months   PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   PROVIDE         BANGLADESH   4-5                  3 or less         1.2848055   0.9223329   1.789728
24 months   PROVIDE         BANGLADESH   6-7                  3 or less         1.0408260   0.6842352   1.583255
24 months   PROVIDE         BANGLADESH   8+                   3 or less         1.4624682   0.9920439   2.155966


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       NIH-Birth       BANGLADESH   3 or less            NA                -0.0123724   -0.0756043   0.0508594
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                -0.0275020   -0.0930841   0.0380801
Birth       PROVIDE         BANGLADESH   3 or less            NA                 0.0121307   -0.0346973   0.0589588
6 months    IRC             INDIA        3 or less            NA                 0.0018154   -0.1018392   0.1054701
6 months    LCNI-5          MALAWI       3 or less            NA                 0.0105940   -0.0490202   0.0702083
6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0015316   -0.0765241   0.0734609
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.0356056   -0.1107271   0.0395158
6 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0122038   -0.0781204   0.0537129
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                 0.1689113    0.0327365   0.3050862
24 months   IRC             INDIA        3 or less            NA                 0.0885333   -0.0257247   0.2027914
24 months   LCNI-5          MALAWI       3 or less            NA                -0.0101078   -0.0756588   0.0554432
24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0117448   -0.0915467   0.1150362
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0295666   -0.0662544   0.1253877
24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0548295   -0.0185633   0.1282223


### Parameter: PAF


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       NIH-Birth       BANGLADESH   3 or less            NA                -0.0775510   -0.5564547   0.2539993
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                -0.1993214   -0.7801386   0.1919888
Birth       PROVIDE         BANGLADESH   3 or less            NA                 0.1362179   -0.5857997   0.5294996
6 months    IRC             INDIA        3 or less            NA                 0.0073888   -0.5183129   0.3510711
6 months    LCNI-5          MALAWI       3 or less            NA                 0.0292052   -0.1498166   0.1803540
6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0057115   -0.3282154   0.2384853
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.1697201   -0.5887191   0.1387746
6 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0767822   -0.5823874   0.2672718
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                 0.3937811   -0.0203431   0.6398257
24 months   IRC             INDIA        3 or less            NA                 0.2105240   -0.1139680   0.4404935
24 months   LCNI-5          MALAWI       3 or less            NA                -0.0228421   -0.1822496   0.1150719
24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0206496   -0.1789148   0.1864322
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.1151307   -0.3492233   0.4196708
24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.1667971   -0.0884967   0.3622148
