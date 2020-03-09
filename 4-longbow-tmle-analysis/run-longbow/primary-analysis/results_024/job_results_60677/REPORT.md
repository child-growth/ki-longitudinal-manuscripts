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

**Outcome Variable:** dead0plus

## Predictor Variables

**Intervention Variable:** ever_sstunted024

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_sstunted024    dead0plus   n_cell       n
----------------  -----------------------------  -----------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                           0     6264    7164
Burkina Faso Zn   BURKINA FASO                   0                           1       37    7164
Burkina Faso Zn   BURKINA FASO                   1                           0      852    7164
Burkina Faso Zn   BURKINA FASO                   1                           1       11    7164
EE                PAKISTAN                       0                           0      151     379
EE                PAKISTAN                       0                           1        0     379
EE                PAKISTAN                       1                           0      224     379
EE                PAKISTAN                       1                           1        4     379
GMS-Nepal         NEPAL                          0                           0      525     698
GMS-Nepal         NEPAL                          0                           1        4     698
GMS-Nepal         NEPAL                          1                           0      165     698
GMS-Nepal         NEPAL                          1                           1        4     698
iLiNS-DOSE        MALAWI                         0                           0     1487    1931
iLiNS-DOSE        MALAWI                         0                           1      102    1931
iLiNS-DOSE        MALAWI                         1                           0      316    1931
iLiNS-DOSE        MALAWI                         1                           1       26    1931
iLiNS-DYAD-M      MALAWI                         0                           0      973    1204
iLiNS-DYAD-M      MALAWI                         0                           1       34    1204
iLiNS-DYAD-M      MALAWI                         1                           0      188    1204
iLiNS-DYAD-M      MALAWI                         1                           1        9    1204
JiVitA-3          BANGLADESH                     0                           0    21747   27227
JiVitA-3          BANGLADESH                     0                           1      458   27227
JiVitA-3          BANGLADESH                     1                           0     4637   27227
JiVitA-3          BANGLADESH                     1                           1      385   27227
JiVitA-4          BANGLADESH                     0                           0     4305    5442
JiVitA-4          BANGLADESH                     0                           1       31    5442
JiVitA-4          BANGLADESH                     1                           0     1087    5442
JiVitA-4          BANGLADESH                     1                           1       19    5442
Keneba            GAMBIA                         0                           0     2233    2915
Keneba            GAMBIA                         0                           1       63    2915
Keneba            GAMBIA                         1                           0      583    2915
Keneba            GAMBIA                         1                           1       36    2915
MAL-ED            BANGLADESH                     0                           0      205     265
MAL-ED            BANGLADESH                     0                           1        2     265
MAL-ED            BANGLADESH                     1                           0       57     265
MAL-ED            BANGLADESH                     1                           1        1     265
MAL-ED            INDIA                          0                           0      190     251
MAL-ED            INDIA                          0                           1        2     251
MAL-ED            INDIA                          1                           0       59     251
MAL-ED            INDIA                          1                           1        0     251
MAL-ED            PERU                           0                           0      237     303
MAL-ED            PERU                           0                           1        2     303
MAL-ED            PERU                           1                           0       64     303
MAL-ED            PERU                           1                           1        0     303
MAL-ED            SOUTH AFRICA                   0                           0      241     314
MAL-ED            SOUTH AFRICA                   0                           1        0     314
MAL-ED            SOUTH AFRICA                   1                           0       72     314
MAL-ED            SOUTH AFRICA                   1                           1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           0      123     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           1        2     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           0      136     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           1        1     262
PROVIDE           BANGLADESH                     0                           0      601     700
PROVIDE           BANGLADESH                     0                           1        4     700
PROVIDE           BANGLADESH                     1                           0       94     700
PROVIDE           BANGLADESH                     1                           1        1     700
SAS-CompFeed      INDIA                          0                           0      999    1533
SAS-CompFeed      INDIA                          0                           1       27    1533
SAS-CompFeed      INDIA                          1                           0      484    1533
SAS-CompFeed      INDIA                          1                           1       23    1533
SAS-FoodSuppl     INDIA                          0                           0      215     418
SAS-FoodSuppl     INDIA                          0                           1        2     418
SAS-FoodSuppl     INDIA                          1                           0      197     418
SAS-FoodSuppl     INDIA                          1                           1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0     2156    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0      239    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        0    2396
VITAMIN-A         INDIA                          0                           0     2897    3907
VITAMIN-A         INDIA                          0                           1       49    3907
VITAMIN-A         INDIA                          1                           0      933    3907
VITAMIN-A         INDIA                          1                           1       28    3907
ZVITAMBO          ZIMBABWE                       0                           0    10885   14074
ZVITAMBO          ZIMBABWE                       0                           1      823   14074
ZVITAMBO          ZIMBABWE                       1                           0     2073   14074
ZVITAMBO          ZIMBABWE                       1                           1      293   14074


The following strata were considered:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/077710dc-7913-4e4f-82d6-126df8f5df19/69d09288-6c0d-472a-ac4e-b0296dcfa1da/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/077710dc-7913-4e4f-82d6-126df8f5df19/69d09288-6c0d-472a-ac4e-b0296dcfa1da/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/077710dc-7913-4e4f-82d6-126df8f5df19/69d09288-6c0d-472a-ac4e-b0296dcfa1da/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/077710dc-7913-4e4f-82d6-126df8f5df19/69d09288-6c0d-472a-ac4e-b0296dcfa1da/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0059127   0.0040155   0.0078098
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0119017   0.0047395   0.0190639
iLiNS-DOSE        MALAWI         0                    NA                0.0644885   0.0523545   0.0766224
iLiNS-DOSE        MALAWI         1                    NA                0.0787162   0.0490785   0.1083540
iLiNS-DYAD-M      MALAWI         0                    NA                0.0337637   0.0226032   0.0449241
iLiNS-DYAD-M      MALAWI         1                    NA                0.0456853   0.0165158   0.0748548
JiVitA-3          BANGLADESH     0                    NA                0.0210987   0.0191669   0.0230305
JiVitA-3          BANGLADESH     1                    NA                0.0757471   0.0665946   0.0848995
JiVitA-4          BANGLADESH     0                    NA                0.0071750   0.0045736   0.0097765
JiVitA-4          BANGLADESH     1                    NA                0.0170482   0.0095444   0.0245520
Keneba            GAMBIA         0                    NA                0.0278549   0.0210466   0.0346632
Keneba            GAMBIA         1                    NA                0.0557447   0.0373270   0.0741624
SAS-CompFeed      INDIA          0                    NA                0.0269067   0.0144685   0.0393449
SAS-CompFeed      INDIA          1                    NA                0.0448952   0.0279112   0.0618792
VITAMIN-A         INDIA          0                    NA                0.0166002   0.0119899   0.0212106
VITAMIN-A         INDIA          1                    NA                0.0292134   0.0185319   0.0398950
ZVITAMBO          ZIMBABWE       0                    NA                0.0712490   0.0665557   0.0759423
ZVITAMBO          ZIMBABWE       1                    NA                0.1176172   0.1041911   0.1310434


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0357143   0.0252276   0.0462010
JiVitA-3          BANGLADESH     NA                   NA                0.0309619   0.0288229   0.0331009
JiVitA-4          BANGLADESH     NA                   NA                0.0091878   0.0066008   0.0117748
Keneba            GAMBIA         NA                   NA                0.0339623   0.0273857   0.0405388
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0197082   0.0153493   0.0240672
ZVITAMBO          ZIMBABWE       NA                   NA                0.0792952   0.0748310   0.0837593


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.012907   1.0178267   3.980829
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.220624   0.8011648   1.859697
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.353090   0.6592941   2.776991
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 3.590133   3.0816413   4.182528
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.376050   1.3449433   4.197659
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.001254   1.3267243   3.018728
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.668551   1.1695299   2.380498
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.759820   1.1117364   2.785702
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.650791   1.4476170   1.882481


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0007875   -0.0001464   0.0017213
iLiNS-DOSE        MALAWI         0                    NA                0.0017984   -0.0037077   0.0073045
iLiNS-DYAD-M      MALAWI         0                    NA                0.0019506   -0.0031656   0.0070669
JiVitA-3          BANGLADESH     0                    NA                0.0098632    0.0082962   0.0114302
JiVitA-4          BANGLADESH     0                    NA                0.0020128    0.0003899   0.0036356
Keneba            GAMBIA         0                    NA                0.0061074    0.0018282   0.0103865
SAS-CompFeed      INDIA          0                    NA                0.0057091    0.0015636   0.0098545
VITAMIN-A         INDIA          0                    NA                0.0031080    0.0002523   0.0059636
ZVITAMBO          ZIMBABWE       0                    NA                0.0080461    0.0056084   0.0104839


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1175319   -0.0287506   0.2430139
iLiNS-DOSE        MALAWI         0                    NA                0.0271308   -0.0594642   0.1066480
iLiNS-DYAD-M      MALAWI         0                    NA                0.0546177   -0.0990865   0.1868267
JiVitA-3          BANGLADESH     0                    NA                0.3185601    0.2729449   0.3613133
JiVitA-4          BANGLADESH     0                    NA                0.2190703    0.0311215   0.3705597
Keneba            GAMBIA         0                    NA                0.1798286    0.0490854   0.2925956
SAS-CompFeed      INDIA          0                    NA                0.1750404    0.0256850   0.3015006
VITAMIN-A         INDIA          0                    NA                0.1576992    0.0044823   0.2873349
ZVITAMBO          ZIMBABWE       0                    NA                0.1014709    0.0706953   0.1312273
