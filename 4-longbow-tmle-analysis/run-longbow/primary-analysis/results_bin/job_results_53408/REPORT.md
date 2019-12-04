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

agecat      studyid                    country      nhh          stunted   n_cell     n
----------  -------------------------  -----------  ----------  --------  -------  ----
Birth       ki1000108-IRC              INDIA        3 or less          0       51   388
Birth       ki1000108-IRC              INDIA        3 or less          1        3   388
Birth       ki1000108-IRC              INDIA        4-5                0      128   388
Birth       ki1000108-IRC              INDIA        4-5                1       22   388
Birth       ki1000108-IRC              INDIA        6-7                0       89   388
Birth       ki1000108-IRC              INDIA        6-7                1       14   388
Birth       ki1000108-IRC              INDIA        8+                 0       75   388
Birth       ki1000108-IRC              INDIA        8+                 1        6   388
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less          0       93   608
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less          1       19   608
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                0      214   608
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                1       41   608
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                0      118   608
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                1       20   608
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                 0       86   608
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                 1       17   608
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less          0       96   539
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less          1        8   539
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                0      227   539
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                1       24   539
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                0      107   539
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                1        9   539
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                 0       61   539
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                 1        7   539
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0       89   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1       19   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      285   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                1       43   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                0      151   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                1       25   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                 0      106   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                 1       14   732
6 months    ki1000108-IRC              INDIA        3 or less          0       44   407
6 months    ki1000108-IRC              INDIA        3 or less          1       14   407
6 months    ki1000108-IRC              INDIA        4-5                0      116   407
6 months    ki1000108-IRC              INDIA        4-5                1       42   407
6 months    ki1000108-IRC              INDIA        6-7                0       81   407
6 months    ki1000108-IRC              INDIA        6-7                1       25   407
6 months    ki1000108-IRC              INDIA        8+                 0       66   407
6 months    ki1000108-IRC              INDIA        8+                 1       19   407
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less          0       23   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less          1       10   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                0       96   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                1       70   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                0       65   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                1       50   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                 0       33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                 1       33   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less          0       74   537
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less          1       21   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                0      151   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                1       76   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                0      101   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                1       27   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                 0       67   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                 1       20   537
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          0       87   604
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          1       18   604
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                0      242   604
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                1       47   604
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                0      114   604
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                1       16   604
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 0       65   604
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 1       15   604
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0       78   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1       26   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      257   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                1       69   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                0      138   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                1       32   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                 0       92   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                 1       23   715
6 months    ki1148112-LCNI-5           MALAWI       3 or less          0      146   816
6 months    ki1148112-LCNI-5           MALAWI       3 or less          1       78   816
6 months    ki1148112-LCNI-5           MALAWI       4-5                0      212   816
6 months    ki1148112-LCNI-5           MALAWI       4-5                1      128   816
6 months    ki1148112-LCNI-5           MALAWI       6-7                0      117   816
6 months    ki1148112-LCNI-5           MALAWI       6-7                1       65   816
6 months    ki1148112-LCNI-5           MALAWI       8+                 0       45   816
6 months    ki1148112-LCNI-5           MALAWI       8+                 1       25   816
24 months   ki1000108-IRC              INDIA        3 or less          0       39   409
24 months   ki1000108-IRC              INDIA        3 or less          1       19   409
24 months   ki1000108-IRC              INDIA        4-5                0       86   409
24 months   ki1000108-IRC              INDIA        4-5                1       72   409
24 months   ki1000108-IRC              INDIA        6-7                0       66   409
24 months   ki1000108-IRC              INDIA        6-7                1       41   409
24 months   ki1000108-IRC              INDIA        8+                 0       46   409
24 months   ki1000108-IRC              INDIA        8+                 1       40   409
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          0       34   429
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          1       41   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                0       69   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                1      115   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                0       49   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                1       51   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 0       33   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 1       37   429
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          0       76   578
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          1       30   578
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                0      177   578
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                1       96   578
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                0       82   578
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                1       35   578
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 0       53   578
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 1       29   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0       53   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1       16   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      168   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                1       64   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                0       95   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                1       35   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 0       66   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 1       17   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less          0       87   574
24 months   ki1148112-LCNI-5           MALAWI       3 or less          1       72   574
24 months   ki1148112-LCNI-5           MALAWI       4-5                0      129   574
24 months   ki1148112-LCNI-5           MALAWI       4-5                1      108   574
24 months   ki1148112-LCNI-5           MALAWI       6-7                0       75   574
24 months   ki1148112-LCNI-5           MALAWI       6-7                1       54   574
24 months   ki1148112-LCNI-5           MALAWI       8+                 0       29   574
24 months   ki1148112-LCNI-5           MALAWI       8+                 1       20   574


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-IRC, country: INDIA

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
![](/tmp/e94394a3-8cf2-443f-896f-0909a69042ef/88569c58-103d-4dc9-9e35-0117d4e664d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e94394a3-8cf2-443f-896f-0909a69042ef/88569c58-103d-4dc9-9e35-0117d4e664d5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e94394a3-8cf2-443f-896f-0909a69042ef/88569c58-103d-4dc9-9e35-0117d4e664d5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e94394a3-8cf2-443f-896f-0909a69042ef/88569c58-103d-4dc9-9e35-0117d4e664d5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.1699443   0.1001855   0.2397031
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.1598170   0.1147401   0.2048939
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1443118   0.0849843   0.2036392
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.1687289   0.0941404   0.2433174
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.0769231   0.0256627   0.1281835
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.0956175   0.0592043   0.1320308
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.0775862   0.0288583   0.1263141
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1029412   0.0306472   0.1752351
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1658396   0.0942313   0.2374479
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1282078   0.0916373   0.1647783
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1337151   0.0812283   0.1862019
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1123030   0.0546592   0.1699468
6 months    ki1000108-IRC              INDIA        3 or less            NA                0.2528872   0.1389202   0.3668543
6 months    ki1000108-IRC              INDIA        4-5                  NA                0.2652671   0.1964001   0.3341341
6 months    ki1000108-IRC              INDIA        6-7                  NA                0.2409951   0.1590255   0.3229647
6 months    ki1000108-IRC              INDIA        8+                   NA                0.2284289   0.1391584   0.3176993
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.2700229   0.1198391   0.4202067
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4220873   0.3446259   0.4995486
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.4106477   0.3189610   0.5023345
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.4943206   0.3588329   0.6298084
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.2680383   0.1854720   0.3506046
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3292793   0.2674858   0.3910728
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1875809   0.1167445   0.2584174
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.2482872   0.1431009   0.3534734
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.1721186   0.0980450   0.2461922
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1592498   0.1164192   0.2020804
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1238248   0.0656433   0.1820062
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1884200   0.0999902   0.2768498
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2456964   0.1630746   0.3283183
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2129596   0.1686246   0.2572946
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1894501   0.1275260   0.2513742
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2146216   0.1366926   0.2925507
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                0.3701658   0.3085861   0.4317455
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                0.3716979   0.3196339   0.4237618
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                0.3486076   0.2742547   0.4229605
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                0.3420032   0.2248996   0.4591068
24 months   ki1000108-IRC              INDIA        3 or less            NA                0.3318586   0.2100484   0.4536688
24 months   ki1000108-IRC              INDIA        4-5                  NA                0.4592373   0.3809416   0.5375329
24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3858746   0.2928753   0.4788740
24 months   ki1000108-IRC              INDIA        8+                   NA                0.4697242   0.3628146   0.5766338
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.5586015   0.4476501   0.6695530
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.6315610   0.5624502   0.7006717
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.4791293   0.3861095   0.5721490
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.5614493   0.4365746   0.6863239
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2856085   0.2020700   0.3691469
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.3486938   0.2919439   0.4054437
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2871826   0.2021031   0.3722621
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.3659751   0.2573898   0.4745604
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2145589   0.1220153   0.3071025
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2699674   0.2121970   0.3277378
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2748634   0.1934948   0.3562321
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2051595   0.1122247   0.2980943
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.4466164   0.3694231   0.5238097
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.4573277   0.3943933   0.5202620
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.4132400   0.3286862   0.4977937
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.4121908   0.2741932   0.5501885


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.1595395   0.1304091   0.1886699
Birth       ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1379781   0.1129774   0.1629789
6 months    ki1000108-IRC              INDIA        NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                0.3627451   0.3297365   0.3957537
24 months   ki1000108-IRC              INDIA        NA                   NA                0.4205379   0.3726382   0.4684376
24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.5687646   0.5218455   0.6156837
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.4425087   0.4018409   0.4831765


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.9404082   0.5721189   1.545776
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.8491709   0.4755766   1.516246
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9928481   0.5433944   1.814055
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.2430279   0.5769645   2.678013
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0086207   0.4036851   2.520072
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.3382353   0.5082528   3.523588
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         0.7730832   0.4610639   1.296258
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.8062917   0.4498624   1.445123
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.6771784   0.3460555   1.325136
6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         1.0489540   0.6234025   1.764999
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         0.9529744   0.5419960   1.675585
6 months    ki1000108-IRC              INDIA        8+                   3 or less         0.9032834   0.4971391   1.641233
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.5631535   0.8707432   2.806165
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.5207885   0.8344628   2.771600
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.8306618   0.9849917   3.402387
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.2284787   0.8601956   1.754438
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.6998289   0.4318395   1.134126
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9263123   0.5500547   1.559944
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         0.9252326   0.5570824   1.536677
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         0.7194152   0.3803327   1.360804
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.0947101   0.5787805   2.070543
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         0.8667590   0.5840066   1.286409
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.7710738   0.4824605   1.232339
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.8735236   0.5328942   1.431886
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0041389   0.8093844   1.245755
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.9417608   0.7193826   1.232881
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.9239190   0.6322854   1.350065
24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.3838342   0.9230795   2.074575
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.1627683   0.7497967   1.803195
24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.4154348   0.9185782   2.181040
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.1306109   0.9022415   1.416784
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.8577300   0.6525210   1.127474
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         1.0050980   0.7466530   1.353001
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.2208805   0.8755914   1.702334
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0055116   0.6649097   1.520588
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.2813875   0.8472314   1.938023
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.2582438   0.7770031   2.037543
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.2810629   0.7590671   2.162025
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9561919   0.5114020   1.787836
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0239832   0.8224389   1.274917
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.9252682   0.7088940   1.207686
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.9229192   0.6342969   1.342872


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0104048   -0.0730736   0.0522639
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0121307   -0.0346973   0.0589588
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0278614   -0.0929441   0.0372212
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0071870   -0.1129052   0.0985312
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1589245    0.0126624   0.3051865
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0001181   -0.0763715   0.0766077
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0131782   -0.0801544   0.0537979
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0359062   -0.1119513   0.0401389
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0074207   -0.0605063   0.0456649
24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0886793   -0.0252134   0.2025721
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0101630   -0.0900683   0.1103944
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0431113   -0.0333132   0.1195358
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0422504   -0.0452807   0.1297816
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0041077   -0.0691792   0.0609638


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0652179   -0.5400772   0.2632257
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1362179   -0.5857997   0.5294996
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.2019265   -0.7772195   0.1871418
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0292511   -0.5634149   0.3224077
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.3704987   -0.0799954   0.6330801
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0004405   -0.3296594   0.2485902
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0829131   -0.5975940   0.2659582
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1711531   -0.5960024   0.1406031
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0204570   -0.1778995   0.1159411
24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.2108712   -0.1124069   0.4402009
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0178686   -0.1751769   0.1792027
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1311490   -0.1349458   0.3348563
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1645207   -0.2547424   0.4436900
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0092827   -0.1675761   0.1275501
