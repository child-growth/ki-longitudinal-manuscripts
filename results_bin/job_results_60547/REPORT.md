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

**Outcome Variable:** ever_co

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

agecat        studyid         country     fhtcm           ever_co   n_cell       n
------------  --------------  ----------  -------------  --------  -------  ------
0-24 months   COHORTS         GUATEMALA   >=167 cm              0       59     495
0-24 months   COHORTS         GUATEMALA   >=167 cm              1        4     495
0-24 months   COHORTS         GUATEMALA   <162 cm               0      244     495
0-24 months   COHORTS         GUATEMALA   <162 cm               1       49     495
0-24 months   COHORTS         GUATEMALA   [162-167) cm          0      119     495
0-24 months   COHORTS         GUATEMALA   [162-167) cm          1       20     495
0-24 months   Keneba          GAMBIA      >=167 cm              0     1062    1929
0-24 months   Keneba          GAMBIA      >=167 cm              1      183    1929
0-24 months   Keneba          GAMBIA      <162 cm               0      111    1929
0-24 months   Keneba          GAMBIA      <162 cm               1       21    1929
0-24 months   Keneba          GAMBIA      [162-167) cm          0      444    1929
0-24 months   Keneba          GAMBIA      [162-167) cm          1      108    1929
0-24 months   PROBIT          BELARUS     >=167 cm              0    11734   12537
0-24 months   PROBIT          BELARUS     >=167 cm              1       10   12537
0-24 months   PROBIT          BELARUS     <162 cm               0      167   12537
0-24 months   PROBIT          BELARUS     <162 cm               1        1   12537
0-24 months   PROBIT          BELARUS     [162-167) cm          0      622   12537
0-24 months   PROBIT          BELARUS     [162-167) cm          1        3   12537
0-24 months   SAS-CompFeed    INDIA       >=167 cm              0      327     895
0-24 months   SAS-CompFeed    INDIA       >=167 cm              1       80     895
0-24 months   SAS-CompFeed    INDIA       <162 cm               0      162     895
0-24 months   SAS-CompFeed    INDIA       <162 cm               1       64     895
0-24 months   SAS-CompFeed    INDIA       [162-167) cm          0      196     895
0-24 months   SAS-CompFeed    INDIA       [162-167) cm          1       66     895
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm              0       73     399
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm              1       33     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm               0       84     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm               1       79     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm          0       91     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm          1       39     399
0-6 months    COHORTS         GUATEMALA   >=167 cm              0       48     334
0-6 months    COHORTS         GUATEMALA   >=167 cm              1        0     334
0-6 months    COHORTS         GUATEMALA   <162 cm               0      192     334
0-6 months    COHORTS         GUATEMALA   <162 cm               1        3     334
0-6 months    COHORTS         GUATEMALA   [162-167) cm          0       89     334
0-6 months    COHORTS         GUATEMALA   [162-167) cm          1        2     334
0-6 months    Keneba          GAMBIA      >=167 cm              0     1081    1722
0-6 months    Keneba          GAMBIA      >=167 cm              1       32    1722
0-6 months    Keneba          GAMBIA      <162 cm               0      121    1722
0-6 months    Keneba          GAMBIA      <162 cm               1        2    1722
0-6 months    Keneba          GAMBIA      [162-167) cm          0      471    1722
0-6 months    Keneba          GAMBIA      [162-167) cm          1       15    1722
0-6 months    PROBIT          BELARUS     >=167 cm              0    11738   12537
0-6 months    PROBIT          BELARUS     >=167 cm              1        6   12537
0-6 months    PROBIT          BELARUS     <162 cm               0      167   12537
0-6 months    PROBIT          BELARUS     <162 cm               1        1   12537
0-6 months    PROBIT          BELARUS     [162-167) cm          0      623   12537
0-6 months    PROBIT          BELARUS     [162-167) cm          1        2   12537
0-6 months    SAS-CompFeed    INDIA       >=167 cm              0      388     888
0-6 months    SAS-CompFeed    INDIA       >=167 cm              1       19     888
0-6 months    SAS-CompFeed    INDIA       <162 cm               0      210     888
0-6 months    SAS-CompFeed    INDIA       <162 cm               1       13     888
0-6 months    SAS-CompFeed    INDIA       [162-167) cm          0      238     888
0-6 months    SAS-CompFeed    INDIA       [162-167) cm          1       20     888
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm              0      101     397
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm              1        5     397
0-6 months    SAS-FoodSuppl   INDIA       <162 cm               0      145     397
0-6 months    SAS-FoodSuppl   INDIA       <162 cm               1       17     397
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm          0      122     397
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm          1        7     397
6-24 months   COHORTS         GUATEMALA   >=167 cm              0       59     488
6-24 months   COHORTS         GUATEMALA   >=167 cm              1        4     488
6-24 months   COHORTS         GUATEMALA   <162 cm               0      239     488
6-24 months   COHORTS         GUATEMALA   <162 cm               1       48     488
6-24 months   COHORTS         GUATEMALA   [162-167) cm          0      120     488
6-24 months   COHORTS         GUATEMALA   [162-167) cm          1       18     488
6-24 months   Keneba          GAMBIA      >=167 cm              0     1014    1850
6-24 months   Keneba          GAMBIA      >=167 cm              1      172    1850
6-24 months   Keneba          GAMBIA      <162 cm               0      112    1850
6-24 months   Keneba          GAMBIA      <162 cm               1       19    1850
6-24 months   Keneba          GAMBIA      [162-167) cm          0      431    1850
6-24 months   Keneba          GAMBIA      [162-167) cm          1      102    1850
6-24 months   PROBIT          BELARUS     >=167 cm              0    11733   12530
6-24 months   PROBIT          BELARUS     >=167 cm              1        5   12530
6-24 months   PROBIT          BELARUS     <162 cm               0      168   12530
6-24 months   PROBIT          BELARUS     <162 cm               1        0   12530
6-24 months   PROBIT          BELARUS     [162-167) cm          0      623   12530
6-24 months   PROBIT          BELARUS     [162-167) cm          1        1   12530
6-24 months   SAS-CompFeed    INDIA       >=167 cm              0      315     836
6-24 months   SAS-CompFeed    INDIA       >=167 cm              1       73     836
6-24 months   SAS-CompFeed    INDIA       <162 cm               0      139     836
6-24 months   SAS-CompFeed    INDIA       <162 cm               1       61     836
6-24 months   SAS-CompFeed    INDIA       [162-167) cm          0      186     836
6-24 months   SAS-CompFeed    INDIA       [162-167) cm          1       62     836
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm              0       74     392
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm              1       31     392
6-24 months   SAS-FoodSuppl   INDIA       <162 cm               0       86     392
6-24 months   SAS-FoodSuppl   INDIA       <162 cm               1       73     392
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm          0       91     392
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm          1       37     392


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

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/fb27d8b7-2721-4c73-b46a-e9bc5a0cff5b/3cce03e9-bddc-494a-8a84-71e7c3bd085f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fb27d8b7-2721-4c73-b46a-e9bc5a0cff5b/3cce03e9-bddc-494a-8a84-71e7c3bd085f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fb27d8b7-2721-4c73-b46a-e9bc5a0cff5b/3cce03e9-bddc-494a-8a84-71e7c3bd085f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fb27d8b7-2721-4c73-b46a-e9bc5a0cff5b/3cce03e9-bddc-494a-8a84-71e7c3bd085f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                0.1497347   0.1292905   0.1701788
0-24 months   Keneba          GAMBIA    <162 cm              NA                0.1716128   0.1087224   0.2345031
0-24 months   Keneba          GAMBIA    [162-167) cm         NA                0.1940473   0.1593376   0.2287570
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.2168428   0.1582341   0.2754515
0-24 months   SAS-CompFeed    INDIA     <162 cm              NA                0.2529381   0.1444020   0.3614743
0-24 months   SAS-CompFeed    INDIA     [162-167) cm         NA                0.2447533   0.1760731   0.3134335
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.3105235   0.2209373   0.4001096
0-24 months   SAS-FoodSuppl   INDIA     <162 cm              NA                0.4722620   0.3950968   0.5494272
0-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.3029572   0.2239456   0.3819688
0-6 months    SAS-CompFeed    INDIA     >=167 cm             NA                0.0505825   0.0279499   0.0732152
0-6 months    SAS-CompFeed    INDIA     <162 cm              NA                0.0503320   0.0086811   0.0919829
0-6 months    SAS-CompFeed    INDIA     [162-167) cm         NA                0.0726854   0.0470632   0.0983075
0-6 months    SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0471698   0.0067604   0.0875792
0-6 months    SAS-FoodSuppl   INDIA     <162 cm              NA                0.1049383   0.0576850   0.1521915
0-6 months    SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.0542636   0.0151218   0.0934053
6-24 months   Keneba          GAMBIA    >=167 cm             NA                0.1481738   0.1280424   0.1683053
6-24 months   Keneba          GAMBIA    <162 cm              NA                0.1367672   0.0746129   0.1989214
6-24 months   Keneba          GAMBIA    [162-167) cm         NA                0.1861209   0.1527365   0.2195053
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.2102692   0.1621049   0.2584335
6-24 months   SAS-CompFeed    INDIA     <162 cm              NA                0.2724844   0.1736384   0.3713305
6-24 months   SAS-CompFeed    INDIA     [162-167) cm         NA                0.2368940   0.1716745   0.3021135
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.3027894   0.2134629   0.3921159
6-24 months   SAS-FoodSuppl   INDIA     <162 cm              NA                0.4559002   0.3783923   0.5334080
6-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.2954483   0.2165390   0.3743576


### Parameter: E(Y)


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba          GAMBIA    NA                   NA                0.1617418   0.1453059   0.1781778
0-24 months   SAS-CompFeed    INDIA     NA                   NA                0.2346369   0.1798928   0.2893809
0-24 months   SAS-FoodSuppl   INDIA     NA                   NA                0.3784461   0.3307978   0.4260945
0-6 months    SAS-CompFeed    INDIA     NA                   NA                0.0585586   0.0394255   0.0776916
0-6 months    SAS-FoodSuppl   INDIA     NA                   NA                0.0730479   0.0474188   0.0986769
6-24 months   Keneba          GAMBIA    NA                   NA                0.1583784   0.1417371   0.1750196
6-24 months   SAS-CompFeed    INDIA     NA                   NA                0.2344498   0.1848813   0.2840182
6-24 months   SAS-FoodSuppl   INDIA     NA                   NA                0.3596939   0.3121253   0.4072624


### Parameter: RR


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   Keneba          GAMBIA    <162 cm              >=167 cm          1.1461124   0.7760390   1.692665
0-24 months   Keneba          GAMBIA    [162-167) cm         >=167 cm          1.2959411   1.0356696   1.621621
0-24 months   SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.1664585   0.7351827   1.850731
0-24 months   SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.1287131   0.8818328   1.444711
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.5208577   1.0908818   2.120311
0-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          0.9756339   0.6615345   1.438869
0-6 months    SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed    INDIA     <162 cm              >=167 cm          0.9950465   0.3551608   2.787801
0-6 months    SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.4369656   0.8968498   2.302359
0-6 months    SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          2.2246914   0.8451872   5.855805
0-6 months    SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.1503876   0.3753798   3.525474
6-24 months   Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   Keneba          GAMBIA    <162 cm              >=167 cm          0.9230184   0.5745152   1.482925
6-24 months   Keneba          GAMBIA    [162-167) cm         >=167 cm          1.2560983   1.0032918   1.572606
6-24 months   SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.2958839   0.9210838   1.823195
6-24 months   SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.1266225   0.8709960   1.457272
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.5056677   1.0703477   2.118036
6-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          0.9757552   0.6553615   1.452783


### Parameter: PAR


agecat        studyid         country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                0.0120072   -0.0011878   0.0252021
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.0177941   -0.0194076   0.0549957
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0679227   -0.0100768   0.1459221
0-6 months    SAS-CompFeed    INDIA     >=167 cm             NA                0.0079760   -0.0126993   0.0286513
0-6 months    SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0258780   -0.0117754   0.0635315
6-24 months   Keneba          GAMBIA    >=167 cm             NA                0.0102045   -0.0026259   0.0230350
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.0241806   -0.0083805   0.0567417
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0569045   -0.0208803   0.1346893


### Parameter: PAF


agecat        studyid         country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                0.0742367   -0.0109276   0.1522264
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.0758366   -0.0933894   0.2188712
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1794777   -0.0551309   0.3619211
0-6 months    SAS-CompFeed    INDIA     >=167 cm             NA                0.1362057   -0.2801313   0.4171375
0-6 months    SAS-FoodSuppl   INDIA     >=167 cm             NA                0.3542615   -0.4046217   0.7031385
6-24 months   Keneba          GAMBIA    >=167 cm             NA                0.0644313   -0.0198719   0.1417660
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.1031376   -0.0394791   0.2261873
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1582026   -0.0884542   0.3489640
