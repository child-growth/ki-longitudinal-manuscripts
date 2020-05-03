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
![](/tmp/e01d5998-ee8b-4abb-8244-21c3530ef1af/156f2965-7213-4d1d-b12e-f6b59ddc4ed6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e01d5998-ee8b-4abb-8244-21c3530ef1af/156f2965-7213-4d1d-b12e-f6b59ddc4ed6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e01d5998-ee8b-4abb-8244-21c3530ef1af/156f2965-7213-4d1d-b12e-f6b59ddc4ed6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -0.4323968   -0.7109603   -0.1538334
Birth       COHORTS          GUATEMALA                      2                    NA                -0.0268890   -0.4476154    0.3938374
Birth       COHORTS          GUATEMALA                      3+                   NA                 0.2900651    0.1872067    0.3929235
Birth       COHORTS          INDIA                          1                    NA                -0.8194988   -0.9491363   -0.6898614
Birth       COHORTS          INDIA                          2                    NA                -0.6583910   -0.7501149   -0.5666672
Birth       COHORTS          INDIA                          3+                   NA                -0.6596083   -0.7127424   -0.6064743
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.4285017   -0.5527920   -0.3042113
Birth       COHORTS          PHILIPPINES                    2                    NA                -0.2239618   -0.3709301   -0.0769935
Birth       COHORTS          PHILIPPINES                    3+                   NA                -0.2415256   -0.3013483   -0.1817029
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.2168521   -1.4635545   -0.9701496
Birth       GMS-Nepal        NEPAL                          2                    NA                -1.0044115   -1.2892478   -0.7195752
Birth       GMS-Nepal        NEPAL                          3+                   NA                -0.5569562   -0.6970932   -0.4168192
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.8576638   -1.9050286   -1.8102989
Birth       JiVitA-3         BANGLADESH                     2                    NA                -1.5446773   -1.5863300   -1.5030245
Birth       JiVitA-3         BANGLADESH                     3+                   NA                -1.4336294   -1.4742219   -1.3930370
Birth       Keneba           GAMBIA                         1                    NA                -0.1737216   -0.3775580    0.0301148
Birth       Keneba           GAMBIA                         2                    NA                 0.1834800   -0.0232769    0.3902369
Birth       Keneba           GAMBIA                         3+                   NA                 0.1022481   -0.0167138    0.2212100
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.0802525   -1.2330556   -0.9274494
Birth       PROVIDE          BANGLADESH                     2                    NA                -0.8442224   -1.0313978   -0.6570469
Birth       PROVIDE          BANGLADESH                     3+                   NA                -0.5969341   -0.7771790   -0.4166892
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.6404168   -1.9003938   -1.3804398
Birth       SAS-CompFeed     INDIA                          2                    NA                -1.4453712   -1.5926818   -1.2980607
Birth       SAS-CompFeed     INDIA                          3+                   NA                -1.3746945   -1.5177537   -1.2316352
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5555529   -0.6193283   -0.4917776
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                -0.5409296   -0.5941451   -0.4877142
Birth       ZVITAMBO         ZIMBABWE                       3+                   NA                -0.5861287   -0.6391070   -0.5331504
6 months    COHORTS          GUATEMALA                      1                    NA                -1.9053858   -2.2113691   -1.5994025
6 months    COHORTS          GUATEMALA                      2                    NA                -1.7437982   -2.0328655   -1.4547309
6 months    COHORTS          GUATEMALA                      3+                   NA                -1.8269353   -1.9127844   -1.7410862
6 months    COHORTS          INDIA                          1                    NA                -0.9388126   -1.0511959   -0.8264293
6 months    COHORTS          INDIA                          2                    NA                -0.9483427   -1.0332326   -0.8634528
6 months    COHORTS          INDIA                          3+                   NA                -1.0901265   -1.1412009   -1.0390521
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.9505817   -1.0942134   -0.8069501
6 months    COHORTS          PHILIPPINES                    2                    NA                -1.0505661   -1.2157236   -0.8854085
6 months    COHORTS          PHILIPPINES                    3+                   NA                -1.2637622   -1.3294608   -1.1980636
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.4694443   -1.7179285   -1.2209601
6 months    GMS-Nepal        NEPAL                          2                    NA                -1.3743979   -1.6984796   -1.0503163
6 months    GMS-Nepal        NEPAL                          3+                   NA                -1.1686152   -1.3247065   -1.0125238
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3915674   -1.4419461   -1.3411888
6 months    JiVitA-3         BANGLADESH                     2                    NA                -1.2659440   -1.3077707   -1.2241173
6 months    JiVitA-3         BANGLADESH                     3+                   NA                -1.3001667   -1.3517609   -1.2485725
6 months    Keneba           GAMBIA                         1                    NA                -0.6498098   -0.7697486   -0.5298709
6 months    Keneba           GAMBIA                         2                    NA                -0.5998623   -0.8615658   -0.3381588
6 months    Keneba           GAMBIA                         3+                   NA                -0.9619666   -1.0391666   -0.8847666
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.2584622   -1.4329689   -1.0839554
6 months    PROVIDE          BANGLADESH                     2                    NA                -1.0490370   -1.2510467   -0.8470274
6 months    PROVIDE          BANGLADESH                     3+                   NA                -0.6345684   -0.8147384   -0.4543985
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.3354454   -1.5193359   -1.1515549
6 months    SAS-CompFeed     INDIA                          2                    NA                -1.3076758   -1.4207886   -1.1945630
6 months    SAS-CompFeed     INDIA                          3+                   NA                -1.4609484   -1.5556390   -1.3662577
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -2.7371429   -3.8398050   -1.6344807
6 months    SAS-FoodSuppl    INDIA                          2                    NA                -1.7179167   -1.9871634   -1.4486700
6 months    SAS-FoodSuppl    INDIA                          3+                   NA                -1.9224252   -2.0438733   -1.8009772
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5845349   -0.6863662   -0.4827036
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.5341846   -0.6617324   -0.4066369
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.6303047   -0.7290419   -0.5315674
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.8609854   -0.9303835   -0.7915872
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                -0.8644557   -0.9316229   -0.7972886
6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                -0.9846128   -1.0549614   -0.9142642
24 months   COHORTS          GUATEMALA                      1                    NA                -2.8063353   -3.0314270   -2.5812437
24 months   COHORTS          GUATEMALA                      2                    NA                -2.9741410   -3.2305054   -2.7177767
24 months   COHORTS          GUATEMALA                      3+                   NA                -3.0582224   -3.1687376   -2.9477073
24 months   COHORTS          INDIA                          1                    NA                -1.9203729   -2.0840631   -1.7566828
24 months   COHORTS          INDIA                          2                    NA                -2.0893667   -2.2017117   -1.9770217
24 months   COHORTS          INDIA                          3+                   NA                -2.3778385   -2.4397164   -2.3159606
24 months   COHORTS          PHILIPPINES                    1                    NA                -2.0070568   -2.1737579   -1.8403556
24 months   COHORTS          PHILIPPINES                    2                    NA                -2.2839642   -2.4638305   -2.1040979
24 months   COHORTS          PHILIPPINES                    3+                   NA                -2.6501250   -2.7237744   -2.5764755
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.7699553   -1.9829834   -1.5569272
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.8658145   -2.1684444   -1.5631847
24 months   GMS-Nepal        NEPAL                          3+                   NA                -1.9887589   -2.1059616   -1.8715562
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.9211840   -1.9846572   -1.8577107
24 months   JiVitA-3         BANGLADESH                     2                    NA                -1.9979104   -2.0619106   -1.9339101
24 months   JiVitA-3         BANGLADESH                     3+                   NA                -2.0529589   -2.1188485   -1.9870692
24 months   Keneba           GAMBIA                         1                    NA                -1.4064859   -1.6349966   -1.1779753
24 months   Keneba           GAMBIA                         2                    NA                -1.2821385   -1.5292004   -1.0350767
24 months   Keneba           GAMBIA                         3+                   NA                -1.6187687   -1.6916757   -1.5458618
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6499051   -1.8242327   -1.4755775
24 months   PROVIDE          BANGLADESH                     2                    NA                -1.5958042   -1.8060075   -1.3856008
24 months   PROVIDE          BANGLADESH                     3+                   NA                -1.5851254   -1.7387350   -1.4315158
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.4745430   -1.6310150   -1.3180711
24 months   ZVITAMBO         ZIMBABWE                       2                    NA                -1.5721393   -1.7385599   -1.4057186
24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -1.6989930   -1.8276847   -1.5703013


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
Birth       COHORTS          GUATEMALA                      2                    1                  0.4055079   -0.1002808    0.9112966
Birth       COHORTS          GUATEMALA                      3+                   1                  0.7224620    0.4252552    1.0196688
Birth       COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          2                    1                  0.1611078    0.0025746    0.3196410
Birth       COHORTS          INDIA                          3+                   1                  0.1598905    0.0200601    0.2997209
Birth       COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    2                    1                  0.2045398    0.0125793    0.3965004
Birth       COHORTS          PHILIPPINES                    3+                   1                  0.1869761    0.0495150    0.3244371
Birth       GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          2                    1                  0.2124405   -0.1639811    0.5888622
Birth       GMS-Nepal        NEPAL                          3+                   1                  0.6598958    0.3746262    0.9451655
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2                    1                  0.3129865    0.2517603    0.3742128
Birth       JiVitA-3         BANGLADESH                     3+                   1                  0.4240344    0.3643969    0.4836719
Birth       Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         2                    1                  0.3572016    0.0673860    0.6470171
Birth       Keneba           GAMBIA                         3+                   1                  0.2759696    0.0403731    0.5115662
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2                    1                  0.2360301   -0.0050927    0.4771529
Birth       PROVIDE          BANGLADESH                     3+                   1                  0.4833184    0.2471463    0.7194905
Birth       SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                  0.1950455   -0.1219996    0.5120907
Birth       SAS-CompFeed     INDIA                          3+                   1                  0.2657223   -0.0726825    0.6041271
Birth       ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                  0.0146233   -0.0682814    0.0975280
Birth       ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0305758   -0.1133889    0.0522374
6 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      2                    1                  0.1615876   -0.2595337    0.5827089
6 months    COHORTS          GUATEMALA                      3+                   1                  0.0784505   -0.2393213    0.3962223
6 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          2                    1                 -0.0095301   -0.1494861    0.1304260
6 months    COHORTS          INDIA                          3+                   1                 -0.1513139   -0.2739451   -0.0286827
6 months    COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    2                    1                 -0.0999843   -0.3189745    0.1190059
6 months    COHORTS          PHILIPPINES                    3+                   1                 -0.3131805   -0.4711266   -0.1552343
6 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          2                    1                  0.0950464   -0.3140403    0.5041330
6 months    GMS-Nepal        NEPAL                          3+                   1                  0.3008291    0.0078079    0.5938504
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2                    1                  0.1256234    0.0640769    0.1871700
6 months    JiVitA-3         BANGLADESH                     3+                   1                  0.0914007    0.0212835    0.1615179
6 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         2                    1                  0.0499474   -0.2378442    0.3377391
6 months    Keneba           GAMBIA                         3+                   1                 -0.3121568   -0.4549249   -0.1693888
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2                    1                  0.2094251   -0.0573323    0.4761825
6 months    PROVIDE          BANGLADESH                     3+                   1                  0.6238937    0.3732456    0.8745419
6 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                  0.0277696   -0.1495569    0.2050960
6 months    SAS-CompFeed     INDIA                          3+                   1                 -0.1255030   -0.2882696    0.0372636
6 months    SAS-FoodSuppl    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          2                    1                  1.0192262   -0.1158322    2.1542846
6 months    SAS-FoodSuppl    INDIA                          3+                   1                  0.8147176   -0.2946126    1.9240478
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0503503   -0.1127120    0.2134126
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0457697   -0.1875864    0.0960469
6 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                 -0.0034704   -0.0996993    0.0927586
6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1236274   -0.2220927   -0.0251622
24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      2                    1                 -0.1678057   -0.5087073    0.1730960
24 months   COHORTS          GUATEMALA                      3+                   1                 -0.2518871   -0.5022869   -0.0014873
24 months   COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          2                    1                 -0.1689938   -0.3672544    0.0292668
24 months   COHORTS          INDIA                          3+                   1                 -0.4574655   -0.6322235   -0.2827076
24 months   COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    2                    1                 -0.2769074   -0.5220962   -0.0317187
24 months   COHORTS          PHILIPPINES                    3+                   1                 -0.6430682   -0.8253969   -0.4607395
24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          2                    1                 -0.0958592   -0.4653108    0.2735923
24 months   GMS-Nepal        NEPAL                          3+                   1                 -0.2188036   -0.4616651    0.0240578
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2                    1                 -0.0767264   -0.1610959    0.0076431
24 months   JiVitA-3         BANGLADESH                     3+                   1                 -0.1317749   -0.2190085   -0.0445414
24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         2                    1                  0.1243474   -0.2120240    0.4607188
24 months   Keneba           GAMBIA                         3+                   1                 -0.2122828   -0.4519704    0.0274048
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                  0.0541010   -0.2173626    0.3255646
24 months   PROVIDE          BANGLADESH                     3+                   1                  0.0647798   -0.1659351    0.2954947
24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0975962   -0.3256388    0.1304464
24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.2244500   -0.4266817   -0.0222182


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                 0.5621269    0.2872395    0.8370143
Birth       COHORTS          INDIA                          1                    NA                 0.1421747    0.0173236    0.2670259
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.1794525    0.0610561    0.2978489
Birth       GMS-Nepal        NEPAL                          1                    NA                 0.1316940   -0.1024161    0.3658041
Birth       JiVitA-3         BANGLADESH                     1                    NA                 0.2682490    0.2239206    0.3125774
Birth       Keneba           GAMBIA                         1                    NA                 0.2220514    0.0185940    0.4255087
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.1951505    0.0568907    0.3334102
Birth       SAS-CompFeed     INDIA                          1                    NA                 0.2089950   -0.0271787    0.4451688
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.0552308   -0.0047068    0.1151683
6 months    COHORTS          GUATEMALA                      1                    NA                 0.0896522   -0.2095688    0.3888732
6 months    COHORTS          INDIA                          1                    NA                -0.1066896   -0.2143202    0.0009411
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.1899906   -0.3289301   -0.0510512
6 months    GMS-Nepal        NEPAL                          1                    NA                 0.1186050   -0.1170738    0.3542839
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0784742    0.0328752    0.1240731
6 months    Keneba           GAMBIA                         1                    NA                -0.2741288   -0.3969949   -0.1512627
6 months    PROVIDE          BANGLADESH                     1                    NA                 0.1667707    0.0065856    0.3269557
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0664109   -0.1884110    0.0555892
6 months    SAS-FoodSuppl    INDIA                          1                    NA                 0.8384586   -0.2422291    1.9191464
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0412571   -0.0513555    0.1338698
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0070032   -0.0714373    0.0574308
24 months   COHORTS          GUATEMALA                      1                    NA                -0.1842568   -0.4050245    0.0365109
24 months   COHORTS          INDIA                          1                    NA                -0.3193844   -0.4776187   -0.1611502
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.4070578   -0.5690664   -0.2450491
24 months   GMS-Nepal        NEPAL                          1                    NA                -0.1174627   -0.3193512    0.0844257
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0924641   -0.1517502   -0.0331780
24 months   Keneba           GAMBIA                         1                    NA                -0.1818224   -0.4080539    0.0444091
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0474830   -0.1090564    0.2040224
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.1314210   -0.2738402    0.0109983
