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

**Outcome Variable:** haz

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
Birth       COHORTS          GUATEMALA                      1            112     852  haz              
Birth       COHORTS          GUATEMALA                      2            137     852  haz              
Birth       COHORTS          GUATEMALA                      3+           603     852  haz              
Birth       COHORTS          INDIA                          1            696    4122  haz              
Birth       COHORTS          INDIA                          2           1037    4122  haz              
Birth       COHORTS          INDIA                          3+          2389    4122  haz              
Birth       COHORTS          PHILIPPINES                    1            675    3050  haz              
Birth       COHORTS          PHILIPPINES                    2            687    3050  haz              
Birth       COHORTS          PHILIPPINES                    3+          1688    3050  haz              
Birth       GMS-Nepal        NEPAL                          1            211     696  haz              
Birth       GMS-Nepal        NEPAL                          2            180     696  haz              
Birth       GMS-Nepal        NEPAL                          3+           305     696  haz              
Birth       JiVitA-3         BANGLADESH                     1           7456   22455  haz              
Birth       JiVitA-3         BANGLADESH                     2           7615   22455  haz              
Birth       JiVitA-3         BANGLADESH                     3+          7384   22455  haz              
Birth       Keneba           GAMBIA                         1            156    1407  haz              
Birth       Keneba           GAMBIA                         2            146    1407  haz              
Birth       Keneba           GAMBIA                         3+          1105    1407  haz              
Birth       PROVIDE          BANGLADESH                     1            206     539  haz              
Birth       PROVIDE          BANGLADESH                     2            183     539  haz              
Birth       PROVIDE          BANGLADESH                     3+           150     539  haz              
Birth       SAS-CompFeed     INDIA                          1            361    1252  haz              
Birth       SAS-CompFeed     INDIA                          2            289    1252  haz              
Birth       SAS-CompFeed     INDIA                          3+           602    1252  haz              
Birth       ZVITAMBO         ZIMBABWE                       1           5989   13874  haz              
Birth       ZVITAMBO         ZIMBABWE                       2           4144   13874  haz              
Birth       ZVITAMBO         ZIMBABWE                       3+          3741   13874  haz              
6 months    COHORTS          GUATEMALA                      1            132     961  haz              
6 months    COHORTS          GUATEMALA                      2            139     961  haz              
6 months    COHORTS          GUATEMALA                      3+           690     961  haz              
6 months    COHORTS          INDIA                          1            740    4291  haz              
6 months    COHORTS          INDIA                          2           1096    4291  haz              
6 months    COHORTS          INDIA                          3+          2455    4291  haz              
6 months    COHORTS          PHILIPPINES                    1            574    2708  haz              
6 months    COHORTS          PHILIPPINES                    2            606    2708  haz              
6 months    COHORTS          PHILIPPINES                    3+          1528    2708  haz              
6 months    GMS-Nepal        NEPAL                          1            153     564  haz              
6 months    GMS-Nepal        NEPAL                          2            149     564  haz              
6 months    GMS-Nepal        NEPAL                          3+           262     564  haz              
6 months    JiVitA-3         BANGLADESH                     1           6396   16811  haz              
6 months    JiVitA-3         BANGLADESH                     2           5700   16811  haz              
6 months    JiVitA-3         BANGLADESH                     3+          4715   16811  haz              
6 months    Keneba           GAMBIA                         1            194    1623  haz              
6 months    Keneba           GAMBIA                         2            164    1623  haz              
6 months    Keneba           GAMBIA                         3+          1265    1623  haz              
6 months    PROVIDE          BANGLADESH                     1            218     604  haz              
6 months    PROVIDE          BANGLADESH                     2            222     604  haz              
6 months    PROVIDE          BANGLADESH                     3+           164     604  haz              
6 months    SAS-CompFeed     INDIA                          1            392    1336  haz              
6 months    SAS-CompFeed     INDIA                          2            304    1336  haz              
6 months    SAS-CompFeed     INDIA                          3+           640    1336  haz              
6 months    SAS-FoodSuppl    INDIA                          1              7     380  haz              
6 months    SAS-FoodSuppl    INDIA                          2             72     380  haz              
6 months    SAS-FoodSuppl    INDIA                          3+           301     380  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            680    1995  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1995  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1995  haz              
6 months    ZVITAMBO         ZIMBABWE                       1           3466    8668  haz              
6 months    ZVITAMBO         ZIMBABWE                       2           2638    8668  haz              
6 months    ZVITAMBO         ZIMBABWE                       3+          2564    8668  haz              
24 months   COHORTS          GUATEMALA                      1            166    1064  haz              
24 months   COHORTS          GUATEMALA                      2            151    1064  haz              
24 months   COHORTS          GUATEMALA                      3+           747    1064  haz              
24 months   COHORTS          INDIA                          1            564    3380  haz              
24 months   COHORTS          INDIA                          2            848    3380  haz              
24 months   COHORTS          INDIA                          3+          1968    3380  haz              
24 months   COHORTS          PHILIPPINES                    1            524    2445  haz              
24 months   COHORTS          PHILIPPINES                    2            544    2445  haz              
24 months   COHORTS          PHILIPPINES                    3+          1377    2445  haz              
24 months   GMS-Nepal        NEPAL                          1            130     488  haz              
24 months   GMS-Nepal        NEPAL                          2            130     488  haz              
24 months   GMS-Nepal        NEPAL                          3+           228     488  haz              
24 months   JiVitA-3         BANGLADESH                     1           3173    8632  haz              
24 months   JiVitA-3         BANGLADESH                     2           2923    8632  haz              
24 months   JiVitA-3         BANGLADESH                     3+          2536    8632  haz              
24 months   Keneba           GAMBIA                         1            137    1376  haz              
24 months   Keneba           GAMBIA                         2            139    1376  haz              
24 months   Keneba           GAMBIA                         3+          1100    1376  haz              
24 months   PROVIDE          BANGLADESH                     1            211     578  haz              
24 months   PROVIDE          BANGLADESH                     2            213     578  haz              
24 months   PROVIDE          BANGLADESH                     3+           154     578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       1            640    1639  haz              
24 months   ZVITAMBO         ZIMBABWE                       2            507    1639  haz              
24 months   ZVITAMBO         ZIMBABWE                       3+           492    1639  haz              


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
![](/tmp/79ba7b17-1053-4064-85cd-66ffdec99700/998c9db3-ed79-4686-9dc0-edd317f15ce2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/79ba7b17-1053-4064-85cd-66ffdec99700/998c9db3-ed79-4686-9dc0-edd317f15ce2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/79ba7b17-1053-4064-85cd-66ffdec99700/998c9db3-ed79-4686-9dc0-edd317f15ce2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -0.4215775   -0.6848631   -0.1582920
Birth       COHORTS          GUATEMALA                      2                    NA                 0.0658721   -0.3282136    0.4599578
Birth       COHORTS          GUATEMALA                      3+                   NA                 0.2877921    0.1928855    0.3826986
Birth       COHORTS          INDIA                          1                    NA                -0.8480409   -0.9799000   -0.7161818
Birth       COHORTS          INDIA                          2                    NA                -0.6450773   -0.7417145   -0.5484401
Birth       COHORTS          INDIA                          3+                   NA                -0.6552673   -0.7090055   -0.6015290
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.3984101   -0.5266655   -0.2701546
Birth       COHORTS          PHILIPPINES                    2                    NA                -0.2359368   -0.3806343   -0.0912392
Birth       COHORTS          PHILIPPINES                    3+                   NA                -0.2427814   -0.3013248   -0.1842380
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.1952347   -1.4532173   -0.9372520
Birth       GMS-Nepal        NEPAL                          2                    NA                -0.9754360   -1.2677449   -0.6831271
Birth       GMS-Nepal        NEPAL                          3+                   NA                -0.7328254   -0.8703704   -0.5952803
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.8467965   -1.8951618   -1.7984313
Birth       JiVitA-3         BANGLADESH                     2                    NA                -1.5392323   -1.5811759   -1.4972886
Birth       JiVitA-3         BANGLADESH                     3+                   NA                -1.4267784   -1.4694798   -1.3840769
Birth       Keneba           GAMBIA                         1                    NA                -0.0996333   -0.3505440    0.1512775
Birth       Keneba           GAMBIA                         2                    NA                 0.2079801   -0.0007206    0.4166809
Birth       Keneba           GAMBIA                         3+                   NA                 0.1247532    0.0248354    0.2246711
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.0942763   -1.2461793   -0.9423732
Birth       PROVIDE          BANGLADESH                     2                    NA                -0.8406366   -1.0328918   -0.6483813
Birth       PROVIDE          BANGLADESH                     3+                   NA                -0.5606211   -0.7685142   -0.3527279
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.6404168   -1.9003938   -1.3804398
Birth       SAS-CompFeed     INDIA                          2                    NA                -1.4453712   -1.5926818   -1.2980607
Birth       SAS-CompFeed     INDIA                          3+                   NA                -1.3746945   -1.5177537   -1.2316352
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5742891   -0.6371188   -0.5114594
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                -0.5360165   -0.5877010   -0.4843321
Birth       ZVITAMBO         ZIMBABWE                       3+                   NA                -0.5850323   -0.6367584   -0.5333062
6 months    COHORTS          GUATEMALA                      1                    NA                -1.9323567   -2.2413749   -1.6233385
6 months    COHORTS          GUATEMALA                      2                    NA                -1.7455552   -2.0454811   -1.4456292
6 months    COHORTS          GUATEMALA                      3+                   NA                -1.8405630   -1.9254477   -1.7556782
6 months    COHORTS          INDIA                          1                    NA                -0.9439163   -1.0576479   -0.8301848
6 months    COHORTS          INDIA                          2                    NA                -0.9521769   -1.0369339   -0.8674199
6 months    COHORTS          INDIA                          3+                   NA                -1.0849038   -1.1360590   -1.0337486
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.9697815   -1.0839627   -0.8556003
6 months    COHORTS          PHILIPPINES                    2                    NA                -1.0689693   -1.2159311   -0.9220074
6 months    COHORTS          PHILIPPINES                    3+                   NA                -1.2496899   -1.3157848   -1.1835950
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.4277541   -1.7041077   -1.1514006
6 months    GMS-Nepal        NEPAL                          2                    NA                -1.3519677   -1.6943099   -1.0096255
6 months    GMS-Nepal        NEPAL                          3+                   NA                -1.2319631   -1.3954638   -1.0684624
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3880391   -1.4405078   -1.3355703
6 months    JiVitA-3         BANGLADESH                     2                    NA                -1.2686015   -1.3087431   -1.2284598
6 months    JiVitA-3         BANGLADESH                     3+                   NA                -1.2967754   -1.3463476   -1.2472031
6 months    Keneba           GAMBIA                         1                    NA                -0.5990819   -0.7019319   -0.4962319
6 months    Keneba           GAMBIA                         2                    NA                -0.5055746   -0.7378209   -0.2733283
6 months    Keneba           GAMBIA                         3+                   NA                -0.9461996   -1.0250592   -0.8673400
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.2917120   -1.4676330   -1.1157911
6 months    PROVIDE          BANGLADESH                     2                    NA                -1.0315988   -1.2134600   -0.8497377
6 months    PROVIDE          BANGLADESH                     3+                   NA                -0.7166911   -0.9059499   -0.5274324
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.3354454   -1.5193359   -1.1515549
6 months    SAS-CompFeed     INDIA                          2                    NA                -1.3076758   -1.4207886   -1.1945630
6 months    SAS-CompFeed     INDIA                          3+                   NA                -1.4609484   -1.5556390   -1.3662577
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -2.7371429   -3.8398050   -1.6344807
6 months    SAS-FoodSuppl    INDIA                          2                    NA                -1.7179167   -1.9871634   -1.4486700
6 months    SAS-FoodSuppl    INDIA                          3+                   NA                -1.9224252   -2.0438733   -1.8009772
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5786520   -0.6798891   -0.4774150
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.5136218   -0.6451481   -0.3820956
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.6372812   -0.7349379   -0.5396244
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.8514853   -0.9208908   -0.7820798
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                -0.8766587   -0.9455739   -0.8077435
6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                -1.0044616   -1.0767250   -0.9321982
24 months   COHORTS          GUATEMALA                      1                    NA                -2.8778062   -3.1063523   -2.6492601
24 months   COHORTS          GUATEMALA                      2                    NA                -2.9167216   -3.1943974   -2.6390459
24 months   COHORTS          GUATEMALA                      3+                   NA                -3.0333633   -3.1336776   -2.9330491
24 months   COHORTS          INDIA                          1                    NA                -1.9145052   -2.0707814   -1.7582290
24 months   COHORTS          INDIA                          2                    NA                -2.0893387   -2.2044605   -1.9742169
24 months   COHORTS          INDIA                          3+                   NA                -2.3808847   -2.4416113   -2.3201581
24 months   COHORTS          PHILIPPINES                    1                    NA                -1.9964571   -2.1612472   -1.8316670
24 months   COHORTS          PHILIPPINES                    2                    NA                -2.3262857   -2.4977897   -2.1547816
24 months   COHORTS          PHILIPPINES                    3+                   NA                -2.6446088   -2.7181816   -2.5710359
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.7485978   -1.9780906   -1.5191049
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.8748414   -2.2062383   -1.5434444
24 months   GMS-Nepal        NEPAL                          3+                   NA                -1.9985940   -2.1083673   -1.8888207
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.9026077   -1.9669631   -1.8382523
24 months   JiVitA-3         BANGLADESH                     2                    NA                -1.9949718   -2.0581125   -1.9318311
24 months   JiVitA-3         BANGLADESH                     3+                   NA                -2.0818432   -2.1533356   -2.0103509
24 months   Keneba           GAMBIA                         1                    NA                -1.2879465   -1.5072683   -1.0686247
24 months   Keneba           GAMBIA                         2                    NA                -1.2313036   -1.4784573   -0.9841498
24 months   Keneba           GAMBIA                         3+                   NA                -1.6250368   -1.7009764   -1.5490973
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6253803   -1.7936076   -1.4571529
24 months   PROVIDE          BANGLADESH                     2                    NA                -1.6039128   -1.8185289   -1.3892966
24 months   PROVIDE          BANGLADESH                     3+                   NA                -1.5913798   -1.7455635   -1.4371960
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.4418809   -1.5963685   -1.2873934
24 months   ZVITAMBO         ZIMBABWE                       2                    NA                -1.5541475   -1.7124026   -1.3958924
24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -1.7166942   -1.8538628   -1.5795256


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          NA                   NA                -0.6773241   -0.7124609   -0.6421873
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5894148   -1.6086362   -1.5701935
Birth       Keneba           GAMBIA                         NA                   NA                 0.0483298   -0.0182746    0.1149342
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5003222   -0.5208673   -0.4797770
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    COHORTS          INDIA                          NA                   NA                -1.0455022   -1.0805318   -1.0104727
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    Keneba           GAMBIA                         NA                   NA                -0.9239386   -0.9768148   -0.8710623
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5432778   -0.5926218   -0.4939338
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8679886   -0.8935535   -0.8424236
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9905921   -3.0548289   -2.9263553
24 months   COHORTS          INDIA                          NA                   NA                -2.2397574   -2.2808841   -2.1986307
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0136481   -2.0413552   -1.9859409
24 months   Keneba           GAMBIA                         NA                   NA                -1.5883084   -1.6443765   -1.5322402
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6059640   -1.6629797   -1.5489484


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      2                    1                  0.4874497    0.0143583    0.9605410
Birth       COHORTS          GUATEMALA                      3+                   1                  0.7093696    0.4323928    0.9863465
Birth       COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          2                    1                  0.2029636    0.0396919    0.3662353
Birth       COHORTS          INDIA                          3+                   1                  0.1927736    0.0506571    0.3348901
Birth       COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    2                    1                  0.1624733   -0.0302304    0.3551770
Birth       COHORTS          PHILIPPINES                    3+                   1                  0.1556286    0.0151493    0.2961080
Birth       GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          2                    1                  0.2197987   -0.1684228    0.6080201
Birth       GMS-Nepal        NEPAL                          3+                   1                  0.4624093    0.1687499    0.7560687
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2                    1                  0.3075643    0.2459442    0.3691843
Birth       JiVitA-3         BANGLADESH                     3+                   1                  0.4200182    0.3584275    0.4816089
Birth       Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         2                    1                  0.3076134   -0.0184021    0.6336289
Birth       Keneba           GAMBIA                         3+                   1                  0.2243865   -0.0453239    0.4940969
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2                    1                  0.2536397    0.0093541    0.4979253
Birth       PROVIDE          BANGLADESH                     3+                   1                  0.5336552    0.2764900    0.7908204
Birth       SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                  0.1950455   -0.1219996    0.5120907
Birth       SAS-CompFeed     INDIA                          3+                   1                  0.2657223   -0.0726825    0.6041271
Birth       ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                  0.0382725   -0.0429114    0.1194564
Birth       ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0107432   -0.0920248    0.0705383
6 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      2                    1                  0.1868015   -0.2435348    0.6171379
6 months    COHORTS          GUATEMALA                      3+                   1                  0.0917937   -0.2281917    0.4117792
6 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          2                    1                 -0.0082605   -0.1492083    0.1326872
6 months    COHORTS          INDIA                          3+                   1                 -0.1409875   -0.2648888   -0.0170861
6 months    COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    2                    1                 -0.0991877   -0.2842323    0.0858568
6 months    COHORTS          PHILIPPINES                    3+                   1                 -0.2799084   -0.4109953   -0.1488215
6 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          2                    1                  0.0757864   -0.3649148    0.5164876
6 months    GMS-Nepal        NEPAL                          3+                   1                  0.1957910   -0.1248886    0.5164707
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2                    1                  0.1194376    0.0568628    0.1820124
6 months    JiVitA-3         BANGLADESH                     3+                   1                  0.0912637    0.0216967    0.1608307
6 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         2                    1                  0.0935073   -0.1603480    0.3473627
6 months    Keneba           GAMBIA                         3+                   1                 -0.3471177   -0.4768830   -0.2173524
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2                    1                  0.2601132    0.0076368    0.5125896
6 months    PROVIDE          BANGLADESH                     3+                   1                  0.5750209    0.3174064    0.8326353
6 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                  0.0277696   -0.1495569    0.2050960
6 months    SAS-CompFeed     INDIA                          3+                   1                 -0.1255030   -0.2882696    0.0372636
6 months    SAS-FoodSuppl    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          2                    1                  1.0192262   -0.1158322    2.1542846
6 months    SAS-FoodSuppl    INDIA                          3+                   1                  0.8147176   -0.2946126    1.9240478
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0650302   -0.1005483    0.2306086
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0586291   -0.1986248    0.0813666
6 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                 -0.0251733   -0.1226051    0.0722584
6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1529763   -0.2528044   -0.0531482
24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      2                    1                 -0.0389154   -0.3982267    0.3203959
24 months   COHORTS          GUATEMALA                      3+                   1                 -0.1555571   -0.4045614    0.0934472
24 months   COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          2                    1                 -0.1748335   -0.3687088    0.0190418
24 months   COHORTS          INDIA                          3+                   1                 -0.4663795   -0.6338693   -0.2988896
24 months   COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    2                    1                 -0.3298286   -0.5676642   -0.0919929
24 months   COHORTS          PHILIPPINES                    3+                   1                 -0.6481517   -0.8287732   -0.4675302
24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          2                    1                 -0.1262436   -0.5282501    0.2757628
24 months   GMS-Nepal        NEPAL                          3+                   1                 -0.2499963   -0.5036713    0.0036788
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2                    1                 -0.0923641   -0.1766119   -0.0081163
24 months   JiVitA-3         BANGLADESH                     3+                   1                 -0.1792356   -0.2704381   -0.0880330
24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         2                    1                  0.0566429   -0.2730164    0.3863022
24 months   Keneba           GAMBIA                         3+                   1                 -0.3370904   -0.5681939   -0.1059869
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                  0.0214675   -0.2485914    0.2915264
24 months   PROVIDE          BANGLADESH                     3+                   1                  0.0340005   -0.1912626    0.2592636
24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.1122666   -0.3321351    0.1076019
24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.2748133   -0.4804421   -0.0691845


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                 0.5513076    0.2942582    0.8083569
Birth       COHORTS          INDIA                          1                    NA                 0.1707168    0.0435938    0.2978398
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.1493609    0.0268894    0.2718323
Birth       GMS-Nepal        NEPAL                          1                    NA                 0.1100766   -0.1351844    0.3553376
Birth       JiVitA-3         BANGLADESH                     1                    NA                 0.2573817    0.2122447    0.3025187
Birth       Keneba           GAMBIA                         1                    NA                 0.1479630   -0.1010431    0.3969692
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.2091742    0.0698553    0.3484932
Birth       SAS-CompFeed     INDIA                          1                    NA                 0.2089950   -0.0271787    0.4451688
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.0739669    0.0149061    0.1330276
6 months    COHORTS          GUATEMALA                      1                    NA                 0.1166231   -0.1844439    0.4176900
6 months    COHORTS          INDIA                          1                    NA                -0.1015859   -0.2105807    0.0074090
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.1707909   -0.2800364   -0.0615453
6 months    GMS-Nepal        NEPAL                          1                    NA                 0.0769149   -0.1854417    0.3392715
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0749458    0.0271848    0.1227069
6 months    Keneba           GAMBIA                         1                    NA                -0.3248566   -0.4318766   -0.2178367
6 months    PROVIDE          BANGLADESH                     1                    NA                 0.2000205    0.0380401    0.3620010
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0664109   -0.1884110    0.0555892
6 months    SAS-FoodSuppl    INDIA                          1                    NA                 0.8384586   -0.2422291    1.9191464
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0353742   -0.0560980    0.1268465
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0165032   -0.0809090    0.0479026
24 months   COHORTS          GUATEMALA                      1                    NA                -0.1127859   -0.3366292    0.1110574
24 months   COHORTS          INDIA                          1                    NA                -0.3252522   -0.4761591   -0.1743452
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.4176574   -0.5776871   -0.2576277
24 months   GMS-Nepal        NEPAL                          1                    NA                -0.1388203   -0.3554567    0.0778162
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.1110404   -0.1713057   -0.0507751
24 months   Keneba           GAMBIA                         1                    NA                -0.3003619   -0.5166440   -0.0840798
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0229581   -0.1277589    0.1736752
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.1640831   -0.3039204   -0.0242457
