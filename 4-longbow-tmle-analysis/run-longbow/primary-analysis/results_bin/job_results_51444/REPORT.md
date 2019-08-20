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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country     fhtcm           pers_wast   n_cell       n
------------  -------------------------  ----------  -------------  ----------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                0      358     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                1       27     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 0      179     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 1       15     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            0      222     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            1       23     824
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                0       89     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                1       11     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 0      118     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 1       34     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            0      100     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            1       18     370
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                0     1047    1717
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                1       58    1717
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 0      113    1717
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 1       11    1717
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            0      465    1717
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            1       23    1717
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                0    11639   12524
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                1       93   12524
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 0      166   12524
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 1        2   12524
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            0      621   12524
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            1        3   12524
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                0       55     424
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                1        1     424
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 0      237     424
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 1       12     424
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            0      116     424
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            1        3     424
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                0      927    1481
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                1       25    1481
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                 0      107    1481
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                 1        3    1481
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm            0      410    1481
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm            1        9    1481
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                0    10294   12014
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                1      962   12014
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                 0      145   12014
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                 1       16   12014
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm            0      547   12014
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm            1       50   12014
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                0      358     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                1       27     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 0      179     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 1       15     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            0      222     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            1       23     824
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                0       89     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                1       11     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 0      118     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 1       34     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            0      100     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            1       18     370
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                0     1047    1717
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                1       58    1717
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 0      113    1717
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 1       11    1717
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            0      465    1717
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            1       23    1717
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                0    11639   12524
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                1       93   12524
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 0      166   12524
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 1        2   12524
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            0      621   12524
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            1        3   12524
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                0       55     424
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                1        1     424
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 0      237     424
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 1       12     424
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            0      116     424
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            1        3     424


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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




# Results Detail

## Results Plots
![](/tmp/7498a9a0-e4c2-492e-9a68-54a98f8667b0/fb7df01a-e6ef-4fb9-ad84-ff35b5598f60/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7498a9a0-e4c2-492e-9a68-54a98f8667b0/fb7df01a-e6ef-4fb9-ad84-ff35b5598f60/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7498a9a0-e4c2-492e-9a68-54a98f8667b0/fb7df01a-e6ef-4fb9-ad84-ff35b5598f60/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7498a9a0-e4c2-492e-9a68-54a98f8667b0/fb7df01a-e6ef-4fb9-ad84-ff35b5598f60/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0713165   0.0244665   0.1181664
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0722774   0.0536597   0.0908952
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.0961379   0.0752814   0.1169944
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1122671   0.0507997   0.1737345
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.2239208   0.1575638   0.2902778
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1507335   0.0866274   0.2148395
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0528295   0.0396421   0.0660169
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0787100   0.0277503   0.1296697
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0471584   0.0281678   0.0661490
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                0.0850982   0.0576270   0.1125694
0-6 months    ki1119695-PROBIT           BELARUS   <162 cm              NA                0.0960001   0.0790084   0.1129918
0-6 months    ki1119695-PROBIT           BELARUS   [162-167) cm         NA                0.0833581   0.0440100   0.1227061
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0713165   0.0244665   0.1181664
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0722774   0.0536597   0.0908952
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.0961379   0.0752814   0.1169944
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1152344   0.0528896   0.1775792
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.2220007   0.1564163   0.2875850
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1508361   0.0863285   0.2153437
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0528594   0.0397013   0.0660175
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0830184   0.0321697   0.1338670
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0461502   0.0272673   0.0650331


### Parameter: E(Y)


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.0788835   0.0568416   0.1009254
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1702703   0.1319196   0.2086209
0-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.0535818   0.0429272   0.0642365
0-6 months    ki1119695-PROBIT           BELARUS   NA                   NA                0.0855668   0.0580084   0.1131253
6-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.0788835   0.0568416   0.1009254
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1702703   0.1319196   0.2086209
6-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.0535818   0.0429272   0.0642365


### Parameter: RR


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.0134742   0.5201950   1.974510
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.3480464   0.6749168   2.692523
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.9945363   1.0717295   3.711921
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.3426324   0.6723761   2.681032
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.4898874   0.7445141   2.981494
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.8926525   0.5556091   1.434153
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS   <162 cm              >=167 cm          1.1281098   0.8284765   1.536111
0-6 months    ki1119695-PROBIT           BELARUS   [162-167) cm         >=167 cm          0.9795516   0.7217480   1.329441
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.0134742   0.5201950   1.974510
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.3480464   0.6749168   2.692523
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.9265142   1.0414333   3.563797
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.3089508   0.6575303   2.605739
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.5705498   0.8107874   3.042261
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.8730735   0.5407698   1.409578


### Parameter: PAR


agecat        studyid                    country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0075670   -0.0199849   0.0351189
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0580032    0.0013556   0.1146507
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0007523   -0.0072758   0.0087805
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                0.0004686   -0.0010900   0.0020273
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0075670   -0.0199849   0.0351189
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0550359   -0.0023775   0.1124493
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0007224   -0.0072815   0.0087263


### Parameter: PAF


agecat        studyid                    country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0959264   -0.3621896   0.3999741
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.3406535   -0.0802912   0.5975735
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0140410   -0.1477249   0.1530068
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                0.0054769   -0.0128416   0.0234641
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0959264   -0.3621896   0.3999741
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.3232266   -0.1027691   0.5846617
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0134821   -0.1477440   0.1520605
