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

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        enstunt    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0              74      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          1              12      86  whz              
Birth       CMIN             BANGLADESH                     0              17      19  whz              
Birth       CMIN             BANGLADESH                     1               2      19  whz              
Birth       COHORTS          GUATEMALA                      0             732     756  whz              
Birth       COHORTS          GUATEMALA                      1              24     756  whz              
Birth       COHORTS          INDIA                          0            5813    6193  whz              
Birth       COHORTS          INDIA                          1             380    6193  whz              
Birth       COHORTS          PHILIPPINES                    0            2813    2899  whz              
Birth       COHORTS          PHILIPPINES                    1              86    2899  whz              
Birth       CONTENT          PERU                           0               2       2  whz              
Birth       CONTENT          PERU                           1               0       2  whz              
Birth       EE               PAKISTAN                       0             137     177  whz              
Birth       EE               PAKISTAN                       1              40     177  whz              
Birth       GMS-Nepal        NEPAL                          0             570     641  whz              
Birth       GMS-Nepal        NEPAL                          1              71     641  whz              
Birth       IRC              INDIA                          0             318     343  whz              
Birth       IRC              INDIA                          1              25     343  whz              
Birth       JiVitA-3         BANGLADESH                     0           15027   18014  whz              
Birth       JiVitA-3         BANGLADESH                     1            2987   18014  whz              
Birth       JiVitA-4         BANGLADESH                     0            1963    2396  whz              
Birth       JiVitA-4         BANGLADESH                     1             433    2396  whz              
Birth       Keneba           GAMBIA                         0            1425    1466  whz              
Birth       Keneba           GAMBIA                         1              41    1466  whz              
Birth       MAL-ED           BANGLADESH                     0             187     215  whz              
Birth       MAL-ED           BANGLADESH                     1              28     215  whz              
Birth       MAL-ED           BRAZIL                         0              56      62  whz              
Birth       MAL-ED           BRAZIL                         1               6      62  whz              
Birth       MAL-ED           INDIA                          0              37      45  whz              
Birth       MAL-ED           INDIA                          1               8      45  whz              
Birth       MAL-ED           NEPAL                          0              25      26  whz              
Birth       MAL-ED           NEPAL                          1               1      26  whz              
Birth       MAL-ED           PERU                           0             207     228  whz              
Birth       MAL-ED           PERU                           1              21     228  whz              
Birth       MAL-ED           SOUTH AFRICA                   0             112     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   1               8     120  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             102     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              13     115  whz              
Birth       NIH-Birth        BANGLADESH                     0             506     575  whz              
Birth       NIH-Birth        BANGLADESH                     1              69     575  whz              
Birth       NIH-Crypto       BANGLADESH                     0             625     707  whz              
Birth       NIH-Crypto       BANGLADESH                     1              82     707  whz              
Birth       PROBIT           BELARUS                        0           13790   13817  whz              
Birth       PROBIT           BELARUS                        1              27   13817  whz              
Birth       PROVIDE          BANGLADESH                     0             491     532  whz              
Birth       PROVIDE          BANGLADESH                     1              41     532  whz              
Birth       ResPak           PAKISTAN                       0              28      38  whz              
Birth       ResPak           PAKISTAN                       1              10      38  whz              
Birth       SAS-CompFeed     INDIA                          0             901    1103  whz              
Birth       SAS-CompFeed     INDIA                          1             202    1103  whz              
Birth       ZVITAMBO         ZIMBABWE                       0           12227   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       1             690   12917  whz              
6 months    CMC-V-BCS-2002   INDIA                          0             292     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          1              76     368  whz              
6 months    CMIN             BANGLADESH                     0             151     243  whz              
6 months    CMIN             BANGLADESH                     1              92     243  whz              
6 months    COHORTS          GUATEMALA                      0             809     963  whz              
6 months    COHORTS          GUATEMALA                      1             154     963  whz              
6 months    COHORTS          INDIA                          0            6034    6850  whz              
6 months    COHORTS          INDIA                          1             816    6850  whz              
6 months    COHORTS          PHILIPPINES                    0            2549    2706  whz              
6 months    COHORTS          PHILIPPINES                    1             157    2706  whz              
6 months    CONTENT          PERU                           0             195     215  whz              
6 months    CONTENT          PERU                           1              20     215  whz              
6 months    EE               PAKISTAN                       0             209     375  whz              
6 months    EE               PAKISTAN                       1             166     375  whz              
6 months    GMS-Nepal        NEPAL                          0             473     564  whz              
6 months    GMS-Nepal        NEPAL                          1              91     564  whz              
6 months    Guatemala BSC    GUATEMALA                      0             228     299  whz              
6 months    Guatemala BSC    GUATEMALA                      1              71     299  whz              
6 months    IRC              INDIA                          0             356     408  whz              
6 months    IRC              INDIA                          1              52     408  whz              
6 months    JiVitA-3         BANGLADESH                     0           11673   16784  whz              
6 months    JiVitA-3         BANGLADESH                     1            5111   16784  whz              
6 months    JiVitA-4         BANGLADESH                     0            3473    4833  whz              
6 months    JiVitA-4         BANGLADESH                     1            1360    4833  whz              
6 months    Keneba           GAMBIA                         0            1893    2089  whz              
6 months    Keneba           GAMBIA                         1             196    2089  whz              
6 months    LCNI-5           MALAWI                         0             530     839  whz              
6 months    LCNI-5           MALAWI                         1             309     839  whz              
6 months    MAL-ED           BANGLADESH                     0             202     241  whz              
6 months    MAL-ED           BANGLADESH                     1              39     241  whz              
6 months    MAL-ED           BRAZIL                         0             184     209  whz              
6 months    MAL-ED           BRAZIL                         1              25     209  whz              
6 months    MAL-ED           INDIA                          0             198     236  whz              
6 months    MAL-ED           INDIA                          1              38     236  whz              
6 months    MAL-ED           NEPAL                          0             208     236  whz              
6 months    MAL-ED           NEPAL                          1              28     236  whz              
6 months    MAL-ED           PERU                           0             239     273  whz              
6 months    MAL-ED           PERU                           1              34     273  whz              
6 months    MAL-ED           SOUTH AFRICA                   0             227     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   1              27     254  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             208     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              39     247  whz              
6 months    NIH-Birth        BANGLADESH                     0             452     537  whz              
6 months    NIH-Birth        BANGLADESH                     1              85     537  whz              
6 months    NIH-Crypto       BANGLADESH                     0             613     715  whz              
6 months    NIH-Crypto       BANGLADESH                     1             102     715  whz              
6 months    PROBIT           BELARUS                        0           15641   15757  whz              
6 months    PROBIT           BELARUS                        1             116   15757  whz              
6 months    PROVIDE          BANGLADESH                     0             542     603  whz              
6 months    PROVIDE          BANGLADESH                     1              61     603  whz              
6 months    ResPak           PAKISTAN                       0             173     239  whz              
6 months    ResPak           PAKISTAN                       1              66     239  whz              
6 months    SAS-CompFeed     INDIA                          0             969    1334  whz              
6 months    SAS-CompFeed     INDIA                          1             365    1334  whz              
6 months    SAS-FoodSuppl    INDIA                          0             232     380  whz              
6 months    SAS-FoodSuppl    INDIA                          1             148     380  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2028  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             138    2028  whz              
6 months    ZVITAMBO         ZIMBABWE                       0            7632    8505  whz              
6 months    ZVITAMBO         ZIMBABWE                       1             873    8505  whz              
24 months   CMC-V-BCS-2002   INDIA                          0             295     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          1              77     372  whz              
24 months   CMIN             BANGLADESH                     0             153     243  whz              
24 months   CMIN             BANGLADESH                     1              90     243  whz              
24 months   COHORTS          GUATEMALA                      0             743    1082  whz              
24 months   COHORTS          GUATEMALA                      1             339    1082  whz              
24 months   COHORTS          INDIA                          0            4654    5291  whz              
24 months   COHORTS          INDIA                          1             637    5291  whz              
24 months   COHORTS          PHILIPPINES                    0            2311    2449  whz              
24 months   COHORTS          PHILIPPINES                    1             138    2449  whz              
24 months   CONTENT          PERU                           0             147     164  whz              
24 months   CONTENT          PERU                           1              17     164  whz              
24 months   EE               PAKISTAN                       0             100     168  whz              
24 months   EE               PAKISTAN                       1              68     168  whz              
24 months   GMS-Nepal        NEPAL                          0             405     487  whz              
24 months   GMS-Nepal        NEPAL                          1              82     487  whz              
24 months   IRC              INDIA                          0             358     409  whz              
24 months   IRC              INDIA                          1              51     409  whz              
24 months   JiVitA-3         BANGLADESH                     0            5914    8603  whz              
24 months   JiVitA-3         BANGLADESH                     1            2689    8603  whz              
24 months   JiVitA-4         BANGLADESH                     0            3380    4735  whz              
24 months   JiVitA-4         BANGLADESH                     1            1355    4735  whz              
24 months   Keneba           GAMBIA                         0            1550    1726  whz              
24 months   Keneba           GAMBIA                         1             176    1726  whz              
24 months   LCNI-5           MALAWI                         0             365     563  whz              
24 months   LCNI-5           MALAWI                         1             198     563  whz              
24 months   MAL-ED           BANGLADESH                     0             179     212  whz              
24 months   MAL-ED           BANGLADESH                     1              33     212  whz              
24 months   MAL-ED           BRAZIL                         0             150     169  whz              
24 months   MAL-ED           BRAZIL                         1              19     169  whz              
24 months   MAL-ED           INDIA                          0             191     227  whz              
24 months   MAL-ED           INDIA                          1              36     227  whz              
24 months   MAL-ED           NEPAL                          0             201     228  whz              
24 months   MAL-ED           NEPAL                          1              27     228  whz              
24 months   MAL-ED           PERU                           0             174     201  whz              
24 months   MAL-ED           PERU                           1              27     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   0             214     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   1              24     238  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             181     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              33     214  whz              
24 months   NIH-Birth        BANGLADESH                     0             354     428  whz              
24 months   NIH-Birth        BANGLADESH                     1              74     428  whz              
24 months   NIH-Crypto       BANGLADESH                     0             444     514  whz              
24 months   NIH-Crypto       BANGLADESH                     1              70     514  whz              
24 months   PROBIT           BELARUS                        0            3957    3970  whz              
24 months   PROBIT           BELARUS                        1              13    3970  whz              
24 months   PROVIDE          BANGLADESH                     0             519     579  whz              
24 months   PROVIDE          BANGLADESH                     1              60     579  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       0             331     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       1             102     433  whz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
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
![](/tmp/389db353-f6c1-4b20-b1f1-087bdb885da9/e2d1d870-8e5c-42af-af68-e19fa0c18d1b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/389db353-f6c1-4b20-b1f1-087bdb885da9/e2d1d870-8e5c-42af-af68-e19fa0c18d1b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/389db353-f6c1-4b20-b1f1-087bdb885da9/e2d1d870-8e5c-42af-af68-e19fa0c18d1b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.4543257   -0.7459456   -0.1627057
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                 0.4906214   -0.6926321    1.6738748
Birth       COHORTS          GUATEMALA                      0                    NA                -1.0861035   -1.1884187   -0.9837883
Birth       COHORTS          GUATEMALA                      1                    NA                -0.3353873   -0.9287369    0.2579623
Birth       COHORTS          INDIA                          0                    NA                -1.0026645   -1.0331145   -0.9722145
Birth       COHORTS          INDIA                          1                    NA                -0.7052394   -0.8400011   -0.5704777
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.7568980   -0.8036862   -0.7101097
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.2912918   -0.5988495    0.0162659
Birth       EE               PAKISTAN                       0                    NA                -0.3944901   -0.6030920   -0.1858882
Birth       EE               PAKISTAN                       1                    NA                -0.0966958   -0.5237753    0.3303836
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.1428471   -1.2350748   -1.0506193
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.9721070   -1.2606965   -0.6835174
Birth       IRC              INDIA                          0                    NA                -1.1119875   -1.3033603   -0.9206147
Birth       IRC              INDIA                          1                    NA                 0.0763980   -0.5622959    0.7150919
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.7951703   -0.8153425   -0.7749981
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.6954030   -0.7363088   -0.6544971
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.6843782   -0.7419955   -0.6267609
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.7022734   -0.8248003   -0.5797465
Birth       Keneba           GAMBIA                         0                    NA                -1.2667106   -1.3286924   -1.2047287
Birth       Keneba           GAMBIA                         1                    NA                -0.0896866   -0.5907958    0.4114225
Birth       MAL-ED           BANGLADESH                     0                    NA                -1.0055144   -1.1573335   -0.8536954
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.6263613   -1.0783862   -0.1743364
Birth       MAL-ED           BRAZIL                         0                    NA                 0.3380357    0.0083857    0.6676857
Birth       MAL-ED           BRAZIL                         1                    NA                 1.0083333    0.1448999    1.8717667
Birth       MAL-ED           INDIA                          0                    NA                -0.9356757   -1.2327587   -0.6385926
Birth       MAL-ED           INDIA                          1                    NA                -0.9175000   -1.6199423   -0.2150577
Birth       MAL-ED           PERU                           0                    NA                -0.0155086   -0.1412813    0.1102640
Birth       MAL-ED           PERU                           1                    NA                -0.3241637   -0.7313257    0.0829984
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.2412500   -0.4566344   -0.0258656
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                 0.4887500   -0.4348184    1.4123184
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7220973    0.5350309    0.9091637
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.9919739   -0.1981143    2.1820621
Birth       NIH-Birth        BANGLADESH                     0                    NA                -1.3477406   -1.4477529   -1.2477284
Birth       NIH-Birth        BANGLADESH                     1                    NA                -1.4041004   -1.6922836   -1.1159172
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -1.2849958   -1.3743241   -1.1956674
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.8734106   -1.1163611   -0.6304601
Birth       PROBIT           BELARUS                        0                    NA                -1.1526413   -1.3672161   -0.9380664
Birth       PROBIT           BELARUS                        1                    NA                 0.5999453    0.5743424    0.6255482
Birth       PROVIDE          BANGLADESH                     0                    NA                -1.2764546   -1.3571443   -1.1957648
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.5702834   -1.8003270   -1.3402399
Birth       ResPak           PAKISTAN                       0                    NA                -0.3655642   -0.8654504    0.1343219
Birth       ResPak           PAKISTAN                       1                    NA                -0.3729213   -1.3865004    0.6406579
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.6933759   -0.8425503   -0.5442015
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.5688076   -0.9175234   -0.2200918
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.5536226   -0.5797345   -0.5275108
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.1883633    0.0478181    0.3289085
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.4620326   -0.6329381   -0.2911270
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.6368759   -1.0004458   -0.2733059
6 months    CMIN             BANGLADESH                     0                    NA                -0.5665150   -0.7423046   -0.3907253
6 months    CMIN             BANGLADESH                     1                    NA                -0.5958765   -0.8486291   -0.3431239
6 months    COHORTS          GUATEMALA                      0                    NA                 0.2336704    0.1565124    0.3108284
6 months    COHORTS          GUATEMALA                      1                    NA                -0.0145936   -0.2019352    0.1727480
6 months    COHORTS          INDIA                          0                    NA                -0.6498022   -0.6786644   -0.6209401
6 months    COHORTS          INDIA                          1                    NA                -1.0032276   -1.0905436   -0.9159117
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.2829967   -0.3252551   -0.2407382
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.4885953   -0.6819238   -0.2952668
6 months    CONTENT          PERU                           0                    NA                 1.0815321    0.9541492    1.2089151
6 months    CONTENT          PERU                           1                    NA                 0.9139703    0.6709266    1.1570140
6 months    EE               PAKISTAN                       0                    NA                -0.7503522   -0.8971663   -0.6035381
6 months    EE               PAKISTAN                       1                    NA                -0.7983208   -0.9787792   -0.6178623
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.6098764   -0.7037138   -0.5160390
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.5682399   -0.7871673   -0.3493126
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0381009   -0.1644160    0.0882143
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.2104080   -0.4532644    0.0324483
6 months    IRC              INDIA                          0                    NA                -0.6351834   -0.7736302   -0.4967365
6 months    IRC              INDIA                          1                    NA                -0.2016887   -0.7097244    0.3063471
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.5555872   -0.5782280   -0.5329463
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.6877266   -0.7207182   -0.6547350
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.3528357   -0.3962984   -0.3093729
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.4890557   -0.5604201   -0.4176913
6 months    Keneba           GAMBIA                         0                    NA                -0.1745858   -0.2277427   -0.1214289
6 months    Keneba           GAMBIA                         1                    NA                -0.2929717   -0.4630291   -0.1229144
6 months    LCNI-5           MALAWI                         0                    NA                 0.5257578    0.4387085    0.6128071
6 months    LCNI-5           MALAWI                         1                    NA                 0.3219206    0.1997300    0.4441111
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.1180246   -0.2622215    0.0261724
6 months    MAL-ED           BANGLADESH                     1                    NA                -0.2821570   -0.5663694    0.0020553
6 months    MAL-ED           BRAZIL                         0                    NA                 1.0555880    0.8817527    1.2294233
6 months    MAL-ED           BRAZIL                         1                    NA                 0.3522614   -0.0744252    0.7789479
6 months    MAL-ED           INDIA                          0                    NA                -0.6792979   -0.8182302   -0.5403656
6 months    MAL-ED           INDIA                          1                    NA                -0.8544089   -1.1584342   -0.5503837
6 months    MAL-ED           NEPAL                          0                    NA                 0.1408813    0.0010523    0.2807103
6 months    MAL-ED           NEPAL                          1                    NA                -0.2108107   -0.6025216    0.1809002
6 months    MAL-ED           PERU                           0                    NA                 1.0738943    0.9462702    1.2015184
6 months    MAL-ED           PERU                           1                    NA                 0.9823376    0.5845754    1.3800999
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.4911661    0.3345774    0.6477547
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                 0.9740335    0.4361835    1.5118836
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5333508    0.3902627    0.6764389
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5580769    0.1744122    0.9417415
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.4343064   -0.5306716   -0.3379412
6 months    NIH-Birth        BANGLADESH                     1                    NA                -0.5366850   -0.7911174   -0.2822527
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0516679   -0.0327154    0.1360512
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.1152907   -0.3525078    0.1219264
6 months    PROBIT           BELARUS                        0                    NA                 0.5746718    0.5138632    0.6354803
6 months    PROBIT           BELARUS                        1                    NA                 0.4853082    0.3921931    0.5784233
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.1733749   -0.2596505   -0.0870993
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.4459724   -0.7194955   -0.1724492
6 months    ResPak           PAKISTAN                       0                    NA                 0.0061314   -0.1988959    0.2111587
6 months    ResPak           PAKISTAN                       1                    NA                -0.6204595   -1.0055530   -0.2353659
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.6083928   -0.7449001   -0.4718855
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.8046436   -1.0131373   -0.5961498
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.9407837   -1.0881951   -0.7933724
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.1067393   -1.2944859   -0.9189926
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0831646    0.0287075    0.1376216
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0418334   -0.1705901    0.2542569
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.3160205    0.2890064    0.3430346
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.2511777    0.1673428    0.3350127
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.4446232   -0.5579294   -0.3313171
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.9916296   -1.2021184   -0.7811408
24 months   CMIN             BANGLADESH                     0                    NA                -0.7591375   -0.8908093   -0.6274658
24 months   CMIN             BANGLADESH                     1                    NA                -1.0137342   -1.2073116   -0.8201568
24 months   COHORTS          GUATEMALA                      0                    NA                -0.1892417   -0.2525965   -0.1258870
24 months   COHORTS          GUATEMALA                      1                    NA                -0.4856679   -0.5845513   -0.3867844
24 months   COHORTS          INDIA                          0                    NA                -0.5576191   -0.5873594   -0.5278788
24 months   COHORTS          INDIA                          1                    NA                -0.9799542   -1.0578771   -0.9020312
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.5922740   -0.6297747   -0.5547734
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.9588280   -1.1352346   -0.7824214
24 months   CONTENT          PERU                           0                    NA                 0.6341313    0.4922892    0.7759733
24 months   CONTENT          PERU                           1                    NA                 0.2807316   -0.1930423    0.7545055
24 months   EE               PAKISTAN                       0                    NA                -0.8740021   -1.0542273   -0.6937769
24 months   EE               PAKISTAN                       1                    NA                -1.1958681   -1.4416294   -0.9501068
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.1288620   -1.2278985   -1.0298254
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1383795   -1.3499371   -0.9268219
24 months   IRC              INDIA                          0                    NA                -0.7054532   -0.8030768   -0.6078296
24 months   IRC              INDIA                          1                    NA                -1.0371689   -1.2876918   -0.7866460
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.1978139   -1.2245565   -1.1710713
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.5307896   -1.5719311   -1.4896481
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.1347825   -1.1715791   -1.0979859
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.4393643   -1.4988471   -1.3798815
24 months   Keneba           GAMBIA                         0                    NA                -0.7862926   -0.8356773   -0.7369079
24 months   Keneba           GAMBIA                         1                    NA                -1.0229544   -1.1761574   -0.8697515
24 months   LCNI-5           MALAWI                         0                    NA                 0.0883414   -0.0111831    0.1878660
24 months   LCNI-5           MALAWI                         1                    NA                -0.3042321   -0.4430722   -0.1653920
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.7653455   -0.9032733   -0.6274178
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.1209954   -1.3819650   -0.8600257
24 months   MAL-ED           BRAZIL                         0                    NA                 0.4385615    0.2239618    0.6531612
24 months   MAL-ED           BRAZIL                         1                    NA                 0.7242240   -0.0102636    1.4587116
24 months   MAL-ED           INDIA                          0                    NA                -0.9221902   -1.0495985   -0.7947818
24 months   MAL-ED           INDIA                          1                    NA                -1.1088013   -1.3810282   -0.8365745
24 months   MAL-ED           NEPAL                          0                    NA                -0.3516206   -0.4674681   -0.2357732
24 months   MAL-ED           NEPAL                          1                    NA                -0.7392837   -1.1970831   -0.2814842
24 months   MAL-ED           PERU                           0                    NA                 0.1706507    0.0470383    0.2942632
24 months   MAL-ED           PERU                           1                    NA                -0.3421444   -0.8224230    0.1381342
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.4033134    0.2768392    0.5297877
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.3704147   -0.0360414    0.7768707
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0905484   -0.0427160    0.2238128
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0430066   -0.3738411    0.2878278
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.8730574   -0.9785966   -0.7675183
24 months   NIH-Birth        BANGLADESH                     1                    NA                -1.0918053   -1.3469770   -0.8366337
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.5447668   -0.6442707   -0.4452628
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.0211967   -1.3000681   -0.7423253
24 months   PROBIT           BELARUS                        0                    NA                 0.6982932    0.5836034    0.8129830
24 months   PROBIT           BELARUS                        1                    NA                 0.7724682    0.5077218    1.0372145
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.8628029   -0.9502997   -0.7753060
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.1641754   -1.4180056   -0.9103453
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.1764322   -1.2894561   -1.0634084
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.2012862   -1.4136588   -0.9889137


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
Birth       Keneba           GAMBIA                         NA                   NA                -1.2349454   -1.2972413   -1.1726496
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       MAL-ED           INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED           PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        NA                   NA                -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ResPak           PAKISTAN                       NA                   NA                -0.3663158   -0.7677415    0.0351099
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    CMIN             BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    COHORTS          INDIA                          NA                   NA                -0.6908803   -0.7184601   -0.6633005
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    CONTENT          PERU                           NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    EE               PAKISTAN                       NA                   NA                -0.7747022   -0.8887874   -0.6606170
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
6 months    Keneba           GAMBIA                         NA                   NA                -0.1846038   -0.2354782   -0.1337293
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4499404    0.3788501    0.5210308
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          NA                   NA                -0.7079979   -0.8344175   -0.5815783
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ResPak           PAKISTAN                       NA                   NA                -0.1641841   -0.3464247    0.0180565
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0809332    0.0282644    0.1336020
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3105514    0.2848767    0.3362262
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   CMIN             BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2815804   -0.3354498   -0.2277110
24 months   COHORTS          INDIA                          NA                   NA                -0.6073238   -0.6354743   -0.5791732
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   CONTENT          PERU                           NA                   NA                 0.5902439    0.4560143    0.7244735
24 months   EE               PAKISTAN                       NA                   NA                -1.0120238   -1.1588493   -0.8651984
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2978031   -1.3210763   -1.2745298
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543
24 months   Keneba           GAMBIA                         NA                   NA                -0.8099290   -0.8570608   -0.7627972
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0477709   -0.1296526    0.0341109
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1825404   -1.2814625   -1.0836183


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    0                  0.9449470   -0.2751833    2.1650774
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                  0.7507162    0.1482980    1.3531344
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                  0.2974251    0.1593938    0.4354564
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                  0.4656062    0.1548497    0.7763626
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.2977943   -0.1787496    0.7743381
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.1707401   -0.1320751    0.4735554
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  1.1883854    0.5209172    1.8558537
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                  0.0997674    0.0567726    0.1427622
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -0.0178952   -0.1524452    0.1166547
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  1.1770239    0.6718490    1.6821989
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.3791531   -0.0988303    0.8571366
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                  0.6702976   -0.2539244    1.5945196
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                  0.0181757   -0.7445061    0.7808575
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                 -0.3086551   -0.7323862    0.1150761
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                  0.7300000   -0.2183507    1.6783507
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2698766   -0.9367036    1.4764568
Birth       NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     1                    0                 -0.0563598   -0.3611147    0.2483951
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                  0.4115852    0.1533308    0.6698395
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                  1.7525865    1.5336288    1.9715443
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.2938289   -0.5375679   -0.0500899
Birth       ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       1                    0                 -0.0073571   -1.1554711    1.1407570
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                  0.1245683   -0.1240481    0.3731847
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                  0.7419859    0.5990324    0.8849394
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.1748433   -0.5768217    0.2271351
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.0293616   -0.3375415    0.2788183
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                 -0.2482640   -0.4506051   -0.0459229
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.3534254   -0.4453281   -0.2615227
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                 -0.2055986   -0.4036303   -0.0075669
6 months    CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    0                 -0.1675618   -0.4425811    0.1074574
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.0479685   -0.2808765    0.1849394
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                  0.0416365   -0.1966050    0.2798779
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.1723072   -0.4479769    0.1033626
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                  0.4334947   -0.0926762    0.9596656
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.1321394   -0.1697034   -0.0945754
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.1362201   -0.2187021   -0.0537381
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.1183859   -0.2965306    0.0597588
6 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         1                    0                 -0.2038372   -0.3539661   -0.0537083
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -0.1641325   -0.4845795    0.1563145
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.7033267   -1.1598527   -0.2468006
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                 -0.1751111   -0.5101110    0.1598889
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.3516920   -0.7681709    0.0647869
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -0.0915567   -0.5099906    0.3268772
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                  0.4828675   -0.0772321    1.0429671
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0247260   -0.3852640    0.4347160
6 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     1                    0                 -0.1023786   -0.3750559    0.1702986
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1669586   -0.4194163    0.0854990
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0893636   -0.1830710    0.0043438
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.2725974   -0.5591620    0.0139671
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                 -0.6265909   -1.0646983   -0.1884834
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.1962508   -0.3567204   -0.0357812
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.1659555   -0.4050218    0.0731108
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0413311   -0.2606901    0.1780278
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.0648428   -0.1529141    0.0232285
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.5470064   -0.7864014   -0.3076114
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.2545967   -0.4892870   -0.0199063
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.2964261   -0.4139640   -0.1788882
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.4223351   -0.5054048   -0.3392653
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                 -0.3665540   -0.5468813   -0.1862266
24 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    0                 -0.3533996   -0.8486291    0.1418298
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.3218660   -0.6275905   -0.0161416
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0095175   -0.2436388    0.2246038
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.3317157   -0.6007861   -0.0626453
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.3329757   -0.3800660   -0.2858854
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.3045818   -0.3734449   -0.2357187
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.2366618   -0.3974870   -0.0758366
24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         1                    0                 -0.3925736   -0.5631132   -0.2220339
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 -0.3556498   -0.6518395   -0.0594602
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                  0.2856625   -0.4764884    1.0478134
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                 -0.1866112   -0.4874852    0.1142629
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                 -0.3876630   -0.8605528    0.0852268
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                 -0.5127951   -1.0087464   -0.0168439
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0328987   -0.4584459    0.3926484
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1335550   -0.4891350    0.2220249
24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     1                    0                 -0.2187479   -0.4950163    0.0575205
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.4764299   -0.7717644   -0.1810954
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                  0.0741750   -0.1865342    0.3348842
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.3013726   -0.5700182   -0.0327269
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0248540   -0.2656065    0.2158985


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.0104999   -0.1964255    0.1754257
Birth       COHORTS          GUATEMALA                      0                    NA                 0.0239606    0.0035779    0.0443434
Birth       COHORTS          INDIA                          0                    NA                 0.0179188    0.0093596    0.0264780
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0141729    0.0048961    0.0234496
Birth       EE               PAKISTAN                       0                    NA                 0.0611850   -0.0475600    0.1699300
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0264040   -0.0066838    0.0594919
Birth       IRC              INDIA                          0                    NA                 0.1014044    0.0398303    0.1629784
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.0173431    0.0102702    0.0244160
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.0042487   -0.0284464    0.0199490
Birth       Keneba           GAMBIA                         0                    NA                 0.0317651    0.0156037    0.0479266
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0636540   -0.0004925    0.1278004
Birth       MAL-ED           BRAZIL                         0                    NA                 0.0648675   -0.0374695    0.1672045
Birth       MAL-ED           INDIA                          0                    NA                 0.0032312   -0.1323722    0.1388347
Birth       MAL-ED           PERU                           0                    NA                -0.0365089   -0.0795442    0.0065264
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0486667   -0.0225203    0.1198536
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0403375   -0.0576415    0.1383165
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.0021811   -0.0387230    0.0343608
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0408444    0.0105337    0.0711551
Birth       PROBIT           BELARUS                        0                    NA                 0.0034631   -0.0017105    0.0086366
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0220041   -0.0418274   -0.0021807
Birth       ResPak           PAKISTAN                       0                    NA                -0.0007516   -0.3009003    0.2993971
Birth       SAS-CompFeed     INDIA                          0                    NA                 0.0233306   -0.0235473    0.0702084
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.0381330    0.0303841    0.0458818
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0406441   -0.1197737    0.0384855
6 months    CMIN             BANGLADESH                     0                    NA                -0.0115303   -0.1282735    0.1052129
6 months    COHORTS          GUATEMALA                      0                    NA                -0.0395894   -0.0720718   -0.0071070
6 months    COHORTS          INDIA                          0                    NA                -0.0410781   -0.0522373   -0.0299188
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0108466   -0.0225553    0.0008620
6 months    CONTENT          PERU                           0                    NA                -0.0171042   -0.0427489    0.0085405
6 months    EE               PAKISTAN                       0                    NA                -0.0243500   -0.1274956    0.0787956
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0060348   -0.0320108    0.0440804
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0459125   -0.1109906    0.0191655
6 months    IRC              INDIA                          0                    NA                 0.0362536   -0.0277504    0.1002576
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0379290   -0.0493182   -0.0265397
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0369698   -0.0600255   -0.0139142
6 months    Keneba           GAMBIA                         0                    NA                -0.0100179   -0.0272134    0.0071775
6 months    LCNI-5           MALAWI                         0                    NA                -0.0758174   -0.1321529   -0.0194818
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.0196518   -0.0703091    0.0310055
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0835107   -0.1437080   -0.0233134
6 months    MAL-ED           INDIA                          0                    NA                -0.0287000   -0.0838752    0.0264752
6 months    MAL-ED           NEPAL                          0                    NA                -0.0304506   -0.0788879    0.0179868
6 months    MAL-ED           PERU                           0                    NA                -0.0210128   -0.0734561    0.0314305
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0510124   -0.0110491    0.1130739
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0028705   -0.0570970    0.0628380
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.0130974   -0.0571054    0.0309106
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0219057   -0.0571481    0.0133367
6 months    PROBIT           BELARUS                        0                    NA                -0.0005619   -0.0028704    0.0017467
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0257157   -0.0555611    0.0041296
6 months    ResPak           PAKISTAN                       0                    NA                -0.1703155   -0.2950290   -0.0456020
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.0573156   -0.1013891   -0.0132420
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.0713742   -0.1647526    0.0220043
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022314   -0.0168358    0.0123731
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0054691   -0.0144348    0.0034966
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.1125273   -0.1659225   -0.0591321
24 months   CMIN             BANGLADESH                     0                    NA                -0.0944016   -0.1822642   -0.0065389
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0923387   -0.1300581   -0.0546192
24 months   COHORTS          INDIA                          0                    NA                -0.0497047   -0.0603044   -0.0391049
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0176851   -0.0279711   -0.0073991
24 months   CONTENT          PERU                           0                    NA                -0.0438874   -0.0902186    0.0024439
24 months   EE               PAKISTAN                       0                    NA                -0.1380217   -0.2643999   -0.0116436
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0074488   -0.0457343    0.0308367
24 months   IRC              INDIA                          0                    NA                -0.0403618   -0.0747406   -0.0059830
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0999892   -0.1149958   -0.0849825
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0883262   -0.1086997   -0.0679528
24 months   Keneba           GAMBIA                         0                    NA                -0.0236364   -0.0400431   -0.0072297
24 months   LCNI-5           MALAWI                         0                    NA                -0.1361123   -0.1980376   -0.0741870
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0539469   -0.1025900   -0.0053038
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0240618   -0.0535514    0.1016749
24 months   MAL-ED           INDIA                          0                    NA                -0.0294618   -0.0778676    0.0189439
24 months   MAL-ED           NEPAL                          0                    NA                -0.0232916   -0.0761812    0.0295979
24 months   MAL-ED           PERU                           0                    NA                -0.0594526   -0.1261457    0.0072406
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0057167   -0.0397888    0.0512223
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0357509   -0.0954708    0.0239690
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0385216   -0.0863971    0.0093539
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0655834   -0.1071709   -0.0239960
24 months   PROBIT           BELARUS                        0                    NA                -0.0001526   -0.0064958    0.0061907
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0300642   -0.0575563   -0.0025720
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0061082   -0.0619489    0.0497325
