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
![](/tmp/b1dd110c-d06c-4da1-a734-bce0c665be91/ebf46b92-26e9-4d1b-9ec5-7d609178f643/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b1dd110c-d06c-4da1-a734-bce0c665be91/ebf46b92-26e9-4d1b-9ec5-7d609178f643/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b1dd110c-d06c-4da1-a734-bce0c665be91/ebf46b92-26e9-4d1b-9ec5-7d609178f643/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.4807760   -0.7689272   -0.1926247
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                 0.0997982   -1.3209838    1.5205802
Birth       COHORTS          GUATEMALA                      0                    NA                -1.0864216   -1.1887339   -0.9841093
Birth       COHORTS          GUATEMALA                      1                    NA                -0.1521160   -0.8205563    0.5163243
Birth       COHORTS          INDIA                          0                    NA                -1.0026554   -1.0331110   -0.9721998
Birth       COHORTS          INDIA                          1                    NA                -0.6985321   -0.8340068   -0.5630573
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.7565916   -0.8033979   -0.7097854
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.2818920   -0.5891661    0.0253820
Birth       EE               PAKISTAN                       0                    NA                -0.3882682   -0.5965908   -0.1799455
Birth       EE               PAKISTAN                       1                    NA                -0.0747064   -0.5035287    0.3541159
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.1446227   -1.2368883   -1.0523571
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.9489854   -1.2441618   -0.6538090
Birth       IRC              INDIA                          0                    NA                -1.1125959   -1.3038689   -0.9213229
Birth       IRC              INDIA                          1                    NA                 0.0330528   -0.5972412    0.6633468
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.7947302   -0.8149386   -0.7745217
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.6960387   -0.7369738   -0.6551035
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.6837167   -0.7413887   -0.6260447
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.6958451   -0.8188830   -0.5728072
Birth       Keneba           GAMBIA                         0                    NA                -1.2663165   -1.3282906   -1.2043424
Birth       Keneba           GAMBIA                         1                    NA                -0.0903881   -0.5684475    0.3876712
Birth       MAL-ED           BANGLADESH                     0                    NA                -1.0055929   -1.1575660   -0.8536197
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.5785448   -1.0184165   -0.1386731
Birth       MAL-ED           BRAZIL                         0                    NA                 0.3380357    0.0083857    0.6676857
Birth       MAL-ED           BRAZIL                         1                    NA                 1.0083333    0.1448999    1.8717667
Birth       MAL-ED           INDIA                          0                    NA                -0.9356757   -1.2327587   -0.6385926
Birth       MAL-ED           INDIA                          1                    NA                -0.9175000   -1.6199423   -0.2150577
Birth       MAL-ED           PERU                           0                    NA                -0.0146032   -0.1402350    0.1110286
Birth       MAL-ED           PERU                           1                    NA                -0.2655685   -0.6981437    0.1670068
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.2412500   -0.4566344   -0.0258656
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                 0.4887500   -0.4348184    1.4123184
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7227399    0.5358922    0.9095876
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.0122890   -0.3613143    2.3858923
Birth       NIH-Birth        BANGLADESH                     0                    NA                -1.3470161   -1.4470295   -1.2470026
Birth       NIH-Birth        BANGLADESH                     1                    NA                -1.3719583   -1.6610454   -1.0828712
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -1.2872374   -1.3765767   -1.1978981
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9190845   -1.1572279   -0.6809412
Birth       PROBIT           BELARUS                        0                    NA                -1.1526402   -1.3672835   -0.9379969
Birth       PROBIT           BELARUS                        1                    NA                 0.6102753    0.5835737    0.6369770
Birth       PROVIDE          BANGLADESH                     0                    NA                -1.2776803   -1.3583302   -1.1970305
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.5327136   -1.7802153   -1.2852120
Birth       ResPak           PAKISTAN                       0                    NA                -0.3633458   -0.8637501    0.1370585
Birth       ResPak           PAKISTAN                       1                    NA                -0.3770656   -1.3991272    0.6449960
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.6933759   -0.8425503   -0.5442015
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.5688076   -0.9175234   -0.2200918
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.5536912   -0.5798076   -0.5275749
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.1875369    0.0484326    0.3266412
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.4707561   -0.6421444   -0.2993678
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.6444786   -1.0076423   -0.2813149
6 months    CMIN             BANGLADESH                     0                    NA                -0.5678566   -0.7435397   -0.3921734
6 months    CMIN             BANGLADESH                     1                    NA                -0.5939722   -0.8469210   -0.3410233
6 months    COHORTS          GUATEMALA                      0                    NA                 0.2363013    0.1591655    0.3134370
6 months    COHORTS          GUATEMALA                      1                    NA                -0.0220663   -0.2038649    0.1597323
6 months    COHORTS          INDIA                          0                    NA                -0.6502192   -0.6790905   -0.6213479
6 months    COHORTS          INDIA                          1                    NA                -0.9989614   -1.0864496   -0.9114732
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.2829117   -0.3251675   -0.2406558
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.4728421   -0.6583389   -0.2873453
6 months    CONTENT          PERU                           0                    NA                 1.0828694    0.9556083    1.2101305
6 months    CONTENT          PERU                           1                    NA                 0.9992906    0.7654014    1.2331799
6 months    EE               PAKISTAN                       0                    NA                -0.7472180   -0.8943085   -0.6001276
6 months    EE               PAKISTAN                       1                    NA                -0.8041020   -0.9862675   -0.6219365
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.6092350   -0.7030995   -0.5153705
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.5790035   -0.7972514   -0.3607556
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0473191   -0.1727426    0.0781045
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.2088660   -0.4374557    0.0197236
6 months    IRC              INDIA                          0                    NA                -0.6361465   -0.7748726   -0.4974205
6 months    IRC              INDIA                          1                    NA                -0.3560379   -0.8543451    0.1422693
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.5554642   -0.5780187   -0.5329097
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.6871093   -0.7204444   -0.6537741
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.3526090   -0.3962333   -0.3089846
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.4896819   -0.5612504   -0.4181133
6 months    Keneba           GAMBIA                         0                    NA                -0.1740681   -0.2272647   -0.1208715
6 months    Keneba           GAMBIA                         1                    NA                -0.2897395   -0.4647724   -0.1147066
6 months    LCNI-5           MALAWI                         0                    NA                 0.5247880    0.4368511    0.6127250
6 months    LCNI-5           MALAWI                         1                    NA                 0.3277132    0.2056625    0.4497640
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.1163809   -0.2608828    0.0281209
6 months    MAL-ED           BANGLADESH                     1                    NA                -0.1275311   -0.4101000    0.1550379
6 months    MAL-ED           BRAZIL                         0                    NA                 1.0519640    0.8779000    1.2260280
6 months    MAL-ED           BRAZIL                         1                    NA                 0.1781192   -0.2747530    0.6309914
6 months    MAL-ED           INDIA                          0                    NA                -0.6855857   -0.8261059   -0.5450656
6 months    MAL-ED           INDIA                          1                    NA                -0.8150545   -1.1166403   -0.5134688
6 months    MAL-ED           NEPAL                          0                    NA                 0.1434973    0.0035089    0.2834856
6 months    MAL-ED           NEPAL                          1                    NA                -0.2901397   -0.6730540    0.0927746
6 months    MAL-ED           PERU                           0                    NA                 1.0727441    0.9455480    1.1999402
6 months    MAL-ED           PERU                           1                    NA                 0.9533245    0.5676228    1.3390263
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.4904150    0.3330786    0.6477514
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                 1.0099610    0.3665038    1.6534183
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5418607    0.3982555    0.6854659
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5470131    0.1861090    0.9079172
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.4292690   -0.5255586   -0.3329794
6 months    NIH-Birth        BANGLADESH                     1                    NA                -0.4854536   -0.7332087   -0.2376985
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0534723   -0.0308294    0.1377740
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.1323569   -0.3762448    0.1115310
6 months    PROBIT           BELARUS                        0                    NA                 0.5747328    0.5139613    0.6355043
6 months    PROBIT           BELARUS                        1                    NA                 0.4862181    0.3944535    0.5779826
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.1688678   -0.2551681   -0.0825675
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.4510411   -0.7346687   -0.1674135
6 months    ResPak           PAKISTAN                       0                    NA                -0.0037792   -0.2093760    0.2018176
6 months    ResPak           PAKISTAN                       1                    NA                -0.6274312   -1.0336555   -0.2212069
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.6083928   -0.7449001   -0.4718855
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.8046436   -1.0131373   -0.5961498
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.9519595   -1.0986824   -0.8052365
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.1102686   -1.2960599   -0.9244773
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0838523    0.0293724    0.1383322
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0236686   -0.1886977    0.2360348
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.3163233    0.2892903    0.3433564
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.2464403    0.1598973    0.3329834
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.4435842   -0.5567913   -0.3303771
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.9869209   -1.1934159   -0.7804258
24 months   CMIN             BANGLADESH                     0                    NA                -0.7457541   -0.8791642   -0.6123439
24 months   CMIN             BANGLADESH                     1                    NA                -1.0136596   -1.2097666   -0.8175526
24 months   COHORTS          GUATEMALA                      0                    NA                -0.1889637   -0.2523224   -0.1256049
24 months   COHORTS          GUATEMALA                      1                    NA                -0.4853007   -0.5844529   -0.3861485
24 months   COHORTS          INDIA                          0                    NA                -0.5579319   -0.5876718   -0.5281921
24 months   COHORTS          INDIA                          1                    NA                -0.9758950   -1.0536125   -0.8981776
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.5922011   -0.6297078   -0.5546944
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.9580456   -1.1379597   -0.7781315
24 months   CONTENT          PERU                           0                    NA                 0.6400505    0.4981776    0.7819234
24 months   CONTENT          PERU                           1                    NA                 0.2727418   -0.1642060    0.7096896
24 months   EE               PAKISTAN                       0                    NA                -0.8445820   -1.0254589   -0.6637051
24 months   EE               PAKISTAN                       1                    NA                -1.1552487   -1.3967694   -0.9137281
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.1293927   -1.2283299   -1.0304555
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1765928   -1.3805912   -0.9725943
24 months   IRC              INDIA                          0                    NA                -0.6989910   -0.7967736   -0.6012085
24 months   IRC              INDIA                          1                    NA                -1.0818106   -1.3370020   -0.8266192
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.1982085   -1.2248004   -1.1716167
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.5259752   -1.5668175   -1.4851329
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.1355758   -1.1723890   -1.0987625
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.4363224   -1.4957332   -1.3769117
24 months   Keneba           GAMBIA                         0                    NA                -0.7864532   -0.8359546   -0.7369518
24 months   Keneba           GAMBIA                         1                    NA                -1.0358679   -1.1915940   -0.8801419
24 months   LCNI-5           MALAWI                         0                    NA                 0.1024742    0.0032732    0.2016753
24 months   LCNI-5           MALAWI                         1                    NA                -0.3094129   -0.4498159   -0.1690098
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.7631180   -0.9000079   -0.6262281
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.1297954   -1.3875818   -0.8720090
24 months   MAL-ED           BRAZIL                         0                    NA                 0.4423311    0.2274227    0.6572394
24 months   MAL-ED           BRAZIL                         1                    NA                 0.7061981   -0.0256027    1.4379990
24 months   MAL-ED           INDIA                          0                    NA                -0.9193958   -1.0467151   -0.7920765
24 months   MAL-ED           INDIA                          1                    NA                -1.0511756   -1.3184924   -0.7838588
24 months   MAL-ED           NEPAL                          0                    NA                -0.3439470   -0.4598989   -0.2279952
24 months   MAL-ED           NEPAL                          1                    NA                -0.5519229   -0.9862382   -0.1176076
24 months   MAL-ED           PERU                           0                    NA                 0.1668821    0.0435023    0.2902619
24 months   MAL-ED           PERU                           1                    NA                -0.3023215   -0.8014853    0.1968424
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.4070220    0.2807990    0.5332450
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.3904413   -0.0630497    0.8439323
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0868009   -0.0466361    0.2202379
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1044014   -0.4163163    0.2075134
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.8733767   -0.9794479   -0.7673055
24 months   NIH-Birth        BANGLADESH                     1                    NA                -1.1081154   -1.3713714   -0.8448595
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.5477931   -0.6472574   -0.4483288
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.0353714   -1.3052925   -0.7654503
24 months   PROBIT           BELARUS                        0                    NA                 0.6983114    0.5835652    0.8130577
24 months   PROBIT           BELARUS                        1                    NA                 0.7070774    0.4657132    0.9484417
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.8604241   -0.9478723   -0.7729759
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.2169006   -1.4571711   -0.9766301
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.1762515   -1.2888313   -1.0636718
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.2030917   -1.4129467   -0.9932366


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
Birth       CMC-V-BCS-2002   INDIA                          1                    0                  0.5805742   -0.8712773    2.0324256
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                  0.9343056    0.2575315    1.6110797
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                  0.3041234    0.1653449    0.4429018
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                  0.4746996    0.1641860    0.7852132
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.3135617   -0.1636330    0.7907565
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.1956373   -0.1134555    0.5047300
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  1.1456487    0.4871287    1.8041688
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                  0.0986915    0.0557152    0.1416678
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -0.0121284   -0.1468560    0.1225992
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  1.1759284    0.6939832    1.6578735
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.4270480   -0.0390876    0.8931836
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                  0.6702976   -0.2539244    1.5945196
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                  0.0181757   -0.7445061    0.7808575
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                 -0.2509653   -0.6986347    0.1967041
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                  0.7300000   -0.2183507    1.6783507
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2895490   -1.0972832    1.6763813
Birth       NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     1                    0                 -0.0249423   -0.3308695    0.2809850
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                  0.3681529    0.1144767    0.6218290
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                  1.7629155    1.5436376    1.9821934
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.2550333   -0.5150186    0.0049520
Birth       ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       1                    0                 -0.0137198   -1.1581074    1.1306679
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                  0.1245683   -0.1240481    0.3731847
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                  0.7412281    0.5997158    0.8827404
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.1737225   -0.5755401    0.2280950
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.0261156   -0.3343888    0.2821576
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                 -0.2583675   -0.4552351   -0.0615000
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.3487422   -0.4408309   -0.2566535
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                 -0.1899305   -0.3801037    0.0002428
6 months    CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    0                 -0.0835788   -0.3513628    0.1842052
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.0568839   -0.2917132    0.1779453
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                  0.0302315   -0.2072269    0.2676898
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.1615469   -0.4225293    0.0994354
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                  0.2801086   -0.2374966    0.7977139
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.1316451   -0.1696894   -0.0936008
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.1370729   -0.2198354   -0.0543103
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.1156714   -0.2987414    0.0673987
6 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         1                    0                 -0.1970748   -0.3475632   -0.0465864
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -0.0111501   -0.3294321    0.3071319
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.8738448   -1.3610083   -0.3866813
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                 -0.1294688   -0.4649964    0.2060588
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.4336369   -0.8416229   -0.0256509
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -0.1194196   -0.5263732    0.2875341
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                  0.5195460   -0.1421356    1.1812277
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0051524   -0.3829741    0.3932789
6 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     1                    0                 -0.0561846   -0.3221683    0.2097991
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1858292   -0.4448294    0.0731710
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0885147   -0.1780080    0.0009786
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.2821733   -0.5786053    0.0142587
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                 -0.6236520   -1.0807315   -0.1665724
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.1962508   -0.3567204   -0.0357812
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.1583091   -0.3931109    0.0764927
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0601837   -0.2795318    0.1591644
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.0698830   -0.1605284    0.0207625
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.5433367   -0.7795061   -0.3071672
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.2679055   -0.5035394   -0.0322717
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.2963370   -0.4141191   -0.1785549
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.4179631   -0.5008578   -0.3350684
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                 -0.3658445   -0.5495172   -0.1821717
24 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    0                 -0.3673087   -0.8287231    0.0941058
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.3106667   -0.6143229   -0.0070106
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0472000   -0.2741006    0.1797005
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.3828196   -0.6561911   -0.1094480
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.3277666   -0.3746465   -0.2808867
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.3007466   -0.3698675   -0.2316258
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.2494147   -0.4128620   -0.0859675
24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         1                    0                 -0.4118871   -0.5825454   -0.2412288
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 -0.3666774   -0.6594835   -0.0738713
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                  0.2638671   -0.5008749    1.0286091
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                 -0.1317798   -0.4277121    0.1641525
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                 -0.2079759   -0.6588956    0.2429439
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                 -0.4692036   -0.9840750    0.0456679
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0165807   -0.4888137    0.4556523
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1912023   -0.5301600    0.1477554
24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     1                    0                 -0.2347387   -0.5188611    0.0493837
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.4875784   -0.7744640   -0.2006927
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                  0.0087660   -0.2338998    0.2514318
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.3564765   -0.6116545   -0.1012984
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0268401   -0.2650571    0.2113769


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                 0.0159504   -0.1592066    0.1911074
Birth       COHORTS          GUATEMALA                      0                    NA                 0.0242787    0.0035637    0.0449937
Birth       COHORTS          INDIA                          0                    NA                 0.0179097    0.0093167    0.0265028
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0138666    0.0046084    0.0231247
Birth       EE               PAKISTAN                       0                    NA                 0.0549631   -0.0540014    0.1639276
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0281796   -0.0047134    0.0610727
Birth       IRC              INDIA                          0                    NA                 0.1020128    0.0400343    0.1639914
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.0169029    0.0097898    0.0240160
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.0049102   -0.0290481    0.0192277
Birth       Keneba           GAMBIA                         0                    NA                 0.0313711    0.0154450    0.0472971
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0637324   -0.0006508    0.1281156
Birth       MAL-ED           BRAZIL                         0                    NA                 0.0648675   -0.0374695    0.1672045
Birth       MAL-ED           INDIA                          0                    NA                 0.0032312   -0.1323722    0.1388347
Birth       MAL-ED           PERU                           0                    NA                -0.0374144   -0.0812841    0.0064554
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0486667   -0.0225203    0.1198536
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0396949   -0.0581639    0.1375536
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.0029057   -0.0395138    0.0337024
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0430861    0.0131329    0.0730393
Birth       PROBIT           BELARUS                        0                    NA                 0.0034620   -0.0017975    0.0087215
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0207783   -0.0409054   -0.0006513
Birth       ResPak           PAKISTAN                       0                    NA                -0.0029700   -0.2928871    0.2869472
Birth       SAS-CompFeed     INDIA                          0                    NA                 0.0233306   -0.0235473    0.0702084
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.0382015    0.0304681    0.0459350
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0319205   -0.1116732    0.0478322
6 months    CMIN             BANGLADESH                     0                    NA                -0.0101887   -0.1268250    0.1064475
6 months    COHORTS          GUATEMALA                      0                    NA                -0.0422203   -0.0745399   -0.0099006
6 months    COHORTS          INDIA                          0                    NA                -0.0406611   -0.0518389   -0.0294833
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0109316   -0.0224789    0.0006156
6 months    CONTENT          PERU                           0                    NA                -0.0184415   -0.0441662    0.0072831
6 months    EE               PAKISTAN                       0                    NA                -0.0274842   -0.1312764    0.0763080
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0053934   -0.0326399    0.0434267
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0366943   -0.1009752    0.0275866
6 months    IRC              INDIA                          0                    NA                 0.0372168   -0.0270031    0.1014367
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0380519   -0.0494743   -0.0266295
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0371965   -0.0604504   -0.0139426
6 months    Keneba           GAMBIA                         0                    NA                -0.0105357   -0.0278698    0.0067984
6 months    LCNI-5           MALAWI                         0                    NA                -0.0748476   -0.1320042   -0.0176910
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.0212954   -0.0721938    0.0296030
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0798867   -0.1436275   -0.0161458
6 months    MAL-ED           INDIA                          0                    NA                -0.0224122   -0.0794185    0.0345942
6 months    MAL-ED           NEPAL                          0                    NA                -0.0330665   -0.0810887    0.0149558
6 months    MAL-ED           PERU                           0                    NA                -0.0198625   -0.0722513    0.0325262
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0517635   -0.0099140    0.1134409
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0056394   -0.0638016    0.0525228
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.0181348   -0.0611436    0.0248739
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0237101   -0.0589506    0.0115304
6 months    PROBIT           BELARUS                        0                    NA                -0.0006229   -0.0029158    0.0016701
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0302229   -0.0603521   -0.0000936
6 months    ResPak           PAKISTAN                       0                    NA                -0.1604049   -0.2860379   -0.0347719
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.0573156   -0.1013891   -0.0132420
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.0601984   -0.1518028    0.0314059
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0029191   -0.0175003    0.0116621
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0057719   -0.0147679    0.0032241
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.1135664   -0.1666523   -0.0604805
24 months   CMIN             BANGLADESH                     0                    NA                -0.1077850   -0.1955057   -0.0200644
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0926167   -0.1303763   -0.0548571
24 months   COHORTS          INDIA                          0                    NA                -0.0493918   -0.0599883   -0.0387953
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0177581   -0.0279678   -0.0075483
24 months   CONTENT          PERU                           0                    NA                -0.0498066   -0.0977341   -0.0018791
24 months   EE               PAKISTAN                       0                    NA                -0.1674418   -0.2987040   -0.0361796
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0069180   -0.0448442    0.0310082
24 months   IRC              INDIA                          0                    NA                -0.0468239   -0.0819645   -0.0116834
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0995946   -0.1145756   -0.0846135
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0875330   -0.1078900   -0.0671760
24 months   Keneba           GAMBIA                         0                    NA                -0.0234758   -0.0400804   -0.0068712
24 months   LCNI-5           MALAWI                         0                    NA                -0.1502451   -0.2121332   -0.0883570
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0561745   -0.1032604   -0.0090885
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0202922   -0.0594938    0.1000782
24 months   MAL-ED           INDIA                          0                    NA                -0.0322562   -0.0808994    0.0163870
24 months   MAL-ED           NEPAL                          0                    NA                -0.0309652   -0.0841464    0.0222159
24 months   MAL-ED           PERU                           0                    NA                -0.0556839   -0.1219003    0.0105325
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0020081   -0.0432488    0.0472651
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0320034   -0.0933828    0.0293760
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0382023   -0.0862844    0.0098797
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0625571   -0.1039141   -0.0212002
24 months   PROBIT           BELARUS                        0                    NA                -0.0001708   -0.0064227    0.0060811
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0324429   -0.0598136   -0.0050722
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0062889   -0.0620628    0.0494850
