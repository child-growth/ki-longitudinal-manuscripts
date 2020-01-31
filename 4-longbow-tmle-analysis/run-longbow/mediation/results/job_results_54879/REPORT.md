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

**Outcome Variable:** haz

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
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country     fhtcm           n_cell       n  outcome_variable 
----------  -------------------------  ----------  -------------  -------  ------  -----------------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           369     807  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            194     807  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       244     807  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm           102     372  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            148     372  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm       122     372  haz              
6 months    ki1101329-Keneba           GAMBIA      >=167 cm           979    1511  haz              
6 months    ki1101329-Keneba           GAMBIA      <162 cm            113    1511  haz              
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm       419    1511  haz              
6 months    ki1119695-PROBIT           BELARUS     >=167 cm         11146   11895  haz              
6 months    ki1119695-PROBIT           BELARUS     <162 cm            156   11895  haz              
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm       593   11895  haz              
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            45     336  haz              
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm            197     336  haz              
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        94     336  haz              
24 months   ki1101329-Keneba           GAMBIA      >=167 cm           821    1297  haz              
24 months   ki1101329-Keneba           GAMBIA      <162 cm             97    1297  haz              
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       379    1297  haz              
24 months   ki1119695-PROBIT           BELARUS     >=167 cm          3445    3670  haz              
24 months   ki1119695-PROBIT           BELARUS     <162 cm             53    3670  haz              
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm       172    3670  haz              
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            70     526  haz              
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            307     526  haz              
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       149     526  haz              


The following strata were considered:

* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/31d31d50-7863-4a8f-a4f5-b9ca76d40d63/e19baea3-06aa-4b3f-aa86-159f5f5473ea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/31d31d50-7863-4a8f-a4f5-b9ca76d40d63/e19baea3-06aa-4b3f-aa86-159f5f5473ea/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/31d31d50-7863-4a8f-a4f5-b9ca76d40d63/e19baea3-06aa-4b3f-aa86-159f5f5473ea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -1.2540842   -1.3722343   -1.1359342
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -1.6972190   -1.8219969   -1.5724410
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -1.5220413   -1.6536161   -1.3904665
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -1.6829208   -1.8886896   -1.4771521
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -2.1366461   -2.3035140   -1.9697783
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -1.7624780   -1.9710566   -1.5538995
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8756260   -0.9421086   -0.8091434
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.9613682   -1.1642403   -0.7584961
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.0381574   -1.1349258   -0.9413890
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.1390051    0.0509406    0.2270696
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.4891785   -0.6085774   -0.3697796
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.2509076   -0.4566367   -0.0451786
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -1.5962548   -1.9429484   -1.2495613
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -2.1482680   -2.2875565   -2.0089794
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -1.7208992   -1.9539611   -1.4878373
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -1.5461647   -1.6148701   -1.4774592
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -1.7987528   -2.0149143   -1.5825914
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.7928976   -1.8966458   -1.6891493
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.1034707   -0.4065115    0.1995702
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.7802607   -1.1840003   -0.3765212
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.4666825   -0.8343234   -0.0990416
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -2.6198820   -2.8824602   -2.3573039
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -3.2271556   -3.3493919   -3.1049194
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -2.8564711   -3.0197404   -2.6932019


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -1.4400743   -1.5370187   -1.3431300
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -1.8871505   -1.9993302   -1.7749709
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.9321551   -0.9872314   -0.8770788
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.1203779    0.0296502    0.2111056
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                -1.9652976   -2.0794998   -1.8510954
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                -1.6200950   -1.6766111   -1.5635788
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                -0.1266303   -0.4286611    0.1754004
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -3.0347529   -3.1289563   -2.9405494


### Parameter: ATE


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.4431347   -0.5500635   -0.3362060
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2679571   -0.4328826   -0.1030315
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.4537253   -0.7170746   -0.1903760
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0795572   -0.3712469    0.2121325
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0857422   -0.2983894    0.1269049
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.1625314   -0.2754301   -0.0496327
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.6281836   -0.7601090   -0.4962581
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3899127   -0.5519235   -0.2279020
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.5520131   -0.9252067   -0.1788196
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1246444   -0.5423161    0.2930274
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.2525882   -0.4785258   -0.0266505
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.2467329   -0.3677372   -0.1257285
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.6767901   -1.1000713   -0.2535088
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3632119   -0.7714831    0.0450594
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.6072736   -0.8967692   -0.3177780
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.2365891   -0.5455861    0.0724079


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1859901   -0.2502509   -0.1217294
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2042297   -0.3823484   -0.0261110
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0565291   -0.0945171   -0.0185412
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0186272   -0.0269646   -0.0102898
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3690428   -0.6948223   -0.0432633
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0739303   -0.1158561   -0.0320044
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0231597   -0.0401246   -0.0061948
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.4148708   -0.6605240   -0.1692177
