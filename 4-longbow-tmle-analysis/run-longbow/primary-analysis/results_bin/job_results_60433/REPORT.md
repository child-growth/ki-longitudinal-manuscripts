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

agecat        studyid         country     fhtcm           ever_swasted   n_cell       n
------------  --------------  ----------  -------------  -------------  -------  ------
0-24 months   COHORTS         GUATEMALA   >=167 cm                   0       61     495
0-24 months   COHORTS         GUATEMALA   >=167 cm                   1        2     495
0-24 months   COHORTS         GUATEMALA   <162 cm                    0      273     495
0-24 months   COHORTS         GUATEMALA   <162 cm                    1       20     495
0-24 months   COHORTS         GUATEMALA   [162-167) cm               0      130     495
0-24 months   COHORTS         GUATEMALA   [162-167) cm               1        9     495
0-24 months   Keneba          GAMBIA      >=167 cm                   0     1012    1933
0-24 months   Keneba          GAMBIA      >=167 cm                   1      236    1933
0-24 months   Keneba          GAMBIA      <162 cm                    0       99    1933
0-24 months   Keneba          GAMBIA      <162 cm                    1       33    1933
0-24 months   Keneba          GAMBIA      [162-167) cm               0      454    1933
0-24 months   Keneba          GAMBIA      [162-167) cm               1       99    1933
0-24 months   PROBIT          BELARUS     >=167 cm                   0    10716   12537
0-24 months   PROBIT          BELARUS     >=167 cm                   1     1028   12537
0-24 months   PROBIT          BELARUS     <162 cm                    0      153   12537
0-24 months   PROBIT          BELARUS     <162 cm                    1       15   12537
0-24 months   PROBIT          BELARUS     [162-167) cm               0      573   12537
0-24 months   PROBIT          BELARUS     [162-167) cm               1       52   12537
0-24 months   SAS-CompFeed    INDIA       >=167 cm                   0      357     895
0-24 months   SAS-CompFeed    INDIA       >=167 cm                   1       50     895
0-24 months   SAS-CompFeed    INDIA       <162 cm                    0      195     895
0-24 months   SAS-CompFeed    INDIA       <162 cm                    1       31     895
0-24 months   SAS-CompFeed    INDIA       [162-167) cm               0      221     895
0-24 months   SAS-CompFeed    INDIA       [162-167) cm               1       41     895
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   0       91     399
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   1       15     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                    0      131     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                    1       32     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               0      110     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               1       20     399
0-6 months    COHORTS         GUATEMALA   >=167 cm                   0       47     334
0-6 months    COHORTS         GUATEMALA   >=167 cm                   1        1     334
0-6 months    COHORTS         GUATEMALA   <162 cm                    0      186     334
0-6 months    COHORTS         GUATEMALA   <162 cm                    1        9     334
0-6 months    COHORTS         GUATEMALA   [162-167) cm               0       88     334
0-6 months    COHORTS         GUATEMALA   [162-167) cm               1        3     334
0-6 months    Keneba          GAMBIA      >=167 cm                   0     1009    1725
0-6 months    Keneba          GAMBIA      >=167 cm                   1      107    1725
0-6 months    Keneba          GAMBIA      <162 cm                    0      107    1725
0-6 months    Keneba          GAMBIA      <162 cm                    1       16    1725
0-6 months    Keneba          GAMBIA      [162-167) cm               0      448    1725
0-6 months    Keneba          GAMBIA      [162-167) cm               1       38    1725
0-6 months    PROBIT          BELARUS     >=167 cm                   0    10725   12537
0-6 months    PROBIT          BELARUS     >=167 cm                   1     1019   12537
0-6 months    PROBIT          BELARUS     <162 cm                    0      153   12537
0-6 months    PROBIT          BELARUS     <162 cm                    1       15   12537
0-6 months    PROBIT          BELARUS     [162-167) cm               0      573   12537
0-6 months    PROBIT          BELARUS     [162-167) cm               1       52   12537
0-6 months    SAS-CompFeed    INDIA       >=167 cm                   0      389     888
0-6 months    SAS-CompFeed    INDIA       >=167 cm                   1       18     888
0-6 months    SAS-CompFeed    INDIA       <162 cm                    0      212     888
0-6 months    SAS-CompFeed    INDIA       <162 cm                    1       11     888
0-6 months    SAS-CompFeed    INDIA       [162-167) cm               0      245     888
0-6 months    SAS-CompFeed    INDIA       [162-167) cm               1       13     888
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                   0      104     399
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                   1        2     399
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                    0      152     399
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                    1       11     399
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm               0      124     399
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm               1        6     399
6-24 months   COHORTS         GUATEMALA   >=167 cm                   0       62     489
6-24 months   COHORTS         GUATEMALA   >=167 cm                   1        1     489
6-24 months   COHORTS         GUATEMALA   <162 cm                    0      277     489
6-24 months   COHORTS         GUATEMALA   <162 cm                    1       11     489
6-24 months   COHORTS         GUATEMALA   [162-167) cm               0      132     489
6-24 months   COHORTS         GUATEMALA   [162-167) cm               1        6     489
6-24 months   Keneba          GAMBIA      >=167 cm                   0     1043    1851
6-24 months   Keneba          GAMBIA      >=167 cm                   1      143    1851
6-24 months   Keneba          GAMBIA      <162 cm                    0      113    1851
6-24 months   Keneba          GAMBIA      <162 cm                    1       18    1851
6-24 months   Keneba          GAMBIA      [162-167) cm               0      467    1851
6-24 months   Keneba          GAMBIA      [162-167) cm               1       67    1851
6-24 months   PROBIT          BELARUS     >=167 cm                   0    11729   12530
6-24 months   PROBIT          BELARUS     >=167 cm                   1        9   12530
6-24 months   PROBIT          BELARUS     <162 cm                    0      168   12530
6-24 months   PROBIT          BELARUS     <162 cm                    1        0   12530
6-24 months   PROBIT          BELARUS     [162-167) cm               0      624   12530
6-24 months   PROBIT          BELARUS     [162-167) cm               1        0   12530
6-24 months   SAS-CompFeed    INDIA       >=167 cm                   0      353     836
6-24 months   SAS-CompFeed    INDIA       >=167 cm                   1       35     836
6-24 months   SAS-CompFeed    INDIA       <162 cm                    0      180     836
6-24 months   SAS-CompFeed    INDIA       <162 cm                    1       20     836
6-24 months   SAS-CompFeed    INDIA       [162-167) cm               0      219     836
6-24 months   SAS-CompFeed    INDIA       [162-167) cm               1       29     836
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   0       92     392
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   1       13     392
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                    0      138     392
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                    1       21     392
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               0      114     392
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               1       14     392


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
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c0f33ee3-9b02-4036-957a-3daa0712af86/b503f586-e3ed-455c-93b8-8d9047e15cfc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c0f33ee3-9b02-4036-957a-3daa0712af86/b503f586-e3ed-455c-93b8-8d9047e15cfc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c0f33ee3-9b02-4036-957a-3daa0712af86/b503f586-e3ed-455c-93b8-8d9047e15cfc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c0f33ee3-9b02-4036-957a-3daa0712af86/b503f586-e3ed-455c-93b8-8d9047e15cfc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                0.1905507   0.1679835   0.2131178
0-24 months   Keneba          GAMBIA    <162 cm              NA                0.3064749   0.2237883   0.3891614
0-24 months   Keneba          GAMBIA    [162-167) cm         NA                0.1813537   0.1474853   0.2152222
0-24 months   PROBIT          BELARUS   >=167 cm             NA                0.0872726   0.0525618   0.1219834
0-24 months   PROBIT          BELARUS   <162 cm              NA                0.0984611   0.0757566   0.1211655
0-24 months   PROBIT          BELARUS   [162-167) cm         NA                0.0832057   0.0532488   0.1131627
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.1306765   0.0907730   0.1705800
0-24 months   SAS-CompFeed    INDIA     <162 cm              NA                0.1254014   0.0841775   0.1666253
0-24 months   SAS-CompFeed    INDIA     [162-167) cm         NA                0.1523790   0.1059857   0.1987723
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1452471   0.0767700   0.2137243
0-24 months   SAS-FoodSuppl   INDIA     <162 cm              NA                0.1897008   0.1294897   0.2499119
0-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1576088   0.0940621   0.2211555
0-6 months    Keneba          GAMBIA    >=167 cm             NA                0.0949431   0.0771982   0.1126880
0-6 months    Keneba          GAMBIA    <162 cm              NA                0.1594403   0.0949367   0.2239439
0-6 months    Keneba          GAMBIA    [162-167) cm         NA                0.0815049   0.0544976   0.1085121
0-6 months    PROBIT          BELARUS   >=167 cm             NA                0.0864449   0.0518168   0.1210730
0-6 months    PROBIT          BELARUS   <162 cm              NA                0.0980057   0.0748247   0.1211866
0-6 months    PROBIT          BELARUS   [162-167) cm         NA                0.0834275   0.0532756   0.1135795
0-6 months    SAS-CompFeed    INDIA     >=167 cm             NA                0.0448272   0.0182166   0.0714378
0-6 months    SAS-CompFeed    INDIA     <162 cm              NA                0.0465530   0.0288621   0.0642440
0-6 months    SAS-CompFeed    INDIA     [162-167) cm         NA                0.0514119   0.0129676   0.0898562
6-24 months   Keneba          GAMBIA    >=167 cm             NA                0.1193077   0.1004350   0.1381803
6-24 months   Keneba          GAMBIA    <162 cm              NA                0.1676375   0.0974551   0.2378200
6-24 months   Keneba          GAMBIA    [162-167) cm         NA                0.1307341   0.0970937   0.1643745
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.0969725   0.0672318   0.1267133
6-24 months   SAS-CompFeed    INDIA     <162 cm              NA                0.0941080   0.0504002   0.1378159
6-24 months   SAS-CompFeed    INDIA     [162-167) cm         NA                0.1099628   0.0633185   0.1566071
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1254139   0.0607234   0.1901044
6-24 months   SAS-FoodSuppl   INDIA     <162 cm              NA                0.1253822   0.0735466   0.1772177
6-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1122494   0.0569639   0.1675349


### Parameter: E(Y)


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba          GAMBIA    NA                   NA                0.1903777   0.1728714   0.2078839
0-24 months   PROBIT          BELARUS   NA                   NA                0.0873415   0.0532447   0.1214382
0-24 months   SAS-CompFeed    INDIA     NA                   NA                0.1363128   0.1083079   0.1643178
0-24 months   SAS-FoodSuppl   INDIA     NA                   NA                0.1679198   0.1311966   0.2046430
0-6 months    Keneba          GAMBIA    NA                   NA                0.0933333   0.0796017   0.1070650
0-6 months    PROBIT          BELARUS   NA                   NA                0.0866236   0.0525316   0.1207156
0-6 months    SAS-CompFeed    INDIA     NA                   NA                0.0472973   0.0247949   0.0697997
6-24 months   Keneba          GAMBIA    NA                   NA                0.1231767   0.1082011   0.1381522
6-24 months   SAS-CompFeed    INDIA     NA                   NA                0.1004785   0.0697945   0.1311624
6-24 months   SAS-FoodSuppl   INDIA     NA                   NA                0.1224490   0.0899572   0.1549408


### Parameter: RR


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   Keneba          GAMBIA    <162 cm              >=167 cm          1.6083643   1.1978817   2.159508
0-24 months   Keneba          GAMBIA    [162-167) cm         >=167 cm          0.9517350   0.7628722   1.187354
0-24 months   PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   PROBIT          BELARUS   <162 cm              >=167 cm          1.1282010   0.7702987   1.652395
0-24 months   PROBIT          BELARUS   [162-167) cm         >=167 cm          0.9533999   0.6599287   1.377378
0-24 months   SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed    INDIA     <162 cm              >=167 cm          0.9596323   0.6086986   1.512890
0-24 months   SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.1660781   0.7883882   1.724706
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.3060554   0.7406633   2.303045
0-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.0851078   0.5840669   2.015966
0-6 months    Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    Keneba          GAMBIA    <162 cm              >=167 cm          1.6793238   1.0755240   2.622097
0-6 months    Keneba          GAMBIA    [162-167) cm         >=167 cm          0.8584599   0.5868612   1.255754
0-6 months    PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    PROBIT          BELARUS   <162 cm              >=167 cm          1.1337358   0.7725400   1.663806
0-6 months    PROBIT          BELARUS   [162-167) cm         >=167 cm          0.9650952   0.6731325   1.383693
0-6 months    SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.0384998   0.5365772   2.009928
0-6 months    SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.1468904   0.6042697   2.176772
6-24 months   Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   Keneba          GAMBIA    <162 cm              >=167 cm          1.4050861   0.8981254   2.198209
6-24 months   Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0957730   0.8099774   1.482410
6-24 months   SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed    INDIA     <162 cm              >=167 cm          0.9704610   0.6581696   1.430930
6-24 months   SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.1339586   0.7377857   1.742867
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          0.9997470   0.5170754   1.932975
6-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          0.8950316   0.4389015   1.825197


### Parameter: PAR


agecat        studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                -0.0001730   -0.0140705   0.0137245
0-24 months   PROBIT          BELARUS   >=167 cm             NA                 0.0000688   -0.0015348   0.0016725
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                 0.0056364   -0.0212301   0.0325028
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0226727   -0.0374970   0.0828424
0-6 months    Keneba          GAMBIA    >=167 cm             NA                -0.0016098   -0.0123526   0.0091330
0-6 months    PROBIT          BELARUS   >=167 cm             NA                 0.0001787   -0.0013922   0.0017496
0-6 months    SAS-CompFeed    INDIA     >=167 cm             NA                 0.0024701   -0.0120754   0.0170156
6-24 months   Keneba          GAMBIA    >=167 cm             NA                 0.0038690   -0.0078826   0.0156206
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                 0.0035060   -0.0162520   0.0232639
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                -0.0029649   -0.0582574   0.0523275


### Parameter: PAF


agecat        studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                -0.0009087   -0.0766345   0.0694908
0-24 months   PROBIT          BELARUS   >=167 cm             NA                 0.0007883   -0.0178581   0.0190930
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                 0.0413487   -0.1782904   0.2200460
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.1350208   -0.3079377   0.4279629
0-6 months    Keneba          GAMBIA    >=167 cm             NA                -0.0172479   -0.1390405   0.0915219
0-6 months    PROBIT          BELARUS   >=167 cm             NA                 0.0020630   -0.0165197   0.0203060
0-6 months    SAS-CompFeed    INDIA     >=167 cm             NA                 0.0522250   -0.3119400   0.3153060
6-24 months   Keneba          GAMBIA    >=167 cm             NA                 0.0314103   -0.0688608   0.1222748
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                 0.0348926   -0.1787116   0.2097878
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                -0.0242136   -0.5915745   0.3408958
