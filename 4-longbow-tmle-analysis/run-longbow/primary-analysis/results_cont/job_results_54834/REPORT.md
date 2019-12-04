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

agecat      studyid                    country                        parity    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  ------  -----------------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            304    1103  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          2            258    1103  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+           541    1103  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            202     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     2            182     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+           148     532  whz              
Birth       ki1101329-Keneba           GAMBIA                         1            146    1338  whz              
Birth       ki1101329-Keneba           GAMBIA                         2            142    1338  whz              
Birth       ki1101329-Keneba           GAMBIA                         3+          1050    1338  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1            185     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          2            169     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          3+           287     641  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           5561   12916  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           3882   12916  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+          3473   12916  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      1             94     756  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      2            118     756  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      3+           544     756  whz              
Birth       ki1135781-COHORTS          INDIA                          1            641    3855  whz              
Birth       ki1135781-COHORTS          INDIA                          2            982    3855  whz              
Birth       ki1135781-COHORTS          INDIA                          3+          2232    3855  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    1            640    2899  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    2            657    2899  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    3+          1602    2899  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           5520   18014  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           6303   18014  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+          6191   18014  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            392    1334  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            302    1334  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+           640    1334  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              7     380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             72     380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           301     380  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            218     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     2            222     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+           163     603  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            679    1994  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1994  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1994  whz              
6 months    ki1101329-Keneba           GAMBIA                         1            195    1623  whz              
6 months    ki1101329-Keneba           GAMBIA                         2            164    1623  whz              
6 months    ki1101329-Keneba           GAMBIA                         3+          1264    1623  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1            153     564  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          2            149     564  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          3+           262     564  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           3392    8504  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           2587    8504  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          2525    8504  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      1            132     963  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      2            139     963  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      3+           692     963  whz              
6 months    ki1135781-COHORTS          INDIA                          1            741    4285  whz              
6 months    ki1135781-COHORTS          INDIA                          2           1093    4285  whz              
6 months    ki1135781-COHORTS          INDIA                          3+          2451    4285  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    1            574    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    2            607    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    3+          1525    2706  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6398   16784  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           5685   16784  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          4701   16784  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            211     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     2            213     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           155     579  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6  whz              
24 months   ki1101329-Keneba           GAMBIA                         1            137    1376  whz              
24 months   ki1101329-Keneba           GAMBIA                         2            139    1376  whz              
24 months   ki1101329-Keneba           GAMBIA                         3+          1100    1376  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1            130     487  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          2            130     487  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          3+           227     487  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            161     432  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            123     432  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           148     432  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      1            167    1076  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      2            151    1076  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      3+           758    1076  whz              
24 months   ki1135781-COHORTS          INDIA                          1            561    3354  whz              
24 months   ki1135781-COHORTS          INDIA                          2            837    3354  whz              
24 months   ki1135781-COHORTS          INDIA                          3+          1956    3354  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    1            523    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    2            544    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1382    2449  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3166    8603  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2909    8603  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2528    8603  whz              


The following strata were considered:

* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/419e9d3c-a17d-4539-acd6-4af481315c81/2554bf01-298c-4cde-ad0c-942559103e77/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/419e9d3c-a17d-4539-acd6-4af481315c81/2554bf01-298c-4cde-ad0c-942559103e77/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/419e9d3c-a17d-4539-acd6-4af481315c81/2554bf01-298c-4cde-ad0c-942559103e77/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.0304662   -1.1664017   -0.8945307
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.7429214   -0.9341577   -0.5516851
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.5406136   -0.7288012   -0.3524261
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.3755871   -1.5437798   -1.2073943
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.2505299   -1.4374334   -1.0636265
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -1.2125823   -1.4185909   -1.0065737
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -2.3691346   -2.6609625   -2.0773068
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                -1.3251436   -1.5028021   -1.1474851
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                -1.2024362   -1.3118118   -1.0930606
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.2455088   -1.4568394   -1.0341783
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.1827278   -1.5467720   -0.8186836
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -1.0564103   -1.1877264   -0.9250942
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.7064806   -0.7737714   -0.6391898
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.4140680   -0.4900515   -0.3380844
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.3458681   -0.4190785   -0.2726577
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.6284406   -1.9940320   -1.2628493
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                -1.2007557   -1.5650351   -0.8364762
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                -1.0821748   -1.2305147   -0.9338349
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -1.1653510   -1.2765537   -1.0541483
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.9782421   -1.0676367   -0.8888474
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                -0.8895039   -0.9436045   -0.8354034
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.1803432   -1.3154242   -1.0452622
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.8601579   -1.0178666   -0.7024491
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.5780912   -0.6523478   -0.5038347
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.0055523   -1.0576550   -0.9534495
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.7285851   -0.7719336   -0.6852367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.6558395   -0.6972822   -0.6143967
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.6096059   -0.7550978   -0.4641140
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.6953372   -0.8929263   -0.4977482
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.6804155   -0.8579299   -0.5029011
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.9457143   -2.3960187   -1.4954099
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                -0.7120833   -0.9054564   -0.5187103
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                -1.0622259   -1.1982227   -0.9262292
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1734568   -0.3703940    0.0234803
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.1435960   -0.3236805    0.0364884
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.4192307   -0.5829535   -0.2555078
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0090830   -0.1297559    0.1115899
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0724608   -0.0473569    0.1922785
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                 0.0259334   -0.0884558    0.1403226
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0835624   -0.2153929    0.0482680
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.0267738   -0.3024729    0.2489254
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.1533328   -0.2371050   -0.0695607
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2498770   -0.4710891   -0.0286648
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.6099767   -1.1100872   -0.1098661
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.6643975   -0.7961356   -0.5326594
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.3858815    0.3331325    0.4386304
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                 0.3022032    0.2350988    0.3693077
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                 0.2875532    0.2035308    0.3715756
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1986348   -0.0435154    0.4407851
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                 0.2796680   -0.0072690    0.5666049
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                 0.2087204    0.1016876    0.3157533
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.6030662   -0.7097874   -0.4963449
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.6038011   -0.6848089   -0.5227933
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                -0.8158877   -0.8695604   -0.7622151
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2434031   -0.3597747   -0.1270315
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.2357747   -0.3677293   -0.1038200
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.3633069   -0.4446709   -0.2819429
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5785431   -0.6287422   -0.5283441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.5684874   -0.6081087   -0.5288660
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.5745343   -0.6223885   -0.5266801
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9097813   -1.0758418   -0.7437208
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.8559720   -1.0724753   -0.6394686
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -1.0337424   -1.2262197   -0.8412650
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.7614139   -0.9327791   -0.5900487
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.8356860   -1.0729036   -0.5984684
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -0.7577819   -0.8283896   -0.6871742
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1027873   -1.4566552   -0.7489194
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.0835917   -1.4503456   -0.7168379
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.8463873   -0.9754353   -0.7173393
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.9274547   -1.0834744   -0.7714350
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -1.0258057   -1.2195923   -0.8320191
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -1.4033313   -1.6363760   -1.1702866
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2515944   -0.4611862   -0.0420025
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.3207355   -0.6219215   -0.0195495
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.2877129   -0.3629911   -0.2124346
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.5087535   -0.6176219   -0.3998852
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.5001527   -0.5910284   -0.4092771
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                -0.7459741   -0.7957092   -0.6962389
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4208709   -0.5468623   -0.2948796
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.5822205   -0.7216478   -0.4427933
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.7064619   -0.7715953   -0.6413285
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2561823   -1.3184498   -1.1939147
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3089043   -1.3632192   -1.2545893
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.2973541   -1.3626947   -1.2320134


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                -1.2037220   -1.2694226   -1.1380213
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5156349   -0.5414936   -0.4897762
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9498080   -0.9874148   -0.9122013
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0797179    0.0266621    0.1327737
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1873900   -0.2456638   -0.1291162
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3106432    0.2849661    0.3363203
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7068611   -0.7417800   -0.6719423
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7834078   -0.8357743   -0.7310414
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1817824   -1.2809226   -1.0826422
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6564729   -0.6914450   -0.6215007
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2978031   -1.3210763   -1.2745298


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.2875448    0.0903485    0.4847411
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                  0.4898525    0.2825262    0.6971789
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.1250572   -0.1260909    0.3762052
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.1630048   -0.1030690    0.4290785
Birth       ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                  1.0439910    0.7027831    1.3851990
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                  1.1666984    0.8544014    1.4789954
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0627810   -0.3581398    0.4837019
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.1890986   -0.0597792    0.4379763
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.2924126    0.1909519    0.3938733
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.3606125    0.2612164    0.4600086
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                  0.4276850   -0.0864044    0.9417744
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.5462659    0.1526197    0.9399120
Birth       ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                  0.1871089    0.0443377    0.3298801
Birth       ki1135781-COHORTS          INDIA                          3+                   1                  0.2758471    0.1521349    0.3995592
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.3201853    0.1125010    0.5278697
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                  0.6022520    0.4478899    0.7566141
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.2769671    0.2111695    0.3427648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.3497128    0.2845331    0.4148924
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0857313   -0.2638188    0.0923562
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0708096   -0.2356438    0.0940245
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                  1.2336310    0.7435624    1.7236995
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                  0.8834884    0.4130958    1.3538809
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0298608   -0.2362457    0.2959672
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.2457738   -0.5010765    0.0095288
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0815438   -0.0885606    0.2516481
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0350163   -0.1319358    0.2019685
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0567887   -0.2489542    0.3625315
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0697704   -0.2254197    0.0858790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.3600997   -0.9093199    0.1891205
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.4145205   -0.6717385   -0.1573025
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0836782   -0.1688380    0.0014815
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0983283   -0.1974737    0.0008171
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0810332   -0.2936505    0.4557168
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0100856   -0.2537314    0.2739026
6 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0007349   -0.1346115    0.1331416
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.2128216   -0.3322240   -0.0934192
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.0076285   -0.1682826    0.1835395
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.1199038   -0.2618765    0.0220690
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0100558   -0.0536404    0.0737520
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.0040089   -0.0621416    0.0701594
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0538093   -0.2177835    0.3254022
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.1239611   -0.3765466    0.1286244
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0742721   -0.3669299    0.2183857
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0036320   -0.1817769    0.1890408
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0191956   -0.4899058    0.5282970
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.2564000   -0.1213475    0.6341475
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0983510   -0.3462369    0.1495348
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.4758766   -0.7554160   -0.1963372
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0691411   -0.4360569    0.2977746
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0361185   -0.2588119    0.1865749
24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                  0.0086008   -0.1330295    0.1502311
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.2372205   -0.3568719   -0.1175691
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.1613496   -0.3492287    0.0265295
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.2855910   -0.4272357   -0.1439462
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0527220   -0.1337734    0.0283294
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0411718   -0.1311811    0.0488375


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3604208    0.1734122    0.5474295
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0771284   -0.0740097    0.2282666
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 1.1654126    0.8777518    1.4530735
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1290658   -0.0711834    0.3293150
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1908457    0.1286509    0.2530405
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.5662978    0.2079146    0.9246810
Birth       ki1135781-COHORTS          INDIA                          1                    NA                 0.2155430    0.1096679    0.3214181
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4376181    0.3080688    0.5671674
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.2277250    0.1775504    0.2778996
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0561025   -0.1660071    0.0538021
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.9335564    0.4796129    1.3874999
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0256338   -0.2004059    0.1491382
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0888009   -0.0181779    0.1957796
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1038276   -0.2382942    0.0306390
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3539646   -0.5673195   -0.1406098
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0752383   -0.1233827   -0.0270938
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0045538   -0.2424536    0.2333459
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1037950   -0.2058949   -0.0016950
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0504402   -0.1619631    0.0610827
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0149730   -0.0605400    0.0305940
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0169143   -0.1305377    0.1643663
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0219940   -0.1931415    0.1491536
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0335234   -0.3740991    0.3070522
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2543277   -0.3952310   -0.1134244
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0297811   -0.2336774    0.1741152
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.1477193   -0.2517878   -0.0436509
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1890882   -0.3094616   -0.0687149
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0416208   -0.1005910    0.0173494
