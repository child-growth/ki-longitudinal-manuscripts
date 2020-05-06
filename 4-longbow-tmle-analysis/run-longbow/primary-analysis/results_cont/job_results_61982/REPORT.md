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
![](/tmp/bd931e35-34b2-4bac-a171-c95172d791a2/da216905-bc4f-4d72-9744-61bd3df46263/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bd931e35-34b2-4bac-a171-c95172d791a2/da216905-bc4f-4d72-9744-61bd3df46263/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bd931e35-34b2-4bac-a171-c95172d791a2/da216905-bc4f-4d72-9744-61bd3df46263/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                -1.1536682   -1.3781704   -0.9291660
Birth       COHORTS          GUATEMALA                      Low                  NA                -1.0338748   -1.1949833   -0.8727664
Birth       COHORTS          GUATEMALA                      Medium               NA                -1.1124635   -1.2856348   -0.9392922
Birth       COHORTS          INDIA                          High                 NA                -1.0286539   -1.1372133   -0.9200945
Birth       COHORTS          INDIA                          Low                  NA                -0.9882406   -1.1045481   -0.8719331
Birth       COHORTS          INDIA                          Medium               NA                -1.0606535   -1.1905664   -0.9307405
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.7553213   -0.8438477   -0.6667949
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.6146252   -0.7133019   -0.5159485
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.6893030   -0.7751604   -0.6034457
Birth       GMS-Nepal        NEPAL                          High                 NA                -1.2544109   -1.4163252   -1.0924967
Birth       GMS-Nepal        NEPAL                          Low                  NA                -1.0269974   -1.1589204   -0.8950744
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.1362359   -1.2974306   -0.9750411
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.7770241   -0.8359451   -0.7181031
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -0.7751548   -0.8109039   -0.7394056
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -0.7730334   -0.8063589   -0.7397080
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.7452635   -0.8543949   -0.6361320
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -0.6958263   -0.7941505   -0.5975022
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -0.6837463   -0.8065309   -0.5609616
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.6512907   -0.9702016   -0.3323797
Birth       MAL-ED           BANGLADESH                     Low                  NA                -1.2553582   -1.6530423   -0.8576741
Birth       MAL-ED           BANGLADESH                     Medium               NA                -1.0146764   -1.3381472   -0.6912056
Birth       MAL-ED           PERU                           High                 NA                 0.0257814   -0.1568865    0.2084493
Birth       MAL-ED           PERU                           Low                  NA                -0.1782647   -0.4368690    0.0803396
Birth       MAL-ED           PERU                           Medium               NA                 0.0453380   -0.2477875    0.3384634
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                 0.2810000   -0.1017325    0.6637325
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0364286   -0.7135146    0.6406575
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                 0.8666667    0.3467047    1.3866286
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.7446774    0.5287317    0.9606232
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.6161538    0.1324976    1.0998101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.2775000    0.4059642    2.1490358
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -1.3350126   -1.4629390   -1.2070862
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -1.2959559   -1.4442326   -1.1476791
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -1.2283473   -1.4063758   -1.0503189
Birth       PROBIT           BELARUS                        High                 NA                -1.1148607   -1.3234851   -0.9062363
Birth       PROBIT           BELARUS                        Low                  NA                -1.1404121   -1.3677872   -0.9130371
Birth       PROBIT           BELARUS                        Medium               NA                -1.1600976   -1.3692511   -0.9509442
Birth       PROVIDE          BANGLADESH                     High                 NA                -1.3136795   -1.4508067   -1.1765523
Birth       PROVIDE          BANGLADESH                     Low                  NA                -1.3206972   -1.4498223   -1.1915721
Birth       PROVIDE          BANGLADESH                     Medium               NA                -1.3173507   -1.4552685   -1.1794329
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.6068212   -0.8552553   -0.3583870
Birth       SAS-CompFeed     INDIA                          Low                  NA                -0.7241917   -0.9073167   -0.5410666
Birth       SAS-CompFeed     INDIA                          Medium               NA                -0.6545037   -0.8521782   -0.4568292
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.5120304   -0.6057502   -0.4183106
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.4871833   -0.5654213   -0.4089454
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5112657   -0.5419553   -0.4805761
6 months    COHORTS          GUATEMALA                      High                 NA                 0.2711980    0.0726248    0.4697712
6 months    COHORTS          GUATEMALA                      Low                  NA                 0.1357350    0.0124288    0.2590412
6 months    COHORTS          GUATEMALA                      Medium               NA                 0.1544246    0.0098558    0.2989935
6 months    COHORTS          INDIA                          High                 NA                -0.6191901   -0.7203415   -0.5180388
6 months    COHORTS          INDIA                          Low                  NA                -0.6923629   -0.7955446   -0.5891812
6 months    COHORTS          INDIA                          Medium               NA                -0.6382053   -0.7572834   -0.5191273
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.2799538   -0.3623334   -0.1975741
6 months    COHORTS          PHILIPPINES                    Low                  NA                -0.2921497   -0.3729359   -0.2113636
6 months    COHORTS          PHILIPPINES                    Medium               NA                -0.3152371   -0.3927037   -0.2377704
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.5830733   -0.7695976   -0.3965491
6 months    GMS-Nepal        NEPAL                          Low                  NA                -0.6018434   -0.7457650   -0.4579218
6 months    GMS-Nepal        NEPAL                          Medium               NA                -0.6178993   -0.7810608   -0.4547378
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.5770587   -0.6342415   -0.5198760
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -0.6001148   -0.6427366   -0.5574930
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -0.5800720   -0.6156522   -0.5444918
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.3911971   -0.5151041   -0.2672901
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -0.3798127   -0.4800905   -0.2795348
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -0.4158195   -0.4802903   -0.3513488
6 months    LCNI-5           MALAWI                         High                 NA                 0.3884565    0.2584047    0.5185082
6 months    LCNI-5           MALAWI                         Low                  NA                 0.4776985    0.3570086    0.5983884
6 months    LCNI-5           MALAWI                         Medium               NA                 0.4481067    0.3183153    0.5778981
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.2757836   -0.5626607    0.0110936
6 months    MAL-ED           BANGLADESH                     Low                  NA                -0.4724366   -0.7265438   -0.2183293
6 months    MAL-ED           BANGLADESH                     Medium               NA                -0.2222134   -0.6131990    0.1687723
6 months    MAL-ED           INDIA                          High                 NA                -0.6645069   -0.9380978   -0.3909161
6 months    MAL-ED           INDIA                          Low                  NA                -0.6241153   -0.9002598   -0.3479708
6 months    MAL-ED           INDIA                          Medium               NA                -0.9487910   -1.3163668   -0.5812152
6 months    MAL-ED           NEPAL                          High                 NA                 0.1071778   -0.1699976    0.3843533
6 months    MAL-ED           NEPAL                          Low                  NA                -0.2157843   -0.6055791    0.1740105
6 months    MAL-ED           NEPAL                          Medium               NA                 0.1921653   -0.1744514    0.5587820
6 months    MAL-ED           PERU                           High                 NA                 1.0572146    0.8663806    1.2480487
6 months    MAL-ED           PERU                           Low                  NA                 1.2622407    0.9948501    1.5296313
6 months    MAL-ED           PERU                           Medium               NA                 0.9296278    0.6629860    1.1962695
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.5821850    0.1631330    1.0012370
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                 0.1534983   -0.2752926    0.5822893
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                 0.3842397   -0.0167154    0.7851948
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.4607011    0.2733253    0.6480770
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.5151957    0.2631596    0.7672318
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.1095369    0.6424276    1.5766463
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.1064413   -0.0234013    0.2362839
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                 0.0289127   -0.1241329    0.1819583
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                -0.0030589   -0.1760923    0.1699745
6 months    PROBIT           BELARUS                        High                 NA                 0.5855643    0.5031090    0.6680197
6 months    PROBIT           BELARUS                        Low                  NA                 0.5802662    0.5186277    0.6419047
6 months    PROBIT           BELARUS                        Medium               NA                 0.5632377    0.5029738    0.6235016
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.1128893   -0.2578315    0.0320529
6 months    PROVIDE          BANGLADESH                     Low                  NA                -0.2418520   -0.4022175   -0.0814864
6 months    PROVIDE          BANGLADESH                     Medium               NA                -0.1986917   -0.3538291   -0.0435542
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.5907215   -0.7511578   -0.4302852
6 months    SAS-CompFeed     INDIA                          Low                  NA                -0.7273637   -0.8706430   -0.5840845
6 months    SAS-CompFeed     INDIA                          Medium               NA                -0.6470498   -0.8308872   -0.4632124
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.9720471   -1.1989746   -0.7451195
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -0.9007758   -1.0853814   -0.7161702
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -1.1235435   -1.3235842   -0.9235027
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1121208   -0.0497484    0.2739900
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0677138   -0.0084248    0.1438525
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0591015   -0.0717187    0.1899216
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.3075409    0.1974361    0.4176458
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                 0.2720791    0.1816436    0.3625145
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                 0.3283788    0.2966870    0.3600706
24 months   COHORTS          GUATEMALA                      High                 NA                -0.4529424   -0.6138873   -0.2919976
24 months   COHORTS          GUATEMALA                      Low                  NA                -0.2380002   -0.3327863   -0.1432141
24 months   COHORTS          GUATEMALA                      Medium               NA                -0.3386501   -0.4658203   -0.2114800
24 months   COHORTS          INDIA                          High                 NA                -0.4850416   -0.5726197   -0.3974635
24 months   COHORTS          INDIA                          Low                  NA                -0.7975505   -0.8862508   -0.7088501
24 months   COHORTS          INDIA                          Medium               NA                -0.6013731   -0.7352639   -0.4674823
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.5840917   -0.6516319   -0.5165514
24 months   COHORTS          PHILIPPINES                    Low                  NA                -0.6712429   -0.7466249   -0.5958609
24 months   COHORTS          PHILIPPINES                    Medium               NA                -0.6740254   -0.7474825   -0.6005682
24 months   GMS-Nepal        NEPAL                          High                 NA                -1.1737699   -1.3588973   -0.9886425
24 months   GMS-Nepal        NEPAL                          Low                  NA                -1.0326429   -1.1700465   -0.8952393
24 months   GMS-Nepal        NEPAL                          Medium               NA                -1.1867436   -1.3726188   -1.0008684
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.2723700   -1.3588356   -1.1859044
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -1.2899811   -1.3324192   -1.2475429
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -1.3040310   -1.3506583   -1.2574037
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.2328061   -1.3158948   -1.1497174
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.2466595   -1.3065449   -1.1867741
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.2308846   -1.2846844   -1.1770849
24 months   LCNI-5           MALAWI                         High                 NA                -0.0589674   -0.2062266    0.0882918
24 months   LCNI-5           MALAWI                         Low                  NA                -0.0520305   -0.1811441    0.0770831
24 months   LCNI-5           MALAWI                         Medium               NA                -0.0233378   -0.1718610    0.1251854
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.8083066   -1.0650038   -0.5516093
24 months   MAL-ED           BANGLADESH                     Low                  NA                -1.0520964   -1.3351117   -0.7690812
24 months   MAL-ED           BANGLADESH                     Medium               NA                -0.8710398   -1.1873700   -0.5547096
24 months   MAL-ED           INDIA                          High                 NA                -0.8972478   -1.0999327   -0.6945629
24 months   MAL-ED           INDIA                          Low                  NA                -0.8770480   -1.1045142   -0.6495818
24 months   MAL-ED           INDIA                          Medium               NA                -1.0176427   -1.3266516   -0.7086338
24 months   MAL-ED           NEPAL                          High                 NA                -0.2282263   -0.5073876    0.0509349
24 months   MAL-ED           NEPAL                          Low                  NA                -0.6363893   -0.9191985   -0.3535800
24 months   MAL-ED           NEPAL                          Medium               NA                -0.5444550   -0.9466831   -0.1422269
24 months   MAL-ED           PERU                           High                 NA                 0.0137436   -0.1691717    0.1966589
24 months   MAL-ED           PERU                           Low                  NA                 0.3592657    0.1469946    0.5715369
24 months   MAL-ED           PERU                           Medium               NA                 0.0283059   -0.2911128    0.3477245
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.5769069    0.2276187    0.9261950
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                 0.3748321    0.0333478    0.7163164
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                 0.1280583   -0.1614803    0.4175968
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1293348   -0.0539730    0.3126426
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0109427   -0.2464709    0.2683562
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1660907   -0.2424797    0.5746611
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.5910492   -0.7346079   -0.4474905
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -0.8892304   -1.0481662   -0.7302946
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -0.4826399   -0.6746478   -0.2906319
24 months   PROBIT           BELARUS                        High                 NA                 0.7650963    0.6129623    0.9172304
24 months   PROBIT           BELARUS                        Low                  NA                 0.7279464    0.5794698    0.8764230
24 months   PROBIT           BELARUS                        Medium               NA                 0.6411812    0.5293444    0.7530179
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.8160869   -0.9495644   -0.6826093
24 months   PROVIDE          BANGLADESH                     Low                  NA                -1.0707352   -1.1981319   -0.9433385
24 months   PROVIDE          BANGLADESH                     Medium               NA                -0.8736637   -1.0369133   -0.7104141
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.1030552   -1.6365328   -0.5695776
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.3108271   -1.5454407   -1.0762135
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1420027   -1.2588493   -1.0251561


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
Birth       COHORTS          GUATEMALA                      Low                  High               0.1197934   -0.1500577    0.3896445
Birth       COHORTS          GUATEMALA                      Medium               High               0.0412047   -0.2367366    0.3191460
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High               0.0404133   -0.1173120    0.1981387
Birth       COHORTS          INDIA                          Medium               High              -0.0319996   -0.2001441    0.1361450
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High               0.1406962    0.0096204    0.2717720
Birth       COHORTS          PHILIPPINES                    Medium               High               0.0660183   -0.0553690    0.1874056
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High               0.2274136    0.0276104    0.4272167
Birth       GMS-Nepal        NEPAL                          Medium               High               0.1181751   -0.1015660    0.3379162
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High               0.0018693   -0.0696138    0.0733524
Birth       JiVitA-3         BANGLADESH                     Medium               High               0.0039906   -0.0621324    0.0701137
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High               0.0494371   -0.0965796    0.1954539
Birth       JiVitA-4         BANGLADESH                     Medium               High               0.0615172   -0.0989293    0.2219637
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High              -0.6040676   -1.1146311   -0.0935040
Birth       MAL-ED           BANGLADESH                     Medium               High              -0.3633858   -0.8204079    0.0936364
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High              -0.2040461   -0.5209562    0.1128640
Birth       MAL-ED           PERU                           Medium               High               0.0195566   -0.3266893    0.3658025
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High              -0.3174286   -1.0952008    0.4603437
Birth       MAL-ED           SOUTH AFRICA                   Medium               High               0.5856667   -0.0599684    1.2313017
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1285236   -0.6581988    0.4011517
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.5328226   -0.3650679    1.4307130
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High               0.0390567   -0.1511831    0.2292966
Birth       NIH-Crypto       BANGLADESH                     Medium               High               0.1066653   -0.1073315    0.3206620
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.0255514   -0.1334987    0.0823959
Birth       PROBIT           BELARUS                        Medium               High              -0.0452369   -0.1360035    0.0455296
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High              -0.0070177   -0.1912080    0.1771726
Birth       PROVIDE          BANGLADESH                     Medium               High              -0.0036712   -0.1941011    0.1867587
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High              -0.1173705   -0.2509438    0.0162028
Birth       SAS-CompFeed     INDIA                          Medium               High              -0.0476825   -0.2759272    0.1805623
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High               0.0248470   -0.0960986    0.1457926
Birth       ZVITAMBO         ZIMBABWE                       Medium               High               0.0007647   -0.0963776    0.0979070
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High              -0.1354630   -0.3690621    0.0981362
6 months    COHORTS          GUATEMALA                      Medium               High              -0.1167734   -0.3623844    0.1288377
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.0731727   -0.2169245    0.0705791
6 months    COHORTS          INDIA                          Medium               High              -0.0190152   -0.1742781    0.1362478
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High              -0.0121960   -0.1273756    0.1029837
6 months    COHORTS          PHILIPPINES                    Medium               High              -0.0352833   -0.1476797    0.0771132
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.0187701   -0.2544677    0.2169275
6 months    GMS-Nepal        NEPAL                          Medium               High              -0.0348260   -0.2826971    0.2130451
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.0230561   -0.0935400    0.0474278
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.0030133   -0.0683667    0.0623401
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High               0.0113845   -0.1492964    0.1720653
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.0246224   -0.1596601    0.1104152
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High               0.0892420   -0.0883115    0.2667955
6 months    LCNI-5           MALAWI                         Medium               High               0.0596502   -0.1241900    0.2434905
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.1966530   -0.5865108    0.1932048
6 months    MAL-ED           BANGLADESH                     Medium               High               0.0535702   -0.4358841    0.5430245
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High               0.0403916   -0.3487267    0.4295100
6 months    MAL-ED           INDIA                          Medium               High              -0.2842841   -0.7431995    0.1746313
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High              -0.3229621   -0.8024268    0.1565026
6 months    MAL-ED           NEPAL                          Medium               High               0.0849875   -0.3739784    0.5439534
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High               0.2050261   -0.1230632    0.5331154
6 months    MAL-ED           PERU                           Medium               High              -0.1275868   -0.4562093    0.2010356
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.4286866   -1.0293697    0.1719964
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.1979453   -0.7803872    0.3844967
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0544946   -0.2599868    0.3689761
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.6488358    0.1459560    1.1517155
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.0775285   -0.2777930    0.1227359
6 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.1095002   -0.3259198    0.1069194
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High              -0.0052981   -0.0817925    0.0711963
6 months    PROBIT           BELARUS                        Medium               High              -0.0223266   -0.0909984    0.0463452
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.1289627   -0.3446380    0.0867127
6 months    PROVIDE          BANGLADESH                     Medium               High              -0.0858024   -0.2972925    0.1256877
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.1366422   -0.2280756   -0.0452089
6 months    SAS-CompFeed     INDIA                          Medium               High              -0.0563283   -0.1457894    0.0331329
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High               0.0712713   -0.2212218    0.3637643
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.1514964   -0.4543210    0.1513282
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0444070   -0.2230714    0.1342574
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0530194   -0.2607005    0.1546618
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.0354619   -0.1777078    0.1067841
6 months    ZVITAMBO         ZIMBABWE                       Medium               High               0.0208379   -0.0935027    0.1351784
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High               0.2149422    0.0275732    0.4023111
24 months   COHORTS          GUATEMALA                      Medium               High               0.1142923   -0.0909427    0.3195273
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -0.3125088   -0.4371273   -0.1878904
24 months   COHORTS          INDIA                          Medium               High              -0.1163315   -0.2762415    0.0435785
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.0871512   -0.1879613    0.0136589
24 months   COHORTS          PHILIPPINES                    Medium               High              -0.0899337   -0.1886971    0.0088297
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High               0.1411270   -0.0893423    0.3715964
24 months   GMS-Nepal        NEPAL                          Medium               High              -0.0129737   -0.2743374    0.2483901
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High              -0.0176110   -0.1124235    0.0772014
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.0316610   -0.1285784    0.0652565
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.0138534   -0.1163451    0.0886382
24 months   JiVitA-4         BANGLADESH                     Medium               High               0.0019215   -0.0948309    0.0986739
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High               0.0069369   -0.1872587    0.2011324
24 months   LCNI-5           MALAWI                         Medium               High               0.0356296   -0.1713152    0.2425743
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.2437899   -0.6262174    0.1386376
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.0627332   -0.4715008    0.3460344
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High               0.0201998   -0.2843730    0.3247726
24 months   MAL-ED           INDIA                          Medium               High              -0.1203949   -0.4917568    0.2509670
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.4081629   -0.8065394   -0.0097864
24 months   MAL-ED           NEPAL                          Medium               High              -0.3162286   -0.8034815    0.1710243
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High               0.3455221    0.0656987    0.6253455
24 months   MAL-ED           PERU                           Medium               High               0.0145623   -0.3507203    0.3798448
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.2020747   -0.6992258    0.2950763
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.4488486   -0.9157162    0.0180190
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1183921   -0.4335731    0.1967888
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0367559   -0.4142513    0.4877632
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.2981812   -0.5124762   -0.0838862
24 months   NIH-Crypto       BANGLADESH                     Medium               High               0.1084093   -0.1298621    0.3466808
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.0371499   -0.2132176    0.1389178
24 months   PROBIT           BELARUS                        Medium               High              -0.1239151   -0.2681288    0.0202985
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.2546483   -0.4377936   -0.0715030
24 months   PROVIDE          BANGLADESH                     Medium               High              -0.0575768   -0.2666884    0.1515349
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.2077719   -0.7917392    0.3761954
24 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0389475   -0.5848211    0.5069260


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                 0.1060777   -0.1033340    0.3154893
Birth       COHORTS          INDIA                          High                 NA                 0.0265780   -0.0610177    0.1141736
Birth       COHORTS          PHILIPPINES                    High                 NA                 0.0334628   -0.0420982    0.1090239
Birth       GMS-Nepal        NEPAL                          High                 NA                 0.1382547   -0.0021181    0.2786275
Birth       JiVitA-3         BANGLADESH                     High                 NA                 0.0022610   -0.0534256    0.0579477
Birth       JiVitA-4         BANGLADESH                     High                 NA                 0.0620650   -0.0391781    0.1633082
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.2970707   -0.5584616   -0.0356798
Birth       MAL-ED           PERU                           High                 NA                -0.0403603   -0.1965780    0.1158573
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                 0.0250606   -0.4109032    0.4610244
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0095934   -0.1619187    0.1811055
Birth       NIH-Crypto       BANGLADESH                     High                 NA                 0.0908612   -0.0117127    0.1934352
Birth       PROBIT           BELARUS                        High                 NA                -0.0288453   -0.1077516    0.0500610
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.0152208   -0.1018596    0.1323012
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.0617256   -0.1896305    0.0661793
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                 0.0027613   -0.0879445    0.0934671
6 months    COHORTS          GUATEMALA                      High                 NA                -0.0724576   -0.2600423    0.1151270
6 months    COHORTS          INDIA                          High                 NA                -0.0310698   -0.1129531    0.0508135
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0040392   -0.0756572    0.0675788
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0201179   -0.1878123    0.1475765
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0134377   -0.0667573    0.0398819
6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0059764   -0.1082789    0.1202318
6 months    LCNI-5           MALAWI                         High                 NA                 0.0529598   -0.0561598    0.1620793
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.0250119   -0.2662954    0.2162717
6 months    MAL-ED           INDIA                          High                 NA                -0.0627696   -0.3057702    0.1802309
6 months    MAL-ED           NEPAL                          High                 NA                -0.0737743   -0.3011340    0.1535854
6 months    MAL-ED           PERU                           High                 NA                 0.0288419   -0.1151757    0.1728596
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.1987067   -0.5376798    0.1402664
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0729473   -0.0345796    0.1804743
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0766791   -0.1862452    0.0328871
6 months    PROBIT           BELARUS                        High                 NA                -0.0125588   -0.0728663    0.0477486
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0862014   -0.2073021    0.0348994
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0733844   -0.1220362   -0.0247327
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.0401108   -0.2369541    0.1567324
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0329426   -0.1870546    0.1211694
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0078438   -0.0991995    0.1148871
24 months   COHORTS          GUATEMALA                      High                 NA                 0.1867249    0.0304750    0.3429748
24 months   COHORTS          INDIA                          High                 NA                -0.1201117   -0.1925069   -0.0477164
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0314797   -0.0912776    0.0283182
24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0406149   -0.1269379    0.2081678
24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0260653   -0.1091244    0.0569937
24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0105267   -0.0662209    0.0872742
24 months   LCNI-5           MALAWI                         High                 NA                 0.0146521   -0.1055979    0.1349020
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0959669   -0.3218241    0.1298902
24 months   MAL-ED           INDIA                          High                 NA                -0.0479037   -0.2376148    0.1418074
24 months   MAL-ED           NEPAL                          High                 NA                -0.2385868   -0.4565321   -0.0206416
24 months   MAL-ED           PERU                           High                 NA                 0.1183753   -0.0244818    0.2612324
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.2185735   -0.4943482    0.0572011
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0208508   -0.1252855    0.0835839
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0193010   -0.1283138    0.0897118
24 months   PROBIT           BELARUS                        High                 NA                -0.0697592   -0.2016653    0.0621470
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0767801   -0.1890344    0.0354741
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0858960   -0.6156049    0.4438129
