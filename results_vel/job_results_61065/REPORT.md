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

**Outcome Variable:** y_rate_len

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

agecat         studyid         country     fhtcm           n_cell       n
-------------  --------------  ----------  -------------  -------  ------
0-3 months     COHORTS         GUATEMALA   >=167 cm            25     180
0-3 months     COHORTS         GUATEMALA   <162 cm            106     180
0-3 months     COHORTS         GUATEMALA   [162-167) cm        49     180
0-3 months     Keneba          GAMBIA      >=167 cm           631     965
0-3 months     Keneba          GAMBIA      <162 cm             75     965
0-3 months     Keneba          GAMBIA      [162-167) cm       259     965
0-3 months     PROBIT          BELARUS     >=167 cm         10775   11502
0-3 months     PROBIT          BELARUS     <162 cm            151   11502
0-3 months     PROBIT          BELARUS     [162-167) cm       576   11502
0-3 months     SAS-CompFeed    INDIA       >=167 cm           345     765
0-3 months     SAS-CompFeed    INDIA       <162 cm            196     765
0-3 months     SAS-CompFeed    INDIA       [162-167) cm       224     765
3-6 months     COHORTS         GUATEMALA   >=167 cm            37     261
3-6 months     COHORTS         GUATEMALA   <162 cm            148     261
3-6 months     COHORTS         GUATEMALA   [162-167) cm        76     261
3-6 months     Keneba          GAMBIA      >=167 cm           673    1037
3-6 months     Keneba          GAMBIA      <162 cm             74    1037
3-6 months     Keneba          GAMBIA      [162-167) cm       290    1037
3-6 months     PROBIT          BELARUS     >=167 cm          9472   10103
3-6 months     PROBIT          BELARUS     <162 cm            129   10103
3-6 months     PROBIT          BELARUS     [162-167) cm       502   10103
3-6 months     SAS-CompFeed    INDIA       >=167 cm           308     682
3-6 months     SAS-CompFeed    INDIA       <162 cm            175     682
3-6 months     SAS-CompFeed    INDIA       [162-167) cm       199     682
6-9 months     COHORTS         GUATEMALA   >=167 cm            39     308
6-9 months     COHORTS         GUATEMALA   <162 cm            186     308
6-9 months     COHORTS         GUATEMALA   [162-167) cm        83     308
6-9 months     Keneba          GAMBIA      >=167 cm           442     663
6-9 months     Keneba          GAMBIA      <162 cm             53     663
6-9 months     Keneba          GAMBIA      [162-167) cm       168     663
6-9 months     PROBIT          BELARUS     >=167 cm          8926    9528
6-9 months     PROBIT          BELARUS     <162 cm            126    9528
6-9 months     PROBIT          BELARUS     [162-167) cm       476    9528
6-9 months     SAS-CompFeed    INDIA       >=167 cm           312     683
6-9 months     SAS-CompFeed    INDIA       <162 cm            167     683
6-9 months     SAS-CompFeed    INDIA       [162-167) cm       204     683
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm            89     311
6-9 months     SAS-FoodSuppl   INDIA       <162 cm            124     311
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm        98     311
9-12 months    COHORTS         GUATEMALA   >=167 cm            51     370
9-12 months    COHORTS         GUATEMALA   <162 cm            224     370
9-12 months    COHORTS         GUATEMALA   [162-167) cm        95     370
9-12 months    Keneba          GAMBIA      >=167 cm           420     653
9-12 months    Keneba          GAMBIA      <162 cm             52     653
9-12 months    Keneba          GAMBIA      [162-167) cm       181     653
9-12 months    PROBIT          BELARUS     >=167 cm          9107    9729
9-12 months    PROBIT          BELARUS     <162 cm            126    9729
9-12 months    PROBIT          BELARUS     [162-167) cm       496    9729
9-12 months    SAS-CompFeed    INDIA       >=167 cm           317     685
9-12 months    SAS-CompFeed    INDIA       <162 cm            167     685
9-12 months    SAS-CompFeed    INDIA       [162-167) cm       201     685
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm            86     308
9-12 months    SAS-FoodSuppl   INDIA       <162 cm            128     308
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm        94     308
12-15 months   COHORTS         GUATEMALA   >=167 cm            53     387
12-15 months   COHORTS         GUATEMALA   <162 cm            224     387
12-15 months   COHORTS         GUATEMALA   [162-167) cm       110     387
12-15 months   Keneba          GAMBIA      >=167 cm           652    1041
12-15 months   Keneba          GAMBIA      <162 cm             85    1041
12-15 months   Keneba          GAMBIA      [162-167) cm       304    1041
12-15 months   PROBIT          BELARUS     >=167 cm           843     897
12-15 months   PROBIT          BELARUS     <162 cm              9     897
12-15 months   PROBIT          BELARUS     [162-167) cm        45     897
12-15 months   SAS-CompFeed    INDIA       >=167 cm           329     702
12-15 months   SAS-CompFeed    INDIA       <162 cm            169     702
12-15 months   SAS-CompFeed    INDIA       [162-167) cm       204     702
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm            77     302
12-15 months   SAS-FoodSuppl   INDIA       <162 cm            131     302
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm        94     302
15-18 months   COHORTS         GUATEMALA   >=167 cm            47     347
15-18 months   COHORTS         GUATEMALA   <162 cm            205     347
15-18 months   COHORTS         GUATEMALA   [162-167) cm        95     347
15-18 months   Keneba          GAMBIA      >=167 cm           658    1050
15-18 months   Keneba          GAMBIA      <162 cm             82    1050
15-18 months   Keneba          GAMBIA      [162-167) cm       310    1050
15-18 months   PROBIT          BELARUS     >=167 cm           226     239
15-18 months   PROBIT          BELARUS     <162 cm              1     239
15-18 months   PROBIT          BELARUS     [162-167) cm        12     239
15-18 months   SAS-CompFeed    INDIA       >=167 cm           335     717
15-18 months   SAS-CompFeed    INDIA       <162 cm            169     717
15-18 months   SAS-CompFeed    INDIA       [162-167) cm       213     717
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm            79     290
15-18 months   SAS-FoodSuppl   INDIA       <162 cm            121     290
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm        90     290
18-21 months   COHORTS         GUATEMALA   >=167 cm            51     369
18-21 months   COHORTS         GUATEMALA   <162 cm            211     369
18-21 months   COHORTS         GUATEMALA   [162-167) cm       107     369
18-21 months   Keneba          GAMBIA      >=167 cm           635    1043
18-21 months   Keneba          GAMBIA      <162 cm             84    1043
18-21 months   Keneba          GAMBIA      [162-167) cm       324    1043
18-21 months   PROBIT          BELARUS     >=167 cm           183     194
18-21 months   PROBIT          BELARUS     <162 cm              2     194
18-21 months   PROBIT          BELARUS     [162-167) cm         9     194
21-24 months   COHORTS         GUATEMALA   >=167 cm            58     417
21-24 months   COHORTS         GUATEMALA   <162 cm            237     417
21-24 months   COHORTS         GUATEMALA   [162-167) cm       122     417
21-24 months   Keneba          GAMBIA      >=167 cm           582     933
21-24 months   Keneba          GAMBIA      <162 cm             72     933
21-24 months   Keneba          GAMBIA      [162-167) cm       279     933
21-24 months   PROBIT          BELARUS     >=167 cm           175     185
21-24 months   PROBIT          BELARUS     <162 cm              4     185
21-24 months   PROBIT          BELARUS     [162-167) cm         6     185


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/222313cb-b3c2-47de-b9d1-ff0af951e2c3/ac2e02e9-48b5-4242-bf2e-5f80b5c51b80/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/222313cb-b3c2-47de-b9d1-ff0af951e2c3/ac2e02e9-48b5-4242-bf2e-5f80b5c51b80/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/222313cb-b3c2-47de-b9d1-ff0af951e2c3/ac2e02e9-48b5-4242-bf2e-5f80b5c51b80/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             NA                2.7726124   2.5220732   3.0231517
0-3 months     COHORTS         GUATEMALA   <162 cm              NA                2.6282917   2.5104756   2.7461078
0-3 months     COHORTS         GUATEMALA   [162-167) cm         NA                2.6377953   2.4793852   2.7962055
0-3 months     Keneba          GAMBIA      >=167 cm             NA                3.1208628   3.0514482   3.1902774
0-3 months     Keneba          GAMBIA      <162 cm              NA                3.0625436   2.8654489   3.2596383
0-3 months     Keneba          GAMBIA      [162-167) cm         NA                3.0151475   2.9189316   3.1113634
0-3 months     PROBIT          BELARUS     >=167 cm             NA                2.8099946   2.6988185   2.9211707
0-3 months     PROBIT          BELARUS     <162 cm              NA                2.6833900   2.6221200   2.7446601
0-3 months     PROBIT          BELARUS     [162-167) cm         NA                2.7783986   2.6393035   2.9174936
0-3 months     SAS-CompFeed    INDIA       >=167 cm             NA                3.4087865   3.3335492   3.4840239
0-3 months     SAS-CompFeed    INDIA       <162 cm              NA                3.2777182   3.1940548   3.3613816
0-3 months     SAS-CompFeed    INDIA       [162-167) cm         NA                3.3024042   3.2049419   3.3998665
3-6 months     COHORTS         GUATEMALA   >=167 cm             NA                1.8509618   1.7116626   1.9902610
3-6 months     COHORTS         GUATEMALA   <162 cm              NA                1.7278269   1.6584971   1.7971568
3-6 months     COHORTS         GUATEMALA   [162-167) cm         NA                1.9320022   1.8105425   2.0534619
3-6 months     Keneba          GAMBIA      >=167 cm             NA                1.9926789   1.9365373   2.0488204
3-6 months     Keneba          GAMBIA      <162 cm              NA                1.9364524   1.7175035   2.1554013
3-6 months     Keneba          GAMBIA      [162-167) cm         NA                1.9657025   1.8780128   2.0533922
3-6 months     PROBIT          BELARUS     >=167 cm             NA                2.0942054   2.0530385   2.1353723
3-6 months     PROBIT          BELARUS     <162 cm              NA                2.0571454   1.9722873   2.1420036
3-6 months     PROBIT          BELARUS     [162-167) cm         NA                2.0179984   1.9348780   2.1011187
3-6 months     SAS-CompFeed    INDIA       >=167 cm             NA                1.9739693   1.9067973   2.0411413
3-6 months     SAS-CompFeed    INDIA       <162 cm              NA                1.8933467   1.8219842   1.9647092
3-6 months     SAS-CompFeed    INDIA       [162-167) cm         NA                1.9199326   1.8314783   2.0083869
6-9 months     COHORTS         GUATEMALA   >=167 cm             NA                1.1892152   1.0491952   1.3292352
6-9 months     COHORTS         GUATEMALA   <162 cm              NA                1.0684200   1.0106551   1.1261848
6-9 months     COHORTS         GUATEMALA   [162-167) cm         NA                1.0962691   1.0172012   1.1753370
6-9 months     Keneba          GAMBIA      >=167 cm             NA                1.3971472   1.3218369   1.4724576
6-9 months     Keneba          GAMBIA      <162 cm              NA                1.5874870   1.2991921   1.8757819
6-9 months     Keneba          GAMBIA      [162-167) cm         NA                1.3106010   1.2095775   1.4116245
6-9 months     PROBIT          BELARUS     >=167 cm             NA                1.5742283   1.5450190   1.6034376
6-9 months     PROBIT          BELARUS     <162 cm              NA                1.5567666   1.5065088   1.6070244
6-9 months     PROBIT          BELARUS     [162-167) cm         NA                1.4983467   1.4222650   1.5744283
6-9 months     SAS-CompFeed    INDIA       >=167 cm             NA                1.2510357   1.1977843   1.3042871
6-9 months     SAS-CompFeed    INDIA       <162 cm              NA                1.1911581   1.1221633   1.2601529
6-9 months     SAS-CompFeed    INDIA       [162-167) cm         NA                1.1759088   1.0972464   1.2545711
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             NA                1.1618836   1.0939215   1.2298457
6-9 months     SAS-FoodSuppl   INDIA       <162 cm              NA                1.1342094   1.0672144   1.2012044
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm         NA                1.1295319   1.0516028   1.2074611
9-12 months    COHORTS         GUATEMALA   >=167 cm             NA                1.0566702   0.9438852   1.1694552
9-12 months    COHORTS         GUATEMALA   <162 cm              NA                0.8991487   0.8472968   0.9510007
9-12 months    COHORTS         GUATEMALA   [162-167) cm         NA                0.9216852   0.8291612   1.0142093
9-12 months    Keneba          GAMBIA      >=167 cm             NA                0.9853046   0.9272828   1.0433264
9-12 months    Keneba          GAMBIA      <162 cm              NA                0.8157125   0.5635535   1.0678716
9-12 months    Keneba          GAMBIA      [162-167) cm         NA                0.9987160   0.9086129   1.0888191
9-12 months    PROBIT          BELARUS     >=167 cm             NA                1.3765032   1.3229931   1.4300133
9-12 months    PROBIT          BELARUS     <162 cm              NA                1.3123994   1.2528185   1.3719804
9-12 months    PROBIT          BELARUS     [162-167) cm         NA                1.3187573   1.2362954   1.4012193
9-12 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.9893652   0.9017344   1.0769961
9-12 months    SAS-CompFeed    INDIA       <162 cm              NA                0.9767165   0.8892081   1.0642248
9-12 months    SAS-CompFeed    INDIA       [162-167) cm         NA                1.0180582   0.9407224   1.0953941
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.8583251   0.5734767   1.1431735
9-12 months    SAS-FoodSuppl   INDIA       <162 cm              NA                0.6609998   0.5189101   0.8030896
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.9152266   0.6292840   1.2011693
12-15 months   COHORTS         GUATEMALA   >=167 cm             NA                0.7746406   0.6139074   0.9353739
12-15 months   COHORTS         GUATEMALA   <162 cm              NA                0.7686288   0.7080459   0.8292118
12-15 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.8606177   0.7768150   0.9444205
12-15 months   Keneba          GAMBIA      >=167 cm             NA                0.9387432   0.8933358   0.9841506
12-15 months   Keneba          GAMBIA      <162 cm              NA                0.8980450   0.7283067   1.0677833
12-15 months   Keneba          GAMBIA      [162-167) cm         NA                0.9201222   0.8534597   0.9867847
12-15 months   PROBIT          BELARUS     >=167 cm             NA                1.1725526   0.8471348   1.4979705
12-15 months   PROBIT          BELARUS     <162 cm              NA                1.3492496   0.9957939   1.7027052
12-15 months   PROBIT          BELARUS     [162-167) cm         NA                1.2893796   0.6866184   1.8921407
12-15 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.9048550   0.8448268   0.9648832
12-15 months   SAS-CompFeed    INDIA       <162 cm              NA                0.7574338   0.6397711   0.8750965
12-15 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.7679335   0.6677699   0.8680971
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                1.1480949   1.0177494   1.2784404
12-15 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.9332829   0.7744894   1.0920765
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                1.0679233   0.9036725   1.2321740
15-18 months   COHORTS         GUATEMALA   >=167 cm             NA                0.6105874   0.4770341   0.7441406
15-18 months   COHORTS         GUATEMALA   <162 cm              NA                0.7517934   0.6997205   0.8038663
15-18 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.7371960   0.6462156   0.8281764
15-18 months   Keneba          GAMBIA      >=167 cm             NA                0.8641813   0.8197647   0.9085978
15-18 months   Keneba          GAMBIA      <162 cm              NA                0.8694106   0.7575775   0.9812437
15-18 months   Keneba          GAMBIA      [162-167) cm         NA                0.8883326   0.8306498   0.9460154
15-18 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.9177390   0.8655803   0.9698977
15-18 months   SAS-CompFeed    INDIA       <162 cm              NA                0.9143521   0.8362382   0.9924660
15-18 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.9384946   0.7971446   1.0798447
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.7996163   0.7241439   0.8750888
15-18 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.7840566   0.7294519   0.8386612
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.8025468   0.7391535   0.8659401
18-21 months   COHORTS         GUATEMALA   >=167 cm             NA                0.7585792   0.6106056   0.9065527
18-21 months   COHORTS         GUATEMALA   <162 cm              NA                0.7672052   0.7076493   0.8267611
18-21 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.6991382   0.6041394   0.7941370
18-21 months   Keneba          GAMBIA      >=167 cm             NA                0.8281874   0.7800194   0.8763554
18-21 months   Keneba          GAMBIA      <162 cm              NA                0.7652669   0.6678791   0.8626547
18-21 months   Keneba          GAMBIA      [162-167) cm         NA                0.8088221   0.7445433   0.8731009
21-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.6372202   0.5160533   0.7583871
21-24 months   COHORTS         GUATEMALA   <162 cm              NA                0.6887871   0.6438798   0.7336944
21-24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.6988181   0.6334330   0.7642032
21-24 months   Keneba          GAMBIA      >=167 cm             NA                0.7378829   0.6875297   0.7882360
21-24 months   Keneba          GAMBIA      <162 cm              NA                0.6825012   0.5875440   0.7774584
21-24 months   Keneba          GAMBIA      [162-167) cm         NA                0.6812012   0.6145750   0.7478275


### Parameter: E(Y)


agecat         studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS         GUATEMALA   NA                   NA                2.6353712   2.5465302   2.7242122
0-3 months     Keneba          GAMBIA      NA                   NA                3.0944274   3.0398727   3.1489822
0-3 months     PROBIT          BELARUS     NA                   NA                2.8040155   2.6922827   2.9157483
0-3 months     SAS-CompFeed    INDIA       NA                   NA                3.3449470   3.2851675   3.4047265
3-6 months     COHORTS         GUATEMALA   NA                   NA                1.7979953   1.7423030   1.8536877
3-6 months     Keneba          GAMBIA      NA                   NA                1.9794873   1.9347361   2.0242384
3-6 months     PROBIT          BELARUS     NA                   NA                2.0917916   2.0507260   2.1328572
3-6 months     SAS-CompFeed    INDIA       NA                   NA                1.9381168   1.8722991   2.0039344
6-9 months     COHORTS         GUATEMALA   NA                   NA                1.0891323   1.0450915   1.1331731
6-9 months     Keneba          GAMBIA      NA                   NA                1.3966930   1.3370412   1.4563449
6-9 months     PROBIT          BELARUS     NA                   NA                1.5711878   1.5417167   1.6006589
6-9 months     SAS-CompFeed    INDIA       NA                   NA                1.2144768   1.1795030   1.2494506
6-9 months     SAS-FoodSuppl   INDIA       NA                   NA                1.1405137   1.0997387   1.1812887
9-12 months    COHORTS         GUATEMALA   NA                   NA                0.9293038   0.8874492   0.9711585
9-12 months    Keneba          GAMBIA      NA                   NA                0.9708891   0.9222915   1.0194866
9-12 months    PROBIT          BELARUS     NA                   NA                1.3751690   1.3226496   1.4276884
9-12 months    SAS-CompFeed    INDIA       NA                   NA                0.9930838   0.9436059   1.0425616
9-12 months    SAS-FoodSuppl   INDIA       NA                   NA                0.7916715   0.6618281   0.9215150
12-15 months   COHORTS         GUATEMALA   NA                   NA                0.8018513   0.7601969   0.8435058
12-15 months   Keneba          GAMBIA      NA                   NA                0.9309324   0.8952046   0.9666602
12-15 months   PROBIT          BELARUS     NA                   NA                1.1801864   0.8594720   1.5009008
12-15 months   SAS-CompFeed    INDIA       NA                   NA                0.8285766   0.7562994   0.9008539
12-15 months   SAS-FoodSuppl   INDIA       NA                   NA                1.0258822   0.9363066   1.1154578
15-18 months   COHORTS         GUATEMALA   NA                   NA                0.7314958   0.6886307   0.7743608
15-18 months   Keneba          GAMBIA      NA                   NA                0.8726682   0.8384641   0.9068722
15-18 months   SAS-CompFeed    INDIA       NA                   NA                0.9190004   0.8846761   0.9533247
15-18 months   SAS-FoodSuppl   INDIA       NA                   NA                0.7935645   0.7577956   0.8293333
18-21 months   COHORTS         GUATEMALA   NA                   NA                0.7418707   0.7002233   0.7835182
18-21 months   Keneba          GAMBIA      NA                   NA                0.8178809   0.7819425   0.8538193
21-24 months   COHORTS         GUATEMALA   NA                   NA                0.6767187   0.6431305   0.7103068
21-24 months   Keneba          GAMBIA      NA                   NA                0.7242397   0.6859939   0.7624856


### Parameter: ATE


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.1443208   -0.4173564    0.1287149
0-3 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.1348171   -0.4304449    0.1608106
0-3 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     Keneba          GAMBIA      <162 cm              >=167 cm          -0.0583192   -0.2675584    0.1509200
0-3 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.1057153   -0.2243881    0.0129575
0-3 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.1266046   -0.2245355   -0.0286737
0-3 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0315961   -0.1021832    0.0389911
0-3 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.1310683   -0.2403393   -0.0217973
0-3 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1063823   -0.2037344   -0.0090303
3-6 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.1231349   -0.2764435    0.0301737
3-6 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0810404   -0.1025121    0.2645928
3-6 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     Keneba          GAMBIA      <162 cm              >=167 cm          -0.0562264   -0.2824847    0.1700318
3-6 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0269763   -0.1315987    0.0776460
3-6 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0370599   -0.1202684    0.0461486
3-6 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0762070   -0.1599896    0.0075756
3-6 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0806226   -0.1379816   -0.0232635
3-6 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0540367   -0.1162566    0.0081832
6-9 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.1207953   -0.2726717    0.0310812
6-9 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0929461   -0.2537893    0.0678971
6-9 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     Keneba          GAMBIA      <162 cm              >=167 cm           0.1903398   -0.1080036    0.4886832
6-9 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0865463   -0.2129036    0.0398111
6-9 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0174617   -0.0661168    0.0311935
6-9 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0758816   -0.1453876   -0.0063756
6-9 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0598776   -0.1647441    0.0449889
6-9 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0751269   -0.1683033    0.0180494
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0276742   -0.1231702    0.0678219
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0323516   -0.1357791    0.0710758
9-12 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.1575215   -0.2822067   -0.0328362
9-12 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.1349849   -0.2813890    0.0114191
9-12 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    Keneba          GAMBIA      <162 cm              >=167 cm          -0.1695921   -0.4281954    0.0890113
9-12 months    Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0134114   -0.0935701    0.1203929
9-12 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROBIT          BELARUS     <162 cm              >=167 cm          -0.0641037   -0.1332171    0.0050096
9-12 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0577458   -0.1301586    0.0146669
9-12 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0126488   -0.1440808    0.1187832
9-12 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0286930   -0.0915734    0.1489594
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.1973252   -0.5164015    0.1217510
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0569016   -0.3479162    0.4617193
12-15 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0060118   -0.1775762    0.1655526
12-15 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0859771   -0.0950264    0.2669807
12-15 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0406982   -0.2165927    0.1351962
12-15 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0186210   -0.0996386    0.0623966
12-15 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROBIT          BELARUS     <162 cm              >=167 cm           0.1766969   -0.2590238    0.6124177
12-15 months   PROBIT          BELARUS     [162-167) cm         >=167 cm           0.1168269   -0.4444099    0.6780637
12-15 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.1474212   -0.2563177   -0.0385246
12-15 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1369215   -0.2219071   -0.0519359
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.2148120   -0.4208294   -0.0087945
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0801716   -0.2894272    0.1290840
15-18 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.1412060   -0.0024956    0.2849076
15-18 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.1266087   -0.0342194    0.2874367
15-18 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   Keneba          GAMBIA      <162 cm              >=167 cm           0.0052294   -0.1151501    0.1256088
15-18 months   Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0241514   -0.0484190    0.0967217
15-18 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0033869   -0.0972598    0.0904860
15-18 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0207556   -0.1511560    0.1926673
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0155598   -0.1092523    0.0781327
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0029304   -0.0959751    0.1018360
18-21 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0086260   -0.1509912    0.1682433
18-21 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0594409   -0.2356312    0.1167493
18-21 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0629205   -0.1716990    0.0458580
18-21 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0193654   -0.0998675    0.0611368
21-24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0515669   -0.0788728    0.1820067
21-24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0615979   -0.0762725    0.1994683
21-24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0553817   -0.1629471    0.0521837
21-24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0566816   -0.1403880    0.0270247


### Parameter: PAR


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.1372412   -0.3676274    0.0931450
0-3 months     Keneba          GAMBIA      >=167 cm             NA                -0.0264354   -0.0658803    0.0130095
0-3 months     PROBIT          BELARUS     >=167 cm             NA                -0.0059791   -0.0101927   -0.0017655
0-3 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0638395   -0.1109706   -0.0167084
3-6 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0529665   -0.1829919    0.0770590
3-6 months     Keneba          GAMBIA      >=167 cm             NA                -0.0131916   -0.0490146    0.0226314
3-6 months     PROBIT          BELARUS     >=167 cm             NA                -0.0024137   -0.0069245    0.0020970
3-6 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0358525   -0.0647720   -0.0069330
6-9 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.1000829   -0.2314344    0.0312685
6-9 months     Keneba          GAMBIA      >=167 cm             NA                -0.0004542   -0.0425793    0.0416709
6-9 months     PROBIT          BELARUS     >=167 cm             NA                -0.0030405   -0.0064752    0.0003942
6-9 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0365589   -0.0814334    0.0083155
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0213699   -0.0824149    0.0396752
9-12 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.1273664   -0.2326624   -0.0220703
9-12 months    Keneba          GAMBIA      >=167 cm             NA                -0.0144155   -0.0523098    0.0234788
9-12 months    PROBIT          BELARUS     >=167 cm             NA                -0.0013342   -0.0045646    0.0018963
9-12 months    SAS-CompFeed    INDIA       >=167 cm             NA                 0.0037185   -0.0553934    0.0628305
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0666535   -0.3006143    0.1673072
12-15 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0272107   -0.1271349    0.1815564
12-15 months   Keneba          GAMBIA      >=167 cm             NA                -0.0078108   -0.0367399    0.0211183
12-15 months   PROBIT          BELARUS     >=167 cm             NA                 0.0076338   -0.0216943    0.0369618
12-15 months   SAS-CompFeed    INDIA       >=167 cm             NA                -0.0762783   -0.1236029   -0.0289537
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1222127   -0.2520930    0.0076676
15-18 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.1209084   -0.0042844    0.2461013
15-18 months   Keneba          GAMBIA      >=167 cm             NA                 0.0084869   -0.0201478    0.0371216
15-18 months   SAS-CompFeed    INDIA       >=167 cm             NA                 0.0012614   -0.0557553    0.0582782
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0060519   -0.0696722    0.0575684
18-21 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0167084   -0.1568876    0.1234708
18-21 months   Keneba          GAMBIA      >=167 cm             NA                -0.0103065   -0.0392719    0.0186589
21-24 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0394985   -0.0737132    0.1527101
21-24 months   Keneba          GAMBIA      >=167 cm             NA                -0.0136431   -0.0420236    0.0147374
