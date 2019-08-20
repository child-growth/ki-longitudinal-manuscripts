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
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less          0        7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less          1        0    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                0       10    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                1        1    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                0        7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                1        0    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                 0        3    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                 1        0    28
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0        7    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1        1    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                0        7    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                1        2    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                0        5    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                1        2    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                 0        3    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                 1        0    27
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
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          0       84   583
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          1       18   583
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                0      232   583
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                1       45   583
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                0      110   583
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                1       16   583
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 0       63   583
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 1       15   583
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
24 months   ki1000108-IRC              INDIA        4-5                0       88   409
24 months   ki1000108-IRC              INDIA        4-5                1       70   409
24 months   ki1000108-IRC              INDIA        6-7                0       66   409
24 months   ki1000108-IRC              INDIA        6-7                1       41   409
24 months   ki1000108-IRC              INDIA        8+                 0       46   409
24 months   ki1000108-IRC              INDIA        8+                 1       40   409
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          0       36   429
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          1       39   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                0       71   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                1      113   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                0       49   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                1       51   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 0       35   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 1       35   429
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          0       75   577
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          1       30   577
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                0      177   577
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                1       96   577
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                0       82   577
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                1       35   577
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 0       53   577
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 1       29   577
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0       53   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1       16   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      168   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                1       64   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                0       95   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                1       35   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 0       66   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 1       17   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less          0       89   574
24 months   ki1148112-LCNI-5           MALAWI       3 or less          1       70   574
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/57155562-0d61-47de-ab3e-4e474a4ddb43/b2e3e31b-e520-4847-a9b7-f05e5be2f22b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/57155562-0d61-47de-ab3e-4e474a4ddb43/b2e3e31b-e520-4847-a9b7-f05e5be2f22b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/57155562-0d61-47de-ab3e-4e474a4ddb43/b2e3e31b-e520-4847-a9b7-f05e5be2f22b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/57155562-0d61-47de-ab3e-4e474a4ddb43/b2e3e31b-e520-4847-a9b7-f05e5be2f22b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC              INDIA        3 or less            NA                0.2330912   0.1208589   0.3453235
6 months    ki1000108-IRC              INDIA        4-5                  NA                0.2619788   0.1923636   0.3315941
6 months    ki1000108-IRC              INDIA        6-7                  NA                0.2308250   0.1492763   0.3123737
6 months    ki1000108-IRC              INDIA        8+                   NA                0.2070143   0.1160367   0.2979920
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.2619875   0.1245629   0.3994121
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4175131   0.3399362   0.4950899
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.4132611   0.3202102   0.5063121
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.5009882   0.3665649   0.6354116
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.2455605   0.1656352   0.3254858
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3325146   0.2705994   0.3944297
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1895847   0.1214731   0.2576964
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.2532822   0.1495550   0.3570093
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.1705975   0.0965954   0.2445995
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1628055   0.1187957   0.2068153
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1296241   0.0706292   0.1886191
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1907512   0.1033089   0.2781935
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2522059   0.1697599   0.3346518
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2141563   0.1697485   0.2585640
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1940750   0.1289732   0.2591768
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2102182   0.1321940   0.2882423
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                0.3704512   0.3082919   0.4326105
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                0.3763732   0.3241953   0.4285510
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                0.3463107   0.2723090   0.4203125
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                0.3426724   0.2180900   0.4672547
24 months   ki1000108-IRC              INDIA        3 or less            NA                0.3217697   0.1981917   0.4453477
24 months   ki1000108-IRC              INDIA        4-5                  NA                0.4423091   0.3643247   0.5202934
24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3786351   0.2852980   0.4719722
24 months   ki1000108-IRC              INDIA        8+                   NA                0.4641316   0.3584445   0.5698186
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.5164958   0.4062938   0.6266978
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.6180724   0.5477723   0.6883726
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.4829928   0.3897819   0.5762037
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.5303127   0.3996029   0.6610225
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2675471   0.1856661   0.3494281
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.3518422   0.2946295   0.4090548
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2907807   0.2041417   0.3774197
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.3722046   0.2628647   0.4815445
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2067453   0.1148441   0.2986465
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2711970   0.2132746   0.3291195
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2769871   0.1949421   0.3590320
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2034909   0.1134984   0.2934834
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.4357216   0.3590338   0.5124094
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.4582217   0.3951230   0.5213204
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.4187402   0.3339023   0.5035781
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.4329386   0.2968488   0.5690283


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC              INDIA        NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                0.3627451   0.3297365   0.3957537
24 months   ki1000108-IRC              INDIA        NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.4390244   0.3983906   0.4796582


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         1.1239328   0.6483798   1.948279
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         0.9902776   0.5445988   1.800683
6 months    ki1000108-IRC              INDIA        8+                   3 or less         0.8881258   0.4629776   1.703684
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.5936373   0.9138097   2.779222
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.5774077   0.8902386   2.794998
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.9122599   1.0609274   3.446737
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.3541045   0.9343222   1.962491
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.7720489   0.4777914   1.247531
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         1.0314450   0.6130093   1.735502
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         0.9543254   0.5733548   1.588435
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         0.7598245   0.4060690   1.421761
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.1181362   0.5966459   2.095428
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         0.8491328   0.5770347   1.249537
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.7695104   0.4814799   1.229846
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.8335181   0.5083604   1.366653
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0159858   0.8186576   1.260878
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.9348349   0.7131982   1.225348
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.9250134   0.6205351   1.378890
24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.3746137   0.9005707   2.098184
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.1767270   0.7454663   1.857477
24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.4424340   0.9229917   2.254208
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.1966650   0.9412831   1.521335
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.9351341   0.7048531   1.240650
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         1.0267513   0.7420930   1.420601
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.3150663   0.9314603   1.856654
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0868393   0.7104376   1.662665
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.3911741   0.9126181   2.120674
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.3117447   0.8005473   2.149372
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.3397504   0.7848047   2.287106
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9842590   0.5255457   1.843352
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0516388   0.8425216   1.312660
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.9610269   0.7358809   1.255057
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.9936128   0.6941412   1.422285


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0126090   -0.0914589   0.1166770
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1669598    0.0330241   0.3008956
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0225959   -0.0513071   0.0964990
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0093625   -0.0760227   0.0572977
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0424157   -0.1184781   0.0336468
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0077061   -0.0615124   0.0461002
24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0938782   -0.0216774   0.2094339
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0382828   -0.0612332   0.1377988
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0617423   -0.0135740   0.1370587
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0500641   -0.0370004   0.1371285
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0033028   -0.0614292   0.0680348


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0513188   -0.4827445   0.3930202
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.3892316   -0.0151362   0.6325241
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0842640   -0.2362576   0.3216847
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0580672   -0.5635580   0.2840008
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.2021813   -0.6258724   0.1110989
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0212439   -0.1809786   0.1168857
24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.2258600   -0.1091260   0.4596711
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0690055   -0.1289548   0.2322538
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1875017   -0.0758355   0.3863807
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1949464   -0.2247379   0.4708164
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0075230   -0.1514456   0.1445445
