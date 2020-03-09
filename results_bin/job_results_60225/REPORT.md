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

agecat        studyid         country     fhtcm           ever_sstunted   n_cell       n
------------  --------------  ----------  -------------  --------------  -------  ------
0-24 months   COHORTS         GUATEMALA   >=167 cm                    0       37     496
0-24 months   COHORTS         GUATEMALA   >=167 cm                    1       27     496
0-24 months   COHORTS         GUATEMALA   <162 cm                     0      103     496
0-24 months   COHORTS         GUATEMALA   <162 cm                     1      190     496
0-24 months   COHORTS         GUATEMALA   [162-167) cm                0       77     496
0-24 months   COHORTS         GUATEMALA   [162-167) cm                1       62     496
0-24 months   Keneba          GAMBIA      >=167 cm                    0      972    1929
0-24 months   Keneba          GAMBIA      >=167 cm                    1      273    1929
0-24 months   Keneba          GAMBIA      <162 cm                     0       98    1929
0-24 months   Keneba          GAMBIA      <162 cm                     1       34    1929
0-24 months   Keneba          GAMBIA      [162-167) cm                0      413    1929
0-24 months   Keneba          GAMBIA      [162-167) cm                1      139    1929
0-24 months   PROBIT          BELARUS     >=167 cm                    0    11452   12537
0-24 months   PROBIT          BELARUS     >=167 cm                    1      292   12537
0-24 months   PROBIT          BELARUS     <162 cm                     0      154   12537
0-24 months   PROBIT          BELARUS     <162 cm                     1       14   12537
0-24 months   PROBIT          BELARUS     [162-167) cm                0      597   12537
0-24 months   PROBIT          BELARUS     [162-167) cm                1       28   12537
0-24 months   SAS-CompFeed    INDIA       >=167 cm                    0      307     907
0-24 months   SAS-CompFeed    INDIA       >=167 cm                    1      103     907
0-24 months   SAS-CompFeed    INDIA       <162 cm                     0      130     907
0-24 months   SAS-CompFeed    INDIA       <162 cm                     1      100     907
0-24 months   SAS-CompFeed    INDIA       [162-167) cm                0      159     907
0-24 months   SAS-CompFeed    INDIA       [162-167) cm                1      108     907
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                    0       62     399
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                    1       44     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                     0       69     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                     1       94     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm                0       72     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm                1       58     399
0-6 months    COHORTS         GUATEMALA   >=167 cm                    0       44     337
0-6 months    COHORTS         GUATEMALA   >=167 cm                    1        5     337
0-6 months    COHORTS         GUATEMALA   <162 cm                     0      166     337
0-6 months    COHORTS         GUATEMALA   <162 cm                     1       30     337
0-6 months    COHORTS         GUATEMALA   [162-167) cm                0       86     337
0-6 months    COHORTS         GUATEMALA   [162-167) cm                1        6     337
0-6 months    Keneba          GAMBIA      >=167 cm                    0      987    1723
0-6 months    Keneba          GAMBIA      >=167 cm                    1      126    1723
0-6 months    Keneba          GAMBIA      <162 cm                     0      116    1723
0-6 months    Keneba          GAMBIA      <162 cm                     1        8    1723
0-6 months    Keneba          GAMBIA      [162-167) cm                0      431    1723
0-6 months    Keneba          GAMBIA      [162-167) cm                1       55    1723
0-6 months    PROBIT          BELARUS     >=167 cm                    0    11642   12537
0-6 months    PROBIT          BELARUS     >=167 cm                    1      102   12537
0-6 months    PROBIT          BELARUS     <162 cm                     0      164   12537
0-6 months    PROBIT          BELARUS     <162 cm                     1        4   12537
0-6 months    PROBIT          BELARUS     [162-167) cm                0      617   12537
0-6 months    PROBIT          BELARUS     [162-167) cm                1        8   12537
0-6 months    SAS-CompFeed    INDIA       >=167 cm                    0      372     905
0-6 months    SAS-CompFeed    INDIA       >=167 cm                    1       38     905
0-6 months    SAS-CompFeed    INDIA       <162 cm                     0      178     905
0-6 months    SAS-CompFeed    INDIA       <162 cm                     1       51     905
0-6 months    SAS-CompFeed    INDIA       [162-167) cm                0      222     905
0-6 months    SAS-CompFeed    INDIA       [162-167) cm                1       44     905
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                    0       99     397
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                    1        7     397
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                     0      138     397
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                     1       24     397
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm                0      114     397
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm                1       15     397


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/5144a5a0-2d0f-4e7d-8790-952d8bd2aec0/99178d04-606c-46ed-8cfa-a4ec5ddd5236/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5144a5a0-2d0f-4e7d-8790-952d8bd2aec0/99178d04-606c-46ed-8cfa-a4ec5ddd5236/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5144a5a0-2d0f-4e7d-8790-952d8bd2aec0/99178d04-606c-46ed-8cfa-a4ec5ddd5236/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5144a5a0-2d0f-4e7d-8790-952d8bd2aec0/99178d04-606c-46ed-8cfa-a4ec5ddd5236/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.4501182   0.3346040   0.5656325
0-24 months   COHORTS         GUATEMALA   <162 cm              NA                0.6444717   0.5881347   0.7008088
0-24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.4283797   0.3441919   0.5125676
0-24 months   Keneba          GAMBIA      >=167 cm             NA                0.2227882   0.1992040   0.2463724
0-24 months   Keneba          GAMBIA      <162 cm              NA                0.2517870   0.1792639   0.3243102
0-24 months   Keneba          GAMBIA      [162-167) cm         NA                0.2337628   0.1975117   0.2700139
0-24 months   PROBIT          BELARUS     >=167 cm             NA                0.0249773   0.0182755   0.0316791
0-24 months   PROBIT          BELARUS     <162 cm              NA                0.0779909   0.0553534   0.1006283
0-24 months   PROBIT          BELARUS     [162-167) cm         NA                0.0407076   0.0170700   0.0643452
0-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.2730944   0.2292081   0.3169807
0-24 months   SAS-CompFeed    INDIA       <162 cm              NA                0.3982028   0.3419936   0.4544120
0-24 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.3962731   0.3092057   0.4833405
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.4235965   0.3307752   0.5164178
0-24 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.5652121   0.4897483   0.6406760
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.4637582   0.3784395   0.5490768
0-6 months    COHORTS         GUATEMALA   >=167 cm             NA                0.1020408   0.0171598   0.1869218
0-6 months    COHORTS         GUATEMALA   <162 cm              NA                0.1530612   0.1025807   0.2035418
0-6 months    COHORTS         GUATEMALA   [162-167) cm         NA                0.0652174   0.0146889   0.1157459
0-6 months    Keneba          GAMBIA      >=167 cm             NA                0.1132075   0.0945877   0.1318274
0-6 months    Keneba          GAMBIA      <162 cm              NA                0.0645161   0.0212632   0.1077691
0-6 months    Keneba          GAMBIA      [162-167) cm         NA                0.1131687   0.0849953   0.1413422
0-6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.0959358   0.0699713   0.1219003
0-6 months    SAS-CompFeed    INDIA       <162 cm              NA                0.2179740   0.1942552   0.2416929
0-6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                0.1603795   0.1295243   0.1912347
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0660377   0.0187004   0.1133750
0-6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                0.1481481   0.0933749   0.2029214
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1162791   0.0608919   0.1716662


### Parameter: E(Y)


agecat        studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA   NA                   NA                0.5625000   0.5187986   0.6062014
0-24 months   Keneba          GAMBIA      NA                   NA                0.2312079   0.2123887   0.2500270
0-24 months   PROBIT          BELARUS     NA                   NA                0.0266411   0.0195656   0.0337167
0-24 months   SAS-CompFeed    INDIA       NA                   NA                0.3428886   0.3091585   0.3766188
0-24 months   SAS-FoodSuppl   INDIA       NA                   NA                0.4912281   0.4421136   0.5403426
0-6 months    COHORTS         GUATEMALA   NA                   NA                0.1216617   0.0867086   0.1566149
0-6 months    Keneba          GAMBIA      NA                   NA                0.1096924   0.0949323   0.1244525
0-6 months    SAS-CompFeed    INDIA       NA                   NA                0.1469613   0.1306617   0.1632610
0-6 months    SAS-FoodSuppl   INDIA       NA                   NA                0.1158690   0.0843449   0.1473931


### Parameter: RR


agecat        studyid         country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          1.4317832   1.0936141   1.874521
0-24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          0.9517049   0.6903940   1.311921
0-24 months   Keneba          GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   Keneba          GAMBIA      <162 cm              >=167 cm          1.1301633   0.8322262   1.534762
0-24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          1.0492602   0.8703800   1.264904
0-24 months   PROBIT          BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   PROBIT          BELARUS     <162 cm              >=167 cm          3.1224729   2.2425443   4.347667
0-24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          1.6297865   0.9491204   2.798596
0-24 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.4581139   1.2036674   1.766349
0-24 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.4510480   1.0894619   1.932642
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.3343172   1.0335468   1.722614
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.0948111   0.8237660   1.455038
0-6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          1.5000000   0.6130158   3.670378
0-6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          0.6391304   0.2050700   1.991943
0-6 months    Keneba          GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    Keneba          GAMBIA      <162 cm              >=167 cm          0.5698925   0.2857583   1.136546
0-6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          0.9996571   0.7417675   1.347207
0-6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          2.2720823   1.7517923   2.946901
0-6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.6717376   1.1422014   2.446772
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          2.2433862   1.0014353   5.025568
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.7607973   0.7446161   4.163766


### Parameter: PAR


agecat        studyid         country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.1123818    0.0033274   0.2214361
0-24 months   Keneba          GAMBIA      >=167 cm             NA                 0.0084197   -0.0062741   0.0231135
0-24 months   PROBIT          BELARUS     >=167 cm             NA                 0.0016639    0.0002656   0.0030622
0-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                 0.0697942    0.0339433   0.1056452
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0676316   -0.0120307   0.1472938
0-6 months    COHORTS         GUATEMALA   >=167 cm             NA                 0.0196209   -0.0599489   0.0991907
0-6 months    Keneba          GAMBIA      >=167 cm             NA                -0.0035152   -0.0143156   0.0072853
0-6 months    SAS-CompFeed    INDIA       >=167 cm             NA                 0.0510255    0.0366672   0.0653838
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0498313    0.0046873   0.0949753


### Parameter: PAF


agecat        studyid         country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.1997898   -0.0194269   0.3718663
0-24 months   Keneba          GAMBIA      >=167 cm             NA                 0.0364161   -0.0292735   0.0979132
0-24 months   PROBIT          BELARUS     >=167 cm             NA                 0.0624547    0.0121102   0.1102336
0-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                 0.2035478    0.0943480   0.2995807
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.1376785   -0.0411449   0.2857878
0-6 months    COHORTS         GUATEMALA   >=167 cm             NA                 0.1612743   -0.8265131   0.6148613
0-6 months    Keneba          GAMBIA      >=167 cm             NA                -0.0320455   -0.1352786   0.0618004
0-6 months    SAS-CompFeed    INDIA       >=167 cm             NA                 0.3472037    0.2160637   0.4564062
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.4300656   -0.0992516   0.7045033
