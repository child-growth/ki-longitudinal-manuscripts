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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** fhtcm

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid         country     fhtcm           ever_wasted   n_cell       n
------------  --------------  ----------  -------------  ------------  -------  ------
0-24 months   COHORTS         GUATEMALA   >=167 cm                  0       54     495
0-24 months   COHORTS         GUATEMALA   >=167 cm                  1        9     495
0-24 months   COHORTS         GUATEMALA   <162 cm                   0      224     495
0-24 months   COHORTS         GUATEMALA   <162 cm                   1       69     495
0-24 months   COHORTS         GUATEMALA   [162-167) cm              0      105     495
0-24 months   COHORTS         GUATEMALA   [162-167) cm              1       34     495
0-24 months   Keneba          GAMBIA      >=167 cm                  0      674    1933
0-24 months   Keneba          GAMBIA      >=167 cm                  1      574    1933
0-24 months   Keneba          GAMBIA      <162 cm                   0       69    1933
0-24 months   Keneba          GAMBIA      <162 cm                   1       63    1933
0-24 months   Keneba          GAMBIA      [162-167) cm              0      291    1933
0-24 months   Keneba          GAMBIA      [162-167) cm              1      262    1933
0-24 months   PROBIT          BELARUS     >=167 cm                  0     8475   12537
0-24 months   PROBIT          BELARUS     >=167 cm                  1     3269   12537
0-24 months   PROBIT          BELARUS     <162 cm                   0      115   12537
0-24 months   PROBIT          BELARUS     <162 cm                   1       53   12537
0-24 months   PROBIT          BELARUS     [162-167) cm              0      454   12537
0-24 months   PROBIT          BELARUS     [162-167) cm              1      171   12537
0-24 months   SAS-CompFeed    INDIA       >=167 cm                  0      255     895
0-24 months   SAS-CompFeed    INDIA       >=167 cm                  1      152     895
0-24 months   SAS-CompFeed    INDIA       <162 cm                   0      130     895
0-24 months   SAS-CompFeed    INDIA       <162 cm                   1       96     895
0-24 months   SAS-CompFeed    INDIA       [162-167) cm              0      145     895
0-24 months   SAS-CompFeed    INDIA       [162-167) cm              1      117     895
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                  0       53     399
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                  1       53     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                   0       75     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                   1       88     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm              0       83     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm              1       47     399
0-6 months    COHORTS         GUATEMALA   >=167 cm                  0       44     334
0-6 months    COHORTS         GUATEMALA   >=167 cm                  1        4     334
0-6 months    COHORTS         GUATEMALA   <162 cm                   0      170     334
0-6 months    COHORTS         GUATEMALA   <162 cm                   1       25     334
0-6 months    COHORTS         GUATEMALA   [162-167) cm              0       76     334
0-6 months    COHORTS         GUATEMALA   [162-167) cm              1       15     334
0-6 months    Keneba          GAMBIA      >=167 cm                  0      799    1725
0-6 months    Keneba          GAMBIA      >=167 cm                  1      317    1725
0-6 months    Keneba          GAMBIA      <162 cm                   0       80    1725
0-6 months    Keneba          GAMBIA      <162 cm                   1       43    1725
0-6 months    Keneba          GAMBIA      [162-167) cm              0      361    1725
0-6 months    Keneba          GAMBIA      [162-167) cm              1      125    1725
0-6 months    PROBIT          BELARUS     >=167 cm                  0     8540   12537
0-6 months    PROBIT          BELARUS     >=167 cm                  1     3204   12537
0-6 months    PROBIT          BELARUS     <162 cm                   0      118   12537
0-6 months    PROBIT          BELARUS     <162 cm                   1       50   12537
0-6 months    PROBIT          BELARUS     [162-167) cm              0      456   12537
0-6 months    PROBIT          BELARUS     [162-167) cm              1      169   12537
0-6 months    SAS-CompFeed    INDIA       >=167 cm                  0      335     888
0-6 months    SAS-CompFeed    INDIA       >=167 cm                  1       72     888
0-6 months    SAS-CompFeed    INDIA       <162 cm                   0      183     888
0-6 months    SAS-CompFeed    INDIA       <162 cm                   1       40     888
0-6 months    SAS-CompFeed    INDIA       [162-167) cm              0      200     888
0-6 months    SAS-CompFeed    INDIA       [162-167) cm              1       58     888
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                  0       85     399
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                  1       21     399
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                   0      130     399
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                   1       33     399
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm              0      112     399
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm              1       18     399
6-24 months   COHORTS         GUATEMALA   >=167 cm                  0       57     489
6-24 months   COHORTS         GUATEMALA   >=167 cm                  1        6     489
6-24 months   COHORTS         GUATEMALA   <162 cm                   0      240     489
6-24 months   COHORTS         GUATEMALA   <162 cm                   1       48     489
6-24 months   COHORTS         GUATEMALA   [162-167) cm              0      117     489
6-24 months   COHORTS         GUATEMALA   [162-167) cm              1       21     489
6-24 months   Keneba          GAMBIA      >=167 cm                  0      791    1851
6-24 months   Keneba          GAMBIA      >=167 cm                  1      395    1851
6-24 months   Keneba          GAMBIA      <162 cm                   0       93    1851
6-24 months   Keneba          GAMBIA      <162 cm                   1       38    1851
6-24 months   Keneba          GAMBIA      [162-167) cm              0      347    1851
6-24 months   Keneba          GAMBIA      [162-167) cm              1      187    1851
6-24 months   PROBIT          BELARUS     >=167 cm                  0    11636   12530
6-24 months   PROBIT          BELARUS     >=167 cm                  1      102   12530
6-24 months   PROBIT          BELARUS     <162 cm                   0      164   12530
6-24 months   PROBIT          BELARUS     <162 cm                   1        4   12530
6-24 months   PROBIT          BELARUS     [162-167) cm              0      621   12530
6-24 months   PROBIT          BELARUS     [162-167) cm              1        3   12530
6-24 months   SAS-CompFeed    INDIA       >=167 cm                  0      275     836
6-24 months   SAS-CompFeed    INDIA       >=167 cm                  1      113     836
6-24 months   SAS-CompFeed    INDIA       <162 cm                   0      133     836
6-24 months   SAS-CompFeed    INDIA       <162 cm                   1       67     836
6-24 months   SAS-CompFeed    INDIA       [162-167) cm              0      165     836
6-24 months   SAS-CompFeed    INDIA       [162-167) cm              1       83     836
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                  0       66     392
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                  1       39     392
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                   0       96     392
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                   1       63     392
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm              0       92     392
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm              1       36     392


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/bab8c58b-c7ca-4b6f-8d92-082de87ae18a/26c8c1a0-f314-40b9-a762-9dd567de2493/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bab8c58b-c7ca-4b6f-8d92-082de87ae18a/26c8c1a0-f314-40b9-a762-9dd567de2493/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bab8c58b-c7ca-4b6f-8d92-082de87ae18a/26c8c1a0-f314-40b9-a762-9dd567de2493/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bab8c58b-c7ca-4b6f-8d92-082de87ae18a/26c8c1a0-f314-40b9-a762-9dd567de2493/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1428571   0.0563614   0.2293528
0-24 months   COHORTS         GUATEMALA   <162 cm              NA                0.2354949   0.1868615   0.2841282
0-24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.2446043   0.1730725   0.3161361
0-24 months   Keneba          GAMBIA      >=167 cm             NA                0.4586923   0.4303652   0.4870193
0-24 months   Keneba          GAMBIA      <162 cm              NA                0.4828457   0.3955218   0.5701695
0-24 months   Keneba          GAMBIA      [162-167) cm         NA                0.4771426   0.4337646   0.5205206
0-24 months   PROBIT          BELARUS     >=167 cm             NA                0.2772189   0.2139780   0.3404598
0-24 months   PROBIT          BELARUS     <162 cm              NA                0.3418512   0.3116157   0.3720867
0-24 months   PROBIT          BELARUS     [162-167) cm         NA                0.2700065   0.2026074   0.3374056
0-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.3805118   0.3172491   0.4437744
0-24 months   SAS-CompFeed    INDIA       <162 cm              NA                0.4041524   0.2695138   0.5387910
0-24 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.4501385   0.3689067   0.5313703
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.5024940   0.4060535   0.5989346
0-24 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.5372445   0.4603307   0.6141583
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3648559   0.2813340   0.4483779
0-6 months    Keneba          GAMBIA      >=167 cm             NA                0.2821624   0.2551528   0.3091719
0-6 months    Keneba          GAMBIA      <162 cm              NA                0.3594558   0.2672985   0.4516130
0-6 months    Keneba          GAMBIA      [162-167) cm         NA                0.2586050   0.2180817   0.2991283
0-6 months    PROBIT          BELARUS     >=167 cm             NA                0.2718256   0.2082750   0.3353762
0-6 months    PROBIT          BELARUS     <162 cm              NA                0.3190063   0.2870630   0.3509495
0-6 months    PROBIT          BELARUS     [162-167) cm         NA                0.2709678   0.2024942   0.3394413
0-6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.1765934   0.1410786   0.2121081
0-6 months    SAS-CompFeed    INDIA       <162 cm              NA                0.1751496   0.1222201   0.2280790
0-6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                0.2309799   0.1408743   0.3210856
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1967718   0.1202594   0.2732843
0-6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                0.2028382   0.1404980   0.2651784
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1392045   0.0791065   0.1993026
6-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.0952381   0.0226785   0.1677977
6-24 months   COHORTS         GUATEMALA   <162 cm              NA                0.1666667   0.1235813   0.2097521
6-24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.1521739   0.0921842   0.2121636
6-24 months   Keneba          GAMBIA      >=167 cm             NA                0.3348240   0.3072464   0.3624016
6-24 months   Keneba          GAMBIA      <162 cm              NA                0.3230076   0.2357857   0.4102295
6-24 months   Keneba          GAMBIA      [162-167) cm         NA                0.3437947   0.3019112   0.3856782
6-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.2984793   0.2390642   0.3578945
6-24 months   SAS-CompFeed    INDIA       <162 cm              NA                0.3205662   0.1918933   0.4492390
6-24 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.3317322   0.2742776   0.3891868
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3751527   0.2816265   0.4686788
6-24 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.3970669   0.3206698   0.4734639
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.2831535   0.2047150   0.3615921


### Parameter: E(Y)


agecat        studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA   NA                   NA                0.2262626   0.1893659   0.2631594
0-24 months   Keneba          GAMBIA      NA                   NA                0.4650802   0.4428393   0.4873211
0-24 months   PROBIT          BELARUS     NA                   NA                0.2786153   0.2162965   0.3409341
0-24 months   SAS-CompFeed    INDIA       NA                   NA                0.4078212   0.3382171   0.4774254
0-24 months   SAS-FoodSuppl   INDIA       NA                   NA                0.4711779   0.4221376   0.5202183
0-6 months    Keneba          GAMBIA      NA                   NA                0.2811594   0.2599381   0.3023807
0-6 months    PROBIT          BELARUS     NA                   NA                0.2730318   0.2104272   0.3356364
0-6 months    SAS-CompFeed    INDIA       NA                   NA                0.1914414   0.1418556   0.2410273
0-6 months    SAS-FoodSuppl   INDIA       NA                   NA                0.1804511   0.1426701   0.2182322
6-24 months   COHORTS         GUATEMALA   NA                   NA                0.1533742   0.1214029   0.1853455
6-24 months   Keneba          GAMBIA      NA                   NA                0.3349541   0.3134470   0.3564611
6-24 months   SAS-CompFeed    INDIA       NA                   NA                0.3145933   0.2482331   0.3809535
6-24 months   SAS-FoodSuppl   INDIA       NA                   NA                0.3520408   0.3047006   0.3993810


### Parameter: RR


agecat        studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          1.6484642   0.8694655   3.1254076
0-24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.7122302   0.8740675   3.3541258
0-24 months   Keneba          GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   Keneba          GAMBIA      <162 cm              >=167 cm          1.0526571   0.8696514   1.2741737
0-24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          1.0402237   0.9322753   1.1606716
0-24 months   PROBIT          BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   PROBIT          BELARUS     <162 cm              >=167 cm          1.2331456   0.9931454   1.5311433
0-24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          0.9739831   0.8412097   1.1277130
0-24 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.0621286   0.7535928   1.4969849
0-24 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1829819   0.9989582   1.4009057
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0691560   0.8412059   1.3588760
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7260901   0.5385585   0.9789222
0-6 months    Keneba          GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    Keneba          GAMBIA      <162 cm              >=167 cm          1.2739323   0.9690898   1.6746678
0-6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          0.9165112   0.7628982   1.1010549
0-6 months    PROBIT          BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    PROBIT          BELARUS     <162 cm              >=167 cm          1.1735696   0.9440972   1.4588177
0-6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          0.9968443   0.8630329   1.1514028
0-6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          0.9918241   0.7733251   1.2720588
0-6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.3079763   0.9630636   1.7764163
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0308294   0.6281278   1.6917086
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7074414   0.3956248   1.2650202
6-24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          1.7500000   0.7827645   3.9124155
6-24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.5978261   0.6776121   3.7677131
6-24 months   Keneba          GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   Keneba          GAMBIA      <162 cm              >=167 cm          0.9647085   0.7275465   1.2791794
6-24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          1.0267923   0.8866639   1.1890665
6-24 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.0739979   0.7920102   1.4563847
6-24 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1114077   0.9642508   1.2810226
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0584141   0.7724393   1.4502632
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7547688   0.5198101   1.0959310


### Parameter: PAR


agecat        studyid         country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0834055    0.0001079   0.1667031
0-24 months   Keneba          GAMBIA      >=167 cm             NA                 0.0063879   -0.0108601   0.0236360
0-24 months   PROBIT          BELARUS     >=167 cm             NA                 0.0013964   -0.0009888   0.0037817
0-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                 0.0273095   -0.0262819   0.0809008
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0313161   -0.1139624   0.0513303
0-6 months    Keneba          GAMBIA      >=167 cm             NA                -0.0010030   -0.0173375   0.0153316
0-6 months    PROBIT          BELARUS     >=167 cm             NA                 0.0012062   -0.0012101   0.0036225
0-6 months    SAS-CompFeed    INDIA       >=167 cm             NA                 0.0148481   -0.0140780   0.0437741
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0163207   -0.0811731   0.0485317
6-24 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0581361   -0.0120811   0.1283534
6-24 months   Keneba          GAMBIA      >=167 cm             NA                 0.0001301   -0.0168326   0.0170928
6-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                 0.0161140   -0.0127008   0.0449287
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0231119   -0.1028476   0.0566239


### Parameter: PAF


agecat        studyid         country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.3686224   -0.1255915   0.6458417
0-24 months   Keneba          GAMBIA      >=167 cm             NA                 0.0137351   -0.0240723   0.0501468
0-24 months   PROBIT          BELARUS     >=167 cm             NA                 0.0050120   -0.0040655   0.0140075
0-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                 0.0669643   -0.0680638   0.1849217
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0664634   -0.2572110   0.0953435
0-6 months    Keneba          GAMBIA      >=167 cm             NA                -0.0035672   -0.0633743   0.0528762
0-6 months    PROBIT          BELARUS     >=167 cm             NA                 0.0044179   -0.0049030   0.0136525
0-6 months    SAS-CompFeed    INDIA       >=167 cm             NA                 0.0775593   -0.0708126   0.2053728
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0904439   -0.5156451   0.2154707
6-24 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.3790476   -0.2868794   0.7003745
6-24 months   Keneba          GAMBIA      >=167 cm             NA                 0.0003883   -0.0515586   0.0497691
6-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                 0.0512216   -0.0402399   0.1346414
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0656511   -0.3180152   0.1383922
