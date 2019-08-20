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

**Outcome Variable:** ever_sstunted

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

agecat        studyid                    country     fhtcm           ever_sstunted   n_cell       n
------------  -------------------------  ----------  -------------  --------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                    0      307     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                    1      103     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                     0      130     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                     1      100     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm                0      159     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm                1      108     907
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                    0       62     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                    1       44     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                     0       69     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                     1       94     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm                0       72     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm                1       58     399
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                    0      972    1929
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                    1      273    1929
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                     0       98    1929
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                     1       34    1929
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm                0      413    1929
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm                1      139    1929
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                    0    11328   12537
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                    1      416   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                     0      147   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                     1       21   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm                0      582   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm                1       43   12537
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                    0       37     496
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                    1       27     496
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                     0      103     496
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                     1      190     496
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm                0       77     496
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm                1       62     496
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                    0      372     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                    1       38     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                     0      178     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                     1       51     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm                0      222     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm                1       44     905
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                    0       99     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                    1        7     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                     0      138     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                     1       24     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm                0      114     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm                1       15     397
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                    0      987    1723
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                    1      126    1723
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                     0      116    1723
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                     1        8    1723
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm                0      431    1723
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm                1       55    1723
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                    0    11610   12537
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                    1      134   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                     0      162   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                     1        6   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm                0      605   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm                1       20   12537
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                    0       44     337
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                    1        5     337
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                     0      166     337
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                     1       30     337
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm                0       86     337
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm                1        6     337


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA



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
![](/tmp/09d7a243-6a28-450a-917e-adefbd207f67/15c5fe15-c8aa-4ded-9001-2350b09d3f66/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/09d7a243-6a28-450a-917e-adefbd207f67/15c5fe15-c8aa-4ded-9001-2350b09d3f66/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/09d7a243-6a28-450a-917e-adefbd207f67/15c5fe15-c8aa-4ded-9001-2350b09d3f66/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/09d7a243-6a28-450a-917e-adefbd207f67/15c5fe15-c8aa-4ded-9001-2350b09d3f66/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2615040   0.2212900   0.3017180
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.4218096   0.3589849   0.4846344
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.4003128   0.3089986   0.4916270
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.4313984   0.3369744   0.5258224
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.5717306   0.4967799   0.6466813
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.4435691   0.3590383   0.5280999
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.2222536   0.1986977   0.2458096
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.2440700   0.1721485   0.3159915
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.2417273   0.2047170   0.2787375
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0359790   0.0283099   0.0436480
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.0813678   0.0579483   0.1047874
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.0617141   0.0332656   0.0901627
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.4627421   0.3404126   0.5850716
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.6445793   0.5873825   0.7017761
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.4336564   0.3504736   0.5168391
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0969903   0.0693500   0.1246307
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.2103435   0.1858404   0.2348466
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.1644033   0.1332990   0.1955075
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0660377   0.0187004   0.1133750
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.1481481   0.0933749   0.2029214
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1162791   0.0608919   0.1716662
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1132075   0.0945877   0.1318274
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.0645161   0.0212632   0.1077691
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1131687   0.0849953   0.1413422
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0114101   0.0084273   0.0143929
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.0357143   0.0189767   0.0524519
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.0320000   0.0134389   0.0505611
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1020408   0.0171598   0.1869218
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1530612   0.1025807   0.2035418
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.0652174   0.0146889   0.1157459


### Parameter: E(Y)


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3428886   0.3091585   0.3766188
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4912281   0.4421136   0.5403426
0-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.2312079   0.2123887   0.2500270
0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0382867   0.0302846   0.0462887
0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.5625000   0.5187986   0.6062014
0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.1469613   0.1306617   0.1632610
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1158690   0.0843449   0.1473931
0-6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1096924   0.0949323   0.1244525
0-6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0127622   0.0094933   0.0160311
0-6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1216617   0.0867086   0.1566149


### Parameter: RR


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.6130142   1.3329597   1.951908
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.5308095   1.1332957   2.067755
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.3252961   1.0288718   1.707122
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.0282122   0.7712073   1.370864
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.0981597   0.8037101   1.500484
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0876189   0.9036731   1.309008
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          2.2615385   1.6906382   3.025222
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.7152835   1.0934012   2.690867
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.3929558   1.0551703   1.838875
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          0.9371449   0.6773036   1.296672
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          2.1687061   1.6408678   2.866341
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.6950481   1.1472405   2.504434
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          2.2433862   1.0014353   5.025568
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.7607973   0.7446161   4.163766
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          0.5698925   0.2857583   1.136546
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          0.9996571   0.7417675   1.347207
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          3.1300640   1.9528656   5.016884
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          2.8045373   1.5627071   5.033208
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.5000000   0.6130158   3.670378
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          0.6391304   0.2050700   1.991943


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0813847    0.0448908   0.1178785
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0598297   -0.0210405   0.1406998
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0089542   -0.0057010   0.0236095
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0023077    0.0008194   0.0037959
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0997579   -0.0160276   0.2155434
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0499710    0.0330248   0.0669172
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0498313    0.0046873   0.0949753
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0035152   -0.0143156   0.0072853
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0013521    0.0004071   0.0022971
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0196209   -0.0599489   0.0991907


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.2373501    0.1296347   0.3317349
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.1217961   -0.0597498   0.2722414
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0387281   -0.0267921   0.1000674
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0602740    0.0226065   0.0964899
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.1773474   -0.0565125   0.3594423
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.3400283    0.1910582   0.4615649
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.4300656   -0.0992516   0.7045033
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0320455   -0.1352786   0.0618004
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.1059488    0.0364883   0.1704018
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.1612743   -0.8265131   0.6148613
