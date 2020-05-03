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

**Intervention Variable:** ever_stunted06

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

studyid          country                        ever_stunted06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  ---------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                            0      171    366  co_occurence     
CMC-V-BCS-2002   INDIA                          0                            1        7    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                            0      173    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                            1       15    366  co_occurence     
CMIN             BANGLADESH                     0                            0       95    237  co_occurence     
CMIN             BANGLADESH                     0                            1        5    237  co_occurence     
CMIN             BANGLADESH                     1                            0      116    237  co_occurence     
CMIN             BANGLADESH                     1                            1       21    237  co_occurence     
COHORTS          GUATEMALA                      0                            0      419    778  co_occurence     
COHORTS          GUATEMALA                      0                            1       12    778  co_occurence     
COHORTS          GUATEMALA                      1                            0      321    778  co_occurence     
COHORTS          GUATEMALA                      1                            1       26    778  co_occurence     
COHORTS          PHILIPPINES                    0                            0     1694   2487  co_occurence     
COHORTS          PHILIPPINES                    0                            1       92   2487  co_occurence     
COHORTS          PHILIPPINES                    1                            0      606   2487  co_occurence     
COHORTS          PHILIPPINES                    1                            1       95   2487  co_occurence     
CONTENT          PERU                           0                            0      172    200  co_occurence     
CONTENT          PERU                           0                            1        0    200  co_occurence     
CONTENT          PERU                           1                            0       28    200  co_occurence     
CONTENT          PERU                           1                            1        0    200  co_occurence     
EE               PAKISTAN                       0                            0       80    346  co_occurence     
EE               PAKISTAN                       0                            1        8    346  co_occurence     
EE               PAKISTAN                       1                            0      192    346  co_occurence     
EE               PAKISTAN                       1                            1       66    346  co_occurence     
GMS-Nepal        NEPAL                          0                            0      341    550  co_occurence     
GMS-Nepal        NEPAL                          0                            1       29    550  co_occurence     
GMS-Nepal        NEPAL                          1                            0      149    550  co_occurence     
GMS-Nepal        NEPAL                          1                            1       31    550  co_occurence     
IRC              INDIA                          0                            0      228    405  co_occurence     
IRC              INDIA                          0                            1        3    405  co_occurence     
IRC              INDIA                          1                            0      152    405  co_occurence     
IRC              INDIA                          1                            1       22    405  co_occurence     
JiVitA-4         BANGLADESH                     0                            0     2692   4541  co_occurence     
JiVitA-4         BANGLADESH                     0                            1      113   4541  co_occurence     
JiVitA-4         BANGLADESH                     1                            0     1413   4541  co_occurence     
JiVitA-4         BANGLADESH                     1                            1      323   4541  co_occurence     
Keneba           GAMBIA                         0                            0     1166   1776  co_occurence     
Keneba           GAMBIA                         0                            1       40   1776  co_occurence     
Keneba           GAMBIA                         1                            0      510   1776  co_occurence     
Keneba           GAMBIA                         1                            1       60   1776  co_occurence     
LCNI-5           MALAWI                         0                            0      443    693  co_occurence     
LCNI-5           MALAWI                         0                            1        4    693  co_occurence     
LCNI-5           MALAWI                         1                            0      232    693  co_occurence     
LCNI-5           MALAWI                         1                            1       14    693  co_occurence     
MAL-ED           BANGLADESH                     0                            0      141    221  co_occurence     
MAL-ED           BANGLADESH                     0                            1        5    221  co_occurence     
MAL-ED           BANGLADESH                     1                            0       66    221  co_occurence     
MAL-ED           BANGLADESH                     1                            1        9    221  co_occurence     
MAL-ED           BRAZIL                         0                            0      142    180  co_occurence     
MAL-ED           BRAZIL                         0                            1        0    180  co_occurence     
MAL-ED           BRAZIL                         1                            0       37    180  co_occurence     
MAL-ED           BRAZIL                         1                            1        1    180  co_occurence     
MAL-ED           INDIA                          0                            0      138    228  co_occurence     
MAL-ED           INDIA                          0                            1        6    228  co_occurence     
MAL-ED           INDIA                          1                            0       73    228  co_occurence     
MAL-ED           INDIA                          1                            1       11    228  co_occurence     
MAL-ED           NEPAL                          0                            0      186    229  co_occurence     
MAL-ED           NEPAL                          0                            1        1    229  co_occurence     
MAL-ED           NEPAL                          1                            0       39    229  co_occurence     
MAL-ED           NEPAL                          1                            1        3    229  co_occurence     
MAL-ED           PERU                           0                            0      116    222  co_occurence     
MAL-ED           PERU                           0                            1        0    222  co_occurence     
MAL-ED           PERU                           1                            0      100    222  co_occurence     
MAL-ED           PERU                           1                            1        6    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                            0      140    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                            1        2    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                            0       97    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                            1        2    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      131    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        0    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0       93    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        1    225  co_occurence     
NIH-Birth        BANGLADESH                     0                            0      255    462  co_occurence     
NIH-Birth        BANGLADESH                     0                            1       19    462  co_occurence     
NIH-Birth        BANGLADESH                     1                            0      156    462  co_occurence     
NIH-Birth        BANGLADESH                     1                            1       32    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                            0      408    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                            1        7    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                            0      197    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                            1       22    634  co_occurence     
PROBIT           BELARUS                        0                            0     1985   2146  co_occurence     
PROBIT           BELARUS                        0                            1        0   2146  co_occurence     
PROBIT           BELARUS                        1                            0      160   2146  co_occurence     
PROBIT           BELARUS                        1                            1        1   2146  co_occurence     
PROVIDE          BANGLADESH                     0                            0      398    563  co_occurence     
PROVIDE          BANGLADESH                     0                            1       20    563  co_occurence     
PROVIDE          BANGLADESH                     1                            0      128    563  co_occurence     
PROVIDE          BANGLADESH                     1                            1       17    563  co_occurence     
ResPak           PAKISTAN                       0                            0        2      9  co_occurence     
ResPak           PAKISTAN                       0                            1        0      9  co_occurence     
ResPak           PAKISTAN                       1                            0        6      9  co_occurence     
ResPak           PAKISTAN                       1                            1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                            0      685   1259  co_occurence     
SAS-CompFeed     INDIA                          0                            1       36   1259  co_occurence     
SAS-CompFeed     INDIA                          1                            0      446   1259  co_occurence     
SAS-CompFeed     INDIA                          1                            1       92   1259  co_occurence     
SAS-FoodSuppl    INDIA                          0                            0      145    323  co_occurence     
SAS-FoodSuppl    INDIA                          0                            1       25    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                            0      118    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                            1       35    323  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            0      756    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            1        4    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            0      203    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            1       17    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                            0      960   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       0                            1       29   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       1                            0      641   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       1                            1       61   1691  co_occurence     


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

* studyid: CONTENT, country: PERU
* studyid: IRC, country: INDIA
* studyid: LCNI-5, country: MALAWI
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/9bac3cd4-a4dc-4ef0-8462-212391668d2a/1b47a246-b732-4702-a100-6bcb27f20881/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9bac3cd4-a4dc-4ef0-8462-212391668d2a/1b47a246-b732-4702-a100-6bcb27f20881/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9bac3cd4-a4dc-4ef0-8462-212391668d2a/1b47a246-b732-4702-a100-6bcb27f20881/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9bac3cd4-a4dc-4ef0-8462-212391668d2a/1b47a246-b732-4702-a100-6bcb27f20881/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0393258   0.0107329   0.0679188
CMC-V-BCS-2002   INDIA         1                    NA                0.0797872   0.0410013   0.1185732
CMIN             BANGLADESH    0                    NA                0.0500000   0.0071932   0.0928068
CMIN             BANGLADESH    1                    NA                0.1532847   0.0928308   0.2137385
COHORTS          GUATEMALA     0                    NA                0.0307392   0.0121075   0.0493709
COHORTS          GUATEMALA     1                    NA                0.0750857   0.0463743   0.1037972
COHORTS          PHILIPPINES   0                    NA                0.0581769   0.0468446   0.0695092
COHORTS          PHILIPPINES   1                    NA                0.1221382   0.0958999   0.1483766
EE               PAKISTAN      0                    NA                0.0909091   0.0307581   0.1510601
EE               PAKISTAN      1                    NA                0.2558140   0.2024965   0.3091314
GMS-Nepal        NEPAL         0                    NA                0.0800451   0.0521948   0.1078954
GMS-Nepal        NEPAL         1                    NA                0.1689865   0.1136008   0.2243723
JiVitA-4         BANGLADESH    0                    NA                0.0412530   0.0330757   0.0494302
JiVitA-4         BANGLADESH    1                    NA                0.1806362   0.1585794   0.2026929
Keneba           GAMBIA        0                    NA                0.0344985   0.0242543   0.0447427
Keneba           GAMBIA        1                    NA                0.0997431   0.0740454   0.1254409
MAL-ED           BANGLADESH    0                    NA                0.0342466   0.0046802   0.0638130
MAL-ED           BANGLADESH    1                    NA                0.1200000   0.0462887   0.1937113
MAL-ED           INDIA         0                    NA                0.0416667   0.0089572   0.0743762
MAL-ED           INDIA         1                    NA                0.1309524   0.0586519   0.2032529
NIH-Birth        BANGLADESH    0                    NA                0.0687463   0.0385641   0.0989285
NIH-Birth        BANGLADESH    1                    NA                0.1720990   0.1179170   0.2262810
NIH-Crypto       BANGLADESH    0                    NA                0.0168675   0.0044682   0.0292668
NIH-Crypto       BANGLADESH    1                    NA                0.1004566   0.0606121   0.1403012
PROVIDE          BANGLADESH    0                    NA                0.0473102   0.0270162   0.0676041
PROVIDE          BANGLADESH    1                    NA                0.1251360   0.0691649   0.1811071
SAS-CompFeed     INDIA         0                    NA                0.0497215   0.0389849   0.0604581
SAS-CompFeed     INDIA         1                    NA                0.1701732   0.1368174   0.2035290
SAS-FoodSuppl    INDIA         0                    NA                0.1543023   0.1005322   0.2080723
SAS-FoodSuppl    INDIA         1                    NA                0.2168036   0.1514068   0.2822004
ZVITAMBO         ZIMBABWE      0                    NA                0.0298573   0.0192430   0.0404716
ZVITAMBO         ZIMBABWE      1                    NA                0.0851056   0.0643709   0.1058404


### Parameter: E(Y)


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
COHORTS          GUATEMALA     NA                   NA                0.0488432   0.0336878   0.0639985
COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
JiVitA-4         BANGLADESH    NA                   NA                0.0960141   0.0859500   0.1060782
Keneba           GAMBIA        NA                   NA                0.0563063   0.0455826   0.0670300
MAL-ED           BANGLADESH    NA                   NA                0.0633484   0.0311604   0.0955364
MAL-ED           INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
PROVIDE          BANGLADESH    NA                   NA                0.0657194   0.0452330   0.0862057
SAS-CompFeed     INDIA         NA                   NA                0.1016680   0.0902317   0.1131043
SAS-FoodSuppl    INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ZVITAMBO         ZIMBABWE      NA                   NA                0.0532229   0.0425206   0.0639253


### Parameter: RR


studyid          country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ---------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000    1.000000
CMC-V-BCS-2002   INDIA         1                    0                 2.028875   0.8460862    4.865149
CMIN             BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
CMIN             BANGLADESH    1                    0                 3.065693   1.1944241    7.868626
COHORTS          GUATEMALA     0                    0                 1.000000   1.0000000    1.000000
COHORTS          GUATEMALA     1                    0                 2.442667   1.1923799    5.003961
COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
COHORTS          PHILIPPINES   1                    0                 2.099428   1.5715555    2.804609
EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
EE               PAKISTAN      1                    0                 2.813954   1.4061838    5.631080
GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
GMS-Nepal        NEPAL         1                    0                 2.111141   1.3082309    3.406828
JiVitA-4         BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
JiVitA-4         BANGLADESH    1                    0                 4.378744   3.4742872    5.518657
Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
Keneba           GAMBIA        1                    0                 2.891232   1.9549417    4.275946
MAL-ED           BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
MAL-ED           BANGLADESH    1                    0                 3.504000   1.2145141   10.109406
MAL-ED           INDIA         0                    0                 1.000000   1.0000000    1.000000
MAL-ED           INDIA         1                    0                 3.142857   1.2036923    8.206043
NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
NIH-Birth        BANGLADESH    1                    0                 2.503392   1.4592910    4.294534
NIH-Crypto       BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
NIH-Crypto       BANGLADESH    1                    0                 5.955642   2.5832749   13.730509
PROVIDE          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
PROVIDE          BANGLADESH    1                    0                 2.645014   1.4215435    4.921480
SAS-CompFeed     INDIA         0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed     INDIA         1                    0                 3.422528   2.3300055    5.027326
SAS-FoodSuppl    INDIA         0                    0                 1.000000   1.0000000    1.000000
SAS-FoodSuppl    INDIA         1                    0                 1.405058   0.8911450    2.215337
ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO         ZIMBABWE      1                    0                 2.850408   1.8516032    4.387997


### Parameter: PAR


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0207834   -0.0040547   0.0456216
CMIN             BANGLADESH    0                    NA                0.0597046    0.0163932   0.1030160
COHORTS          GUATEMALA     0                    NA                0.0181040    0.0013090   0.0348989
COHORTS          PHILIPPINES   0                    NA                0.0170141    0.0085649   0.0254634
EE               PAKISTAN      0                    NA                0.1229637    0.0625503   0.1833772
GMS-Nepal        NEPAL         0                    NA                0.0290458    0.0083887   0.0497030
JiVitA-4         BANGLADESH    0                    NA                0.0547611    0.0457231   0.0637992
Keneba           GAMBIA        0                    NA                0.0218078    0.0129474   0.0306683
MAL-ED           BANGLADESH    0                    NA                0.0291018    0.0016205   0.0565832
MAL-ED           INDIA         0                    NA                0.0328947    0.0031265   0.0626629
NIH-Birth        BANGLADESH    0                    NA                0.0416433    0.0161077   0.0671789
NIH-Crypto       BANGLADESH    0                    NA                0.0288739    0.0141307   0.0436170
PROVIDE          BANGLADESH    0                    NA                0.0184092    0.0037269   0.0330915
SAS-CompFeed     INDIA         0                    NA                0.0519465    0.0337339   0.0701590
SAS-FoodSuppl    INDIA         0                    NA                0.0314562   -0.0087774   0.0716899
ZVITAMBO         ZIMBABWE      0                    NA                0.0233656    0.0135222   0.0332090


### Parameter: PAF


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.3457610   -0.1889189   0.6399849
CMIN             BANGLADESH    0                    NA                0.5442308    0.0218796   0.7876278
COHORTS          GUATEMALA     0                    NA                0.3706547   -0.0554582   0.6247359
COHORTS          PHILIPPINES   0                    NA                0.2262785    0.1108134   0.3267500
EE               PAKISTAN      0                    NA                0.5749386    0.2100556   0.7712786
GMS-Nepal        NEPAL         0                    NA                0.2662533    0.0619030   0.4260889
JiVitA-4         BANGLADESH    0                    NA                0.5703448    0.4914059   0.6370315
Keneba           GAMBIA        0                    NA                0.3873069    0.2309886   0.5118502
MAL-ED           BANGLADESH    0                    NA                0.4593933   -0.0739341   0.7278645
MAL-ED           INDIA         0                    NA                0.4411765   -0.0445806   0.7010439
NIH-Birth        BANGLADESH    0                    NA                0.3772394    0.1220278   0.5582653
NIH-Crypto       BANGLADESH    0                    NA                0.6312422    0.3025665   0.8050247
PROVIDE          BANGLADESH    0                    NA                0.2801184    0.0396517   0.4603734
SAS-CompFeed     INDIA         0                    NA                0.5109424    0.3554438   0.6289272
SAS-FoodSuppl    INDIA         0                    NA                0.1693394   -0.0747687   0.3580042
ZVITAMBO         ZIMBABWE      0                    NA                0.4390137    0.2493621   0.5807491
