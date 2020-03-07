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

agecat      studyid          country                        enstunt    n_cell       n
----------  ---------------  -----------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0              74      86
Birth       CMC-V-BCS-2002   INDIA                          1              12      86
Birth       CMIN             BANGLADESH                     0              17      19
Birth       CMIN             BANGLADESH                     1               2      19
Birth       COHORTS          GUATEMALA                      0             732     756
Birth       COHORTS          GUATEMALA                      1              24     756
Birth       COHORTS          INDIA                          0            5813    6193
Birth       COHORTS          INDIA                          1             380    6193
Birth       COHORTS          PHILIPPINES                    0            2813    2899
Birth       COHORTS          PHILIPPINES                    1              86    2899
Birth       CONTENT          PERU                           0               2       2
Birth       CONTENT          PERU                           1               0       2
Birth       EE               PAKISTAN                       0             137     177
Birth       EE               PAKISTAN                       1              40     177
Birth       GMS-Nepal        NEPAL                          0             570     641
Birth       GMS-Nepal        NEPAL                          1              71     641
Birth       IRC              INDIA                          0             318     343
Birth       IRC              INDIA                          1              25     343
Birth       JiVitA-3         BANGLADESH                     0           15027   18014
Birth       JiVitA-3         BANGLADESH                     1            2987   18014
Birth       JiVitA-4         BANGLADESH                     0            1963    2396
Birth       JiVitA-4         BANGLADESH                     1             433    2396
Birth       Keneba           GAMBIA                         0            1425    1466
Birth       Keneba           GAMBIA                         1              41    1466
Birth       MAL-ED           BANGLADESH                     0             187     215
Birth       MAL-ED           BANGLADESH                     1              28     215
Birth       MAL-ED           BRAZIL                         0              56      62
Birth       MAL-ED           BRAZIL                         1               6      62
Birth       MAL-ED           INDIA                          0              37      45
Birth       MAL-ED           INDIA                          1               8      45
Birth       MAL-ED           NEPAL                          0              25      26
Birth       MAL-ED           NEPAL                          1               1      26
Birth       MAL-ED           PERU                           0             207     228
Birth       MAL-ED           PERU                           1              21     228
Birth       MAL-ED           SOUTH AFRICA                   0             112     120
Birth       MAL-ED           SOUTH AFRICA                   1               8     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             102     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              13     115
Birth       NIH-Birth        BANGLADESH                     0             506     575
Birth       NIH-Birth        BANGLADESH                     1              69     575
Birth       NIH-Crypto       BANGLADESH                     0             625     707
Birth       NIH-Crypto       BANGLADESH                     1              82     707
Birth       PROBIT           BELARUS                        0           13790   13817
Birth       PROBIT           BELARUS                        1              27   13817
Birth       PROVIDE          BANGLADESH                     0             491     532
Birth       PROVIDE          BANGLADESH                     1              41     532
Birth       ResPak           PAKISTAN                       0              28      38
Birth       ResPak           PAKISTAN                       1              10      38
Birth       SAS-CompFeed     INDIA                          0             901    1103
Birth       SAS-CompFeed     INDIA                          1             202    1103
Birth       ZVITAMBO         ZIMBABWE                       0           12227   12917
Birth       ZVITAMBO         ZIMBABWE                       1             690   12917
6 months    CMC-V-BCS-2002   INDIA                          0             292     368
6 months    CMC-V-BCS-2002   INDIA                          1              76     368
6 months    CMIN             BANGLADESH                     0             151     243
6 months    CMIN             BANGLADESH                     1              92     243
6 months    COHORTS          GUATEMALA                      0             809     963
6 months    COHORTS          GUATEMALA                      1             154     963
6 months    COHORTS          INDIA                          0            6034    6850
6 months    COHORTS          INDIA                          1             816    6850
6 months    COHORTS          PHILIPPINES                    0            2549    2706
6 months    COHORTS          PHILIPPINES                    1             157    2706
6 months    CONTENT          PERU                           0             195     215
6 months    CONTENT          PERU                           1              20     215
6 months    EE               PAKISTAN                       0             209     375
6 months    EE               PAKISTAN                       1             166     375
6 months    GMS-Nepal        NEPAL                          0             473     564
6 months    GMS-Nepal        NEPAL                          1              91     564
6 months    Guatemala BSC    GUATEMALA                      0             228     299
6 months    Guatemala BSC    GUATEMALA                      1              71     299
6 months    IRC              INDIA                          0             356     408
6 months    IRC              INDIA                          1              52     408
6 months    JiVitA-3         BANGLADESH                     0           11673   16784
6 months    JiVitA-3         BANGLADESH                     1            5111   16784
6 months    JiVitA-4         BANGLADESH                     0            3473    4833
6 months    JiVitA-4         BANGLADESH                     1            1360    4833
6 months    Keneba           GAMBIA                         0            1893    2089
6 months    Keneba           GAMBIA                         1             196    2089
6 months    LCNI-5           MALAWI                         0             530     839
6 months    LCNI-5           MALAWI                         1             309     839
6 months    MAL-ED           BANGLADESH                     0             202     241
6 months    MAL-ED           BANGLADESH                     1              39     241
6 months    MAL-ED           BRAZIL                         0             184     209
6 months    MAL-ED           BRAZIL                         1              25     209
6 months    MAL-ED           INDIA                          0             198     236
6 months    MAL-ED           INDIA                          1              38     236
6 months    MAL-ED           NEPAL                          0             208     236
6 months    MAL-ED           NEPAL                          1              28     236
6 months    MAL-ED           PERU                           0             239     273
6 months    MAL-ED           PERU                           1              34     273
6 months    MAL-ED           SOUTH AFRICA                   0             227     254
6 months    MAL-ED           SOUTH AFRICA                   1              27     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             208     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              39     247
6 months    NIH-Birth        BANGLADESH                     0             452     537
6 months    NIH-Birth        BANGLADESH                     1              85     537
6 months    NIH-Crypto       BANGLADESH                     0             613     715
6 months    NIH-Crypto       BANGLADESH                     1             102     715
6 months    PROBIT           BELARUS                        0           15641   15757
6 months    PROBIT           BELARUS                        1             116   15757
6 months    PROVIDE          BANGLADESH                     0             542     603
6 months    PROVIDE          BANGLADESH                     1              61     603
6 months    ResPak           PAKISTAN                       0             173     239
6 months    ResPak           PAKISTAN                       1              66     239
6 months    SAS-CompFeed     INDIA                          0             969    1334
6 months    SAS-CompFeed     INDIA                          1             365    1334
6 months    SAS-FoodSuppl    INDIA                          0             232     380
6 months    SAS-FoodSuppl    INDIA                          1             148     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             138    2028
6 months    ZVITAMBO         ZIMBABWE                       0            7632    8505
6 months    ZVITAMBO         ZIMBABWE                       1             873    8505
24 months   CMC-V-BCS-2002   INDIA                          0             295     372
24 months   CMC-V-BCS-2002   INDIA                          1              77     372
24 months   CMIN             BANGLADESH                     0             153     243
24 months   CMIN             BANGLADESH                     1              90     243
24 months   COHORTS          GUATEMALA                      0             743    1082
24 months   COHORTS          GUATEMALA                      1             339    1082
24 months   COHORTS          INDIA                          0            4654    5291
24 months   COHORTS          INDIA                          1             637    5291
24 months   COHORTS          PHILIPPINES                    0            2311    2449
24 months   COHORTS          PHILIPPINES                    1             138    2449
24 months   CONTENT          PERU                           0             147     164
24 months   CONTENT          PERU                           1              17     164
24 months   EE               PAKISTAN                       0             100     168
24 months   EE               PAKISTAN                       1              68     168
24 months   GMS-Nepal        NEPAL                          0             405     487
24 months   GMS-Nepal        NEPAL                          1              82     487
24 months   IRC              INDIA                          0             358     409
24 months   IRC              INDIA                          1              51     409
24 months   JiVitA-3         BANGLADESH                     0            5914    8603
24 months   JiVitA-3         BANGLADESH                     1            2689    8603
24 months   JiVitA-4         BANGLADESH                     0            3380    4735
24 months   JiVitA-4         BANGLADESH                     1            1355    4735
24 months   Keneba           GAMBIA                         0            1550    1726
24 months   Keneba           GAMBIA                         1             176    1726
24 months   LCNI-5           MALAWI                         0             365     563
24 months   LCNI-5           MALAWI                         1             198     563
24 months   MAL-ED           BANGLADESH                     0             179     212
24 months   MAL-ED           BANGLADESH                     1              33     212
24 months   MAL-ED           BRAZIL                         0             150     169
24 months   MAL-ED           BRAZIL                         1              19     169
24 months   MAL-ED           INDIA                          0             191     227
24 months   MAL-ED           INDIA                          1              36     227
24 months   MAL-ED           NEPAL                          0             201     228
24 months   MAL-ED           NEPAL                          1              27     228
24 months   MAL-ED           PERU                           0             174     201
24 months   MAL-ED           PERU                           1              27     201
24 months   MAL-ED           SOUTH AFRICA                   0             214     238
24 months   MAL-ED           SOUTH AFRICA                   1              24     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             181     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              33     214
24 months   NIH-Birth        BANGLADESH                     0             354     428
24 months   NIH-Birth        BANGLADESH                     1              74     428
24 months   NIH-Crypto       BANGLADESH                     0             444     514
24 months   NIH-Crypto       BANGLADESH                     1              70     514
24 months   PROBIT           BELARUS                        0            3957    3970
24 months   PROBIT           BELARUS                        1              13    3970
24 months   PROVIDE          BANGLADESH                     0             519     579
24 months   PROVIDE          BANGLADESH                     1              60     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ZVITAMBO         ZIMBABWE                       0             331     433
24 months   ZVITAMBO         ZIMBABWE                       1             102     433


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
![](/tmp/6b62a86a-13f0-429c-bf3c-45b96f309316/3a306c60-1569-4742-9f63-6315b5ef5a43/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6b62a86a-13f0-429c-bf3c-45b96f309316/3a306c60-1569-4742-9f63-6315b5ef5a43/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6b62a86a-13f0-429c-bf3c-45b96f309316/3a306c60-1569-4742-9f63-6315b5ef5a43/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.4933200   -0.7810152   -0.2056248
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.4581987   -1.6475115    0.7311142
Birth       COHORTS          GUATEMALA                      0                    NA                -1.0865280   -1.1887953   -0.9842607
Birth       COHORTS          GUATEMALA                      1                    NA                -0.3718140   -0.9634370    0.2198090
Birth       COHORTS          INDIA                          0                    NA                -1.0028245   -1.0332735   -0.9723755
Birth       COHORTS          INDIA                          1                    NA                -0.6968400   -0.8325572   -0.5611228
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.7565541   -0.8033288   -0.7097794
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.3043524   -0.6166110    0.0079063
Birth       EE               PAKISTAN                       0                    NA                -0.4199644   -0.6275989   -0.2123299
Birth       EE               PAKISTAN                       1                    NA                -0.3444603   -0.7805977    0.0916771
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.1372712   -1.2293822   -1.0451602
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.9281841   -1.2119095   -0.6444588
Birth       IRC              INDIA                          0                    NA                -1.1092337   -1.3003388   -0.9181286
Birth       IRC              INDIA                          1                    NA                 0.1488529   -0.4863175    0.7840232
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.7947647   -0.8149326   -0.7745969
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.6971134   -0.7383415   -0.6558852
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.6842377   -0.7419047   -0.6265708
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.7097685   -0.8321499   -0.5873871
Birth       Keneba           GAMBIA                         0                    NA                -1.2663172   -1.3282942   -1.2043401
Birth       Keneba           GAMBIA                         1                    NA                -0.0190536   -0.4887507    0.4506435
Birth       MAL-ED           BANGLADESH                     0                    NA                -0.9997064   -1.1520043   -0.8474085
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.4127608   -0.8533149    0.0277934
Birth       MAL-ED           BRAZIL                         0                    NA                 0.3380357    0.0083857    0.6676857
Birth       MAL-ED           BRAZIL                         1                    NA                 1.0083333    0.1448999    1.8717667
Birth       MAL-ED           INDIA                          0                    NA                -0.9356757   -1.2327587   -0.6385926
Birth       MAL-ED           INDIA                          1                    NA                -0.9175000   -1.6199423   -0.2150577
Birth       MAL-ED           PERU                           0                    NA                -0.0118077   -0.1371776    0.1135623
Birth       MAL-ED           PERU                           1                    NA                -0.2992380   -0.7387674    0.1402914
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.2412500   -0.4566344   -0.0258656
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                 0.4887500   -0.4348184    1.4123184
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7250223    0.5389972    0.9110474
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.9176679   -0.6716206    2.5069564
Birth       NIH-Birth        BANGLADESH                     0                    NA                -1.3462248   -1.4462484   -1.2462012
Birth       NIH-Birth        BANGLADESH                     1                    NA                -1.4016880   -1.6917329   -1.1116430
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -1.2841299   -1.3735769   -1.1946830
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9280891   -1.1703704   -0.6858077
Birth       PROBIT           BELARUS                        0                    NA                -1.1526726   -1.3672586   -0.9380865
Birth       PROBIT           BELARUS                        1                    NA                 0.6015705    0.5759399    0.6272011
Birth       PROVIDE          BANGLADESH                     0                    NA                -1.2760346   -1.3566433   -1.1954260
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.4941800   -1.7256346   -1.2627253
Birth       ResPak           PAKISTAN                       0                    NA                -0.3238069   -0.8137960    0.1661822
Birth       ResPak           PAKISTAN                       1                    NA                -0.4029522   -1.4612655    0.6553611
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.6933759   -0.8425503   -0.5442015
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.5688076   -0.9175234   -0.2200918
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.5535127   -0.5796144   -0.5274111
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.1865073    0.0530835    0.3199311
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.4615499   -0.6352973   -0.2878025
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.6053905   -0.9703334   -0.2404476
6 months    CMIN             BANGLADESH                     0                    NA                -0.5745187   -0.7508822   -0.3981552
6 months    CMIN             BANGLADESH                     1                    NA                -0.6041728   -0.8563740   -0.3519717
6 months    COHORTS          GUATEMALA                      0                    NA                 0.2360004    0.1588333    0.3131675
6 months    COHORTS          GUATEMALA                      1                    NA                -0.0235119   -0.2113373    0.1643136
6 months    COHORTS          INDIA                          0                    NA                -0.6496216   -0.6784957   -0.6207476
6 months    COHORTS          INDIA                          1                    NA                -1.0031557   -1.0908048   -0.9155065
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.2830521   -0.3253016   -0.2408027
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.4903588   -0.6824442   -0.2982733
6 months    CONTENT          PERU                           0                    NA                 1.0812597    0.9538350    1.2086844
6 months    CONTENT          PERU                           1                    NA                 0.9439412    0.6974715    1.1904108
6 months    EE               PAKISTAN                       0                    NA                -0.7405834   -0.8870664   -0.5941004
6 months    EE               PAKISTAN                       1                    NA                -0.7991787   -0.9773972   -0.6209603
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.6089118   -0.7028474   -0.5149763
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.5506566   -0.7683023   -0.3330109
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0499539   -0.1756912    0.0757834
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.2198780   -0.4517176    0.0119617
6 months    IRC              INDIA                          0                    NA                -0.6326440   -0.7713048   -0.4939833
6 months    IRC              INDIA                          1                    NA                -0.1377664   -0.6400646    0.3645319
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.5553470   -0.5779903   -0.5327037
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.6884914   -0.7218199   -0.6551629
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.3519997   -0.3955450   -0.3084543
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.4871166   -0.5587521   -0.4154811
6 months    Keneba           GAMBIA                         0                    NA                -0.1724368   -0.2255742   -0.1192993
6 months    Keneba           GAMBIA                         1                    NA                -0.2729353   -0.4499003   -0.0959703
6 months    LCNI-5           MALAWI                         0                    NA                 0.5253210    0.4370413    0.6136007
6 months    LCNI-5           MALAWI                         1                    NA                 0.3253496    0.2036604    0.4470387
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.1171190   -0.2614371    0.0271992
6 months    MAL-ED           BANGLADESH                     1                    NA                -0.1605732   -0.4395688    0.1184225
6 months    MAL-ED           BRAZIL                         0                    NA                 1.0579690    0.8839756    1.2319623
6 months    MAL-ED           BRAZIL                         1                    NA                 0.4412848    0.0014396    0.8811300
6 months    MAL-ED           INDIA                          0                    NA                -0.6806744   -0.8202225   -0.5411263
6 months    MAL-ED           INDIA                          1                    NA                -0.8696671   -1.1677446   -0.5715897
6 months    MAL-ED           NEPAL                          0                    NA                 0.1438867    0.0038801    0.2838934
6 months    MAL-ED           NEPAL                          1                    NA                -0.1016554   -0.4991887    0.2958779
6 months    MAL-ED           PERU                           0                    NA                 1.0742675    0.9468656    1.2016693
6 months    MAL-ED           PERU                           1                    NA                 1.0044109    0.5966430    1.4121788
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.4971660    0.3401646    0.6541674
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                 0.9612555    0.4315518    1.4909592
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5347648    0.3926132    0.6769165
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5413187    0.1567696    0.9258678
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.4326394   -0.5291121   -0.3361666
6 months    NIH-Birth        BANGLADESH                     1                    NA                -0.5779300   -0.8300462   -0.3258138
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0519288   -0.0323172    0.1361749
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.1196398   -0.3617879    0.1225083
6 months    PROBIT           BELARUS                        0                    NA                 0.5746818    0.5139031    0.6354604
6 months    PROBIT           BELARUS                        1                    NA                 0.4835131    0.3949122    0.5721140
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.1706817   -0.2569508   -0.0844127
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.4596319   -0.7409347   -0.1783291
6 months    ResPak           PAKISTAN                       0                    NA                 0.0014795   -0.2029570    0.2059160
6 months    ResPak           PAKISTAN                       1                    NA                -0.6357587   -1.0164656   -0.2550518
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.6083928   -0.7449001   -0.4718855
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.8046436   -1.0131373   -0.5961498
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.9364719   -1.0832866   -0.7896573
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.0929038   -1.2786743   -0.9071334
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0831164    0.0286497    0.1375832
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0307140   -0.1799938    0.2414218
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.3160397    0.2890279    0.3430516
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.2477810    0.1601168    0.3354451
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.4448774   -0.5581376   -0.3316171
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.9840135   -1.1933414   -0.7746857
24 months   CMIN             BANGLADESH                     0                    NA                -0.7527363   -0.8856083   -0.6198642
24 months   CMIN             BANGLADESH                     1                    NA                -1.0035813   -1.1975416   -0.8096209
24 months   COHORTS          GUATEMALA                      0                    NA                -0.1898563   -0.2530018   -0.1267108
24 months   COHORTS          GUATEMALA                      1                    NA                -0.4906188   -0.5898632   -0.3913744
24 months   COHORTS          INDIA                          0                    NA                -0.5577334   -0.5874673   -0.5279994
24 months   COHORTS          INDIA                          1                    NA                -0.9755944   -1.0538675   -0.8973212
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.5916873   -0.6291858   -0.5541888
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.9472077   -1.1264084   -0.7680069
24 months   CONTENT          PERU                           0                    NA                 0.6410637    0.4993593    0.7827680
24 months   CONTENT          PERU                           1                    NA                 0.2864302   -0.2419323    0.8147926
24 months   EE               PAKISTAN                       0                    NA                -0.8615560   -1.0403969   -0.6827151
24 months   EE               PAKISTAN                       1                    NA                -1.1644568   -1.4106517   -0.9182619
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.1268294   -1.2259507   -1.0277082
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1373697   -1.3438600   -0.9308793
24 months   IRC              INDIA                          0                    NA                -0.6952943   -0.7931389   -0.5974497
24 months   IRC              INDIA                          1                    NA                -1.0648694   -1.3217572   -0.8079815
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.1974757   -1.2241152   -1.1708362
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.5257700   -1.5667789   -1.4847612
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.1353475   -1.1721735   -1.0985215
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.4398582   -1.4993526   -1.3803638
24 months   Keneba           GAMBIA                         0                    NA                -0.7878656   -0.8373535   -0.7383777
24 months   Keneba           GAMBIA                         1                    NA                -1.0307724   -1.1825735   -0.8789713
24 months   LCNI-5           MALAWI                         0                    NA                 0.0903875   -0.0086312    0.1894062
24 months   LCNI-5           MALAWI                         1                    NA                -0.3001356   -0.4389528   -0.1613184
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.7670966   -0.9054333   -0.6287598
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.0956726   -1.3634131   -0.8279322
24 months   MAL-ED           BRAZIL                         0                    NA                 0.4441858    0.2289853    0.6593864
24 months   MAL-ED           BRAZIL                         1                    NA                 0.6173265   -0.0852678    1.3199208
24 months   MAL-ED           INDIA                          0                    NA                -0.9197395   -1.0470266   -0.7924524
24 months   MAL-ED           INDIA                          1                    NA                -1.1154492   -1.3820696   -0.8488288
24 months   MAL-ED           NEPAL                          0                    NA                -0.3444085   -0.4601137   -0.2287034
24 months   MAL-ED           NEPAL                          1                    NA                -0.4669154   -0.8731386   -0.0606921
24 months   MAL-ED           PERU                           0                    NA                 0.1710281    0.0473083    0.2947479
24 months   MAL-ED           PERU                           1                    NA                -0.3461919   -0.8425576    0.1501739
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.4050426    0.2783566    0.5317285
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.3992334   -0.0041504    0.8026173
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0899611   -0.0437018    0.2236240
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0795102   -0.3776347    0.2186142
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.8743297   -0.9801752   -0.7684843
24 months   NIH-Birth        BANGLADESH                     1                    NA                -1.0970782   -1.3530545   -0.8411020
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.5481302   -0.6477270   -0.4485334
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.0088909   -1.2826899   -0.7350919
24 months   PROBIT           BELARUS                        0                    NA                 0.6982785    0.5835947    0.8129622
24 months   PROBIT           BELARUS                        1                    NA                 0.7071688    0.4529362    0.9614013
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.8629224   -0.9504203   -0.7754245
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.1726180   -1.4207981   -0.9244379
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.1740997   -1.2870846   -1.0611148
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.2072657   -1.4195817   -0.9949498


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
Birth       CMC-V-BCS-2002   INDIA                          1                    0                  0.0351213   -1.1974135    1.2676562
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                  0.7147140    0.1139288    1.3154992
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                  0.3059845    0.1669956    0.4449734
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                  0.4522017    0.1366923    0.7677110
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.0755041   -0.4086072    0.5596154
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.2090871   -0.0887441    0.5069183
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  1.2580866    0.5948673    1.9213058
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                  0.0976514    0.0543581    0.1409446
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -0.0255308   -0.1598650    0.1088035
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  1.2472636    0.7734705    1.7210567
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.5869456    0.1205501    1.0533411
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                  0.6702976   -0.2539244    1.5945196
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                  0.0181757   -0.7445061    0.7808575
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                 -0.2874303   -0.7418645    0.1670039
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                  0.7300000   -0.2183507    1.6783507
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1926456   -1.4088141    1.7941054
Birth       NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     1                    0                 -0.0554632   -0.3626366    0.2517103
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                  0.3560409    0.0977572    0.6143246
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                  1.7542431    1.5356946    1.9727916
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.2181453   -0.4632782    0.0269875
Birth       ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       1                    0                 -0.0791453   -1.2576845    1.0993939
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                  0.1245683   -0.1240481    0.3731847
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                  0.7400201    0.6040881    0.8759520
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.1438406   -0.5486327    0.2609516
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.0296542   -0.3381015    0.2787932
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                 -0.2595123   -0.4623446   -0.0566800
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.3535340   -0.4457574   -0.2613107
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                 -0.2073066   -0.4039640   -0.0106492
6 months    CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    0                 -0.1373185   -0.4151550    0.1405179
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.0585953   -0.2881808    0.1709901
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                  0.0582553   -0.1789926    0.2955031
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.1699241   -0.4361228    0.0962747
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                  0.4948777   -0.0265673    1.0163227
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.1331444   -0.1710239   -0.0952648
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.1351170   -0.2179392   -0.0522948
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.1004985   -0.2852707    0.0842737
6 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         1                    0                 -0.1999714   -0.3510733   -0.0488695
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -0.0434542   -0.3583213    0.2714129
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.6166842   -1.0876435   -0.1457249
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                 -0.1889927   -0.5208627    0.1428773
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.2455421   -0.6669775    0.1758933
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -0.0698565   -0.4983164    0.3586034
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                  0.4640895   -0.0861492    1.0143283
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0065539   -0.4043732    0.4174809
6 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     1                    0                 -0.1452906   -0.4156294    0.1250482
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1715686   -0.4285706    0.0854333
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0911686   -0.1815546   -0.0007827
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.2889501   -0.5833823    0.0054820
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                 -0.6372382   -1.0712716   -0.2032049
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.1962508   -0.3567204   -0.0357812
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.1564319   -0.3926511    0.0797873
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0524024   -0.2699253    0.1651204
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.0682588   -0.1599999    0.0234823
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.5391361   -0.7775325   -0.3007398
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.2508450   -0.4852717   -0.0164183
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.3007625   -0.4186430   -0.1828821
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.4178610   -0.5012526   -0.3344695
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                 -0.3555204   -0.5386384   -0.1724025
24 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    0                 -0.3546335   -0.9052825    0.1960154
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.3029008   -0.6088674    0.0030658
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0105402   -0.2399249    0.2188444
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.3695751   -0.6449248   -0.0942253
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.3282943   -0.3752577   -0.2813310
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.3045107   -0.3735272   -0.2354942
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.2429068   -0.4022780   -0.0835356
24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         1                    0                 -0.3905231   -0.5604436   -0.2206025
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 -0.3285760   -0.6341279   -0.0230242
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                  0.1731407   -0.5642399    0.9105212
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                 -0.1957097   -0.4914765    0.1000571
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                 -0.1225069   -0.5451034    0.3000897
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                 -0.5172200   -1.0281828   -0.0062572
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0058091   -0.4275148    0.4158966
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1694714   -0.4956216    0.1566789
24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     1                    0                 -0.2227485   -0.4999886    0.0544916
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.4607607   -0.7515344   -0.1699870
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                  0.0088903   -0.2447786    0.2625592
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.3096956   -0.5735665   -0.0458246
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0331661   -0.2734676    0.2071354


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                 0.0284944   -0.1530364    0.2100252
Birth       COHORTS          GUATEMALA                      0                    NA                 0.0243852    0.0039107    0.0448596
Birth       COHORTS          INDIA                          0                    NA                 0.0180788    0.0094971    0.0266606
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0138290    0.0045079    0.0231501
Birth       EE               PAKISTAN                       0                    NA                 0.0866593   -0.0247046    0.1980232
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0208281   -0.0114086    0.0530649
Birth       IRC              INDIA                          0                    NA                 0.0986506    0.0381045    0.1591968
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.0169375    0.0098507    0.0240243
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.0043892   -0.0286202    0.0198419
Birth       Keneba           GAMBIA                         0                    NA                 0.0313717    0.0153821    0.0473614
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0578459   -0.0056421    0.1213339
Birth       MAL-ED           BRAZIL                         0                    NA                 0.0648675   -0.0374695    0.1672045
Birth       MAL-ED           INDIA                          0                    NA                 0.0032312   -0.1323722    0.1388347
Birth       MAL-ED           PERU                           0                    NA                -0.0402099   -0.0843250    0.0039053
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0486667   -0.0225203    0.1198536
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0374125   -0.0613836    0.1362086
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.0036970   -0.0405455    0.0331516
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0399786    0.0096766    0.0702806
Birth       PROBIT           BELARUS                        0                    NA                 0.0034944   -0.0016856    0.0086744
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0224240   -0.0422708   -0.0025772
Birth       ResPak           PAKISTAN                       0                    NA                -0.0425089   -0.3278084    0.2427907
Birth       SAS-CompFeed     INDIA                          0                    NA                 0.0233306   -0.0235473    0.0702084
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.0380231    0.0303039    0.0457423
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0411267   -0.1229793    0.0407259
6 months    CMIN             BANGLADESH                     0                    NA                -0.0035266   -0.1203960    0.1133428
6 months    COHORTS          GUATEMALA                      0                    NA                -0.0419194   -0.0745894   -0.0092494
6 months    COHORTS          INDIA                          0                    NA                -0.0412587   -0.0524268   -0.0300905
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0107912   -0.0223369    0.0007545
6 months    CONTENT          PERU                           0                    NA                -0.0168318   -0.0422421    0.0085785
6 months    EE               PAKISTAN                       0                    NA                -0.0341188   -0.1367776    0.0685399
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0050702   -0.0330944    0.0432348
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0340595   -0.0991991    0.0310802
6 months    IRC              INDIA                          0                    NA                 0.0337143   -0.0299396    0.0973682
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0381691   -0.0496080   -0.0267303
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0378058   -0.0608976   -0.0147141
6 months    Keneba           GAMBIA                         0                    NA                -0.0121670   -0.0295034    0.0051694
6 months    LCNI-5           MALAWI                         0                    NA                -0.0753806   -0.1327134   -0.0180478
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.0205574   -0.0716603    0.0305456
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0858916   -0.1483055   -0.0234778
6 months    MAL-ED           INDIA                          0                    NA                -0.0273235   -0.0838791    0.0292322
6 months    MAL-ED           NEPAL                          0                    NA                -0.0334560   -0.0817060    0.0147941
6 months    MAL-ED           PERU                           0                    NA                -0.0213859   -0.0742039    0.0314322
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0450125   -0.0157444    0.1057694
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0014565   -0.0581320    0.0610449
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.0147644   -0.0579497    0.0284209
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0221666   -0.0572646    0.0129314
6 months    PROBIT           BELARUS                        0                    NA                -0.0005718   -0.0028391    0.0016954
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0284089   -0.0586033    0.0017854
6 months    ResPak           PAKISTAN                       0                    NA                -0.1656636   -0.2891879   -0.0421393
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.0573156   -0.1013891   -0.0132420
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.0756860   -0.1678761    0.0165041
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0021832   -0.0165889    0.0122224
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0054883   -0.0144947    0.0035181
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.1122732   -0.1658744   -0.0586719
24 months   CMIN             BANGLADESH                     0                    NA                -0.1008028   -0.1886634   -0.0129423
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0917241   -0.1294593   -0.0539889
24 months   COHORTS          INDIA                          0                    NA                -0.0495904   -0.0601891   -0.0389917
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0182719   -0.0286539   -0.0078899
24 months   CONTENT          PERU                           0                    NA                -0.0508198   -0.0997866   -0.0018530
24 months   EE               PAKISTAN                       0                    NA                -0.1504678   -0.2785565   -0.0223791
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0094813   -0.0478600    0.0288974
24 months   IRC              INDIA                          0                    NA                -0.0505207   -0.0858607   -0.0151807
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.1003274   -0.1152444   -0.0854103
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0877613   -0.1081675   -0.0673550
24 months   Keneba           GAMBIA                         0                    NA                -0.0220634   -0.0384081   -0.0057187
24 months   LCNI-5           MALAWI                         0                    NA                -0.1381584   -0.1995585   -0.0767582
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0521959   -0.1020468   -0.0023449
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0184374   -0.0624271    0.0993020
24 months   MAL-ED           INDIA                          0                    NA                -0.0319125   -0.0801203    0.0162954
24 months   MAL-ED           NEPAL                          0                    NA                -0.0305038   -0.0838490    0.0228414
24 months   MAL-ED           PERU                           0                    NA                -0.0598299   -0.1259259    0.0062660
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0039876   -0.0411407    0.0491158
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0351636   -0.0966118    0.0262845
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0372493   -0.0848742    0.0103755
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0622200   -0.1037208   -0.0207191
24 months   PROBIT           BELARUS                        0                    NA                -0.0001378   -0.0063700    0.0060943
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0299446   -0.0580653   -0.0018239
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0084407   -0.0642225    0.0473410
