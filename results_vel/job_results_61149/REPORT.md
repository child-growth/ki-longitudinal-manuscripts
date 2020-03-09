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

**Outcome Variable:** y_rate_wtkg

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
0-3 months     COHORTS         GUATEMALA   >=167 cm            37     243
0-3 months     COHORTS         GUATEMALA   <162 cm            141     243
0-3 months     COHORTS         GUATEMALA   [162-167) cm        65     243
0-3 months     Keneba          GAMBIA      >=167 cm           768    1181
0-3 months     Keneba          GAMBIA      <162 cm             82    1181
0-3 months     Keneba          GAMBIA      [162-167) cm       331    1181
0-3 months     PROBIT          BELARUS     >=167 cm         10778   11505
0-3 months     PROBIT          BELARUS     <162 cm            151   11505
0-3 months     PROBIT          BELARUS     [162-167) cm       576   11505
0-3 months     SAS-CompFeed    INDIA       >=167 cm           347     768
0-3 months     SAS-CompFeed    INDIA       <162 cm            197     768
0-3 months     SAS-CompFeed    INDIA       [162-167) cm       224     768
3-6 months     COHORTS         GUATEMALA   >=167 cm            37     263
3-6 months     COHORTS         GUATEMALA   <162 cm            150     263
3-6 months     COHORTS         GUATEMALA   [162-167) cm        76     263
3-6 months     Keneba          GAMBIA      >=167 cm           673    1039
3-6 months     Keneba          GAMBIA      <162 cm             75    1039
3-6 months     Keneba          GAMBIA      [162-167) cm       291    1039
3-6 months     PROBIT          BELARUS     >=167 cm          9478   10109
3-6 months     PROBIT          BELARUS     <162 cm            129   10109
3-6 months     PROBIT          BELARUS     [162-167) cm       502   10109
3-6 months     SAS-CompFeed    INDIA       >=167 cm           309     681
3-6 months     SAS-CompFeed    INDIA       <162 cm            173     681
3-6 months     SAS-CompFeed    INDIA       [162-167) cm       199     681
6-9 months     COHORTS         GUATEMALA   >=167 cm            40     309
6-9 months     COHORTS         GUATEMALA   <162 cm            187     309
6-9 months     COHORTS         GUATEMALA   [162-167) cm        82     309
6-9 months     Keneba          GAMBIA      >=167 cm           442     663
6-9 months     Keneba          GAMBIA      <162 cm             53     663
6-9 months     Keneba          GAMBIA      [162-167) cm       168     663
6-9 months     PROBIT          BELARUS     >=167 cm          8932    9534
6-9 months     PROBIT          BELARUS     <162 cm            126    9534
6-9 months     PROBIT          BELARUS     [162-167) cm       476    9534
6-9 months     SAS-CompFeed    INDIA       >=167 cm           311     681
6-9 months     SAS-CompFeed    INDIA       <162 cm            166     681
6-9 months     SAS-CompFeed    INDIA       [162-167) cm       204     681
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm            89     306
6-9 months     SAS-FoodSuppl   INDIA       <162 cm            122     306
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm        95     306
9-12 months    COHORTS         GUATEMALA   >=167 cm            51     371
9-12 months    COHORTS         GUATEMALA   <162 cm            226     371
9-12 months    COHORTS         GUATEMALA   [162-167) cm        94     371
9-12 months    Keneba          GAMBIA      >=167 cm           419     652
9-12 months    Keneba          GAMBIA      <162 cm             52     652
9-12 months    Keneba          GAMBIA      [162-167) cm       181     652
9-12 months    PROBIT          BELARUS     >=167 cm          9112    9734
9-12 months    PROBIT          BELARUS     <162 cm            126    9734
9-12 months    PROBIT          BELARUS     [162-167) cm       496    9734
9-12 months    SAS-CompFeed    INDIA       >=167 cm           317     683
9-12 months    SAS-CompFeed    INDIA       <162 cm            165     683
9-12 months    SAS-CompFeed    INDIA       [162-167) cm       201     683
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm            83     297
9-12 months    SAS-FoodSuppl   INDIA       <162 cm            125     297
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm        89     297
12-15 months   COHORTS         GUATEMALA   >=167 cm            53     391
12-15 months   COHORTS         GUATEMALA   <162 cm            228     391
12-15 months   COHORTS         GUATEMALA   [162-167) cm       110     391
12-15 months   Keneba          GAMBIA      >=167 cm           652    1041
12-15 months   Keneba          GAMBIA      <162 cm             85    1041
12-15 months   Keneba          GAMBIA      [162-167) cm       304    1041
12-15 months   PROBIT          BELARUS     >=167 cm           842     898
12-15 months   PROBIT          BELARUS     <162 cm              9     898
12-15 months   PROBIT          BELARUS     [162-167) cm        47     898
12-15 months   SAS-CompFeed    INDIA       >=167 cm           330     701
12-15 months   SAS-CompFeed    INDIA       <162 cm            166     701
12-15 months   SAS-CompFeed    INDIA       [162-167) cm       205     701
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm            77     299
12-15 months   SAS-FoodSuppl   INDIA       <162 cm            130     299
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm        92     299
15-18 months   COHORTS         GUATEMALA   >=167 cm            48     356
15-18 months   COHORTS         GUATEMALA   <162 cm            213     356
15-18 months   COHORTS         GUATEMALA   [162-167) cm        95     356
15-18 months   Keneba          GAMBIA      >=167 cm           660    1053
15-18 months   Keneba          GAMBIA      <162 cm             82    1053
15-18 months   Keneba          GAMBIA      [162-167) cm       311    1053
15-18 months   PROBIT          BELARUS     >=167 cm           229     242
15-18 months   PROBIT          BELARUS     <162 cm              1     242
15-18 months   PROBIT          BELARUS     [162-167) cm        12     242
15-18 months   SAS-CompFeed    INDIA       >=167 cm           335     716
15-18 months   SAS-CompFeed    INDIA       <162 cm            168     716
15-18 months   SAS-CompFeed    INDIA       [162-167) cm       213     716
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm            79     289
15-18 months   SAS-FoodSuppl   INDIA       <162 cm            120     289
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm        90     289
18-21 months   COHORTS         GUATEMALA   >=167 cm            53     384
18-21 months   COHORTS         GUATEMALA   <162 cm            224     384
18-21 months   COHORTS         GUATEMALA   [162-167) cm       107     384
18-21 months   Keneba          GAMBIA      >=167 cm           636    1044
18-21 months   Keneba          GAMBIA      <162 cm             84    1044
18-21 months   Keneba          GAMBIA      [162-167) cm       324    1044
18-21 months   PROBIT          BELARUS     >=167 cm           179     190
18-21 months   PROBIT          BELARUS     <162 cm              2     190
18-21 months   PROBIT          BELARUS     [162-167) cm         9     190
21-24 months   COHORTS         GUATEMALA   >=167 cm            60     428
21-24 months   COHORTS         GUATEMALA   <162 cm            246     428
21-24 months   COHORTS         GUATEMALA   [162-167) cm       122     428
21-24 months   Keneba          GAMBIA      >=167 cm           584     935
21-24 months   Keneba          GAMBIA      <162 cm             72     935
21-24 months   Keneba          GAMBIA      [162-167) cm       279     935
21-24 months   PROBIT          BELARUS     >=167 cm           175     186
21-24 months   PROBIT          BELARUS     <162 cm              4     186
21-24 months   PROBIT          BELARUS     [162-167) cm         7     186


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
![](/tmp/127ddbe6-49e2-4fc0-924b-dd0fc7064a6f/d9b6a16b-4219-4921-8070-90d87a9e86e5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/127ddbe6-49e2-4fc0-924b-dd0fc7064a6f/d9b6a16b-4219-4921-8070-90d87a9e86e5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/127ddbe6-49e2-4fc0-924b-dd0fc7064a6f/d9b6a16b-4219-4921-8070-90d87a9e86e5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             NA                0.7874761   0.7125380   0.8624143
0-3 months     COHORTS         GUATEMALA   <162 cm              NA                0.7604638   0.7178726   0.8030550
0-3 months     COHORTS         GUATEMALA   [162-167) cm         NA                0.8114784   0.7581591   0.8647977
0-3 months     Keneba          GAMBIA      >=167 cm             NA                0.9186527   0.9031515   0.9341539
0-3 months     Keneba          GAMBIA      <162 cm              NA                0.9660752   0.9112577   1.0208927
0-3 months     Keneba          GAMBIA      [162-167) cm         NA                0.9147990   0.8917444   0.9378535
0-3 months     PROBIT          BELARUS     >=167 cm             NA                0.8368254   0.8263473   0.8473035
0-3 months     PROBIT          BELARUS     <162 cm              NA                0.7988463   0.7852826   0.8124099
0-3 months     PROBIT          BELARUS     [162-167) cm         NA                0.8248344   0.8064698   0.8431991
0-3 months     SAS-CompFeed    INDIA       >=167 cm             NA                0.8222091   0.7924112   0.8520069
0-3 months     SAS-CompFeed    INDIA       <162 cm              NA                0.7651760   0.7224902   0.8078618
0-3 months     SAS-CompFeed    INDIA       [162-167) cm         NA                0.7825087   0.7499434   0.8150740
3-6 months     COHORTS         GUATEMALA   >=167 cm             NA                0.4623175   0.3889394   0.5356956
3-6 months     COHORTS         GUATEMALA   <162 cm              NA                0.4207147   0.3940469   0.4473825
3-6 months     COHORTS         GUATEMALA   [162-167) cm         NA                0.4719157   0.4368251   0.5070063
3-6 months     Keneba          GAMBIA      >=167 cm             NA                0.4489042   0.4352720   0.4625364
3-6 months     Keneba          GAMBIA      <162 cm              NA                0.4191456   0.3830369   0.4552543
3-6 months     Keneba          GAMBIA      [162-167) cm         NA                0.4198074   0.3978292   0.4417857
3-6 months     PROBIT          BELARUS     >=167 cm             NA                0.6667936   0.6587137   0.6748735
3-6 months     PROBIT          BELARUS     <162 cm              NA                0.6333159   0.6134703   0.6531615
3-6 months     PROBIT          BELARUS     [162-167) cm         NA                0.6285636   0.6054032   0.6517240
3-6 months     SAS-CompFeed    INDIA       >=167 cm             NA                0.4585280   0.4337131   0.4833430
3-6 months     SAS-CompFeed    INDIA       <162 cm              NA                0.4053813   0.3762891   0.4344734
3-6 months     SAS-CompFeed    INDIA       [162-167) cm         NA                0.4266601   0.4016604   0.4516599
6-9 months     COHORTS         GUATEMALA   >=167 cm             NA                0.2139375   0.1485963   0.2792787
6-9 months     COHORTS         GUATEMALA   <162 cm              NA                0.2043799   0.1826554   0.2261044
6-9 months     COHORTS         GUATEMALA   [162-167) cm         NA                0.2011881   0.1688399   0.2335363
6-9 months     Keneba          GAMBIA      >=167 cm             NA                0.2014926   0.1845117   0.2184735
6-9 months     Keneba          GAMBIA      <162 cm              NA                0.2307265   0.1732163   0.2882368
6-9 months     Keneba          GAMBIA      [162-167) cm         NA                0.1893851   0.1609948   0.2177754
6-9 months     PROBIT          BELARUS     >=167 cm             NA                0.4742778   0.4653148   0.4832407
6-9 months     PROBIT          BELARUS     <162 cm              NA                0.4124125   0.3962068   0.4286181
6-9 months     PROBIT          BELARUS     [162-167) cm         NA                0.4571437   0.4355873   0.4787000
6-9 months     SAS-CompFeed    INDIA       >=167 cm             NA                0.1894701   0.1680115   0.2109288
6-9 months     SAS-CompFeed    INDIA       <162 cm              NA                0.1784682   0.1403955   0.2165408
6-9 months     SAS-CompFeed    INDIA       [162-167) cm         NA                0.1781683   0.1600911   0.1962455
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1948218   0.1649628   0.2246807
6-9 months     SAS-FoodSuppl   INDIA       <162 cm              NA                0.2028014   0.1785491   0.2270537
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1971453   0.1636759   0.2306146
9-12 months    COHORTS         GUATEMALA   >=167 cm             NA                0.1861731   0.1480173   0.2243289
9-12 months    COHORTS         GUATEMALA   <162 cm              NA                0.1483927   0.1283633   0.1684221
9-12 months    COHORTS         GUATEMALA   [162-167) cm         NA                0.1325777   0.0965957   0.1685598
9-12 months    Keneba          GAMBIA      >=167 cm             NA                0.1548172   0.1382232   0.1714111
9-12 months    Keneba          GAMBIA      <162 cm              NA                0.1712135   0.1236306   0.2187964
9-12 months    Keneba          GAMBIA      [162-167) cm         NA                0.1381056   0.1117913   0.1644199
9-12 months    PROBIT          BELARUS     >=167 cm             NA                0.3654918   0.3510682   0.3799153
9-12 months    PROBIT          BELARUS     <162 cm              NA                0.3869370   0.3715855   0.4022885
9-12 months    PROBIT          BELARUS     [162-167) cm         NA                0.3524316   0.3315847   0.3732784
9-12 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.2195153   0.1994543   0.2395762
9-12 months    SAS-CompFeed    INDIA       <162 cm              NA                0.2096640   0.1963383   0.2229897
9-12 months    SAS-CompFeed    INDIA       [162-167) cm         NA                0.2220397   0.1934062   0.2506732
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1435528   0.1075540   0.1795516
9-12 months    SAS-FoodSuppl   INDIA       <162 cm              NA                0.1400404   0.1098481   0.1702327
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1436630   0.1067378   0.1805883
12-15 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1188141   0.0784542   0.1591740
12-15 months   COHORTS         GUATEMALA   <162 cm              NA                0.1336795   0.1127054   0.1546535
12-15 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.1860636   0.1491346   0.2229926
12-15 months   Keneba          GAMBIA      >=167 cm             NA                0.1752123   0.1612307   0.1891938
12-15 months   Keneba          GAMBIA      <162 cm              NA                0.1864960   0.1536025   0.2193895
12-15 months   Keneba          GAMBIA      [162-167) cm         NA                0.1998520   0.1769948   0.2227093
12-15 months   PROBIT          BELARUS     >=167 cm             NA                0.2205378   0.1433380   0.2977377
12-15 months   PROBIT          BELARUS     <162 cm              NA                0.1525218   0.0164661   0.2885774
12-15 months   PROBIT          BELARUS     [162-167) cm         NA                0.2225256   0.0339597   0.4110915
12-15 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.1974689   0.1712166   0.2237213
12-15 months   SAS-CompFeed    INDIA       <162 cm              NA                0.2047261   0.1657362   0.2437159
12-15 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.1960344   0.1746855   0.2173833
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1624699   0.1301903   0.1947496
12-15 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.1764665   0.1512835   0.2016495
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1796611   0.1499598   0.2093625
15-18 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1081094   0.0544281   0.1617906
15-18 months   COHORTS         GUATEMALA   <162 cm              NA                0.1621326   0.1402123   0.1840530
15-18 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.1053738   0.0663230   0.1444246
15-18 months   Keneba          GAMBIA      >=167 cm             NA                0.1660955   0.1516543   0.1805367
15-18 months   Keneba          GAMBIA      <162 cm              NA                0.1259810   0.0852321   0.1667298
15-18 months   Keneba          GAMBIA      [162-167) cm         NA                0.1586920   0.1353222   0.1820617
15-18 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.1636856   0.1300078   0.1973633
15-18 months   SAS-CompFeed    INDIA       <162 cm              NA                0.1566280   0.1319318   0.1813242
15-18 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.1723840   0.1478270   0.1969409
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1528834   0.1233750   0.1823918
15-18 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.1758295   0.1500808   0.2015782
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1611434   0.1334605   0.1888264
18-21 months   COHORTS         GUATEMALA   >=167 cm             NA                0.2071691   0.1391333   0.2752049
18-21 months   COHORTS         GUATEMALA   <162 cm              NA                0.1669672   0.1464494   0.1874850
18-21 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.1948338   0.1619444   0.2277231
18-21 months   Keneba          GAMBIA      >=167 cm             NA                0.1572400   0.1421380   0.1723420
18-21 months   Keneba          GAMBIA      <162 cm              NA                0.1520507   0.1088241   0.1952773
18-21 months   Keneba          GAMBIA      [162-167) cm         NA                0.1533311   0.1307675   0.1758947
21-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.2317432   0.1926813   0.2708051
21-24 months   COHORTS         GUATEMALA   <162 cm              NA                0.1786194   0.1552179   0.2020209
21-24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.1859810   0.1531955   0.2187666
21-24 months   Keneba          GAMBIA      >=167 cm             NA                0.1749615   0.1605923   0.1893308
21-24 months   Keneba          GAMBIA      <162 cm              NA                0.1276479   0.0718708   0.1834251
21-24 months   Keneba          GAMBIA      [162-167) cm         NA                0.1484405   0.1270415   0.1698395


### Parameter: E(Y)


agecat         studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS         GUATEMALA   NA                   NA                0.7654973   0.7339322   0.7970623
0-3 months     Keneba          GAMBIA      NA                   NA                0.9211456   0.9088113   0.9334799
0-3 months     PROBIT          BELARUS     NA                   NA                0.8356651   0.8251745   0.8461557
0-3 months     SAS-CompFeed    INDIA       NA                   NA                0.7960458   0.7686355   0.8234560
3-6 months     COHORTS         GUATEMALA   NA                   NA                0.4405506   0.4209873   0.4601139
3-6 months     Keneba          GAMBIA      NA                   NA                0.4414007   0.4306421   0.4521592
3-6 months     PROBIT          BELARUS     NA                   NA                0.6654416   0.6574980   0.6733852
3-6 months     SAS-CompFeed    INDIA       NA                   NA                0.4356742   0.4152410   0.4561073
6-9 months     COHORTS         GUATEMALA   NA                   NA                0.2044428   0.1875679   0.2213176
6-9 months     Keneba          GAMBIA      NA                   NA                0.1996667   0.1855792   0.2137542
6-9 months     PROBIT          BELARUS     NA                   NA                0.4728240   0.4638757   0.4817724
6-9 months     SAS-CompFeed    INDIA       NA                   NA                0.1837219   0.1641903   0.2032534
6-9 months     SAS-FoodSuppl   INDIA       NA                   NA                0.1989315   0.1824576   0.2154054
9-12 months    COHORTS         GUATEMALA   NA                   NA                0.1482194   0.1336860   0.1627527
9-12 months    Keneba          GAMBIA      NA                   NA                0.1517153   0.1384995   0.1649312
9-12 months    PROBIT          BELARUS     NA                   NA                0.3657561   0.3510684   0.3804439
9-12 months    SAS-CompFeed    INDIA       NA                   NA                0.2183762   0.2032601   0.2334924
9-12 months    SAS-FoodSuppl   INDIA       NA                   NA                0.1420248   0.1229762   0.1610734
12-15 months   COHORTS         GUATEMALA   NA                   NA                0.1495595   0.1344884   0.1646306
12-15 months   Keneba          GAMBIA      NA                   NA                0.1849266   0.1739388   0.1959143
12-15 months   PROBIT          BELARUS     NA                   NA                0.2199602   0.1433467   0.2965737
12-15 months   SAS-CompFeed    INDIA       NA                   NA                0.1982163   0.1855655   0.2108670
12-15 months   SAS-FoodSuppl   INDIA       NA                   NA                0.1741570   0.1580782   0.1902359
15-18 months   COHORTS         GUATEMALA   NA                   NA                0.1392318   0.1223264   0.1561372
15-18 months   Keneba          GAMBIA      NA                   NA                0.1612322   0.1498772   0.1725872
15-18 months   SAS-CompFeed    INDIA       NA                   NA                0.1646882   0.1450730   0.1843033
15-18 months   SAS-FoodSuppl   INDIA       NA                   NA                0.1645149   0.1487075   0.1803222
18-21 months   COHORTS         GUATEMALA   NA                   NA                0.1732169   0.1574345   0.1889994
18-21 months   Keneba          GAMBIA      NA                   NA                0.1562372   0.1442891   0.1681853
21-24 months   COHORTS         GUATEMALA   NA                   NA                0.1888602   0.1739625   0.2037579
21-24 months   Keneba          GAMBIA      NA                   NA                0.1630013   0.1513318   0.1746708


### Parameter: ATE


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0270123   -0.1131229    0.0590983
0-3 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0240023   -0.0682206    0.1162251
0-3 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     Keneba          GAMBIA      <162 cm              >=167 cm           0.0474225   -0.0096166    0.1044616
0-3 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0038537   -0.0313912    0.0236837
0-3 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0379791   -0.0513927   -0.0245655
0-3 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0119910   -0.0300931    0.0061111
0-3 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0570331   -0.0957101   -0.0183561
0-3 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0397004   -0.0660754   -0.0133253
3-6 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0416028   -0.1197806    0.0365750
3-6 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0095982   -0.0717907    0.0909870
3-6 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     Keneba          GAMBIA      <162 cm              >=167 cm          -0.0297586   -0.0684048    0.0088875
3-6 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0290968   -0.0549388   -0.0032548
3-6 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0334777   -0.0514561   -0.0154992
3-6 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0382299   -0.0628871   -0.0135727
3-6 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0531468   -0.0773195   -0.0289740
3-6 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0318679   -0.0608315   -0.0029043
6-9 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0095576   -0.0784925    0.0593773
6-9 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0127494   -0.0858536    0.0603547
6-9 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     Keneba          GAMBIA      <162 cm              >=167 cm           0.0292339   -0.0306548    0.0891226
6-9 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0121075   -0.0453283    0.0211132
6-9 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0618653   -0.0782594   -0.0454712
6-9 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0171341   -0.0364215    0.0021533
6-9 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0110020   -0.0413939    0.0193899
6-9 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0113018   -0.0300720    0.0074683
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0079796   -0.0303347    0.0462939
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0023235   -0.0426262    0.0472732
9-12 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0377804   -0.0809595    0.0053987
9-12 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0535954   -0.1060480   -0.0011427
9-12 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    Keneba          GAMBIA      <162 cm              >=167 cm           0.0163963   -0.0340895    0.0668821
9-12 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0167116   -0.0479433    0.0145201
9-12 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROBIT          BELARUS     <162 cm              >=167 cm           0.0214452    0.0069720    0.0359185
9-12 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0130602   -0.0265819    0.0004616
9-12 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0098513   -0.0303821    0.0106796
9-12 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0025244   -0.0285123    0.0335611
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0035124   -0.0509714    0.0439466
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0001103   -0.0521565    0.0523770
12-15 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0148654   -0.0306828    0.0604136
12-15 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0672495    0.0125058    0.1219932
12-15 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   Keneba          GAMBIA      <162 cm              >=167 cm           0.0112837   -0.0245649    0.0471323
12-15 months   Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0246398   -0.0022088    0.0514883
12-15 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROBIT          BELARUS     <162 cm              >=167 cm          -0.0680161   -0.2100108    0.0739787
12-15 months   PROBIT          BELARUS     [162-167) cm         >=167 cm           0.0019877   -0.1773121    0.1812875
12-15 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0072571   -0.0413322    0.0558465
12-15 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0014346   -0.0433151    0.0404460
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0139966   -0.0272351    0.0552282
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0171912   -0.0270466    0.0614289
15-18 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0540232   -0.0039089    0.1119554
15-18 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0027356   -0.0691024    0.0636313
15-18 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0401145   -0.0832888    0.0030597
15-18 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0074035   -0.0349709    0.0201638
15-18 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0070576   -0.0455784    0.0314633
15-18 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0086984   -0.0285601    0.0459569
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0229461   -0.0162451    0.0621373
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0082601   -0.0322707    0.0487908
18-21 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0402019   -0.1110463    0.0306425
18-21 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0123353   -0.0878715    0.0632009
18-21 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0051893   -0.0510143    0.0406357
18-21 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0039089   -0.0311637    0.0233459
21-24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0531238   -0.0985108   -0.0077368
21-24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0457621   -0.0968436    0.0053193
21-24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0473136   -0.1050137    0.0103865
21-24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0265210   -0.0523816   -0.0006605


### Parameter: PAR


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0219789   -0.0933001    0.0493424
0-3 months     Keneba          GAMBIA      >=167 cm             NA                 0.0024929   -0.0067222    0.0117081
0-3 months     PROBIT          BELARUS     >=167 cm             NA                -0.0011603   -0.0018986   -0.0004220
0-3 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0261633   -0.0396486   -0.0126780
3-6 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0217669   -0.0901907    0.0466569
3-6 months     Keneba          GAMBIA      >=167 cm             NA                -0.0075035   -0.0157934    0.0007863
3-6 months     PROBIT          BELARUS     >=167 cm             NA                -0.0013520   -0.0025390   -0.0001649
3-6 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0228538   -0.0351170   -0.0105907
6-9 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0094948   -0.0706223    0.0516328
6-9 months     Keneba          GAMBIA      >=167 cm             NA                -0.0018259   -0.0117710    0.0081192
6-9 months     PROBIT          BELARUS     >=167 cm             NA                -0.0014537   -0.0027329   -0.0001746
6-9 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0057483   -0.0169909    0.0054944
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0041097   -0.0214027    0.0296221
9-12 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.0379537   -0.0755069   -0.0004006
9-12 months    Keneba          GAMBIA      >=167 cm             NA                -0.0031018   -0.0132676    0.0070639
9-12 months    PROBIT          BELARUS     >=167 cm             NA                 0.0002644   -0.0006862    0.0012149
9-12 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.0011390   -0.0134092    0.0111311
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0015280   -0.0331652    0.0301091
12-15 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0307454   -0.0085116    0.0700024
12-15 months   Keneba          GAMBIA      >=167 cm             NA                 0.0097143    0.0009432    0.0184855
12-15 months   PROBIT          BELARUS     >=167 cm             NA                -0.0005776   -0.0103493    0.0091940
12-15 months   SAS-CompFeed    INDIA       >=167 cm             NA                 0.0007473   -0.0202558    0.0217504
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0116871   -0.0163399    0.0397141
15-18 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0311224   -0.0199768    0.0822216
15-18 months   Keneba          GAMBIA      >=167 cm             NA                -0.0048633   -0.0141469    0.0044202
15-18 months   SAS-CompFeed    INDIA       >=167 cm             NA                 0.0010026   -0.0176579    0.0196631
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0116315   -0.0139502    0.0372132
18-21 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0339521   -0.0981947    0.0302904
18-21 months   Keneba          GAMBIA      >=167 cm             NA                -0.0010028   -0.0110995    0.0090939
21-24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0428830   -0.0806965   -0.0050695
21-24 months   Keneba          GAMBIA      >=167 cm             NA                -0.0119603   -0.0212761   -0.0026444
