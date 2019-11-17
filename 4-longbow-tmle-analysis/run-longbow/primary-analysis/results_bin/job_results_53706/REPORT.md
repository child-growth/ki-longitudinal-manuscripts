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
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   0     1012    1933
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   1      236    1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    0       99    1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    1       33    1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               0      454    1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               1       99    1933
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
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                   0     1009    1725
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                   1      107    1725
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                    0      107    1725
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                    1       16    1725
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm               0      448    1725
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm               1       38    1725
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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/159db46d-3bf4-4a1b-8087-6332a1b78fb8/33dbbadc-958c-46d0-8dd6-7f2db18c9d50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/159db46d-3bf4-4a1b-8087-6332a1b78fb8/33dbbadc-958c-46d0-8dd6-7f2db18c9d50/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/159db46d-3bf4-4a1b-8087-6332a1b78fb8/33dbbadc-958c-46d0-8dd6-7f2db18c9d50/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/159db46d-3bf4-4a1b-8087-6332a1b78fb8/33dbbadc-958c-46d0-8dd6-7f2db18c9d50/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1246407   0.0843818   0.1648995
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.1310202   0.0870888   0.1749515
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.1580584   0.1135048   0.2026121
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1422694   0.0746333   0.2099056
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.1956348   0.1340722   0.2571973
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1558722   0.0929984   0.2187461
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.1892944   0.1669311   0.2116578
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.3038085   0.2240406   0.3835763
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.1796973   0.1456249   0.2137696
0-24 months   ki1119695-PROBIT           BELARUS   >=167 cm             NA                0.0860923   0.0513495   0.1208351
0-24 months   ki1119695-PROBIT           BELARUS   <162 cm              NA                0.0561978   0.0375804   0.0748153
0-24 months   ki1119695-PROBIT           BELARUS   [162-167) cm         NA                0.0750198   0.0458600   0.1041797
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0448272   0.0182166   0.0714378
0-6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0465530   0.0288621   0.0642440
0-6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.0514119   0.0129676   0.0898562
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0944885   0.0768561   0.1121210
0-6 months    ki1101329-Keneba           GAMBIA    <162 cm              NA                0.1517745   0.0879994   0.2155496
0-6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0808168   0.0542315   0.1074022
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                0.0846414   0.0498049   0.1194778
0-6 months    ki1119695-PROBIT           BELARUS   <162 cm              NA                0.0568752   0.0364396   0.0773108
0-6 months    ki1119695-PROBIT           BELARUS   [162-167) cm         NA                0.0713003   0.0423690   0.1002315
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0908030   0.0623014   0.1193047
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0979275   0.0549600   0.1408950
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.1191685   0.0679321   0.1704049
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1239071   0.0605531   0.1872610
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.1325554   0.0797117   0.1853991
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1095092   0.0549583   0.1640601
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.1193415   0.1004780   0.1382050
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.1685234   0.1000752   0.2369716
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.1316744   0.0971442   0.1662047


### Parameter: E(Y)


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.1363128   0.1083079   0.1643178
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1679198   0.1311966   0.2046430
0-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.1903777   0.1728714   0.2078839
0-24 months   ki1119695-PROBIT           BELARUS   NA                   NA                0.0857462   0.0517958   0.1196966
0-6 months    ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.0472973   0.0247949   0.0697997
0-6 months    ki1101329-Keneba           GAMBIA    NA                   NA                0.0933333   0.0796017   0.1070650
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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.3751003   0.7783847   2.4292627
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.0956129   0.5873876   2.0435700
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.6049520   1.2035707   2.1401907
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.9493004   0.7592017   1.1869985
0-24 months   ki1119695-PROBIT           BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS   <162 cm              >=167 cm          0.6527625   0.4556414   0.9351626
0-24 months   ki1119695-PROBIT           BELARUS   [162-167) cm         >=167 cm          0.8713883   0.5844508   1.2991984
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.0384998   0.5365772   2.0099283
0-6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.1468903   0.6042697   2.1767721
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.6062743   1.0142841   2.5437815
0-6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.8553084   0.5859921   1.2483999
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS   <162 cm              >=167 cm          0.6719549   0.4584780   0.9848311
0-6 months    ki1119695-PROBIT           BELARUS   [162-167) cm         >=167 cm          0.8423807   0.5559688   1.2763399
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.0784610   0.7331390   1.5864358
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.3123849   0.8515203   2.0226812
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.0697971   0.5590355   2.0472148
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          0.8838011   0.4327665   1.8049094
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.4121109   0.9133124   2.1833245
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          1.1033414   0.8119100   1.4993809


### Parameter: PAR


agecat        studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0116722   -0.0141214   0.0374658
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0256504   -0.0339008   0.0852016
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0010832   -0.0126530   0.0148194
0-24 months   ki1119695-PROBIT           BELARUS   >=167 cm             NA                -0.0003461   -0.0021429   0.0014506
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0024701   -0.0120754   0.0170156
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0011552   -0.0117662   0.0094558
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                -0.0004107   -0.0021473   0.0013259
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0096754   -0.0105556   0.0299065
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                -0.0014581   -0.0555952   0.0526790
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0038352   -0.0079247   0.0155951


### Parameter: PAF


agecat        studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0856279   -0.1281468   0.2588941
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.1527536   -0.2863196   0.4419533
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0056899   -0.0691527   0.0752934
0-24 months   ki1119695-PROBIT           BELARUS   >=167 cm             NA                -0.0040368   -0.0245791   0.0160936
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0522250   -0.3119400   0.3153060
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0123771   -0.1326440   0.0951196
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                -0.0048759   -0.0249457   0.0148009
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0962937   -0.1157066   0.2680108
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                -0.0119078   -0.5663401   0.3462739
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0311356   -0.0692017   0.1220569
