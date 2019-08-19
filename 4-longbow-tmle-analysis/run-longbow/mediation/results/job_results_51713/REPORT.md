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

agecat      studyid                    country     fhtcm           n_cell       n
----------  -------------------------  ----------  -------------  -------  ------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           369     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            194     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       244     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm           102     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            148     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm       122     372
6 months    ki1101329-Keneba           GAMBIA      >=167 cm           979    1511
6 months    ki1101329-Keneba           GAMBIA      <162 cm            113    1511
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm       419    1511
6 months    ki1119695-PROBIT           BELARUS     >=167 cm         11146   11895
6 months    ki1119695-PROBIT           BELARUS     <162 cm            156   11895
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm       593   11895
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            45     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm            197     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        94     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm           821    1297
24 months   ki1101329-Keneba           GAMBIA      <162 cm             97    1297
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       379    1297
24 months   ki1119695-PROBIT           BELARUS     >=167 cm          3445    3670
24 months   ki1119695-PROBIT           BELARUS     <162 cm             53    3670
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm       172    3670
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            72     528
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            307     528
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       149     528


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
![](/tmp/d4a6e161-e222-4ce5-8078-73f909ad9de2/19c50748-8c7e-4afb-a8eb-26d67a1e5a0c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d4a6e161-e222-4ce5-8078-73f909ad9de2/19c50748-8c7e-4afb-a8eb-26d67a1e5a0c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d4a6e161-e222-4ce5-8078-73f909ad9de2/19c50748-8c7e-4afb-a8eb-26d67a1e5a0c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -1.2522183   -1.3736784   -1.1307581
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -1.7300584   -1.8574818   -1.6026351
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -1.5304470   -1.6613287   -1.3995652
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -1.6779746   -1.8817015   -1.4742478
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -2.1247032   -2.2916742   -1.9577323
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -1.7919065   -1.9988393   -1.5849737
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8801071   -0.9465000   -0.8137142
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.9705971   -1.1554091   -0.7857850
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.0296330   -1.1263193   -0.9329468
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.1379372    0.0497488    0.2261257
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.4921871   -0.6013451   -0.3830291
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.2564301   -0.4933662   -0.0194940
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -1.6277414   -1.9605956   -1.2948872
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -2.1589936   -2.2980680   -2.0199191
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -1.6944489   -1.9243100   -1.4645878
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -1.5305107   -1.6007988   -1.4602226
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -1.7704174   -2.0058931   -1.5349418
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.7423292   -1.8452775   -1.6393808
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.1011381   -0.4043272    0.2020511
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.7883093   -1.1556134   -0.4210053
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.4100343   -0.7514115   -0.0686571
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -2.4549575   -2.7275688   -2.1823462
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -3.0511233   -3.1726145   -2.9296321
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -2.6515936   -2.8160530   -2.4871341


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -1.4400743   -1.5370187   -1.3431300
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -1.8871505   -1.9993302   -1.7749709
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.9321551   -0.9872314   -0.8770788
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.1203779    0.0296502    0.2111056
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                -1.9652976   -2.0794998   -1.8510954
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                -1.6048736   -1.6613661   -1.5483810
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                -0.1266303   -0.4286611    0.1754004
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -2.8628788   -2.9576712   -2.7680864


### Parameter: ATE


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.4778402   -0.5900324   -0.3656479
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2782287   -0.4415167   -0.1149407
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.4467286   -0.7093061   -0.1841511
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.1139318   -0.4026837    0.1748201
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0904899   -0.2850619    0.1040820
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.1495259   -0.2616296   -0.0374222
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.6301243   -0.7577742   -0.5024744
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3943673   -0.5911249   -0.1976097
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.5312522   -0.8928109   -0.1696935
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0667075   -0.4733318    0.3399167
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.2399067   -0.4850690    0.0052556
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.2118185   -0.3350007   -0.0886362
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.6871712   -1.0781002   -0.2962423
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3088962   -0.6919298    0.0741374
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.5961658   -0.8950837   -0.2972479
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1966361   -0.5158427    0.1225705


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1878561   -0.2544307   -0.1212815
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2091759   -0.3852542   -0.0330976
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0520480   -0.0892146   -0.0148814
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0175593   -0.0263768   -0.0087419
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3375563   -0.6515043   -0.0236082
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0743629   -0.1182617   -0.0304640
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0254923   -0.0429218   -0.0080628
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.4079213   -0.6599958   -0.1558467
