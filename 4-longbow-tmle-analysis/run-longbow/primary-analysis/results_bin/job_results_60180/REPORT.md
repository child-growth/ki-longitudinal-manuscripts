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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        parity    sstunted   n_cell       n
----------  ---------------  -----------------------------  -------  ---------  -------  ------
Birth       COHORTS          GUATEMALA                      1                0      109     852
Birth       COHORTS          GUATEMALA                      1                1        3     852
Birth       COHORTS          GUATEMALA                      2                0      134     852
Birth       COHORTS          GUATEMALA                      2                1        3     852
Birth       COHORTS          GUATEMALA                      3+               0      598     852
Birth       COHORTS          GUATEMALA                      3+               1        5     852
Birth       COHORTS          INDIA                          1                0      674    4122
Birth       COHORTS          INDIA                          1                1       22    4122
Birth       COHORTS          INDIA                          2                0     1016    4122
Birth       COHORTS          INDIA                          2                1       21    4122
Birth       COHORTS          INDIA                          3+               0     2319    4122
Birth       COHORTS          INDIA                          3+               1       70    4122
Birth       COHORTS          PHILIPPINES                    1                0      661    3050
Birth       COHORTS          PHILIPPINES                    1                1       14    3050
Birth       COHORTS          PHILIPPINES                    2                0      677    3050
Birth       COHORTS          PHILIPPINES                    2                1       10    3050
Birth       COHORTS          PHILIPPINES                    3+               0     1666    3050
Birth       COHORTS          PHILIPPINES                    3+               1       22    3050
Birth       GMS-Nepal        NEPAL                          1                0      196     696
Birth       GMS-Nepal        NEPAL                          1                1       15     696
Birth       GMS-Nepal        NEPAL                          2                0      175     696
Birth       GMS-Nepal        NEPAL                          2                1        5     696
Birth       GMS-Nepal        NEPAL                          3+               0      294     696
Birth       GMS-Nepal        NEPAL                          3+               1       11     696
Birth       JiVitA-3         BANGLADESH                     1                0     6332   22455
Birth       JiVitA-3         BANGLADESH                     1                1     1124   22455
Birth       JiVitA-3         BANGLADESH                     2                0     6940   22455
Birth       JiVitA-3         BANGLADESH                     2                1      675   22455
Birth       JiVitA-3         BANGLADESH                     3+               0     6735   22455
Birth       JiVitA-3         BANGLADESH                     3+               1      649   22455
Birth       Keneba           GAMBIA                         1                0      153    1407
Birth       Keneba           GAMBIA                         1                1        3    1407
Birth       Keneba           GAMBIA                         2                0      144    1407
Birth       Keneba           GAMBIA                         2                1        2    1407
Birth       Keneba           GAMBIA                         3+               0     1084    1407
Birth       Keneba           GAMBIA                         3+               1       21    1407
Birth       PROVIDE          BANGLADESH                     1                0      204     539
Birth       PROVIDE          BANGLADESH                     1                1        2     539
Birth       PROVIDE          BANGLADESH                     2                0      183     539
Birth       PROVIDE          BANGLADESH                     2                1        0     539
Birth       PROVIDE          BANGLADESH                     3+               0      148     539
Birth       PROVIDE          BANGLADESH                     3+               1        2     539
Birth       SAS-CompFeed     INDIA                          1                0      334    1252
Birth       SAS-CompFeed     INDIA                          1                1       27    1252
Birth       SAS-CompFeed     INDIA                          2                0      269    1252
Birth       SAS-CompFeed     INDIA                          2                1       20    1252
Birth       SAS-CompFeed     INDIA                          3+               0      558    1252
Birth       SAS-CompFeed     INDIA                          3+               1       44    1252
Birth       ZVITAMBO         ZIMBABWE                       1                0     5794   13874
Birth       ZVITAMBO         ZIMBABWE                       1                1      195   13874
Birth       ZVITAMBO         ZIMBABWE                       2                0     4040   13874
Birth       ZVITAMBO         ZIMBABWE                       2                1      104   13874
Birth       ZVITAMBO         ZIMBABWE                       3+               0     3598   13874
Birth       ZVITAMBO         ZIMBABWE                       3+               1      143   13874
6 months    COHORTS          GUATEMALA                      1                0      116     961
6 months    COHORTS          GUATEMALA                      1                1       16     961
6 months    COHORTS          GUATEMALA                      2                0      122     961
6 months    COHORTS          GUATEMALA                      2                1       17     961
6 months    COHORTS          GUATEMALA                      3+               0      599     961
6 months    COHORTS          GUATEMALA                      3+               1       91     961
6 months    COHORTS          INDIA                          1                0      713    4291
6 months    COHORTS          INDIA                          1                1       27    4291
6 months    COHORTS          INDIA                          2                0     1056    4291
6 months    COHORTS          INDIA                          2                1       40    4291
6 months    COHORTS          INDIA                          3+               0     2314    4291
6 months    COHORTS          INDIA                          3+               1      141    4291
6 months    COHORTS          PHILIPPINES                    1                0      553    2708
6 months    COHORTS          PHILIPPINES                    1                1       21    2708
6 months    COHORTS          PHILIPPINES                    2                0      584    2708
6 months    COHORTS          PHILIPPINES                    2                1       22    2708
6 months    COHORTS          PHILIPPINES                    3+               0     1439    2708
6 months    COHORTS          PHILIPPINES                    3+               1       89    2708
6 months    GMS-Nepal        NEPAL                          1                0      147     564
6 months    GMS-Nepal        NEPAL                          1                1        6     564
6 months    GMS-Nepal        NEPAL                          2                0      143     564
6 months    GMS-Nepal        NEPAL                          2                1        6     564
6 months    GMS-Nepal        NEPAL                          3+               0      253     564
6 months    GMS-Nepal        NEPAL                          3+               1        9     564
6 months    JiVitA-3         BANGLADESH                     1                0     5910   16811
6 months    JiVitA-3         BANGLADESH                     1                1      486   16811
6 months    JiVitA-3         BANGLADESH                     2                0     5435   16811
6 months    JiVitA-3         BANGLADESH                     2                1      265   16811
6 months    JiVitA-3         BANGLADESH                     3+               0     4446   16811
6 months    JiVitA-3         BANGLADESH                     3+               1      269   16811
6 months    Keneba           GAMBIA                         1                0      190    1623
6 months    Keneba           GAMBIA                         1                1        4    1623
6 months    Keneba           GAMBIA                         2                0      159    1623
6 months    Keneba           GAMBIA                         2                1        5    1623
6 months    Keneba           GAMBIA                         3+               0     1218    1623
6 months    Keneba           GAMBIA                         3+               1       47    1623
6 months    PROVIDE          BANGLADESH                     1                0      213     604
6 months    PROVIDE          BANGLADESH                     1                1        5     604
6 months    PROVIDE          BANGLADESH                     2                0      217     604
6 months    PROVIDE          BANGLADESH                     2                1        5     604
6 months    PROVIDE          BANGLADESH                     3+               0      160     604
6 months    PROVIDE          BANGLADESH                     3+               1        4     604
6 months    SAS-CompFeed     INDIA                          1                0      360    1336
6 months    SAS-CompFeed     INDIA                          1                1       32    1336
6 months    SAS-CompFeed     INDIA                          2                0      279    1336
6 months    SAS-CompFeed     INDIA                          2                1       25    1336
6 months    SAS-CompFeed     INDIA                          3+               0      569    1336
6 months    SAS-CompFeed     INDIA                          3+               1       71    1336
6 months    SAS-FoodSuppl    INDIA                          1                0        4     380
6 months    SAS-FoodSuppl    INDIA                          1                1        3     380
6 months    SAS-FoodSuppl    INDIA                          2                0       64     380
6 months    SAS-FoodSuppl    INDIA                          2                1        8     380
6 months    SAS-FoodSuppl    INDIA                          3+               0      258     380
6 months    SAS-FoodSuppl    INDIA                          3+               1       43     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      674    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        6    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      649    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        8    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0      654    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        4    1995
6 months    ZVITAMBO         ZIMBABWE                       1                0     3321    8668
6 months    ZVITAMBO         ZIMBABWE                       1                1      145    8668
6 months    ZVITAMBO         ZIMBABWE                       2                0     2545    8668
6 months    ZVITAMBO         ZIMBABWE                       2                1       93    8668
6 months    ZVITAMBO         ZIMBABWE                       3+               0     2451    8668
6 months    ZVITAMBO         ZIMBABWE                       3+               1      113    8668
24 months   COHORTS          GUATEMALA                      1                0       83    1064
24 months   COHORTS          GUATEMALA                      1                1       83    1064
24 months   COHORTS          GUATEMALA                      2                0       80    1064
24 months   COHORTS          GUATEMALA                      2                1       71    1064
24 months   COHORTS          GUATEMALA                      3+               0      380    1064
24 months   COHORTS          GUATEMALA                      3+               1      367    1064
24 months   COHORTS          INDIA                          1                0      457    3380
24 months   COHORTS          INDIA                          1                1      107    3380
24 months   COHORTS          INDIA                          2                0      679    3380
24 months   COHORTS          INDIA                          2                1      169    3380
24 months   COHORTS          INDIA                          3+               0     1355    3380
24 months   COHORTS          INDIA                          3+               1      613    3380
24 months   COHORTS          PHILIPPINES                    1                0      428    2445
24 months   COHORTS          PHILIPPINES                    1                1       96    2445
24 months   COHORTS          PHILIPPINES                    2                0      400    2445
24 months   COHORTS          PHILIPPINES                    2                1      144    2445
24 months   COHORTS          PHILIPPINES                    3+               0      910    2445
24 months   COHORTS          PHILIPPINES                    3+               1      467    2445
24 months   GMS-Nepal        NEPAL                          1                0      116     488
24 months   GMS-Nepal        NEPAL                          1                1       14     488
24 months   GMS-Nepal        NEPAL                          2                0      116     488
24 months   GMS-Nepal        NEPAL                          2                1       14     488
24 months   GMS-Nepal        NEPAL                          3+               0      203     488
24 months   GMS-Nepal        NEPAL                          3+               1       25     488
24 months   JiVitA-3         BANGLADESH                     1                0     2692    8632
24 months   JiVitA-3         BANGLADESH                     1                1      481    8632
24 months   JiVitA-3         BANGLADESH                     2                0     2513    8632
24 months   JiVitA-3         BANGLADESH                     2                1      410    8632
24 months   JiVitA-3         BANGLADESH                     3+               0     2080    8632
24 months   JiVitA-3         BANGLADESH                     3+               1      456    8632
24 months   Keneba           GAMBIA                         1                0      129    1376
24 months   Keneba           GAMBIA                         1                1        8    1376
24 months   Keneba           GAMBIA                         2                0      134    1376
24 months   Keneba           GAMBIA                         2                1        5    1376
24 months   Keneba           GAMBIA                         3+               0      996    1376
24 months   Keneba           GAMBIA                         3+               1      104    1376
24 months   PROVIDE          BANGLADESH                     1                0      193     578
24 months   PROVIDE          BANGLADESH                     1                1       18     578
24 months   PROVIDE          BANGLADESH                     2                0      193     578
24 months   PROVIDE          BANGLADESH                     2                1       20     578
24 months   PROVIDE          BANGLADESH                     3+               0      140     578
24 months   PROVIDE          BANGLADESH                     3+               1       14     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        1       6
24 months   ZVITAMBO         ZIMBABWE                       1                0      570    1639
24 months   ZVITAMBO         ZIMBABWE                       1                1       70    1639
24 months   ZVITAMBO         ZIMBABWE                       2                0      458    1639
24 months   ZVITAMBO         ZIMBABWE                       2                1       49    1639
24 months   ZVITAMBO         ZIMBABWE                       3+               0      433    1639
24 months   ZVITAMBO         ZIMBABWE                       3+               1       59    1639


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/da9d7148-be24-4906-94c0-d40509be23c8/084022d5-ff93-4b5b-b467-c3d49512686a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/da9d7148-be24-4906-94c0-d40509be23c8/084022d5-ff93-4b5b-b467-c3d49512686a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/da9d7148-be24-4906-94c0-d40509be23c8/084022d5-ff93-4b5b-b467-c3d49512686a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/da9d7148-be24-4906-94c0-d40509be23c8/084022d5-ff93-4b5b-b467-c3d49512686a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        INDIA         1                    NA                0.0384474   0.0227005   0.0541943
Birth       COHORTS        INDIA         2                    NA                0.0198833   0.0113130   0.0284535
Birth       COHORTS        INDIA         3+                   NA                0.0282098   0.0215622   0.0348573
Birth       COHORTS        PHILIPPINES   1                    NA                0.0231345   0.0107223   0.0355468
Birth       COHORTS        PHILIPPINES   2                    NA                0.0145880   0.0054655   0.0237106
Birth       COHORTS        PHILIPPINES   3+                   NA                0.0126647   0.0073491   0.0179802
Birth       GMS-Nepal      NEPAL         1                    NA                0.0710900   0.0363916   0.1057885
Birth       GMS-Nepal      NEPAL         2                    NA                0.0277778   0.0037532   0.0518023
Birth       GMS-Nepal      NEPAL         3+                   NA                0.0360656   0.0151254   0.0570058
Birth       JiVitA-3       BANGLADESH    1                    NA                0.1646168   0.1488541   0.1803794
Birth       JiVitA-3       BANGLADESH    2                    NA                0.0980446   0.0865198   0.1095694
Birth       JiVitA-3       BANGLADESH    3+                   NA                0.0725211   0.0627372   0.0823050
Birth       SAS-CompFeed   INDIA         1                    NA                0.0794299   0.0247399   0.1341199
Birth       SAS-CompFeed   INDIA         2                    NA                0.1000590   0.0485154   0.1516026
Birth       SAS-CompFeed   INDIA         3+                   NA                0.0596398   0.0199262   0.0993533
Birth       ZVITAMBO       ZIMBABWE      1                    NA                0.0389995   0.0281227   0.0498762
Birth       ZVITAMBO       ZIMBABWE      2                    NA                0.0311150   0.0219659   0.0402642
Birth       ZVITAMBO       ZIMBABWE      3+                   NA                0.0437267   0.0351909   0.0522626
6 months    COHORTS        GUATEMALA     1                    NA                0.1334898   0.0445605   0.2224191
6 months    COHORTS        GUATEMALA     2                    NA                0.1076736   0.0384215   0.1769257
6 months    COHORTS        GUATEMALA     3+                   NA                0.1097937   0.0874389   0.1321484
6 months    COHORTS        INDIA         1                    NA                0.0444325   0.0276624   0.0612026
6 months    COHORTS        INDIA         2                    NA                0.0428434   0.0294787   0.0562080
6 months    COHORTS        INDIA         3+                   NA                0.0515727   0.0431125   0.0600330
6 months    COHORTS        PHILIPPINES   1                    NA                0.0318628   0.0087274   0.0549982
6 months    COHORTS        PHILIPPINES   2                    NA                0.0448513   0.0117525   0.0779500
6 months    COHORTS        PHILIPPINES   3+                   NA                0.0578058   0.0438347   0.0717769
6 months    GMS-Nepal      NEPAL         1                    NA                0.0392157   0.0084313   0.0700001
6 months    GMS-Nepal      NEPAL         2                    NA                0.0402685   0.0086750   0.0718620
6 months    GMS-Nepal      NEPAL         3+                   NA                0.0343511   0.0122781   0.0564242
6 months    JiVitA-3       BANGLADESH    1                    NA                0.0739066   0.0620778   0.0857353
6 months    JiVitA-3       BANGLADESH    2                    NA                0.0547254   0.0451102   0.0643407
6 months    JiVitA-3       BANGLADESH    3+                   NA                0.0507274   0.0410276   0.0604271
6 months    SAS-CompFeed   INDIA         1                    NA                0.0916576   0.0513774   0.1319378
6 months    SAS-CompFeed   INDIA         2                    NA                0.1033178   0.0367084   0.1699273
6 months    SAS-CompFeed   INDIA         3+                   NA                0.0986576   0.0513095   0.1460057
6 months    ZVITAMBO       ZIMBABWE      1                    NA                0.0474352   0.0346474   0.0602230
6 months    ZVITAMBO       ZIMBABWE      2                    NA                0.0319912   0.0236721   0.0403102
6 months    ZVITAMBO       ZIMBABWE      3+                   NA                0.0521434   0.0380170   0.0662697
24 months   COHORTS        GUATEMALA     1                    NA                0.3851894   0.2684062   0.5019726
24 months   COHORTS        GUATEMALA     2                    NA                0.4281188   0.2917488   0.5644889
24 months   COHORTS        GUATEMALA     3+                   NA                0.4901642   0.4488822   0.5314462
24 months   COHORTS        INDIA         1                    NA                0.1777679   0.1339445   0.2215913
24 months   COHORTS        INDIA         2                    NA                0.2564269   0.2179499   0.2949040
24 months   COHORTS        INDIA         3+                   NA                0.2942912   0.2719076   0.3166748
24 months   COHORTS        PHILIPPINES   1                    NA                0.2178013   0.1668931   0.2687094
24 months   COHORTS        PHILIPPINES   2                    NA                0.2795479   0.2145931   0.3445027
24 months   COHORTS        PHILIPPINES   3+                   NA                0.3613607   0.3320449   0.3906765
24 months   GMS-Nepal      NEPAL         1                    NA                0.1210470   0.0604519   0.1816420
24 months   GMS-Nepal      NEPAL         2                    NA                0.1043343   0.0509539   0.1577147
24 months   GMS-Nepal      NEPAL         3+                   NA                0.0971953   0.0606045   0.1337860
24 months   JiVitA-3       BANGLADESH    1                    NA                0.1401267   0.1214599   0.1587936
24 months   JiVitA-3       BANGLADESH    2                    NA                0.1499434   0.1266941   0.1731927
24 months   JiVitA-3       BANGLADESH    3+                   NA                0.1571933   0.1326232   0.1817635
24 months   Keneba         GAMBIA        1                    NA                0.0583942   0.0191148   0.0976736
24 months   Keneba         GAMBIA        2                    NA                0.0359712   0.0050027   0.0669398
24 months   Keneba         GAMBIA        3+                   NA                0.0945455   0.0772488   0.1118422
24 months   PROVIDE        BANGLADESH    1                    NA                0.0941485   0.0536474   0.1346497
24 months   PROVIDE        BANGLADESH    2                    NA                0.0914077   0.0522270   0.1305884
24 months   PROVIDE        BANGLADESH    3+                   NA                0.0832507   0.0394663   0.1270350
24 months   ZVITAMBO       ZIMBABWE      1                    NA                0.0981622   0.0647773   0.1315471
24 months   ZVITAMBO       ZIMBABWE      2                    NA                0.0881184   0.0560457   0.1201912
24 months   ZVITAMBO       ZIMBABWE      3+                   NA                0.0977035   0.0677603   0.1276468


### Parameter: E(Y)


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        INDIA         NA                   NA                0.0274139   0.0224285   0.0323992
Birth       COHORTS        PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       GMS-Nepal      NEPAL         NA                   NA                0.0445402   0.0292033   0.0598771
Birth       JiVitA-3       BANGLADESH    NA                   NA                0.1090180   0.1044666   0.1135695
Birth       SAS-CompFeed   INDIA         NA                   NA                0.0726837   0.0523147   0.0930527
Birth       ZVITAMBO       ZIMBABWE      NA                   NA                0.0318582   0.0289357   0.0347806
6 months    COHORTS        GUATEMALA     NA                   NA                0.1290323   0.1078261   0.1502384
6 months    COHORTS        INDIA         NA                   NA                0.0484735   0.0420469   0.0549002
6 months    COHORTS        PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    GMS-Nepal      NEPAL         NA                   NA                0.0372340   0.0215945   0.0528736
6 months    JiVitA-3       BANGLADESH    NA                   NA                0.0606746   0.0568229   0.0645262
6 months    SAS-CompFeed   INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ZVITAMBO       ZIMBABWE      NA                   NA                0.0404938   0.0363439   0.0446436
24 months   COHORTS        GUATEMALA     NA                   NA                0.4896617   0.4596107   0.5197126
24 months   COHORTS        INDIA         NA                   NA                0.2630178   0.2481729   0.2778626
24 months   COHORTS        PHILIPPINES   NA                   NA                0.2891616   0.2711872   0.3071359
24 months   GMS-Nepal      NEPAL         NA                   NA                0.1086066   0.0809724   0.1362407
24 months   JiVitA-3       BANGLADESH    NA                   NA                0.1560473   0.1472898   0.1648047
24 months   Keneba         GAMBIA        NA                   NA                0.0850291   0.0702861   0.0997720
24 months   PROVIDE        BANGLADESH    NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ZVITAMBO       ZIMBABWE      NA                   NA                0.1086028   0.0935351   0.1236705


### Parameter: RR


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS        INDIA         2                    1                 0.5171546   0.2853529   0.9372566
Birth       COHORTS        INDIA         3+                   1                 0.7337236   0.4575512   1.1765905
Birth       COHORTS        PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS        PHILIPPINES   2                    1                 0.6305739   0.2766754   1.4371479
Birth       COHORTS        PHILIPPINES   3+                   1                 0.5474355   0.2770241   1.0818035
Birth       GMS-Nepal      NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal      NEPAL         2                    1                 0.3907407   0.1447400   1.0548458
Birth       GMS-Nepal      NEPAL         3+                   1                 0.5073224   0.2376100   1.0831868
Birth       JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3       BANGLADESH    2                    1                 0.5955930   0.5113883   0.6936628
Birth       JiVitA-3       BANGLADESH    3+                   1                 0.4405449   0.3731141   0.5201620
Birth       SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed   INDIA         2                    1                 1.2597152   0.5597490   2.8349889
Birth       SAS-CompFeed   INDIA         3+                   1                 0.7508480   0.2708168   2.0817493
Birth       ZVITAMBO       ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO       ZIMBABWE      2                    1                 0.7978313   0.5320441   1.1963946
Birth       ZVITAMBO       ZIMBABWE      3+                   1                 1.1212132   0.7977640   1.5758031
6 months    COHORTS        GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
6 months    COHORTS        GUATEMALA     2                    1                 0.8066054   0.3194529   2.0366454
6 months    COHORTS        GUATEMALA     3+                   1                 0.8224873   0.4099200   1.6502862
6 months    COHORTS        INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    COHORTS        INDIA         2                    1                 0.9642350   0.5911856   1.5726855
6 months    COHORTS        INDIA         3+                   1                 1.1606985   0.7694931   1.7507902
6 months    COHORTS        PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
6 months    COHORTS        PHILIPPINES   2                    1                 1.4076365   0.4999035   3.9636459
6 months    COHORTS        PHILIPPINES   3+                   1                 1.8142094   0.8443563   3.8980653
6 months    GMS-Nepal      NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal      NEPAL         2                    1                 1.0268456   0.3384548   3.1153701
6 months    GMS-Nepal      NEPAL         3+                   1                 0.8759542   0.3176197   2.4157685
6 months    JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3       BANGLADESH    2                    1                 0.7404678   0.5840913   0.9387104
6 months    JiVitA-3       BANGLADESH    3+                   1                 0.6863717   0.5334560   0.8831209
6 months    SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed   INDIA         2                    1                 1.1272148   0.4988174   2.5472511
6 months    SAS-CompFeed   INDIA         3+                   1                 1.0763706   0.5453124   2.1246055
6 months    ZVITAMBO       ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO       ZIMBABWE      2                    1                 0.6744179   0.4637838   0.9807144
6 months    ZVITAMBO       ZIMBABWE      3+                   1                 1.0992543   0.7501793   1.6107616
24 months   COHORTS        GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
24 months   COHORTS        GUATEMALA     2                    1                 1.1114502   0.7164365   1.7242583
24 months   COHORTS        GUATEMALA     3+                   1                 1.2725277   0.9297972   1.7415912
24 months   COHORTS        INDIA         1                    1                 1.0000000   1.0000000   1.0000000
24 months   COHORTS        INDIA         2                    1                 1.4424819   1.0831803   1.9209672
24 months   COHORTS        INDIA         3+                   1                 1.6554802   1.2813077   2.1389201
24 months   COHORTS        PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
24 months   COHORTS        PHILIPPINES   2                    1                 1.2834999   0.9252133   1.7805320
24 months   COHORTS        PHILIPPINES   3+                   1                 1.6591304   1.2981891   2.1204258
24 months   GMS-Nepal      NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal      NEPAL         2                    1                 0.8619326   0.4211925   1.7638674
24 months   GMS-Nepal      NEPAL         3+                   1                 0.8029552   0.4294198   1.5014143
24 months   JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3       BANGLADESH    2                    1                 1.0700556   0.8726811   1.3120704
24 months   JiVitA-3       BANGLADESH    3+                   1                 1.1217941   0.9130361   1.3782828
24 months   Keneba         GAMBIA        1                    1                 1.0000000   1.0000000   1.0000000
24 months   Keneba         GAMBIA        2                    1                 0.6160072   0.2065843   1.8368521
24 months   Keneba         GAMBIA        3+                   1                 1.6190909   0.8063563   3.2509887
24 months   PROVIDE        BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE        BANGLADESH    2                    1                 0.9708884   0.5299296   1.7787726
24 months   PROVIDE        BANGLADESH    3+                   1                 0.8842485   0.4489730   1.7415199
24 months   ZVITAMBO       ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO       ZIMBABWE      2                    1                 0.8976815   0.5457461   1.4765697
24 months   ZVITAMBO       ZIMBABWE      3+                   1                 0.9953272   0.6295558   1.5736116


### Parameter: PAR


agecat      studyid        country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS        INDIA         1                    NA                -0.0110335   -0.0253902    0.0033231
Birth       COHORTS        PHILIPPINES   1                    NA                -0.0080525   -0.0188211    0.0027161
Birth       GMS-Nepal      NEPAL         1                    NA                -0.0265498   -0.0531807    0.0000811
Birth       JiVitA-3       BANGLADESH    1                    NA                -0.0555987   -0.0704091   -0.0407883
Birth       SAS-CompFeed   INDIA         1                    NA                -0.0067462   -0.0605906    0.0470983
Birth       ZVITAMBO       ZIMBABWE      1                    NA                -0.0071413   -0.0175330    0.0032503
6 months    COHORTS        GUATEMALA     1                    NA                -0.0044576   -0.0917009    0.0827858
6 months    COHORTS        INDIA         1                    NA                 0.0040410   -0.0116762    0.0197583
6 months    COHORTS        PHILIPPINES   1                    NA                 0.0168817   -0.0058973    0.0396606
6 months    GMS-Nepal      NEPAL         1                    NA                -0.0019816   -0.0280222    0.0240589
6 months    JiVitA-3       BANGLADESH    1                    NA                -0.0132320   -0.0240554   -0.0024086
6 months    SAS-CompFeed   INDIA         1                    NA                 0.0041508   -0.0380853    0.0463868
6 months    ZVITAMBO       ZIMBABWE      1                    NA                -0.0069415   -0.0189200    0.0050371
24 months   COHORTS        GUATEMALA     1                    NA                 0.1044723   -0.0086336    0.2175781
24 months   COHORTS        INDIA         1                    NA                 0.0852499    0.0427306    0.1277691
24 months   COHORTS        PHILIPPINES   1                    NA                 0.0713603    0.0220454    0.1206752
24 months   GMS-Nepal      NEPAL         1                    NA                -0.0124404   -0.0650000    0.0401192
24 months   JiVitA-3       BANGLADESH    1                    NA                 0.0159205   -0.0017373    0.0335783
24 months   Keneba         GAMBIA        1                    NA                 0.0266349   -0.0114833    0.0647531
24 months   PROVIDE        BANGLADESH    1                    NA                -0.0041831   -0.0369272    0.0285610
24 months   ZVITAMBO       ZIMBABWE      1                    NA                 0.0104406   -0.0200530    0.0409341


### Parameter: PAF


agecat      studyid        country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS        INDIA         1                    NA                -0.4024795   -1.0321468    0.0320834
Birth       COHORTS        PHILIPPINES   1                    NA                -0.5339190   -1.4184483    0.0271003
Birth       GMS-Nepal      NEPAL         1                    NA                -0.5960862   -1.2770413   -0.1187725
Birth       JiVitA-3       BANGLADESH    1                    NA                -0.5099957   -0.6525211   -0.3797627
Birth       SAS-CompFeed   INDIA         1                    NA                -0.0928154   -1.1609686    0.4473564
Birth       ZVITAMBO       ZIMBABWE      1                    NA                -0.2241606   -0.5979962    0.0622199
6 months    COHORTS        GUATEMALA     1                    NA                -0.0345462   -0.9892749    0.4619719
6 months    COHORTS        INDIA         1                    NA                 0.0833659   -0.3053454    0.3563250
6 months    COHORTS        PHILIPPINES   1                    NA                 0.3463296   -0.3275964    0.6781514
6 months    GMS-Nepal      NEPAL         1                    NA                -0.0532213   -1.0453620    0.4576632
6 months    JiVitA-3       BANGLADESH    1                    NA                -0.2180815   -0.4092839   -0.0528203
6 months    SAS-CompFeed   INDIA         1                    NA                 0.0433235   -0.5125639    0.3949148
6 months    ZVITAMBO       ZIMBABWE      1                    NA                -0.1714202   -0.5079635    0.0900143
24 months   COHORTS        GUATEMALA     1                    NA                 0.2133560   -0.0554718    0.4137136
24 months   COHORTS        INDIA         1                    NA                 0.3241221    0.1421613    0.4674862
24 months   COHORTS        PHILIPPINES   1                    NA                 0.2467835    0.0562975    0.3988200
24 months   GMS-Nepal      NEPAL         1                    NA                -0.1145456   -0.7196685    0.2776446
24 months   JiVitA-3       BANGLADESH    1                    NA                 0.1020238   -0.0178936    0.2078138
24 months   Keneba         GAMBIA        1                    NA                 0.3132447   -0.3136430    0.6409734
24 months   PROVIDE        BANGLADESH    1                    NA                -0.0464971   -0.4817997    0.2609284
24 months   ZVITAMBO       ZIMBABWE      1                    NA                 0.0961354   -0.2327399    0.3372721
