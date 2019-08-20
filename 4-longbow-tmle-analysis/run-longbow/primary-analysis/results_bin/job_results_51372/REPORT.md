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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country     fhtcm           ever_swasted   n_cell       n
------------  -------------------------  ----------  -------------  -------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   0      357     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   1       50     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    0      195     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    1       31     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               0      221     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               1       41     895
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   0       91     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   1       15     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    0      131     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    1       32     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               0      110     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               1       20     399
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   0     1054    1933
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   1      194    1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    0      106    1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    1       26    1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               0      471    1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               1       82    1933
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   0    10729   12537
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   1     1015   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    0      157   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    1       11   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               0      576   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               1       49   12537
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   0       61     495
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   1        2     495
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    0      273     495
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    1       20     495
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               0      130     495
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               1        9     495
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   0      389     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   1       18     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                    0      212     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                    1       11     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               0      245     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               1       13     888
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   0      104     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   1        2     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    0      152     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    1       11     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               0      124     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               1        6     399
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                   0     1042    1705
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                   1       61    1705
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                    0      114    1705
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                    1        9    1705
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm               0      461    1705
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm               1       18    1705
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                   0    10747   12537
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                   1      997   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                    0      158   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                    1       10   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm               0      576   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm               1       49   12537
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                   0       47     334
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                   1        1     334
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                    0      186     334
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                    1        9     334
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm               0       88     334
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm               1        3     334
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   0      353     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   1       35     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    0      180     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    1       20     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               0      219     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               1       29     836
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   0       92     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   1       13     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    0      138     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    1       21     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               0      114     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               1       14     392
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   0     1043    1851
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   1      143    1851
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    0      113    1851
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    1       18    1851
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               0      467    1851
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               1       67    1851
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   0    11719   12530
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   1       19   12530
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    0      167   12530
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    1        1   12530
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               0      624   12530
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               1        0   12530
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   0       62     489
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   1        1     489
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    0      277     489
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    1       11     489
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               0      132     489
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               1        6     489


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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/799a2bfd-c757-4ce8-94b9-bd43fe2fa5e3/fb6dbab7-08dd-430a-8783-e4c952840d71/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/799a2bfd-c757-4ce8-94b9-bd43fe2fa5e3/fb6dbab7-08dd-430a-8783-e4c952840d71/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/799a2bfd-c757-4ce8-94b9-bd43fe2fa5e3/fb6dbab7-08dd-430a-8783-e4c952840d71/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/799a2bfd-c757-4ce8-94b9-bd43fe2fa5e3/fb6dbab7-08dd-430a-8783-e4c952840d71/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1246407   0.0843818   0.1648995
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.1310202   0.0870888   0.1749515
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.1580584   0.1135048   0.2026121
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1446065   0.0770846   0.2121284
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.1945602   0.1331786   0.2559417
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1533202   0.0908647   0.2157757
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.1563596   0.1356742   0.1770450
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.2101035   0.1401451   0.2800618
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.1461245   0.1151330   0.1771161
0-24 months   ki1119695-PROBIT           BELARUS   >=167 cm             NA                0.0861457   0.0514101   0.1208812
0-24 months   ki1119695-PROBIT           BELARUS   <162 cm              NA                0.0581623   0.0380399   0.0782848
0-24 months   ki1119695-PROBIT           BELARUS   [162-167) cm         NA                0.0722564   0.0437873   0.1007256
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0448272   0.0182166   0.0714378
0-6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0465530   0.0288621   0.0642440
0-6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.0514119   0.0129676   0.0898562
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0553037   0.0418106   0.0687968
0-6 months    ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0731707   0.0271354   0.1192061
0-6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0375783   0.0205426   0.0546139
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                0.0845813   0.0497783   0.1193842
0-6 months    ki1119695-PROBIT           BELARUS   <162 cm              NA                0.0550280   0.0364481   0.0736078
0-6 months    ki1119695-PROBIT           BELARUS   [162-167) cm         NA                0.0731822   0.0440540   0.1023105
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0908030   0.0623014   0.1193047
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0979275   0.0549600   0.1408950
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.1191685   0.0679321   0.1704049
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1206251   0.0569109   0.1843393
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.1310574   0.0782697   0.1838451
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1061014   0.0515154   0.1606874
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.1194312   0.1006073   0.1382551
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.1652586   0.0941393   0.2363779
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.1258684   0.0940927   0.1576442


### Parameter: E(Y)


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.1363128   0.1083079   0.1643178
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1679198   0.1311966   0.2046430
0-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.1562338   0.1400440   0.1724237
0-24 months   ki1119695-PROBIT           BELARUS   NA                   NA                0.0857462   0.0517958   0.1196966
0-6 months    ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.0472973   0.0247949   0.0697997
0-6 months    ki1101329-Keneba           GAMBIA    NA                   NA                0.0516129   0.0411082   0.0621176
0-6 months    ki1119695-PROBIT           BELARUS   NA                   NA                0.0842307   0.0501567   0.1183046
6-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.1004785   0.0697945   0.1311624
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1224490   0.0899572   0.1549408
6-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.1231767   0.1082011   0.1381522


### Parameter: RR


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.0511832   0.6721588   1.6439360
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.2681127   0.8675153   1.8536962
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.3454453   0.7663062   2.3622711
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.0602578   0.5703181   1.9710871
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.3437199   0.9391674   1.9225360
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.9345417   0.7278687   1.1998981
0-24 months   ki1119695-PROBIT           BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS   <162 cm              >=167 cm          0.6751626   0.4605200   0.9898473
0-24 months   ki1119695-PROBIT           BELARUS   [162-167) cm         >=167 cm          0.8387702   0.5631737   1.2492333
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.0384998   0.5365772   2.0099283
0-6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.1468903   0.6042697   2.1767721
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.3230708   0.6737840   2.5980377
0-6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.6794894   0.4060674   1.1370176
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS   <162 cm              >=167 cm          0.6505930   0.4493491   0.9419653
0-6 months    ki1119695-PROBIT           BELARUS   [162-167) cm         >=167 cm          0.8652297   0.5724260   1.3078063
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.0784610   0.7331390   1.5864358
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.3123849   0.8515203   2.0226812
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.0864852   0.5591123   2.1112932
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          0.8795961   0.4204892   1.8399743
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.3837139   0.8750045   2.1881766
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          1.0538993   0.7824358   1.4195463


### Parameter: PAR


agecat        studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0116722   -0.0141214   0.0374658
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0233133   -0.0361298   0.0827563
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0001257   -0.0127599   0.0125084
0-24 months   ki1119695-PROBIT           BELARUS   >=167 cm             NA                -0.0003995   -0.0021950   0.0013960
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0024701   -0.0120754   0.0170156
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0036908   -0.0112308   0.0038492
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                -0.0003506   -0.0020809   0.0013798
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0096754   -0.0105556   0.0299065
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0018239   -0.0526333   0.0562811
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0037455   -0.0079798   0.0154708


### Parameter: PAF


agecat        studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0856279   -0.1281468   0.2588941
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.1388358   -0.2975796   0.4284714
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0008048   -0.0850271   0.0768800
0-24 months   ki1119695-PROBIT           BELARUS   >=167 cm             NA                -0.0046590   -0.0251066   0.0153807
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0522250   -0.3119400   0.3153060
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0715095   -0.2272890   0.0644969
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                -0.0041621   -0.0242898   0.0155700
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0962937   -0.1157066   0.2680108
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0148950   -0.5473012   0.3728229
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0304075   -0.0696062   0.1210693
