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

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        fage       n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38           69     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32            30     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)        51     150
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38           30      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32            18      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79
6 months    ki0047075b-MAL-ED          INDIA                          >=38           36     161
6 months    ki0047075b-MAL-ED          INDIA                          <32            53     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)        72     161
6 months    ki0047075b-MAL-ED          NEPAL                          >=38           17      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32            15      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79
6 months    ki0047075b-MAL-ED          PERU                           >=38           27      83
6 months    ki0047075b-MAL-ED          PERU                           <32            28      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)        28      83
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           64      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           44    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32          1122    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       165    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           40     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           264     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        76     380
6 months    ki1119695-PROBIT           BELARUS                        >=38          701   15179
6 months    ki1119695-PROBIT           BELARUS                        <32         12174   15179
6 months    ki1119695-PROBIT           BELARUS                        [32-38)      2304   15179
6 months    ki1135781-COHORTS          GUATEMALA                      >=38          276     930
6 months    ki1135781-COHORTS          GUATEMALA                      <32           421     930
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       233     930
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38          299    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    <32          1828    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)       495    2622
6 months    ki1148112-LCNI-5           MALAWI                         >=38           26     106
6 months    ki1148112-LCNI-5           MALAWI                         <32            56     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)        24     106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           69     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32            30     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79
24 months   ki0047075b-MAL-ED          INDIA                          >=38           36     161
24 months   ki0047075b-MAL-ED          INDIA                          <32            53     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79
24 months   ki0047075b-MAL-ED          PERU                           >=38           26      79
24 months   ki0047075b-MAL-ED          PERU                           <32            27      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)        26      79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           65      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
24 months   ki1119695-PROBIT           BELARUS                        >=38          176    3848
24 months   ki1119695-PROBIT           BELARUS                        <32          3094    3848
24 months   ki1119695-PROBIT           BELARUS                        [32-38)       578    3848
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          287    1032
24 months   ki1135781-COHORTS          GUATEMALA                      <32           495    1032
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       250    1032
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38          271    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    <32          1670    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)       435    2376
24 months   ki1148112-LCNI-5           MALAWI                         >=38           21      74
24 months   ki1148112-LCNI-5           MALAWI                         <32            37      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)        16      74


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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

```
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
![](/tmp/d0eed853-bad9-4297-8ed0-a750413f8e4b/c68ff2f8-2838-4ac3-b828-d40a2f4bc243/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d0eed853-bad9-4297-8ed0-a750413f8e4b/c68ff2f8-2838-4ac3-b828-d40a2f4bc243/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d0eed853-bad9-4297-8ed0-a750413f8e4b/c68ff2f8-2838-4ac3-b828-d40a2f4bc243/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.3433771   -0.5840803   -0.1026739
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                 0.2844895    0.0353242    0.5336548
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.2521304   -0.6210591    0.1167982
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 1.0501052    0.5429042    1.5573061
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 1.0735118    0.4328968    1.7141268
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.7728870    0.3818843    1.1638897
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.6198012   -0.9497146   -0.2898879
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.8597855   -1.1586560   -0.5609150
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.7526502   -0.9793038   -0.5259967
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.1675916   -0.4181678    0.7533511
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.0108425   -0.6073121    0.5856271
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                 0.1595197   -0.1490059    0.4680454
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.8485847    0.4819475    1.2152218
6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                 0.7914984    0.4762368    1.1067601
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                 1.3935016    0.8936236    1.8933796
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.5540104    0.2423876    0.8656332
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.3072222   -0.5631094    1.1775539
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.4778125   -0.1195388    1.0751638
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3262887    0.0271688    0.6254086
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.6851834    0.1083378    1.2620290
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.5644673    0.2299667    0.8989678
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -1.1608921   -1.3394886   -0.9822956
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.6590898   -0.7953106   -0.5228691
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.6781953   -1.0876468   -0.2687438
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -1.6963449   -2.3272480   -1.0654417
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -1.1234945   -1.3102236   -0.9367654
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.6826938   -1.1816543   -0.1837333
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.6429183    0.5863870    0.6994495
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.5802420    0.5159673    0.6445166
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.5643146    0.4547630    0.6738662
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.1262388   -0.0599560    0.3124335
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                 0.2688904    0.1352849    0.4024958
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                 0.1226282   -0.0700267    0.3152831
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1713081   -0.3515157    0.0088996
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.2770738   -0.3411879   -0.2129597
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.2238578   -0.3869292   -0.0607864
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.6859192    0.2971921    1.0746464
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                 0.4861794    0.1811531    0.7912057
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                 0.3823042    0.0736058    0.6910025
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.8801469   -1.1013718   -0.6589220
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.4986213   -0.7493275   -0.2479151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.9224165   -1.2594506   -0.5853823
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.6915448    0.1527192    1.2303704
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.9092283    0.0060707    1.8123859
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.3181613   -0.2688909    0.9052136
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.7102391   -1.0997897   -0.3206886
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.9921065   -1.2024434   -0.7817696
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.8718162   -1.1225962   -0.6210362
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.1591727   -0.6065154    0.2881700
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.3205444   -0.8429565    0.2018677
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.2688569   -0.5192047   -0.0185092
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.3569759    0.0849884    0.6289635
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                -0.0167427   -0.2865963    0.2531109
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.2849932   -0.2516911    0.8216774
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.4608462    0.2091394    0.7125530
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.5500000   -0.0688276    1.1688276
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.3771875   -0.0538993    0.8082743
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3063342    0.0417355    0.5709329
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.2916158   -1.0088740    0.4256424
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.1545120   -0.4296140    0.1205901
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.8556814    0.7011967    1.0101661
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                 0.6922418    0.5746339    0.8098497
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.6376047    0.5115122    0.7636972
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.2689237   -0.4112230   -0.1266244
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.2145150   -0.3032809   -0.1257491
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.3200317   -0.4708484   -0.1692150
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.6710696   -0.8177543   -0.5243849
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.5825855   -0.6384119   -0.5267591
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.5730299   -0.7523945   -0.3936653
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.2021785   -0.2527789    0.6571358
24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                -0.3823670   -0.6948456   -0.0698884
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -0.1677032   -0.6558678    0.3204614


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1977833   -0.3606366   -0.0349301
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9393882    0.6572880    1.2214884
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7206832   -0.8692329   -0.5721336
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1778270   -0.0614697    0.4171237
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0140361    0.7785203    1.2495520
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5153558    0.2512666    0.7794450
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5034500    0.2959923    0.7109077
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5783069    0.5185614    0.6380524
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1925914    0.1205037    0.2646791
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2878032   -0.3296319   -0.2459745
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.5058491    0.3128980    0.6988001
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8861589   -1.0281048   -0.7442131
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.5441139    0.2074310    0.8807969
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.8977019   -1.0295625   -0.7658412
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.2838608   -0.4798646   -0.0878569
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1203797   -0.0839887    0.3247482
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4538202    0.2465091    0.6611314
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0766500   -0.1115307    0.2648307
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6846323    0.5733690    0.7958955
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2760853   -0.3311930   -0.2209775
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6087584   -0.6459824   -0.5715345
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.1982432   -0.4246666    0.0281801


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.6278666    0.2825644    0.9731689
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0912467   -0.3493348    0.5318282
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0234066   -0.7865947    0.8334079
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.2772182   -0.9193809    0.3649445
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.2399843   -0.6878456    0.2078771
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1328490   -0.5331795    0.2674815
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.1784341   -1.0075805    0.6507123
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0080719   -0.6603841    0.6442404
6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0570862   -0.5397820    0.4256096
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.5449170   -0.0755268    1.1653607
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.2467882   -1.1712264    0.6776500
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0761979   -0.7499466    0.5975508
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.3588947   -0.2908651    1.0086545
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.2381786   -0.2035094    0.6798666
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.5018022    0.3254880    0.6781165
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.4826968    0.1269131    0.8384806
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.5728503   -0.0866759    1.2323766
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               1.0136510    0.2081934    1.8191087
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0626763   -0.1259385    0.0005859
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0786037   -0.1991420    0.0419346
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.1426516   -0.0865931    0.3718963
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0036106   -0.2719058    0.2646847
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.1057657   -0.2968672    0.0853358
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.0525498   -0.2954272    0.1903277
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.1997399   -0.6988706    0.2993908
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.3036151   -0.8000271    0.1927969
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.3815256    0.0413211    0.7217301
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0422696   -0.4511910    0.3666519
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.2176835   -0.8370887    1.2724557
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.3733835   -1.1576201    0.4108532
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.2818673   -0.7251618    0.1614271
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1615770   -0.6274206    0.3042665
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.1613717   -0.8499631    0.5272198
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.1096842   -0.6241106    0.4047421
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.3737187   -0.7595982    0.0121609
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0719828   -0.6725588    0.5285932
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0891538   -0.5789059    0.7572136
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0836587   -0.5828501    0.4155328
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.5979500   -1.3614136    0.1655136
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.4608462   -0.8430617   -0.0786307
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.1634397   -0.3115592   -0.0153201
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.2180767   -0.3694460   -0.0667075
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0544087   -0.1132572    0.2220746
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0511081   -0.2585148    0.1562986
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.0884840   -0.0682402    0.2452083
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0980396   -0.1334966    0.3295759
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.5845455   -1.1360831   -0.0330078
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.3698817   -1.0367188    0.2969555


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.1455938   -0.0346507    0.3258383
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1107170   -0.4995841    0.2781501
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.1008820   -0.4119225    0.2101585
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0102354   -0.4958745    0.5163452
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1654515   -0.1527040    0.4836070
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0386546   -0.2035480    0.1262388
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1771613   -0.0384379    0.3927605
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.4967862    0.3632714    0.6303009
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.6841870    0.0647230    1.3036509
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0646114   -0.1223882   -0.0068346
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0663526   -0.1061136    0.2388189
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1164951   -0.2924865    0.0594963
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.1800702   -0.5314785    0.1713382
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0060120   -0.1834582    0.1714341
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1474309   -0.5859142    0.2910524
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.1874627   -0.5587582    0.1838327
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.1246881   -0.5182086    0.2688325
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.2365962   -0.4985961    0.0254037
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0070259   -0.1244623    0.1104104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.2296842   -0.4260024   -0.0333660
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1710492   -0.3090191   -0.0330792
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0071616   -0.1403979    0.1260747
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0623111   -0.0816794    0.2063017
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.4004217   -0.7816324   -0.0192110
