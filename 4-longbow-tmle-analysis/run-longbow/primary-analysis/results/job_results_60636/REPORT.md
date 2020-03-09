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

studyid          country                        ever_stunted06    co_occurence   n_cell      n
---------------  -----------------------------  ---------------  -------------  -------  -----
CMC-V-BCS-2002   INDIA                          0                            0      171    366
CMC-V-BCS-2002   INDIA                          0                            1        7    366
CMC-V-BCS-2002   INDIA                          1                            0      173    366
CMC-V-BCS-2002   INDIA                          1                            1       15    366
CMIN             BANGLADESH                     0                            0       95    237
CMIN             BANGLADESH                     0                            1        5    237
CMIN             BANGLADESH                     1                            0      116    237
CMIN             BANGLADESH                     1                            1       21    237
COHORTS          GUATEMALA                      0                            0      419    778
COHORTS          GUATEMALA                      0                            1       12    778
COHORTS          GUATEMALA                      1                            0      321    778
COHORTS          GUATEMALA                      1                            1       26    778
COHORTS          PHILIPPINES                    0                            0     1694   2487
COHORTS          PHILIPPINES                    0                            1       92   2487
COHORTS          PHILIPPINES                    1                            0      606   2487
COHORTS          PHILIPPINES                    1                            1       95   2487
CONTENT          PERU                           0                            0      172    200
CONTENT          PERU                           0                            1        0    200
CONTENT          PERU                           1                            0       28    200
CONTENT          PERU                           1                            1        0    200
EE               PAKISTAN                       0                            0       80    346
EE               PAKISTAN                       0                            1        8    346
EE               PAKISTAN                       1                            0      192    346
EE               PAKISTAN                       1                            1       66    346
GMS-Nepal        NEPAL                          0                            0      341    550
GMS-Nepal        NEPAL                          0                            1       29    550
GMS-Nepal        NEPAL                          1                            0      149    550
GMS-Nepal        NEPAL                          1                            1       31    550
IRC              INDIA                          0                            0      228    405
IRC              INDIA                          0                            1        3    405
IRC              INDIA                          1                            0      152    405
IRC              INDIA                          1                            1       22    405
JiVitA-4         BANGLADESH                     0                            0     2692   4541
JiVitA-4         BANGLADESH                     0                            1      113   4541
JiVitA-4         BANGLADESH                     1                            0     1413   4541
JiVitA-4         BANGLADESH                     1                            1      323   4541
Keneba           GAMBIA                         0                            0     1166   1776
Keneba           GAMBIA                         0                            1       40   1776
Keneba           GAMBIA                         1                            0      510   1776
Keneba           GAMBIA                         1                            1       60   1776
LCNI-5           MALAWI                         0                            0      443    693
LCNI-5           MALAWI                         0                            1        4    693
LCNI-5           MALAWI                         1                            0      232    693
LCNI-5           MALAWI                         1                            1       14    693
MAL-ED           BANGLADESH                     0                            0      141    221
MAL-ED           BANGLADESH                     0                            1        5    221
MAL-ED           BANGLADESH                     1                            0       66    221
MAL-ED           BANGLADESH                     1                            1        9    221
MAL-ED           BRAZIL                         0                            0      142    180
MAL-ED           BRAZIL                         0                            1        0    180
MAL-ED           BRAZIL                         1                            0       37    180
MAL-ED           BRAZIL                         1                            1        1    180
MAL-ED           INDIA                          0                            0      138    228
MAL-ED           INDIA                          0                            1        6    228
MAL-ED           INDIA                          1                            0       73    228
MAL-ED           INDIA                          1                            1       11    228
MAL-ED           NEPAL                          0                            0      186    229
MAL-ED           NEPAL                          0                            1        1    229
MAL-ED           NEPAL                          1                            0       39    229
MAL-ED           NEPAL                          1                            1        3    229
MAL-ED           PERU                           0                            0      116    222
MAL-ED           PERU                           0                            1        0    222
MAL-ED           PERU                           1                            0      100    222
MAL-ED           PERU                           1                            1        6    222
MAL-ED           SOUTH AFRICA                   0                            0      140    241
MAL-ED           SOUTH AFRICA                   0                            1        2    241
MAL-ED           SOUTH AFRICA                   1                            0       97    241
MAL-ED           SOUTH AFRICA                   1                            1        2    241
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      131    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        0    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0       93    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        1    225
NIH-Birth        BANGLADESH                     0                            0      255    462
NIH-Birth        BANGLADESH                     0                            1       19    462
NIH-Birth        BANGLADESH                     1                            0      156    462
NIH-Birth        BANGLADESH                     1                            1       32    462
NIH-Crypto       BANGLADESH                     0                            0      408    634
NIH-Crypto       BANGLADESH                     0                            1        7    634
NIH-Crypto       BANGLADESH                     1                            0      197    634
NIH-Crypto       BANGLADESH                     1                            1       22    634
PROBIT           BELARUS                        0                            0     1985   2146
PROBIT           BELARUS                        0                            1        0   2146
PROBIT           BELARUS                        1                            0      160   2146
PROBIT           BELARUS                        1                            1        1   2146
PROVIDE          BANGLADESH                     0                            0      398    563
PROVIDE          BANGLADESH                     0                            1       20    563
PROVIDE          BANGLADESH                     1                            0      128    563
PROVIDE          BANGLADESH                     1                            1       17    563
ResPak           PAKISTAN                       0                            0        2      9
ResPak           PAKISTAN                       0                            1        0      9
ResPak           PAKISTAN                       1                            0        6      9
ResPak           PAKISTAN                       1                            1        1      9
SAS-CompFeed     INDIA                          0                            0      685   1259
SAS-CompFeed     INDIA                          0                            1       36   1259
SAS-CompFeed     INDIA                          1                            0      446   1259
SAS-CompFeed     INDIA                          1                            1       92   1259
SAS-FoodSuppl    INDIA                          0                            0      145    323
SAS-FoodSuppl    INDIA                          0                            1       25    323
SAS-FoodSuppl    INDIA                          1                            0      118    323
SAS-FoodSuppl    INDIA                          1                            1       35    323
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            0      756    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            1        4    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            0      203    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            1       17    980
ZVITAMBO         ZIMBABWE                       0                            0      960   1691
ZVITAMBO         ZIMBABWE                       0                            1       29   1691
ZVITAMBO         ZIMBABWE                       1                            0      641   1691
ZVITAMBO         ZIMBABWE                       1                            1       61   1691


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
![](/tmp/3f461adc-6f15-4492-83ae-9fda9ab95887/23773035-9ec1-4a96-bd71-f7dca79bb1a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3f461adc-6f15-4492-83ae-9fda9ab95887/23773035-9ec1-4a96-bd71-f7dca79bb1a0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3f461adc-6f15-4492-83ae-9fda9ab95887/23773035-9ec1-4a96-bd71-f7dca79bb1a0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3f461adc-6f15-4492-83ae-9fda9ab95887/23773035-9ec1-4a96-bd71-f7dca79bb1a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0393258   0.0107329   0.0679188
CMC-V-BCS-2002   INDIA         1                    NA                0.0797872   0.0410013   0.1185732
CMIN             BANGLADESH    0                    NA                0.0500000   0.0071932   0.0928068
CMIN             BANGLADESH    1                    NA                0.1532847   0.0928308   0.2137385
COHORTS          GUATEMALA     0                    NA                0.0289065   0.0120291   0.0457840
COHORTS          GUATEMALA     1                    NA                0.0766263   0.0474916   0.1057610
COHORTS          PHILIPPINES   0                    NA                0.0578879   0.0465658   0.0692100
COHORTS          PHILIPPINES   1                    NA                0.1229874   0.0967011   0.1492737
EE               PAKISTAN      0                    NA                0.0909091   0.0307581   0.1510601
EE               PAKISTAN      1                    NA                0.2558140   0.2024965   0.3091314
GMS-Nepal        NEPAL         0                    NA                0.0793018   0.0514896   0.1071139
GMS-Nepal        NEPAL         1                    NA                0.1694771   0.1138059   0.2251482
JiVitA-4         BANGLADESH    0                    NA                0.0412863   0.0330888   0.0494838
JiVitA-4         BANGLADESH    1                    NA                0.1816199   0.1595615   0.2036782
Keneba           GAMBIA        0                    NA                0.0345493   0.0242241   0.0448745
Keneba           GAMBIA        1                    NA                0.0992996   0.0741070   0.1244922
MAL-ED           BANGLADESH    0                    NA                0.0342466   0.0046802   0.0638130
MAL-ED           BANGLADESH    1                    NA                0.1200000   0.0462887   0.1937113
MAL-ED           INDIA         0                    NA                0.0416667   0.0089572   0.0743762
MAL-ED           INDIA         1                    NA                0.1309524   0.0586519   0.2032529
NIH-Birth        BANGLADESH    0                    NA                0.0691676   0.0388859   0.0994493
NIH-Birth        BANGLADESH    1                    NA                0.1714024   0.1171002   0.2257046
NIH-Crypto       BANGLADESH    0                    NA                0.0168675   0.0044682   0.0292668
NIH-Crypto       BANGLADESH    1                    NA                0.1004566   0.0606121   0.1403012
PROVIDE          BANGLADESH    0                    NA                0.0467820   0.0265473   0.0670167
PROVIDE          BANGLADESH    1                    NA                0.1265353   0.0694355   0.1836350
SAS-CompFeed     INDIA         0                    NA                0.0497215   0.0389849   0.0604581
SAS-CompFeed     INDIA         1                    NA                0.1701732   0.1368174   0.2035290
SAS-FoodSuppl    INDIA         0                    NA                0.1523668   0.0991686   0.2055651
SAS-FoodSuppl    INDIA         1                    NA                0.2195001   0.1543891   0.2846112
ZVITAMBO         ZIMBABWE      0                    NA                0.0299158   0.0192665   0.0405651
ZVITAMBO         ZIMBABWE      1                    NA                0.0856951   0.0648345   0.1065557


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
COHORTS          GUATEMALA     1                    0                 2.650831   1.3193793    5.325916
COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
COHORTS          PHILIPPINES   1                    0                 2.124579   1.5907588    2.837536
EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
EE               PAKISTAN      1                    0                 2.813954   1.4061838    5.631080
GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
GMS-Nepal        NEPAL         1                    0                 2.137116   1.3219205    3.455022
JiVitA-4         BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
JiVitA-4         BANGLADESH    1                    0                 4.399035   3.4897947    5.545171
Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
Keneba           GAMBIA        1                    0                 2.874141   1.9455665    4.245902
MAL-ED           BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
MAL-ED           BANGLADESH    1                    0                 3.504000   1.2145141   10.109406
MAL-ED           INDIA         0                    0                 1.000000   1.0000000    1.000000
MAL-ED           INDIA         1                    0                 3.142857   1.2036923    8.206043
NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
NIH-Birth        BANGLADESH    1                    0                 2.478074   1.4427545    4.256339
NIH-Crypto       BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
NIH-Crypto       BANGLADESH    1                    0                 5.955642   2.5832749   13.730509
PROVIDE          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
PROVIDE          BANGLADESH    1                    0                 2.704787   1.4459439    5.059582
SAS-CompFeed     INDIA         0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed     INDIA         1                    0                 3.422528   2.3300055    5.027326
SAS-FoodSuppl    INDIA         0                    0                 1.000000   1.0000000    1.000000
SAS-FoodSuppl    INDIA         1                    0                 1.440603   0.9158601    2.265998
ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO         ZIMBABWE      1                    0                 2.864545   1.8599511    4.411739


### Parameter: PAR


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0207834   -0.0040547   0.0456216
CMIN             BANGLADESH    0                    NA                0.0597046    0.0163932   0.1030160
COHORTS          GUATEMALA     0                    NA                0.0199367    0.0046066   0.0352667
COHORTS          PHILIPPINES   0                    NA                0.0173031    0.0088568   0.0257494
EE               PAKISTAN      0                    NA                0.1229637    0.0625503   0.1833772
GMS-Nepal        NEPAL         0                    NA                0.0297891    0.0091162   0.0504621
JiVitA-4         BANGLADESH    0                    NA                0.0547278    0.0456742   0.0637814
Keneba           GAMBIA        0                    NA                0.0217570    0.0128715   0.0306425
MAL-ED           BANGLADESH    0                    NA                0.0291018    0.0016205   0.0565832
MAL-ED           INDIA         0                    NA                0.0328947    0.0031265   0.0626629
NIH-Birth        BANGLADESH    0                    NA                0.0412220    0.0156092   0.0668348
NIH-Crypto       BANGLADESH    0                    NA                0.0288739    0.0141307   0.0436170
PROVIDE          BANGLADESH    0                    NA                0.0189374    0.0042641   0.0336106
SAS-CompFeed     INDIA         0                    NA                0.0519465    0.0337339   0.0701590
SAS-FoodSuppl    INDIA         0                    NA                0.0333917   -0.0069189   0.0737022
ZVITAMBO         ZIMBABWE      0                    NA                0.0233072    0.0134499   0.0331645


### Parameter: PAF


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.3457610   -0.1889189   0.6399849
CMIN             BANGLADESH    0                    NA                0.5442308    0.0218796   0.7876278
COHORTS          GUATEMALA     0                    NA                0.4081768    0.0348504   0.6370980
COHORTS          PHILIPPINES   0                    NA                0.2301221    0.1147078   0.3304899
EE               PAKISTAN      0                    NA                0.5749386    0.2100556   0.7712786
GMS-Nepal        NEPAL         0                    NA                0.2730672    0.0684303   0.4327517
JiVitA-4         BANGLADESH    0                    NA                0.5699975    0.4907900   0.6368843
Keneba           GAMBIA        0                    NA                0.3864043    0.2288137   0.5117915
MAL-ED           BANGLADESH    0                    NA                0.4593933   -0.0739341   0.7278645
MAL-ED           INDIA         0                    NA                0.4411765   -0.0445806   0.7010439
NIH-Birth        BANGLADESH    0                    NA                0.3734230    0.1172770   0.5552413
NIH-Crypto       BANGLADESH    0                    NA                0.6312422    0.3025665   0.8050247
PROVIDE          BANGLADESH    0                    NA                0.2881554    0.0478470   0.4678138
SAS-CompFeed     INDIA         0                    NA                0.5109424    0.3554438   0.6289272
SAS-FoodSuppl    INDIA         0                    NA                0.1797585   -0.0643363   0.3678726
ZVITAMBO         ZIMBABWE      0                    NA                0.4379157    0.2476318   0.5800743
