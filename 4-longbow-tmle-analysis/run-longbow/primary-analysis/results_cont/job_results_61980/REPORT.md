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

agecat      studyid          country                        parity    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      1             94     756  whz              
Birth       COHORTS          GUATEMALA                      2            118     756  whz              
Birth       COHORTS          GUATEMALA                      3+           544     756  whz              
Birth       COHORTS          INDIA                          1            641    3855  whz              
Birth       COHORTS          INDIA                          2            982    3855  whz              
Birth       COHORTS          INDIA                          3+          2232    3855  whz              
Birth       COHORTS          PHILIPPINES                    1            640    2899  whz              
Birth       COHORTS          PHILIPPINES                    2            657    2899  whz              
Birth       COHORTS          PHILIPPINES                    3+          1602    2899  whz              
Birth       GMS-Nepal        NEPAL                          1            185     641  whz              
Birth       GMS-Nepal        NEPAL                          2            169     641  whz              
Birth       GMS-Nepal        NEPAL                          3+           287     641  whz              
Birth       JiVitA-3         BANGLADESH                     1           5520   18014  whz              
Birth       JiVitA-3         BANGLADESH                     2           6303   18014  whz              
Birth       JiVitA-3         BANGLADESH                     3+          6191   18014  whz              
Birth       Keneba           GAMBIA                         1            146    1338  whz              
Birth       Keneba           GAMBIA                         2            142    1338  whz              
Birth       Keneba           GAMBIA                         3+          1050    1338  whz              
Birth       PROVIDE          BANGLADESH                     1            202     532  whz              
Birth       PROVIDE          BANGLADESH                     2            182     532  whz              
Birth       PROVIDE          BANGLADESH                     3+           148     532  whz              
Birth       SAS-CompFeed     INDIA                          1            304    1103  whz              
Birth       SAS-CompFeed     INDIA                          2            258    1103  whz              
Birth       SAS-CompFeed     INDIA                          3+           541    1103  whz              
Birth       ZVITAMBO         ZIMBABWE                       1           5561   12916  whz              
Birth       ZVITAMBO         ZIMBABWE                       2           3882   12916  whz              
Birth       ZVITAMBO         ZIMBABWE                       3+          3473   12916  whz              
6 months    COHORTS          GUATEMALA                      1            132     963  whz              
6 months    COHORTS          GUATEMALA                      2            139     963  whz              
6 months    COHORTS          GUATEMALA                      3+           692     963  whz              
6 months    COHORTS          INDIA                          1            741    4285  whz              
6 months    COHORTS          INDIA                          2           1093    4285  whz              
6 months    COHORTS          INDIA                          3+          2451    4285  whz              
6 months    COHORTS          PHILIPPINES                    1            574    2706  whz              
6 months    COHORTS          PHILIPPINES                    2            607    2706  whz              
6 months    COHORTS          PHILIPPINES                    3+          1525    2706  whz              
6 months    GMS-Nepal        NEPAL                          1            153     564  whz              
6 months    GMS-Nepal        NEPAL                          2            149     564  whz              
6 months    GMS-Nepal        NEPAL                          3+           262     564  whz              
6 months    JiVitA-3         BANGLADESH                     1           6398   16784  whz              
6 months    JiVitA-3         BANGLADESH                     2           5685   16784  whz              
6 months    JiVitA-3         BANGLADESH                     3+          4701   16784  whz              
6 months    Keneba           GAMBIA                         1            195    1623  whz              
6 months    Keneba           GAMBIA                         2            164    1623  whz              
6 months    Keneba           GAMBIA                         3+          1264    1623  whz              
6 months    PROVIDE          BANGLADESH                     1            218     603  whz              
6 months    PROVIDE          BANGLADESH                     2            222     603  whz              
6 months    PROVIDE          BANGLADESH                     3+           163     603  whz              
6 months    SAS-CompFeed     INDIA                          1            392    1334  whz              
6 months    SAS-CompFeed     INDIA                          2            302    1334  whz              
6 months    SAS-CompFeed     INDIA                          3+           640    1334  whz              
6 months    SAS-FoodSuppl    INDIA                          1              7     380  whz              
6 months    SAS-FoodSuppl    INDIA                          2             72     380  whz              
6 months    SAS-FoodSuppl    INDIA                          3+           301     380  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            679    1994  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1994  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1994  whz              
6 months    ZVITAMBO         ZIMBABWE                       1           3392    8504  whz              
6 months    ZVITAMBO         ZIMBABWE                       2           2587    8504  whz              
6 months    ZVITAMBO         ZIMBABWE                       3+          2525    8504  whz              
24 months   COHORTS          GUATEMALA                      1            167    1076  whz              
24 months   COHORTS          GUATEMALA                      2            151    1076  whz              
24 months   COHORTS          GUATEMALA                      3+           758    1076  whz              
24 months   COHORTS          INDIA                          1            561    3354  whz              
24 months   COHORTS          INDIA                          2            837    3354  whz              
24 months   COHORTS          INDIA                          3+          1956    3354  whz              
24 months   COHORTS          PHILIPPINES                    1            523    2449  whz              
24 months   COHORTS          PHILIPPINES                    2            544    2449  whz              
24 months   COHORTS          PHILIPPINES                    3+          1382    2449  whz              
24 months   GMS-Nepal        NEPAL                          1            130     487  whz              
24 months   GMS-Nepal        NEPAL                          2            130     487  whz              
24 months   GMS-Nepal        NEPAL                          3+           227     487  whz              
24 months   JiVitA-3         BANGLADESH                     1           3166    8603  whz              
24 months   JiVitA-3         BANGLADESH                     2           2909    8603  whz              
24 months   JiVitA-3         BANGLADESH                     3+          2528    8603  whz              
24 months   Keneba           GAMBIA                         1            137    1376  whz              
24 months   Keneba           GAMBIA                         2            139    1376  whz              
24 months   Keneba           GAMBIA                         3+          1100    1376  whz              
24 months   PROVIDE          BANGLADESH                     1            211     579  whz              
24 months   PROVIDE          BANGLADESH                     2            213     579  whz              
24 months   PROVIDE          BANGLADESH                     3+           155     579  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       1            161     432  whz              
24 months   ZVITAMBO         ZIMBABWE                       2            123     432  whz              
24 months   ZVITAMBO         ZIMBABWE                       3+           148     432  whz              


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

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
![](/tmp/5a659f35-4b3a-4e42-8174-c4a0e3717b99/6596f6f9-108f-45c4-ab25-b3f1d74b2213/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5a659f35-4b3a-4e42-8174-c4a0e3717b99/6596f6f9-108f-45c4-ab25-b3f1d74b2213/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5a659f35-4b3a-4e42-8174-c4a0e3717b99/6596f6f9-108f-45c4-ab25-b3f1d74b2213/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -1.6600193   -2.0719226   -1.2481160
Birth       COHORTS          GUATEMALA                      2                    NA                -1.2635031   -1.6798183   -0.8471880
Birth       COHORTS          GUATEMALA                      3+                   NA                -1.0891914   -1.2300420   -0.9483409
Birth       COHORTS          INDIA                          1                    NA                -1.2315761   -1.3525885   -1.1105637
Birth       COHORTS          INDIA                          2                    NA                -0.9879851   -1.0858304   -0.8901398
Birth       COHORTS          INDIA                          3+                   NA                -0.8831511   -0.9382911   -0.8280110
Birth       COHORTS          PHILIPPINES                    1                    NA                -1.1447941   -1.2814562   -1.0081320
Birth       COHORTS          PHILIPPINES                    2                    NA                -0.8499522   -1.0174096   -0.6824947
Birth       COHORTS          PHILIPPINES                    3+                   NA                -0.5817227   -0.6613822   -0.5020633
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.2628009   -1.4640020   -1.0615999
Birth       GMS-Nepal        NEPAL                          2                    NA                -1.1040547   -1.4161074   -0.7920021
Birth       GMS-Nepal        NEPAL                          3+                   NA                -1.0174119   -1.1767190   -0.8581048
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.9879027   -1.0396473   -0.9361581
Birth       JiVitA-3         BANGLADESH                     2                    NA                -0.7372674   -0.7877931   -0.6867416
Birth       JiVitA-3         BANGLADESH                     3+                   NA                -0.6505470   -0.6936941   -0.6073999
Birth       Keneba           GAMBIA                         1                    NA                -2.4158507   -2.7106028   -2.1210985
Birth       Keneba           GAMBIA                         2                    NA                -1.2960363   -1.4960717   -1.0960008
Birth       Keneba           GAMBIA                         3+                   NA                -1.2212360   -1.3145077   -1.1279644
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.3517565   -1.5080348   -1.1954782
Birth       PROVIDE          BANGLADESH                     2                    NA                -1.2223930   -1.4003067   -1.0444792
Birth       PROVIDE          BANGLADESH                     3+                   NA                -1.2111538   -1.4070760   -1.0152315
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.0150420   -1.1829514   -0.8471327
Birth       SAS-CompFeed     INDIA                          2                    NA                -0.6698803   -0.8552059   -0.4845546
Birth       SAS-CompFeed     INDIA                          3+                   NA                -0.5412823   -0.7353494   -0.3472152
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.7265265   -0.7909980   -0.6620550
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                -0.4139906   -0.4898543   -0.3381268
Birth       ZVITAMBO         ZIMBABWE                       3+                   NA                -0.3091806   -0.3828122   -0.2355490
6 months    COHORTS          GUATEMALA                      1                    NA                 0.1138403   -0.1345705    0.3622512
6 months    COHORTS          GUATEMALA                      2                    NA                 0.1831493   -0.1288122    0.4951108
6 months    COHORTS          GUATEMALA                      3+                   NA                 0.1722825    0.0770584    0.2675066
6 months    COHORTS          INDIA                          1                    NA                -0.5628038   -0.6658628   -0.4597448
6 months    COHORTS          INDIA                          2                    NA                -0.6209135   -0.7154341   -0.5263929
6 months    COHORTS          INDIA                          3+                   NA                -0.7981744   -0.8540643   -0.7422845
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.3007343   -0.4129128   -0.1885558
6 months    COHORTS          PHILIPPINES                    2                    NA                -0.2454829   -0.3703671   -0.1205986
6 months    COHORTS          PHILIPPINES                    3+                   NA                -0.3778855   -0.4506239   -0.3051471
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.3310012   -0.5213143   -0.1406882
6 months    GMS-Nepal        NEPAL                          2                    NA                -0.5524489   -0.9586440   -0.1462538
6 months    GMS-Nepal        NEPAL                          3+                   NA                -0.8772209   -1.0168004   -0.7376415
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.6092579   -0.6601337   -0.5583821
6 months    JiVitA-3         BANGLADESH                     2                    NA                -0.5618062   -0.6025024   -0.5211099
6 months    JiVitA-3         BANGLADESH                     3+                   NA                -0.5645160   -0.6122255   -0.5168066
6 months    Keneba           GAMBIA                         1                    NA                -0.0721781   -0.2211690    0.0768127
6 months    Keneba           GAMBIA                         2                    NA                -0.0324283   -0.3074112    0.2425546
6 months    Keneba           GAMBIA                         3+                   NA                -0.1411676   -0.2186681   -0.0636670
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.1285483   -0.3403955    0.0832989
6 months    PROVIDE          BANGLADESH                     2                    NA                -0.1502898   -0.3478152    0.0472356
6 months    PROVIDE          BANGLADESH                     3+                   NA                -0.4917112   -0.6467852   -0.3366372
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.5913154   -0.7331458   -0.4494849
6 months    SAS-CompFeed     INDIA                          2                    NA                -0.7168822   -0.9014238   -0.5323405
6 months    SAS-CompFeed     INDIA                          3+                   NA                -0.6941017   -0.8252090   -0.5629945
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.9457143   -2.3960187   -1.4954099
6 months    SAS-FoodSuppl    INDIA                          2                    NA                -0.7120833   -0.9054564   -0.5187103
6 months    SAS-FoodSuppl    INDIA                          3+                   NA                -1.0622259   -1.1982227   -0.9262292
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0284821   -0.0940168    0.1509810
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0497036   -0.0808063    0.1802134
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                 0.0456899   -0.0790737    0.1704536
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.3593421    0.3037899    0.4148943
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                 0.3024856    0.2264495    0.3785217
6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                 0.3350316    0.2554684    0.4145948
24 months   COHORTS          GUATEMALA                      1                    NA                -0.2430552   -0.4581415   -0.0279690
24 months   COHORTS          GUATEMALA                      2                    NA                -0.2417316   -0.4768000   -0.0066631
24 months   COHORTS          GUATEMALA                      3+                   NA                -0.2754148   -0.3551619   -0.1956676
24 months   COHORTS          INDIA                          1                    NA                -0.5679718   -0.6787269   -0.4572168
24 months   COHORTS          INDIA                          2                    NA                -0.5613397   -0.6564501   -0.4662293
24 months   COHORTS          INDIA                          3+                   NA                -0.7092019   -0.7618969   -0.6565069
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.4396002   -0.5534526   -0.3257478
24 months   COHORTS          PHILIPPINES                    2                    NA                -0.6148875   -0.7566391   -0.4731359
24 months   COHORTS          PHILIPPINES                    3+                   NA                -0.6897180   -0.7569029   -0.6225332
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1822988   -1.4384026   -0.9261949
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.1396619   -1.4859882   -0.7933355
24 months   GMS-Nepal        NEPAL                          3+                   NA                -0.9939427   -1.1445354   -0.8433501
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.2737564   -1.3390819   -1.2084310
24 months   JiVitA-3         BANGLADESH                     2                    NA                -1.3028366   -1.3613247   -1.2443486
24 months   JiVitA-3         BANGLADESH                     3+                   NA                -1.2845293   -1.3458065   -1.2232521
24 months   Keneba           GAMBIA                         1                    NA                -0.8063117   -0.9833536   -0.6292699
24 months   Keneba           GAMBIA                         2                    NA                -0.7432384   -1.0049417   -0.4815350
24 months   Keneba           GAMBIA                         3+                   NA                -0.7568481   -0.8312879   -0.6824083
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.8835045   -1.0327386   -0.7342704
24 months   PROVIDE          BANGLADESH                     2                    NA                -0.8443629   -1.0403215   -0.6484042
24 months   PROVIDE          BANGLADESH                     3+                   NA                -1.0640779   -1.2642707   -0.8638850
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.9394377   -1.0963235   -0.7825519
24 months   ZVITAMBO         ZIMBABWE                       2                    NA                -1.0219018   -1.2163274   -0.8274763
24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -1.4985791   -1.7600507   -1.2371075


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          NA                   NA                -0.9498080   -0.9874148   -0.9122013
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       Keneba           GAMBIA                         NA                   NA                -1.2037220   -1.2694226   -1.1380213
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5156349   -0.5414936   -0.4897762
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    COHORTS          INDIA                          NA                   NA                -0.7068611   -0.7417800   -0.6719423
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    Keneba           GAMBIA                         NA                   NA                -0.1873900   -0.2456638   -0.1291162
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0797179    0.0266621    0.1327737
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3106432    0.2849661    0.3363203
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2813755   -0.3354674   -0.2272835
24 months   COHORTS          INDIA                          NA                   NA                -0.6564729   -0.6914450   -0.6215007
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2978031   -1.3210763   -1.2745298
24 months   Keneba           GAMBIA                         NA                   NA                -0.7834078   -0.8357743   -0.7310414
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1817824   -1.2809226   -1.0826422


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      2                    1                  0.3965161   -0.1886340    0.9816663
Birth       COHORTS          GUATEMALA                      3+                   1                  0.5708279    0.1347671    1.0068886
Birth       COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          2                    1                  0.2435910    0.0878891    0.3992928
Birth       COHORTS          INDIA                          3+                   1                  0.3484250    0.2154285    0.4814215
Birth       COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    2                    1                  0.2948419    0.0785545    0.5111294
Birth       COHORTS          PHILIPPINES                    3+                   1                  0.5630714    0.4047323    0.7214104
Birth       GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          2                    1                  0.1587462   -0.2123051    0.5297975
Birth       GMS-Nepal        NEPAL                          3+                   1                  0.2453890   -0.0115405    0.5023186
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2                    1                  0.2506354    0.1788415    0.3224292
Birth       JiVitA-3         BANGLADESH                     3+                   1                  0.3373557    0.2711389    0.4035725
Birth       Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         2                    1                  1.1198144    0.7636172    1.4760116
Birth       Keneba           GAMBIA                         3+                   1                  1.1946146    0.8846077    1.5046215
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2                    1                  0.1293635   -0.1071741    0.3659012
Birth       PROVIDE          BANGLADESH                     3+                   1                  0.1406027   -0.1105597    0.3917651
Birth       SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                  0.3451618    0.1721253    0.5181983
Birth       SAS-CompFeed     INDIA                          3+                   1                  0.4737598    0.2409037    0.7066158
Birth       ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                  0.3125359    0.2130170    0.4120549
Birth       ZVITAMBO         ZIMBABWE                       3+                   1                  0.4173459    0.3195241    0.5151676
6 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      2                    1                  0.0693090   -0.3293122    0.4679301
6 months    COHORTS          GUATEMALA                      3+                   1                  0.0584421   -0.2077161    0.3246003
6 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          2                    1                 -0.0581096   -0.1978677    0.0816484
6 months    COHORTS          INDIA                          3+                   1                 -0.2353705   -0.3524923   -0.1182488
6 months    COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    2                    1                  0.0552514   -0.1127736    0.2232765
6 months    COHORTS          PHILIPPINES                    3+                   1                 -0.0771512   -0.2107647    0.0564624
6 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          2                    1                 -0.2214477   -0.6702694    0.2273740
6 months    GMS-Nepal        NEPAL                          3+                   1                 -0.5462197   -0.7816446   -0.3107949
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2                    1                  0.0474517   -0.0164029    0.1113063
6 months    JiVitA-3         BANGLADESH                     3+                   1                  0.0447419   -0.0225029    0.1119867
6 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         2                    1                  0.0397498   -0.2731971    0.3526967
6 months    Keneba           GAMBIA                         3+                   1                 -0.0689894   -0.2363064    0.0983275
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2                    1                 -0.0217415   -0.3116688    0.2681858
6 months    PROVIDE          BANGLADESH                     3+                   1                 -0.3631629   -0.6254941   -0.1008317
6 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                 -0.1255668   -0.3018996    0.0507661
6 months    SAS-CompFeed     INDIA                          3+                   1                 -0.1027864   -0.2625581    0.0569854
6 months    SAS-FoodSuppl    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          2                    1                  1.2336310    0.7435624    1.7236995
6 months    SAS-FoodSuppl    INDIA                          3+                   1                  0.8834884    0.4130958    1.3538809
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0212215   -0.1579782    0.2004211
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0172078   -0.1583583    0.1927740
6 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                 -0.0568565   -0.1508321    0.0371192
6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0243105   -0.1212418    0.0726208
24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      2                    1                  0.0013237   -0.3173215    0.3199689
24 months   COHORTS          GUATEMALA                      3+                   1                 -0.0323595   -0.2617734    0.1970544
24 months   COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          2                    1                  0.0066321   -0.1388118    0.1520761
24 months   COHORTS          INDIA                          3+                   1                 -0.1412301   -0.2634806   -0.0189796
24 months   COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    2                    1                 -0.1752873   -0.3571190    0.0065444
24 months   COHORTS          PHILIPPINES                    3+                   1                 -0.2501178   -0.3820550   -0.1181807
24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          2                    1                  0.0426369   -0.3884760    0.4737498
24 months   GMS-Nepal        NEPAL                          3+                   1                  0.1883560   -0.1096381    0.4863501
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2                    1                 -0.0290802   -0.1160936    0.0579332
24 months   JiVitA-3         BANGLADESH                     3+                   1                 -0.0107729   -0.0997647    0.0782190
24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         2                    1                  0.0630734   -0.2530385    0.3791853
24 months   Keneba           GAMBIA                         3+                   1                  0.0494636   -0.1426554    0.2415826
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                  0.0391416   -0.2062014    0.2844847
24 months   PROVIDE          BANGLADESH                     3+                   1                 -0.1805734   -0.4276115    0.0664648
24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0824641   -0.3315315    0.1666033
24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.5591414   -0.8636105   -0.2546722


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                 0.5978764    0.1933934    1.0023594
Birth       COHORTS          INDIA                          1                    NA                 0.2817680    0.1661810    0.3973551
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.4020690    0.2705884    0.5335497
Birth       GMS-Nepal        NEPAL                          1                    NA                 0.1463579   -0.0429472    0.3356629
Birth       JiVitA-3         BANGLADESH                     1                    NA                 0.2100755    0.1597512    0.2603998
Birth       Keneba           GAMBIA                         1                    NA                 1.2121287    0.9212614    1.5029960
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.0532978   -0.0860991    0.1926948
Birth       SAS-CompFeed     INDIA                          1                    NA                 0.3449967    0.1267147    0.5632787
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.2108916    0.1511621    0.2706211
6 months    COHORTS          GUATEMALA                      1                    NA                 0.0802407   -0.1622598    0.3227411
6 months    COHORTS          INDIA                          1                    NA                -0.1440573   -0.2429991   -0.0451156
6 months    COHORTS          PHILIPPINES                    1                    NA                 0.0068910   -0.1007554    0.1145374
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.2728404   -0.4573578   -0.0883230
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0157418   -0.0311013    0.0625848
6 months    Keneba           GAMBIA                         1                    NA                -0.1152119   -0.2656326    0.0352088
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0705423   -0.2634242    0.1223395
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0743930   -0.2025306    0.0537446
6 months    SAS-FoodSuppl    INDIA                          1                    NA                 0.9335564    0.4796129    1.3874999
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0512358   -0.0586133    0.1610850
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0486988   -0.0999602    0.0025625
24 months   COHORTS          GUATEMALA                      1                    NA                -0.0383202   -0.2477788    0.1711384
24 months   COHORTS          INDIA                          1                    NA                -0.0885010   -0.1947383    0.0177362
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.1703590   -0.2788865   -0.0618314
24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0459880   -0.1976907    0.2896668
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0240467   -0.0862012    0.0381079
24 months   Keneba           GAMBIA                         1                    NA                 0.0229039   -0.1536236    0.1994315
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0093625   -0.1408618    0.1221367
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.2423447   -0.3871807   -0.0975088
