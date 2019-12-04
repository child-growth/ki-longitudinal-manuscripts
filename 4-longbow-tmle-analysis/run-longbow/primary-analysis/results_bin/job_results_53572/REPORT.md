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

**Outcome Variable:** wasted

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

agecat      studyid                    country     fhtcm           wasted   n_cell       n
----------  -------------------------  ----------  -------------  -------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             0      286     657
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             1       26     657
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              0      153     657
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              1        6     657
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         0      164     657
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         1       22     657
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             0      550    1114
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             1      183    1114
Birth       ki1101329-Keneba           GAMBIA      <162 cm              0       58    1114
Birth       ki1101329-Keneba           GAMBIA      <162 cm              1       25    1114
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         0      228    1114
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         1       70    1114
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             0     9274   12474
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             1     2410   12474
Birth       ki1119695-PROBIT           BELARUS     <162 cm              0      130   12474
Birth       ki1119695-PROBIT           BELARUS     <162 cm              1       38   12474
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         0      478   12474
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         1      144   12474
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             0       22     192
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             1        4     192
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              0       92     192
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              1       20     192
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         0       42     192
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         1       12     192
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             0      332     807
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             1       38     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              0      170     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              1       23     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         0      212     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         1       32     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             0       88     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             1       14     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              0      115     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              1       33     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         0      101     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         1       20     371
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             0      923    1510
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             1       56    1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm              0      104    1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm              1        9    1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         0      397    1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         1       21    1510
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             0    11053   11892
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             1       90   11892
6 months    ki1119695-PROBIT           BELARUS     <162 cm              0      155   11892
6 months    ki1119695-PROBIT           BELARUS     <162 cm              1        1   11892
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         0      592   11892
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         1        1   11892
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             0       44     336
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             1        0     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              0      190     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              1        8     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         0       89     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         1        5     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             0      743    1298
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             1       80    1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm              0       79    1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm              1       17    1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         0      344    1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         1       35    1298
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             0     3353    3610
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             1       35    3610
24 months   ki1119695-PROBIT           BELARUS     <162 cm              0       50    3610
24 months   ki1119695-PROBIT           BELARUS     <162 cm              1        2    3610
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         0      168    3610
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         1        2    3610
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             0       69     532
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             1        3     532
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              0      292     532
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              1       19     532
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         0      140     532
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         1        9     532


The following strata were considered:

* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/dd342242-8a0a-4ed8-91b1-cf6f4de9373c/7912d2ff-4710-4568-8626-e5db7c39990f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dd342242-8a0a-4ed8-91b1-cf6f4de9373c/7912d2ff-4710-4568-8626-e5db7c39990f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dd342242-8a0a-4ed8-91b1-cf6f4de9373c/7912d2ff-4710-4568-8626-e5db7c39990f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dd342242-8a0a-4ed8-91b1-cf6f4de9373c/7912d2ff-4710-4568-8626-e5db7c39990f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0833333   0.0448740   0.1217926
Birth       ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0377358   0.0169272   0.0585445
Birth       ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.1182796   0.0425886   0.1939705
Birth       ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.2503554   0.2185703   0.2821406
Birth       ki1101329-Keneba           GAMBIA    <162 cm              NA                0.3253569   0.2178497   0.4328640
Birth       ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.2533672   0.2028005   0.3039339
Birth       ki1119695-PROBIT           BELARUS   >=167 cm             NA                0.2059646   0.1398228   0.2721064
Birth       ki1119695-PROBIT           BELARUS   <162 cm              NA                0.2328812   0.2024351   0.2633273
Birth       ki1119695-PROBIT           BELARUS   [162-167) cm         NA                0.2323894   0.1577114   0.3070674
6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1057229   0.0796215   0.1318243
6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.1119398   0.0554346   0.1684449
6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.1350803   0.0940552   0.1761055
6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1419439   0.0752502   0.2086376
6 months    ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.2273969   0.1603831   0.2944108
6 months    ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1703671   0.1032958   0.2374383
6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0572012   0.0426496   0.0717529
6 months    ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0796460   0.0297102   0.1295818
6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0502392   0.0292917   0.0711867
24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0976122   0.0762717   0.1189527
24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.2088825   0.1260066   0.2917584
24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.1135305   0.0773587   0.1497023


### Parameter: E(Y)


agecat      studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.0821918   0.0448621   0.1195215
Birth       ki1101329-Keneba           GAMBIA    NA                   NA                0.2495512   0.2241273   0.2749750
Birth       ki1119695-PROBIT           BELARUS   NA                   NA                0.2077922   0.1422720   0.2733124
6 months    ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.1152416   0.0868962   0.1435870
6 months    ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1805930   0.1413965   0.2197895
6 months    ki1101329-Keneba           GAMBIA    NA                   NA                0.0569536   0.0452605   0.0686468
24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.1016949   0.0852459   0.1181439


### Parameter: RR


agecat      studyid                    country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          0.4528302   0.2154344   0.951822
Birth       ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.4193548   1.0317831   1.952511
Birth       ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.2995798   0.9121850   1.851497
Birth       ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          1.0120299   0.7987606   1.282242
Birth       ki1119695-PROBIT           BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS   <162 cm              >=167 cm          1.1306856   0.8503748   1.503396
Birth       ki1119695-PROBIT           BELARUS   [162-167) cm         >=167 cm          1.1282979   0.9410875   1.352750
6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.0588037   0.6008461   1.865811
6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.2776829   0.8966410   1.820655
6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.6020192   0.9216344   2.784689
6 months    ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.2002420   0.6508004   2.213552
6 months    ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.3923831   0.7077955   2.739111
6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.8782895   0.5389064   1.431403
24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          2.1399234   1.3613891   3.363676
24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          1.1630774   0.7911248   1.709906


### Parameter: PAR


agecat      studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                -0.0011416   -0.0094022   0.0071191
Birth       ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0008043   -0.0196892   0.0180806
Birth       ki1119695-PROBIT           BELARUS   >=167 cm             NA                 0.0018276   -0.0002418   0.0038970
6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0095188   -0.0185913   0.0376289
6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0386491   -0.0206691   0.0979672
6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0002476   -0.0088444   0.0083492
24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0040828   -0.0096518   0.0178173


### Parameter: PAF


agecat      studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                -0.0138889   -0.1195659   0.0818131
Birth       ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0032228   -0.0818237   0.0696672
Birth       ki1119695-PROBIT           BELARUS   >=167 cm             NA                 0.0087954   -0.0023426   0.0198095
6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0825983   -0.1825185   0.2882767
6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.2140119   -0.1895018   0.4806420
6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0043471   -0.1672214   0.1357996
24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0401472   -0.1049896   0.1662207
