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
![](/tmp/7c076658-9722-4d24-b827-80bcce550e2d/7d705bd3-4b42-4510-8014-d149553279b9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7c076658-9722-4d24-b827-80bcce550e2d/7d705bd3-4b42-4510-8014-d149553279b9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7c076658-9722-4d24-b827-80bcce550e2d/7d705bd3-4b42-4510-8014-d149553279b9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.5431049   -0.7417606   -0.3444491
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.7569103   -0.9671144   -0.5467063
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7438568   -0.8607601   -0.6269535
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8564205   -1.0611049   -0.6517360
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2319062   -1.4143279   -1.0494846
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8269451   -1.0502018   -0.6036884
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2869222   -0.3589416   -0.2149029
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0553887   -0.3305757    0.2197982
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.1497817   -0.2578510   -0.0417125
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.5795062    0.5205860    0.6384265
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6677675    0.6029715    0.7325635
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.5354723    0.4345748    0.6363699
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0097413   -0.3699340    0.3504514
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                 0.1295422   -0.0298540    0.2889384
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                 0.0381855   -0.2252406    0.3016116
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8368118   -0.9048022   -0.7688214
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.8149513   -1.1075380   -0.5223647
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.7412214   -0.8340173   -0.6484256
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.6824103    0.5719521    0.7928685
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6058999    0.1965991    1.0152006
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.5615414    0.2839945    0.8390883
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2434861   -0.4254607   -0.0615115
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3063638   -0.4117910   -0.2009367
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.3414630   -0.4943054   -0.1886205


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
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3754858   -0.6504467   -0.1005249
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0294753   -0.2754132    0.3343639
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.2315335   -0.0522276    0.5152946
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.1371405    0.0082690    0.2660120
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0882613    0.0133842    0.1631384
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0440339   -0.1421954    0.0541276
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.1392835   -0.2552332    0.5338001
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0479268   -0.3989964    0.4948500
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0218604   -0.2780952    0.3218161
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0955903   -0.0182943    0.2094750
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0765104   -0.4461162    0.2930954
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.1208688   -0.3745267    0.1327890
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0628777   -0.2732893    0.1475338
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0979769   -0.3361354    0.1401817


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1071678   -0.1862006   -0.0281349
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1433639   -0.3262782    0.0395504
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0596973    0.0160791    0.1033154
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0003101   -0.0055817    0.0049615
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.1006639   -0.2371170    0.4384448
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0404341   -0.0001345    0.0810028
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0050911   -0.0181041    0.0079219
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0567771   -0.2310095    0.1174553
