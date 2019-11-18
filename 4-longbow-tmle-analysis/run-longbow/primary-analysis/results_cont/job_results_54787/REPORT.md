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

agecat      studyid                    country     fhtcm           n_cell       n  outcome_variable 
----------  -------------------------  ----------  -------------  -------  ------  -----------------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm           343     746  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm            190     746  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       213     746  haz              
Birth       ki1101329-Keneba           GAMBIA      >=167 cm           772    1167  haz              
Birth       ki1101329-Keneba           GAMBIA      <162 cm             87    1167  haz              
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm       308    1167  haz              
Birth       ki1119695-PROBIT           BELARUS     >=167 cm         11740   12533  haz              
Birth       ki1119695-PROBIT           BELARUS     <162 cm            168   12533  haz              
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm       625   12533  haz              
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm            29     206  haz              
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm            121     206  haz              
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm        56     206  haz              
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA



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
![](/tmp/9ba34deb-060a-4168-b749-725b9f2e6450/9226dbcc-2cef-4c9d-bc7b-ca1db4c96a5d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9ba34deb-060a-4168-b749-725b9f2e6450/9226dbcc-2cef-4c9d-bc7b-ca1db4c96a5d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9ba34deb-060a-4168-b749-725b9f2e6450/9226dbcc-2cef-4c9d-bc7b-ca1db4c96a5d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -1.3589035   -1.4845687   -1.2332383
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -1.6385744   -1.8971294   -1.3800195
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -1.4809829   -1.6471320   -1.3148339
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.1109151    0.0182204    0.2036098
Birth       ki1101329-Keneba           GAMBIA      <162 cm              NA                 0.0572487   -0.2058272    0.3203246
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0240064   -0.1624981    0.1144854
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                 1.3449172    1.1883877    1.5014467
Birth       ki1119695-PROBIT           BELARUS     <162 cm              NA                 1.0494864    0.9735368    1.1254360
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 1.1689028    0.9681311    1.3696746
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0375146   -0.5544945    0.6295238
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3245234   -0.5123765   -0.1366704
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0569861   -0.3325210    0.2185489
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -1.2510708   -1.3705294   -1.1316121
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -1.7019419   -1.8228618   -1.5810220
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -1.5167927   -1.6549390   -1.3786464
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -1.6772555   -1.8805410   -1.4739701
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -2.1237925   -2.2917100   -1.9558750
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -1.7635256   -1.9710660   -1.5559853
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8662754   -0.9342901   -0.7982608
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -1.0138894   -1.2027294   -0.8250495
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.0615634   -1.1634133   -0.9597135
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.1428474    0.0549496    0.2307452
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.4175933   -0.5308761   -0.3043106
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.2017369   -0.4256537    0.0221799
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -1.6021183   -1.9250262   -1.2792104
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -2.1712833   -2.3173192   -2.0252475
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -1.6881647   -1.8918564   -1.4844729
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -1.5385686   -1.6086064   -1.4685308
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -1.7653177   -1.9848857   -1.5457498
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.7741674   -1.8799760   -1.6683589
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.1028985   -0.4062055    0.2004086
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.7664133   -1.2007888   -0.3320379
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.4894798   -0.8136368   -0.1653228
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -2.6073397   -2.9075171   -2.3071622
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -3.2337126   -3.3550223   -3.1124029
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -2.8144133   -2.9853489   -2.6434777


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -1.4650804   -1.5752607   -1.3549001
Birth       ki1101329-Keneba           GAMBIA      NA                   NA                 0.0702057   -0.0035933    0.1440046
Birth       ki1119695-PROBIT           BELARUS     NA                   NA                 1.3367673    1.1803545    1.4931801
Birth       ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.2367476   -0.3941046   -0.0793906
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
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2796709   -0.5834821    0.0241402
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1220794   -0.3109562    0.0667974
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0536664   -0.3315340    0.2242012
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.1349215   -0.3013216    0.0314786
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.2954308   -0.4215932   -0.1692684
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.1760143   -0.2956094   -0.0564193
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.3620381   -0.9823645    0.2582883
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0945007   -0.7475885    0.5585871
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.4508712   -0.5559092   -0.3458332
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2657219   -0.4354423   -0.0960015
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.4465370   -0.7090751   -0.1839989
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0862701   -0.3752847    0.2027444
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.1476140   -0.3478578    0.0526298
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.1952879   -0.3156702   -0.0749057
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.5604407   -0.6857148   -0.4351667
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3445843   -0.5284701   -0.1606985
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.5691650   -0.9239247   -0.2144054
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0860464   -0.4684518    0.2963591
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.2267491   -0.4567271    0.0032288
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.2355989   -0.3604968   -0.1107009
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.6635149   -1.0930697   -0.2339600
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3865813   -0.7570402   -0.0161223
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.6263729   -0.9512287   -0.3015171
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.2070736   -0.5532356    0.1390884


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1061769   -0.2167133    0.0043595
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0407095   -0.0915343    0.0101154
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0081498   -0.0146473   -0.0016524
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2742622   -0.8100818    0.2615574
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1890036   -0.2507407   -0.1272664
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2098950   -0.3857478   -0.0340423
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0658797   -0.1055155   -0.0262439
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0224695   -0.0304063   -0.0145327
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3631793   -0.6690392   -0.0573194
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0815264   -0.1246511   -0.0384016
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0237319   -0.0392630   -0.0082007
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.4274132   -0.7125937   -0.1422326
