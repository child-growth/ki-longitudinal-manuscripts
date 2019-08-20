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

**Outcome Variable:** whz

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
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           370     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            193     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       244     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm           102     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            148     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm       121     371
6 months    ki1101329-Keneba           GAMBIA      >=167 cm           979    1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm            113    1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm       418    1510
6 months    ki1119695-PROBIT           BELARUS     >=167 cm         11143   11892
6 months    ki1119695-PROBIT           BELARUS     <162 cm            156   11892
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm       593   11892
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            44     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm            198     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        94     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm           823    1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm             96    1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       379    1298
24 months   ki1119695-PROBIT           BELARUS     >=167 cm          3387    3609
24 months   ki1119695-PROBIT           BELARUS     <162 cm             52    3609
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm       170    3609
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            72     532
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            311     532
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       149     532


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
![](/tmp/b4480fb8-cd0b-47cc-bf29-ddbca6f14c90/997bcf32-b06c-4074-8555-d3893fc26d99/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b4480fb8-cd0b-47cc-bf29-ddbca6f14c90/997bcf32-b06c-4074-8555-d3893fc26d99/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b4480fb8-cd0b-47cc-bf29-ddbca6f14c90/997bcf32-b06c-4074-8555-d3893fc26d99/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.5431049   -0.7417606   -0.3444491
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.7569103   -0.9671144   -0.5467063
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7438568   -0.8607601   -0.6269535
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8503821   -1.0520483   -0.6487159
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2358443   -1.4183675   -1.0533210
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8283060   -1.0486748   -0.6079372
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2890107   -0.3608316   -0.2171899
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.1166642   -0.3671822    0.1338539
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.1271884   -0.2383546   -0.0160223
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.5792122    0.5204230    0.6380015
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6715411    0.6062607    0.7368216
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.5235883    0.4375727    0.6096039
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0861450   -0.2476475    0.4199376
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                 0.1293556   -0.0313629    0.2900741
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                 0.0647525   -0.1884298    0.3179347
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8342844   -0.9026645   -0.7659044
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.8437273   -1.1106098   -0.5768449
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.7423836   -0.8372988   -0.6474683
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.6820502    0.5706142    0.7934862
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.5909451    0.1686045    1.0132857
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.5379422    0.2471287    0.8287558
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2221984   -0.4147840   -0.0296128
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3049301   -0.4088131   -0.2010470
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.3248594   -0.4660700   -0.1836488


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.6502726   -0.7957520   -0.5047932
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.9997844   -1.1172238   -0.8823449
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.2272250   -0.2854487   -0.1690012
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.5791961    0.5216790    0.6367132
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                 0.0909226   -0.0348636    0.2167089
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                -0.7963776   -0.8498028   -0.7429525
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                 0.6773192    0.5626171    0.7920213
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.3002632   -0.3780672   -0.2224591


### Parameter: ATE


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2138055   -0.3882668   -0.0393441
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2007519   -0.3657270   -0.0357769
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3854622   -0.6570312   -0.1138931
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0220761   -0.2772053    0.3213575
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.1723466   -0.0875402    0.4322334
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.1618223    0.0307043    0.2929403
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0923289    0.0164742    0.1681836
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0556239   -0.1402744    0.0290266
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0432106   -0.3272733    0.4136945
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0213926   -0.4390717    0.3962865
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0094429   -0.2840649    0.2651791
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0919009   -0.0241099    0.2079117
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0911051   -0.4720251    0.2898150
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.1441079   -0.4122771    0.1240613
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0827317   -0.3016508    0.1361874
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1026610   -0.3414204    0.1360983


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1071678   -0.1862006   -0.0281349
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1494023   -0.3291447    0.0303402
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0617858    0.0187583    0.1048132
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0000161   -0.0049245    0.0048922
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0047776   -0.3079198    0.3174750
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0379068   -0.0027793    0.0785929
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0047310   -0.0179930    0.0085310
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0780648   -0.2607231    0.1045936
