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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        feducyrs    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      High           136     718  whz              
Birth       COHORTS          GUATEMALA                      Low            311     718  whz              
Birth       COHORTS          GUATEMALA                      Medium         271     718  whz              
Birth       COHORTS          INDIA                          High           507    1291  whz              
Birth       COHORTS          INDIA                          Low            414    1291  whz              
Birth       COHORTS          INDIA                          Medium         370    1291  whz              
Birth       COHORTS          PHILIPPINES                    High           994    2728  whz              
Birth       COHORTS          PHILIPPINES                    Low            773    2728  whz              
Birth       COHORTS          PHILIPPINES                    Medium         961    2728  whz              
Birth       GMS-Nepal        NEPAL                          High           162     640  whz              
Birth       GMS-Nepal        NEPAL                          Low            266     640  whz              
Birth       GMS-Nepal        NEPAL                          Medium         212     640  whz              
Birth       JiVitA-3         BANGLADESH                     High          4049   17367  whz              
Birth       JiVitA-3         BANGLADESH                     Low           7452   17367  whz              
Birth       JiVitA-3         BANGLADESH                     Medium        5866   17367  whz              
Birth       JiVitA-4         BANGLADESH                     High           510    2323  whz              
Birth       JiVitA-4         BANGLADESH                     Low            913    2323  whz              
Birth       JiVitA-4         BANGLADESH                     Medium         900    2323  whz              
Birth       MAL-ED           BANGLADESH                     High            44     119  whz              
Birth       MAL-ED           BANGLADESH                     Low             33     119  whz              
Birth       MAL-ED           BANGLADESH                     Medium          42     119  whz              
Birth       MAL-ED           INDIA                          High             7      23  whz              
Birth       MAL-ED           INDIA                          Low             13      23  whz              
Birth       MAL-ED           INDIA                          Medium           3      23  whz              
Birth       MAL-ED           NEPAL                          High             3       9  whz              
Birth       MAL-ED           NEPAL                          Low              3       9  whz              
Birth       MAL-ED           NEPAL                          Medium           3       9  whz              
Birth       MAL-ED           PERU                           High            84     190  whz              
Birth       MAL-ED           PERU                           Low             56     190  whz              
Birth       MAL-ED           PERU                           Medium          50     190  whz              
Birth       MAL-ED           SOUTH AFRICA                   High            10      33  whz              
Birth       MAL-ED           SOUTH AFRICA                   Low             14      33  whz              
Birth       MAL-ED           SOUTH AFRICA                   Medium           9      33  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High            62      96  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             26      96  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           8      96  whz              
Birth       NIH-Crypto       BANGLADESH                     High           277     707  whz              
Birth       NIH-Crypto       BANGLADESH                     Low            229     707  whz              
Birth       NIH-Crypto       BANGLADESH                     Medium         201     707  whz              
Birth       PROBIT           BELARUS                        High          2047   13350  whz              
Birth       PROBIT           BELARUS                        Low           5292   13350  whz              
Birth       PROBIT           BELARUS                        Medium        6011   13350  whz              
Birth       PROVIDE          BANGLADESH                     High           161     532  whz              
Birth       PROVIDE          BANGLADESH                     Low            185     532  whz              
Birth       PROVIDE          BANGLADESH                     Medium         186     532  whz              
Birth       SAS-CompFeed     INDIA                          High           270    1101  whz              
Birth       SAS-CompFeed     INDIA                          Low            476    1101  whz              
Birth       SAS-CompFeed     INDIA                          Medium         355    1101  whz              
Birth       ZVITAMBO         ZIMBABWE                       High           914   12573  whz              
Birth       ZVITAMBO         ZIMBABWE                       Low           2091   12573  whz              
Birth       ZVITAMBO         ZIMBABWE                       Medium        9568   12573  whz              
6 months    COHORTS          GUATEMALA                      High           165     905  whz              
6 months    COHORTS          GUATEMALA                      Low            406     905  whz              
6 months    COHORTS          GUATEMALA                      Medium         334     905  whz              
6 months    COHORTS          INDIA                          High           544    1385  whz              
6 months    COHORTS          INDIA                          Low            450    1385  whz              
6 months    COHORTS          INDIA                          Medium         391    1385  whz              
6 months    COHORTS          PHILIPPINES                    High           892    2562  whz              
6 months    COHORTS          PHILIPPINES                    Low            744    2562  whz              
6 months    COHORTS          PHILIPPINES                    Medium         926    2562  whz              
6 months    GMS-Nepal        NEPAL                          High           137     563  whz              
6 months    GMS-Nepal        NEPAL                          Low            243     563  whz              
6 months    GMS-Nepal        NEPAL                          Medium         183     563  whz              
6 months    JiVitA-3         BANGLADESH                     High          4271   16105  whz              
6 months    JiVitA-3         BANGLADESH                     Low           6291   16105  whz              
6 months    JiVitA-3         BANGLADESH                     Medium        5543   16105  whz              
6 months    JiVitA-4         BANGLADESH                     High          1098    4690  whz              
6 months    JiVitA-4         BANGLADESH                     Low           1726    4690  whz              
6 months    JiVitA-4         BANGLADESH                     Medium        1866    4690  whz              
6 months    LCNI-5           MALAWI                         High           251     812  whz              
6 months    LCNI-5           MALAWI                         Low            290     812  whz              
6 months    LCNI-5           MALAWI                         Medium         271     812  whz              
6 months    MAL-ED           BANGLADESH                     High            50     132  whz              
6 months    MAL-ED           BANGLADESH                     Low             36     132  whz              
6 months    MAL-ED           BANGLADESH                     Medium          46     132  whz              
6 months    MAL-ED           INDIA                          High            43     138  whz              
6 months    MAL-ED           INDIA                          Low             54     138  whz              
6 months    MAL-ED           INDIA                          Medium          41     138  whz              
6 months    MAL-ED           NEPAL                          High            40      95  whz              
6 months    MAL-ED           NEPAL                          Low             27      95  whz              
6 months    MAL-ED           NEPAL                          Medium          28      95  whz              
6 months    MAL-ED           PERU                           High           107     224  whz              
6 months    MAL-ED           PERU                           Low             60     224  whz              
6 months    MAL-ED           PERU                           Medium          57     224  whz              
6 months    MAL-ED           SOUTH AFRICA                   High            33      92  whz              
6 months    MAL-ED           SOUTH AFRICA                   Low             35      92  whz              
6 months    MAL-ED           SOUTH AFRICA                   Medium          24      92  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           127     201  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             55     201  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          19     201  whz              
6 months    NIH-Crypto       BANGLADESH                     High           279     715  whz              
6 months    NIH-Crypto       BANGLADESH                     Low            223     715  whz              
6 months    NIH-Crypto       BANGLADESH                     Medium         213     715  whz              
6 months    PROBIT           BELARUS                        High          2512   15207  whz              
6 months    PROBIT           BELARUS                        Low           5957   15207  whz              
6 months    PROBIT           BELARUS                        Medium        6738   15207  whz              
6 months    PROVIDE          BANGLADESH                     High           209     603  whz              
6 months    PROVIDE          BANGLADESH                     Low            208     603  whz              
6 months    PROVIDE          BANGLADESH                     Medium         186     603  whz              
6 months    SAS-CompFeed     INDIA                          High           349    1331  whz              
6 months    SAS-CompFeed     INDIA                          Low            548    1331  whz              
6 months    SAS-CompFeed     INDIA                          Medium         434    1331  whz              
6 months    SAS-FoodSuppl    INDIA                          High           101     380  whz              
6 months    SAS-FoodSuppl    INDIA                          Low            132     380  whz              
6 months    SAS-FoodSuppl    INDIA                          Medium         147     380  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2017  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1082    2017  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2017  whz              
6 months    ZVITAMBO         ZIMBABWE                       High           569    8266  whz              
6 months    ZVITAMBO         ZIMBABWE                       Low           1433    8266  whz              
6 months    ZVITAMBO         ZIMBABWE                       Medium        6264    8266  whz              
24 months   COHORTS          GUATEMALA                      High           178    1002  whz              
24 months   COHORTS          GUATEMALA                      Low            465    1002  whz              
24 months   COHORTS          GUATEMALA                      Medium         359    1002  whz              
24 months   COHORTS          INDIA                          High           536    1370  whz              
24 months   COHORTS          INDIA                          Low            448    1370  whz              
24 months   COHORTS          INDIA                          Medium         386    1370  whz              
24 months   COHORTS          PHILIPPINES                    High           798    2319  whz              
24 months   COHORTS          PHILIPPINES                    Low            693    2319  whz              
24 months   COHORTS          PHILIPPINES                    Medium         828    2319  whz              
24 months   GMS-Nepal        NEPAL                          High           113     486  whz              
24 months   GMS-Nepal        NEPAL                          Low            218     486  whz              
24 months   GMS-Nepal        NEPAL                          Medium         155     486  whz              
24 months   JiVitA-3         BANGLADESH                     High          2055    8264  whz              
24 months   JiVitA-3         BANGLADESH                     Low           3371    8264  whz              
24 months   JiVitA-3         BANGLADESH                     Medium        2838    8264  whz              
24 months   JiVitA-4         BANGLADESH                     High          1092    4602  whz              
24 months   JiVitA-4         BANGLADESH                     Low           1694    4602  whz              
24 months   JiVitA-4         BANGLADESH                     Medium        1816    4602  whz              
24 months   LCNI-5           MALAWI                         High           170     555  whz              
24 months   LCNI-5           MALAWI                         Low            194     555  whz              
24 months   LCNI-5           MALAWI                         Medium         191     555  whz              
24 months   MAL-ED           BANGLADESH                     High            40     117  whz              
24 months   MAL-ED           BANGLADESH                     Low             35     117  whz              
24 months   MAL-ED           BANGLADESH                     Medium          42     117  whz              
24 months   MAL-ED           INDIA                          High            42     132  whz              
24 months   MAL-ED           INDIA                          Low             51     132  whz              
24 months   MAL-ED           INDIA                          Medium          39     132  whz              
24 months   MAL-ED           NEPAL                          High            38      91  whz              
24 months   MAL-ED           NEPAL                          Low             27      91  whz              
24 months   MAL-ED           NEPAL                          Medium          26      91  whz              
24 months   MAL-ED           PERU                           High            77     164  whz              
24 months   MAL-ED           PERU                           Low             44     164  whz              
24 months   MAL-ED           PERU                           Medium          43     164  whz              
24 months   MAL-ED           SOUTH AFRICA                   High            34      91  whz              
24 months   MAL-ED           SOUTH AFRICA                   Low             34      91  whz              
24 months   MAL-ED           SOUTH AFRICA                   Medium          23      91  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           114     177  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             47     177  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          16     177  whz              
24 months   NIH-Crypto       BANGLADESH                     High           211     514  whz              
24 months   NIH-Crypto       BANGLADESH                     Low            144     514  whz              
24 months   NIH-Crypto       BANGLADESH                     Medium         159     514  whz              
24 months   PROBIT           BELARUS                        High           620    3851  whz              
24 months   PROBIT           BELARUS                        Low           1488    3851  whz              
24 months   PROBIT           BELARUS                        Medium        1743    3851  whz              
24 months   PROVIDE          BANGLADESH                     High           202     579  whz              
24 months   PROVIDE          BANGLADESH                     Low            198     579  whz              
24 months   PROVIDE          BANGLADESH                     Medium         179     579  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       High            13     410  whz              
24 months   ZVITAMBO         ZIMBABWE                       Low            103     410  whz              
24 months   ZVITAMBO         ZIMBABWE                       Medium         294     410  whz              


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/1f8b2ed5-8cf0-4c02-b2a4-c3828af5e1d3/8a93cb2c-683d-475c-833a-75e8f604244a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1f8b2ed5-8cf0-4c02-b2a4-c3828af5e1d3/8a93cb2c-683d-475c-833a-75e8f604244a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1f8b2ed5-8cf0-4c02-b2a4-c3828af5e1d3/8a93cb2c-683d-475c-833a-75e8f604244a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                -1.1407899   -1.3563543   -0.9252255
Birth       COHORTS          GUATEMALA                      Low                  NA                -1.0253558   -1.1793960   -0.8713156
Birth       COHORTS          GUATEMALA                      Medium               NA                -1.0828658   -1.2744818   -0.8912499
Birth       COHORTS          INDIA                          High                 NA                -1.0214739   -1.1325576   -0.9103901
Birth       COHORTS          INDIA                          Low                  NA                -0.9842862   -1.1024348   -0.8661377
Birth       COHORTS          INDIA                          Medium               NA                -1.0794526   -1.2189499   -0.9399553
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.7672559   -0.8527470   -0.6817648
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.6283197   -0.7247946   -0.5318447
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.6983212   -0.7850864   -0.6115559
Birth       GMS-Nepal        NEPAL                          High                 NA                -1.2629159   -1.4298597   -1.0959722
Birth       GMS-Nepal        NEPAL                          Low                  NA                -1.0593936   -1.1861616   -0.9326257
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.1419615   -1.3006999   -0.9832231
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.7792720   -0.8384592   -0.7200848
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -0.7690305   -0.8061444   -0.7319166
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -0.7681858   -0.8007058   -0.7356657
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.7350706   -0.8426166   -0.6275246
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -0.6884539   -0.7840630   -0.5928448
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -0.6877214   -0.8231920   -0.5522507
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.6687543   -0.9730591   -0.3644496
Birth       MAL-ED           BANGLADESH                     Low                  NA                -1.2362104   -1.6579926   -0.8144282
Birth       MAL-ED           BANGLADESH                     Medium               NA                -1.0114786   -1.3362280   -0.6867292
Birth       MAL-ED           PERU                           High                 NA                 0.0207888   -0.1622017    0.2037793
Birth       MAL-ED           PERU                           Low                  NA                -0.1668913   -0.4310975    0.0973150
Birth       MAL-ED           PERU                           Medium               NA                 0.0964459   -0.1865207    0.3794126
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                 0.2810000   -0.1017325    0.6637325
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0364286   -0.7135146    0.6406575
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                 0.8666667    0.3467047    1.3866286
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.7446774    0.5287317    0.9606232
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.6161538    0.1324976    1.0998101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.2775000    0.4059642    2.1490358
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -1.3286655   -1.4617280   -1.1956030
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -1.2803812   -1.4360829   -1.1246795
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -1.1933003   -1.3748223   -1.0117784
Birth       PROBIT           BELARUS                        High                 NA                -1.1118339   -1.3205450   -0.9031227
Birth       PROBIT           BELARUS                        Low                  NA                -1.1488890   -1.3904010   -0.9073771
Birth       PROBIT           BELARUS                        Medium               NA                -1.1560585   -1.3630800   -0.9490371
Birth       PROVIDE          BANGLADESH                     High                 NA                -1.2861914   -1.4184582   -1.1539245
Birth       PROVIDE          BANGLADESH                     Low                  NA                -1.3163774   -1.4466330   -1.1861217
Birth       PROVIDE          BANGLADESH                     Medium               NA                -1.2992256   -1.4441648   -1.1542865
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.6068212   -0.8552553   -0.3583870
Birth       SAS-CompFeed     INDIA                          Low                  NA                -0.7241917   -0.9073167   -0.5410666
Birth       SAS-CompFeed     INDIA                          Medium               NA                -0.6545037   -0.8521782   -0.4568292
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.5390724   -0.6326846   -0.4454602
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.4903321   -0.5691688   -0.4114954
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5102996   -0.5408852   -0.4797139
6 months    COHORTS          GUATEMALA                      High                 NA                 0.1618543   -0.0190060    0.3427147
6 months    COHORTS          GUATEMALA                      Low                  NA                 0.1327265    0.0130221    0.2524310
6 months    COHORTS          GUATEMALA                      Medium               NA                 0.1819233    0.0292012    0.3346453
6 months    COHORTS          INDIA                          High                 NA                -0.6165408   -0.7191194   -0.5139621
6 months    COHORTS          INDIA                          Low                  NA                -0.7211873   -0.8287656   -0.6136091
6 months    COHORTS          INDIA                          Medium               NA                -0.6325012   -0.7542677   -0.5107348
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.2831470   -0.3696861   -0.1966080
6 months    COHORTS          PHILIPPINES                    Low                  NA                -0.2869086   -0.3703258   -0.2034913
6 months    COHORTS          PHILIPPINES                    Medium               NA                -0.3095733   -0.3879283   -0.2312182
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.5703227   -0.7576603   -0.3829850
6 months    GMS-Nepal        NEPAL                          Low                  NA                -0.6193857   -0.7636333   -0.4751381
6 months    GMS-Nepal        NEPAL                          Medium               NA                -0.6116979   -0.7733628   -0.4500331
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.5790192   -0.6364167   -0.5216218
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -0.6029781   -0.6466221   -0.5593341
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -0.5792053   -0.6148619   -0.5435486
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.3988175   -0.5069013   -0.2907337
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -0.3851275   -0.4782045   -0.2920505
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -0.4126936   -0.4745814   -0.3508058
6 months    LCNI-5           MALAWI                         High                 NA                 0.3552182    0.2280012    0.4824353
6 months    LCNI-5           MALAWI                         Low                  NA                 0.4931748    0.3708813    0.6154682
6 months    LCNI-5           MALAWI                         Medium               NA                 0.4638495    0.3341279    0.5935712
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.2807359   -0.5676732    0.0062014
6 months    MAL-ED           BANGLADESH                     Low                  NA                -0.5219703   -0.7744790   -0.2694615
6 months    MAL-ED           BANGLADESH                     Medium               NA                -0.1921648   -0.5798127    0.1954832
6 months    MAL-ED           INDIA                          High                 NA                -0.6681718   -0.9525175   -0.3838261
6 months    MAL-ED           INDIA                          Low                  NA                -0.6290019   -0.9066440   -0.3513599
6 months    MAL-ED           INDIA                          Medium               NA                -0.9087895   -1.2706753   -0.5469036
6 months    MAL-ED           NEPAL                          High                 NA                 0.1194823   -0.1595344    0.3984990
6 months    MAL-ED           NEPAL                          Low                  NA                -0.2540441   -0.6393953    0.1313071
6 months    MAL-ED           NEPAL                          Medium               NA                 0.2059719   -0.1729136    0.5848575
6 months    MAL-ED           PERU                           High                 NA                 1.0619860    0.8724012    1.2515708
6 months    MAL-ED           PERU                           Low                  NA                 1.2914554    1.0209139    1.5619969
6 months    MAL-ED           PERU                           Medium               NA                 0.9275554    0.6692275    1.1858833
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.5618942    0.1546111    0.9691772
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                 0.1618197   -0.2656531    0.5892925
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                 0.3720517   -0.0471606    0.7912639
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.4465174    0.2595708    0.6334640
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.4736028    0.2205130    0.7266926
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.9895977    0.5576593    1.4215362
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0501374   -0.0776072    0.1778819
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                 0.0630589   -0.0919884    0.2181062
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                -0.0265696   -0.1850566    0.1319175
6 months    PROBIT           BELARUS                        High                 NA                 0.5804403    0.5031353    0.6577453
6 months    PROBIT           BELARUS                        Low                  NA                 0.5822558    0.5196037    0.6449080
6 months    PROBIT           BELARUS                        Medium               NA                 0.5643912    0.5029742    0.6258082
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0839119   -0.2285454    0.0607216
6 months    PROVIDE          BANGLADESH                     Low                  NA                -0.2515492   -0.4121049   -0.0909934
6 months    PROVIDE          BANGLADESH                     Medium               NA                -0.1739626   -0.3314401   -0.0164851
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.5907215   -0.7511578   -0.4302852
6 months    SAS-CompFeed     INDIA                          Low                  NA                -0.7273637   -0.8706429   -0.5840845
6 months    SAS-CompFeed     INDIA                          Medium               NA                -0.6470498   -0.8308872   -0.4632124
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.9605687   -1.1862364   -0.7349010
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -0.9062621   -1.0926745   -0.7198498
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -1.1261266   -1.3287455   -0.9235078
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0864825   -0.0814287    0.2543938
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0544659   -0.0230835    0.1320153
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0277675   -0.1034740    0.1590090
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.3296559    0.2231953    0.4361165
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                 0.2750361    0.1866921    0.3633801
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                 0.3280499    0.2964759    0.3596240
24 months   COHORTS          GUATEMALA                      High                 NA                -0.5235999   -0.6902400   -0.3569599
24 months   COHORTS          GUATEMALA                      Low                  NA                -0.2251607   -0.3191407   -0.1311807
24 months   COHORTS          GUATEMALA                      Medium               NA                -0.3564707   -0.4772758   -0.2356657
24 months   COHORTS          INDIA                          High                 NA                -0.4918850   -0.5818988   -0.4018712
24 months   COHORTS          INDIA                          Low                  NA                -0.7768640   -0.8688498   -0.6848782
24 months   COHORTS          INDIA                          Medium               NA                -0.6051194   -0.7321198   -0.4781189
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.5816912   -0.6471920   -0.5161903
24 months   COHORTS          PHILIPPINES                    Low                  NA                -0.6804986   -0.7583104   -0.6026867
24 months   COHORTS          PHILIPPINES                    Medium               NA                -0.6615461   -0.7333392   -0.5897530
24 months   GMS-Nepal        NEPAL                          High                 NA                -1.1726588   -1.3736612   -0.9716563
24 months   GMS-Nepal        NEPAL                          Low                  NA                -1.0126897   -1.1531356   -0.8722438
24 months   GMS-Nepal        NEPAL                          Medium               NA                -1.1751843   -1.3551968   -0.9951717
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.2777736   -1.3610603   -1.1944870
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -1.2732511   -1.3151662   -1.2313360
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -1.3167056   -1.3649163   -1.2684949
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.2363209   -1.3202907   -1.1523511
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.2584671   -1.3174320   -1.1995022
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.2356229   -1.2894593   -1.1817864
24 months   LCNI-5           MALAWI                         High                 NA                -0.0927347   -0.2376421    0.0521727
24 months   LCNI-5           MALAWI                         Low                  NA                -0.0515790   -0.1820558    0.0788978
24 months   LCNI-5           MALAWI                         Medium               NA                -0.0016839   -0.1518521    0.1484844
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.8426429   -1.1085740   -0.5767119
24 months   MAL-ED           BANGLADESH                     Low                  NA                -1.0415911   -1.3186866   -0.7644956
24 months   MAL-ED           BANGLADESH                     Medium               NA                -0.9016768   -1.2345385   -0.5688151
24 months   MAL-ED           INDIA                          High                 NA                -0.9413783   -1.1504751   -0.7322814
24 months   MAL-ED           INDIA                          Low                  NA                -0.9067038   -1.1353395   -0.6780680
24 months   MAL-ED           INDIA                          Medium               NA                -1.0388282   -1.3540381   -0.7236182
24 months   MAL-ED           NEPAL                          High                 NA                -0.2889200   -0.5653465   -0.0124935
24 months   MAL-ED           NEPAL                          Low                  NA                -0.6536299   -0.9350268   -0.3722330
24 months   MAL-ED           NEPAL                          Medium               NA                -0.5862620   -0.9750618   -0.1974622
24 months   MAL-ED           PERU                           High                 NA                 0.0323017   -0.1548375    0.2194409
24 months   MAL-ED           PERU                           Low                  NA                 0.3832866    0.1703197    0.5962535
24 months   MAL-ED           PERU                           Medium               NA                 0.0566480   -0.2935942    0.4068901
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.5010736    0.1525606    0.8495867
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                 0.2647955   -0.0773444    0.6069354
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                 0.1002886   -0.1822946    0.3828718
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1327507   -0.0510576    0.3165591
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0145533   -0.2365906    0.2656972
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1816040   -0.2303540    0.5935619
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.5675777   -0.7121348   -0.4230206
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -0.8636747   -1.0257118   -0.7016376
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -0.5055568   -0.6951745   -0.3159392
24 months   PROBIT           BELARUS                        High                 NA                 0.7824056    0.6131581    0.9516530
24 months   PROBIT           BELARUS                        Low                  NA                 0.7354543    0.5848049    0.8861038
24 months   PROBIT           BELARUS                        Medium               NA                 0.6414482    0.5312828    0.7516137
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.7885707   -0.9244137   -0.6527278
24 months   PROVIDE          BANGLADESH                     Low                  NA                -1.0710655   -1.1974716   -0.9446593
24 months   PROVIDE          BANGLADESH                     Medium               NA                -0.8634082   -1.0391832   -0.6876333
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.1105145   -1.6321226   -0.5889065
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.3337986   -1.5694212   -1.0981759
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1430245   -1.2596190   -1.0264300


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0475905   -1.1510656   -0.9441155
Birth       COHORTS          INDIA                          NA                   NA                -1.0020759   -1.0646599   -0.9394920
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7218585   -0.7694262   -0.6742908
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1161562   -1.2038617   -1.0284508
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7747631   -0.7940385   -0.7554876
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6831985   -0.7361386   -0.6302583
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9483613   -1.1437809   -0.7529418
Birth       MAL-ED           PERU                           NA                   NA                -0.0145789   -0.1426994    0.1135416
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3060606   -0.0577506    0.6698718
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7542708    0.5468640    0.9616776
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        NA                   NA                -1.1437060   -1.3543158   -0.9330962
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6685468   -0.8459689   -0.4911247
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5092691   -0.5354330   -0.4831051
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1987403    0.1250477    0.2724329
6 months    COHORTS          INDIA                          NA                   NA                -0.6502599   -0.7103477   -0.5901722
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2839930   -0.3263706   -0.2416154
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6031912   -0.6894381   -0.5169444
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5904964   -0.6106039   -0.5703890
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3852207   -0.4232704   -0.3471709
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4414163    0.3697939    0.5130386
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.3007955   -0.4778591   -0.1237319
6 months    MAL-ED           INDIA                          NA                   NA                -0.7272766   -0.9000901   -0.5544630
6 months    MAL-ED           NEPAL                          NA                   NA                 0.0334035   -0.1647857    0.2315927
6 months    MAL-ED           PERU                           NA                   NA                 1.0860565    0.9516698    1.2204433
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3834783    0.1440275    0.6229290
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5336484    0.3899788    0.6773181
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5730055    0.5136977    0.6323133
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6641059   -0.8040033   -0.5242086
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0791782    0.0263777    0.1319787
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3153847    0.2894045    0.3413649
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2662176   -0.3220630   -0.2103721
24 months   COHORTS          INDIA                          NA                   NA                -0.6051533   -0.6581071   -0.5521995
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6155714   -0.6532287   -0.5779140
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1331550   -1.2220936   -1.0442165
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2984354   -1.3225016   -1.2743692
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2222794   -1.2547188   -1.1898401
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0443153   -0.1269075    0.0382769
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.9042735   -1.0737243   -0.7348227
24 months   MAL-ED           INDIA                          NA                   NA                -0.9451515   -1.0860650   -0.8042380
24 months   MAL-ED           NEPAL                          NA                   NA                -0.4668132   -0.6466833   -0.2869431
24 months   MAL-ED           PERU                           NA                   NA                 0.1321189   -0.0027984    0.2670362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3583333    0.1644154    0.5522513
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1084840   -0.0300100    0.2469780
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6953371    0.5818973    0.8087769
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1889512   -1.2920613   -1.0858411


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low                  High               0.1154341   -0.1419573    0.3728255
Birth       COHORTS          GUATEMALA                      Medium               High               0.0579240   -0.2234362    0.3392842
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High               0.0371877   -0.1241898    0.1985651
Birth       COHORTS          INDIA                          Medium               High              -0.0579787   -0.2358409    0.1198836
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High               0.1389362    0.0115200    0.2663524
Birth       COHORTS          PHILIPPINES                    Medium               High               0.0689347   -0.0510108    0.1888802
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High               0.2035223    0.0019998    0.4050448
Birth       GMS-Nepal        NEPAL                          Medium               High               0.1209544   -0.1020501    0.3439590
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High               0.0102415   -0.0629639    0.0834468
Birth       JiVitA-3         BANGLADESH                     Medium               High               0.0110862   -0.0550772    0.0772496
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High               0.0466167   -0.0963553    0.1895886
Birth       JiVitA-4         BANGLADESH                     Medium               High               0.0473492   -0.1233438    0.2180423
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High              -0.5674561   -1.0872735   -0.0476386
Birth       MAL-ED           BANGLADESH                     Medium               High              -0.3427243   -0.7874387    0.1019901
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High              -0.1876800   -0.5083523    0.1329922
Birth       MAL-ED           PERU                           Medium               High               0.0756571   -0.2628694    0.4141837
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High              -0.3174286   -1.0952008    0.4603437
Birth       MAL-ED           SOUTH AFRICA                   Medium               High               0.5856667   -0.0599684    1.2313017
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1285236   -0.6581988    0.4011517
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.5328226   -0.3650679    1.4307130
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High               0.0482843   -0.1529236    0.2494923
Birth       NIH-Crypto       BANGLADESH                     Medium               High               0.1353652   -0.0865632    0.3572935
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.0370552   -0.1577194    0.0836091
Birth       PROBIT           BELARUS                        Medium               High              -0.0442247   -0.1328960    0.0444467
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High              -0.0301860   -0.2108405    0.1504684
Birth       PROVIDE          BANGLADESH                     Medium               High              -0.0130343   -0.2041754    0.1781068
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High              -0.1173705   -0.2509438    0.0162028
Birth       SAS-CompFeed     INDIA                          Medium               High              -0.0476825   -0.2759272    0.1805623
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High               0.0487403   -0.0725189    0.1699995
Birth       ZVITAMBO         ZIMBABWE                       Medium               High               0.0287728   -0.0682508    0.1257964
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High              -0.0291278   -0.2461430    0.1878874
6 months    COHORTS          GUATEMALA                      Medium               High               0.0200689   -0.2165065    0.2566444
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.1046466   -0.2533845    0.0440913
6 months    COHORTS          INDIA                          Medium               High              -0.0159605   -0.1752222    0.1433012
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High              -0.0037615   -0.1237184    0.1161954
6 months    COHORTS          PHILIPPINES                    Medium               High              -0.0264262   -0.1425425    0.0896900
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.0490630   -0.2844815    0.1863554
6 months    GMS-Nepal        NEPAL                          Medium               High              -0.0413753   -0.2875372    0.2047866
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.0239589   -0.0959761    0.0480583
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.0001860   -0.0650636    0.0646915
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High               0.0136900   -0.1296264    0.1570063
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.0138761   -0.1339162    0.1061640
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High               0.1379566   -0.0376873    0.3136004
6 months    LCNI-5           MALAWI                         Medium               High               0.1086313   -0.0723219    0.2895845
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.2412344   -0.6278339    0.1453651
6 months    MAL-ED           BANGLADESH                     Medium               High               0.0885711   -0.3980211    0.5751633
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High               0.0391699   -0.3592350    0.4375749
6 months    MAL-ED           INDIA                          Medium               High              -0.2406176   -0.7013977    0.2201624
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High              -0.3735264   -0.8454153    0.0983625
6 months    MAL-ED           NEPAL                          Medium               High               0.0864896   -0.3767224    0.5497016
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High               0.2294694   -0.1017641    0.5607028
6 months    MAL-ED           PERU                           Medium               High              -0.1344306   -0.4542587    0.1853974
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.4000745   -0.9924097    0.1922607
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.1898425   -0.7732856    0.3936006
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0270854   -0.2867072    0.3408779
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.5430803    0.0727087    1.0134520
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High               0.0129215   -0.1863911    0.2122341
6 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.0767069   -0.2783954    0.1249816
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High               0.0018156   -0.0702261    0.0738573
6 months    PROBIT           BELARUS                        Medium               High              -0.0160491   -0.0820267    0.0499285
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.1676372   -0.3835410    0.0482665
6 months    PROVIDE          BANGLADESH                     Medium               High              -0.0900507   -0.3033187    0.1232173
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.1366422   -0.2280755   -0.0452089
6 months    SAS-CompFeed     INDIA                          Medium               High              -0.0563283   -0.1457894    0.0331329
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High               0.0543065   -0.2384259    0.3470390
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.1655579   -0.4689563    0.1378405
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0320166   -0.2168924    0.1528591
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0587150   -0.2714351    0.1540050
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.0546198   -0.1927709    0.0835313
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0016059   -0.1124523    0.1092404
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High               0.2984392    0.1066494    0.4902291
24 months   COHORTS          GUATEMALA                      Medium               High               0.1671292   -0.0390129    0.3732713
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -0.2849790   -0.4140487   -0.1559094
24 months   COHORTS          INDIA                          Medium               High              -0.1132344   -0.2691154    0.0426467
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.0988074   -0.2001067    0.0024919
24 months   COHORTS          PHILIPPINES                    Medium               High              -0.0798549   -0.1759367    0.0162268
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High               0.1599691   -0.0859066    0.4058448
24 months   GMS-Nepal        NEPAL                          Medium               High              -0.0025255   -0.2710970    0.2660460
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High               0.0045225   -0.0872526    0.0962976
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.0389319   -0.1336276    0.0557637
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.0221462   -0.1255683    0.0812760
24 months   JiVitA-4         BANGLADESH                     Medium               High               0.0006981   -0.0974979    0.0988940
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High               0.0411556   -0.1521508    0.2344621
24 months   LCNI-5           MALAWI                         Medium               High               0.0910508   -0.1146554    0.2967570
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.1989482   -0.5839334    0.1860370
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.0590339   -0.4864592    0.3683914
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High               0.0346745   -0.2777600    0.3471089
24 months   MAL-ED           INDIA                          Medium               High              -0.0974499   -0.4769924    0.2820926
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.3647099   -0.7605334    0.0311137
24 months   MAL-ED           NEPAL                          Medium               High              -0.2973420   -0.7721737    0.1774898
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High               0.3509849    0.0681520    0.6338178
24 months   MAL-ED           PERU                           Medium               High               0.0243463   -0.3711829    0.4198755
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.2362781   -0.7287502    0.2561940
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.4007851   -0.8499572    0.0483871
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1181974   -0.4279718    0.1915769
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0488532   -0.4047234    0.5024298
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.2960970   -0.5128443   -0.0793497
24 months   NIH-Crypto       BANGLADESH                     Medium               High               0.0620208   -0.1750242    0.2990659
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.0469512   -0.2439013    0.1499989
24 months   PROBIT           BELARUS                        Medium               High              -0.1409573   -0.3011416    0.0192269
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.2824947   -0.4672401   -0.0977493
24 months   PROVIDE          BANGLADESH                     Medium               High              -0.0748375   -0.2958806    0.1462056
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.2232840   -0.7957723    0.3492042
24 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0325099   -0.5668708    0.5018510


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                 0.0931993   -0.1058837    0.2922824
Birth       COHORTS          INDIA                          High                 NA                 0.0193980   -0.0707220    0.1095180
Birth       COHORTS          PHILIPPINES                    High                 NA                 0.0453974   -0.0268967    0.1176914
Birth       GMS-Nepal        NEPAL                          High                 NA                 0.1467597    0.0003370    0.2931824
Birth       JiVitA-3         BANGLADESH                     High                 NA                 0.0045089   -0.0512824    0.0603003
Birth       JiVitA-4         BANGLADESH                     High                 NA                 0.0518721   -0.0480160    0.1517602
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.2796070   -0.5272946   -0.0319194
Birth       MAL-ED           PERU                           High                 NA                -0.0353677   -0.1903344    0.1195990
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                 0.0250606   -0.4109032    0.4610244
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0095934   -0.1619187    0.1811055
Birth       NIH-Crypto       BANGLADESH                     High                 NA                 0.0845142   -0.0234628    0.1924912
Birth       PROBIT           BELARUS                        High                 NA                -0.0318721   -0.1101827    0.0464385
Birth       PROVIDE          BANGLADESH                     High                 NA                -0.0122673   -0.1242971    0.0997625
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.0617256   -0.1896305    0.0661793
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                 0.0298033   -0.0608312    0.1204379
6 months    COHORTS          GUATEMALA                      High                 NA                 0.0368860   -0.1316434    0.2054154
6 months    COHORTS          INDIA                          High                 NA                -0.0337192   -0.1172297    0.0497914
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0008459   -0.0767660    0.0750742
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0328686   -0.2005249    0.1347878
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0114772   -0.0649858    0.0420314
6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0135968   -0.0852026    0.1123962
6 months    LCNI-5           MALAWI                         High                 NA                 0.0861981   -0.0207366    0.1931327
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.0200596   -0.2619472    0.2218280
6 months    MAL-ED           INDIA                          High                 NA                -0.0591047   -0.3110175    0.1928081
6 months    MAL-ED           NEPAL                          High                 NA                -0.0860788   -0.3095609    0.1374033
6 months    MAL-ED           PERU                           High                 NA                 0.0240705   -0.1175018    0.1656428
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.1784159   -0.5087713    0.1519395
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0871310   -0.0205859    0.1948479
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0203751   -0.1267085    0.0859583
6 months    PROBIT           BELARUS                        High                 NA                -0.0074348   -0.0622416    0.0473721
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.1151787   -0.2368483    0.0064908
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0733844   -0.1220361   -0.0247327
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.0515892   -0.2474108    0.1442323
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0073043   -0.1676350    0.1530264
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0142712   -0.1177663    0.0892240
24 months   COHORTS          GUATEMALA                      High                 NA                 0.2573824    0.0951945    0.4195703
24 months   COHORTS          INDIA                          High                 NA                -0.1132683   -0.1884791   -0.0380575
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0338802   -0.0916699    0.0239095
24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0395038   -0.1426578    0.2216653
24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0206617   -0.1000775    0.0587540
24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0140415   -0.0633180    0.0914009
24 months   LCNI-5           MALAWI                         High                 NA                 0.0484194   -0.0702510    0.1670897
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0616306   -0.2949825    0.1717214
24 months   MAL-ED           INDIA                          High                 NA                -0.0037733   -0.1963860    0.1888395
24 months   MAL-ED           NEPAL                          High                 NA                -0.1778932   -0.3931773    0.0373910
24 months   MAL-ED           PERU                           High                 NA                 0.0998172   -0.0448765    0.2445109
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.1427403   -0.4120314    0.1265508
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0242668   -0.1285401    0.0800065
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0427725   -0.1514692    0.0659242
24 months   PROBIT           BELARUS                        High                 NA                -0.0870684   -0.2400862    0.0659494
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.1042963   -0.2198406    0.0112480
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0784367   -0.5959942    0.4391209
