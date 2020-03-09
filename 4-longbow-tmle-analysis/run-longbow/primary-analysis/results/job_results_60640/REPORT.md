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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** ever_co06

**Adjustment Set:**

* sex
* arm
* brthmon
* single
* hhwealth_quart
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_brthmon
* delta_single
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_co06    co_occurence   n_cell      n
---------------  -----------------------------  ----------  -------------  -------  -----
CMC-V-BCS-2002   INDIA                          0                       0      319    366
CMC-V-BCS-2002   INDIA                          0                       1       16    366
CMC-V-BCS-2002   INDIA                          1                       0       25    366
CMC-V-BCS-2002   INDIA                          1                       1        6    366
CMIN             BANGLADESH                     0                       0      204    237
CMIN             BANGLADESH                     0                       1       21    237
CMIN             BANGLADESH                     1                       0        7    237
CMIN             BANGLADESH                     1                       1        5    237
COHORTS          GUATEMALA                      0                       0      723    774
COHORTS          GUATEMALA                      0                       1       35    774
COHORTS          GUATEMALA                      1                       0       13    774
COHORTS          GUATEMALA                      1                       1        3    774
COHORTS          PHILIPPINES                    0                       0     2265   2487
COHORTS          PHILIPPINES                    0                       1      168   2487
COHORTS          PHILIPPINES                    1                       0       35   2487
COHORTS          PHILIPPINES                    1                       1       19   2487
CONTENT          PERU                           0                       0      200    200
CONTENT          PERU                           0                       1        0    200
CONTENT          PERU                           1                       0        0    200
CONTENT          PERU                           1                       1        0    200
EE               PAKISTAN                       0                       0      241    346
EE               PAKISTAN                       0                       1       50    346
EE               PAKISTAN                       1                       0       31    346
EE               PAKISTAN                       1                       1       24    346
GMS-Nepal        NEPAL                          0                       0      469    550
GMS-Nepal        NEPAL                          0                       1       52    550
GMS-Nepal        NEPAL                          1                       0       21    550
GMS-Nepal        NEPAL                          1                       1        8    550
IRC              INDIA                          0                       0      362    404
IRC              INDIA                          0                       1       20    404
IRC              INDIA                          1                       0       17    404
IRC              INDIA                          1                       1        5    404
JiVitA-4         BANGLADESH                     0                       0     4011   4523
JiVitA-4         BANGLADESH                     0                       1      361   4523
JiVitA-4         BANGLADESH                     1                       0       82   4523
JiVitA-4         BANGLADESH                     1                       1       69   4523
Keneba           GAMBIA                         0                       0     1644   1775
Keneba           GAMBIA                         0                       1       83   1775
Keneba           GAMBIA                         1                       0       31   1775
Keneba           GAMBIA                         1                       1       17   1775
LCNI-5           MALAWI                         0                       0      673    693
LCNI-5           MALAWI                         0                       1       17    693
LCNI-5           MALAWI                         1                       0        2    693
LCNI-5           MALAWI                         1                       1        1    693
MAL-ED           BANGLADESH                     0                       0      202    221
MAL-ED           BANGLADESH                     0                       1       12    221
MAL-ED           BANGLADESH                     1                       0        5    221
MAL-ED           BANGLADESH                     1                       1        2    221
MAL-ED           BRAZIL                         0                       0      178    180
MAL-ED           BRAZIL                         0                       1        1    180
MAL-ED           BRAZIL                         1                       0        1    180
MAL-ED           BRAZIL                         1                       1        0    180
MAL-ED           INDIA                          0                       0      198    228
MAL-ED           INDIA                          0                       1       12    228
MAL-ED           INDIA                          1                       0       13    228
MAL-ED           INDIA                          1                       1        5    228
MAL-ED           NEPAL                          0                       0      219    229
MAL-ED           NEPAL                          0                       1        3    229
MAL-ED           NEPAL                          1                       0        6    229
MAL-ED           NEPAL                          1                       1        1    229
MAL-ED           PERU                           0                       0      216    222
MAL-ED           PERU                           0                       1        5    222
MAL-ED           PERU                           1                       0        0    222
MAL-ED           PERU                           1                       1        1    222
MAL-ED           SOUTH AFRICA                   0                       0      232    241
MAL-ED           SOUTH AFRICA                   0                       1        4    241
MAL-ED           SOUTH AFRICA                   1                       0        5    241
MAL-ED           SOUTH AFRICA                   1                       1        0    241
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      220    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        1    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        4    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0    225
NIH-Birth        BANGLADESH                     0                       0      385    462
NIH-Birth        BANGLADESH                     0                       1       36    462
NIH-Birth        BANGLADESH                     1                       0       26    462
NIH-Birth        BANGLADESH                     1                       1       15    462
NIH-Crypto       BANGLADESH                     0                       0      593    634
NIH-Crypto       BANGLADESH                     0                       1       20    634
NIH-Crypto       BANGLADESH                     1                       0       12    634
NIH-Crypto       BANGLADESH                     1                       1        9    634
PROBIT           BELARUS                        0                       0     2143   2146
PROBIT           BELARUS                        0                       1        1   2146
PROBIT           BELARUS                        1                       0        2   2146
PROBIT           BELARUS                        1                       1        0   2146
PROVIDE          BANGLADESH                     0                       0      506    563
PROVIDE          BANGLADESH                     0                       1       32    563
PROVIDE          BANGLADESH                     1                       0       20    563
PROVIDE          BANGLADESH                     1                       1        5    563
ResPak           PAKISTAN                       0                       0        7      9
ResPak           PAKISTAN                       0                       1        0      9
ResPak           PAKISTAN                       1                       0        1      9
ResPak           PAKISTAN                       1                       1        1      9
SAS-CompFeed     INDIA                          0                       0     1069   1256
SAS-CompFeed     INDIA                          0                       1       99   1256
SAS-CompFeed     INDIA                          1                       0       59   1256
SAS-CompFeed     INDIA                          1                       1       29   1256
SAS-FoodSuppl    INDIA                          0                       0      238    323
SAS-FoodSuppl    INDIA                          0                       1       47    323
SAS-FoodSuppl    INDIA                          1                       0       25    323
SAS-FoodSuppl    INDIA                          1                       1       13    323
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0      956    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1       18    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0        3    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1        3    980
ZVITAMBO         ZIMBABWE                       0                       0     1571   1680
ZVITAMBO         ZIMBABWE                       0                       1       80   1680
ZVITAMBO         ZIMBABWE                       1                       0       21   1680
ZVITAMBO         ZIMBABWE                       1                       1        8   1680


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: IRC, country: INDIA
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: NIH-Birth, country: BANGLADESH
* studyid: NIH-Crypto, country: BANGLADESH
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: COHORTS, country: GUATEMALA
* studyid: CONTENT, country: PERU
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: ResPak, country: PAKISTAN
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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/e5e8a3e3-538d-4e2d-9be1-5cd75cfb2227/0519fdc8-a59c-4c88-b029-bfc4344c7d05/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e5e8a3e3-538d-4e2d-9be1-5cd75cfb2227/0519fdc8-a59c-4c88-b029-bfc4344c7d05/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e5e8a3e3-538d-4e2d-9be1-5cd75cfb2227/0519fdc8-a59c-4c88-b029-bfc4344c7d05/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e5e8a3e3-538d-4e2d-9be1-5cd75cfb2227/0519fdc8-a59c-4c88-b029-bfc4344c7d05/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0477612   0.0248931   0.0706293
CMC-V-BCS-2002   INDIA         1                    NA                0.1935484   0.0542823   0.3328144
CMIN             BANGLADESH    0                    NA                0.0933333   0.0552428   0.1314239
CMIN             BANGLADESH    1                    NA                0.4166667   0.1371367   0.6961967
COHORTS          PHILIPPINES   0                    NA                0.0691534   0.0590417   0.0792650
COHORTS          PHILIPPINES   1                    NA                0.3311314   0.2159134   0.4463495
EE               PAKISTAN      0                    NA                0.1705750   0.1269274   0.2142226
EE               PAKISTAN      1                    NA                0.4104552   0.2684045   0.5525058
GMS-Nepal        NEPAL         0                    NA                0.0998081   0.0740463   0.1255698
GMS-Nepal        NEPAL         1                    NA                0.2758621   0.1130446   0.4386795
IRC              INDIA         0                    NA                0.0523560   0.0299915   0.0747206
IRC              INDIA         1                    NA                0.2272727   0.0519405   0.4026049
JiVitA-4         BANGLADESH    0                    NA                0.0828502   0.0737635   0.0919370
JiVitA-4         BANGLADESH    1                    NA                0.4314117   0.3043338   0.5584896
Keneba           GAMBIA        0                    NA                0.0482440   0.0381292   0.0583588
Keneba           GAMBIA        1                    NA                0.3264472   0.1949300   0.4579645
MAL-ED           INDIA         0                    NA                0.0571429   0.0256801   0.0886056
MAL-ED           INDIA         1                    NA                0.2777778   0.0704056   0.4851500
NIH-Birth        BANGLADESH    0                    NA                0.0854926   0.0587505   0.1122348
NIH-Birth        BANGLADESH    1                    NA                0.3790935   0.2265610   0.5316260
NIH-Crypto       BANGLADESH    0                    NA                0.0326264   0.0185516   0.0467012
NIH-Crypto       BANGLADESH    1                    NA                0.4285714   0.2167481   0.6403948
PROVIDE          BANGLADESH    0                    NA                0.0594796   0.0394758   0.0794833
PROVIDE          BANGLADESH    1                    NA                0.2000000   0.0430634   0.3569366
SAS-CompFeed     INDIA         0                    NA                0.0847466   0.0756861   0.0938071
SAS-CompFeed     INDIA         1                    NA                0.3041361   0.2092013   0.3990708
SAS-FoodSuppl    INDIA         0                    NA                0.1683235   0.1252561   0.2113910
SAS-FoodSuppl    INDIA         1                    NA                0.3087267   0.1483337   0.4691197
ZVITAMBO         ZIMBABWE      0                    NA                0.0484555   0.0380125   0.0588984
ZVITAMBO         ZIMBABWE      1                    NA                0.2758621   0.1635093   0.3882148


### Parameter: E(Y)


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA         NA                   NA                0.0618812   0.0383576   0.0854048
JiVitA-4         BANGLADESH    NA                   NA                0.0950696   0.0850280   0.1051113
Keneba           GAMBIA        NA                   NA                0.0563380   0.0456085   0.0670675
MAL-ED           INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
PROVIDE          BANGLADESH    NA                   NA                0.0657194   0.0452330   0.0862057
SAS-CompFeed     INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
SAS-FoodSuppl    INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ZVITAMBO         ZIMBABWE      NA                   NA                0.0523810   0.0417242   0.0630377


### Parameter: RR


studyid          country       intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ---------  ----------
CMC-V-BCS-2002   INDIA         0                    0                  1.000000   1.000000    1.000000
CMC-V-BCS-2002   INDIA         1                    0                  4.052419   1.707496    9.617651
CMIN             BANGLADESH    0                    0                  1.000000   1.000000    1.000000
CMIN             BANGLADESH    1                    0                  4.464286   2.035729    9.790027
COHORTS          PHILIPPINES   0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES   1                    0                  4.788364   3.283415    6.983105
EE               PAKISTAN      0                    0                  1.000000   1.000000    1.000000
EE               PAKISTAN      1                    0                  2.406303   1.564081    3.702042
GMS-Nepal        NEPAL         0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL         1                    0                  2.763926   1.451311    5.263712
IRC              INDIA         0                    0                  1.000000   1.000000    1.000000
IRC              INDIA         1                    0                  4.340909   1.797246   10.484651
JiVitA-4         BANGLADESH    0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH    1                    0                  5.207126   3.802560    7.130504
Keneba           GAMBIA        0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA        1                    0                  6.766587   4.298784   10.651082
MAL-ED           INDIA         0                    0                  1.000000   1.000000    1.000000
MAL-ED           INDIA         1                    0                  4.861111   1.922538   12.291252
NIH-Birth        BANGLADESH    0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH    1                    0                  4.434225   2.663948    7.380905
NIH-Crypto       BANGLADESH    0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH    1                    0                 13.135714   6.816156   25.314412
PROVIDE          BANGLADESH    0                    0                  1.000000   1.000000    1.000000
PROVIDE          BANGLADESH    1                    0                  3.362500   1.431850    7.896362
SAS-CompFeed     INDIA         0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA         1                    0                  3.588771   2.568750    5.013831
SAS-FoodSuppl    INDIA         0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA         1                    0                  1.834127   1.030354    3.264918
ZVITAMBO         ZIMBABWE      0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE      1                    0                  5.693103   3.591141    9.025384


### Parameter: PAR


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0123481   -0.0003102   0.0250064
CMIN             BANGLADESH    0                    NA                0.0163713   -0.0005355   0.0332781
COHORTS          PHILIPPINES   0                    NA                0.0060376    0.0028391   0.0092362
EE               PAKISTAN      0                    NA                0.0432978    0.0184512   0.0681445
GMS-Nepal        NEPAL         0                    NA                0.0092828   -0.0000111   0.0185768
IRC              INDIA         0                    NA                0.0095252   -0.0008508   0.0199011
JiVitA-4         BANGLADESH    0                    NA                0.0122194    0.0072904   0.0171484
Keneba           GAMBIA        0                    NA                0.0080940    0.0037990   0.0123890
MAL-ED           INDIA         0                    NA                0.0174185   -0.0008598   0.0356969
NIH-Birth        BANGLADESH    0                    NA                0.0248970    0.0098000   0.0399940
NIH-Crypto       BANGLADESH    0                    NA                0.0131149    0.0041754   0.0220544
PROVIDE          BANGLADESH    0                    NA                0.0062398   -0.0011818   0.0136614
SAS-CompFeed     INDIA         0                    NA                0.0171642    0.0077683   0.0265602
SAS-FoodSuppl    INDIA         0                    NA                0.0174350   -0.0015610   0.0364310
ZVITAMBO         ZIMBABWE      0                    NA                0.0039255    0.0007688   0.0070822


### Parameter: PAF


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.2054274   -0.0158579   0.3785099
CMIN             BANGLADESH    0                    NA                0.1492308   -0.0104896   0.2837053
COHORTS          PHILIPPINES   0                    NA                0.0802974    0.0379656   0.1207664
EE               PAKISTAN      0                    NA                0.2024466    0.0819760   0.3071082
GMS-Nepal        NEPAL         0                    NA                0.0850928   -0.0021055   0.1647035
IRC              INDIA         0                    NA                0.1539267   -0.0202056   0.2983375
JiVitA-4         BANGLADESH    0                    NA                0.1285310    0.0795920   0.1748679
Keneba           GAMBIA        0                    NA                0.1436689    0.0688458   0.2124796
MAL-ED           INDIA         0                    NA                0.2336134   -0.0261772   0.4276346
NIH-Birth        BANGLADESH    0                    NA                0.2255375    0.0881700   0.3422105
NIH-Crypto       BANGLADESH    0                    NA                0.2867188    0.0962517   0.4370445
PROVIDE          BANGLADESH    0                    NA                0.0949462   -0.0214436   0.1980739
SAS-CompFeed     INDIA         0                    NA                0.1684241    0.0834131   0.2455506
SAS-FoodSuppl    INDIA         0                    NA                0.0938583   -0.0122789   0.1888671
ZVITAMBO         ZIMBABWE      0                    NA                0.0749408    0.0141286   0.1320019
