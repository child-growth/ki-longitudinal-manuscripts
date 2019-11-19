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

agecat      studyid                    country     fhtcm           n_cell       n  outcome_variable 
----------  -------------------------  ----------  -------------  -------  ------  -----------------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           370     807  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            193     807  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       244     807  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm           102     371  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            148     371  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm       121     371  whz              
6 months    ki1101329-Keneba           GAMBIA      >=167 cm           979    1510  whz              
6 months    ki1101329-Keneba           GAMBIA      <162 cm            113    1510  whz              
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm       418    1510  whz              
6 months    ki1119695-PROBIT           BELARUS     >=167 cm         11143   11892  whz              
6 months    ki1119695-PROBIT           BELARUS     <162 cm            156   11892  whz              
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm       593   11892  whz              
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            44     336  whz              
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm            198     336  whz              
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        94     336  whz              
24 months   ki1101329-Keneba           GAMBIA      >=167 cm           823    1298  whz              
24 months   ki1101329-Keneba           GAMBIA      <162 cm             96    1298  whz              
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       379    1298  whz              
24 months   ki1119695-PROBIT           BELARUS     >=167 cm          3388    3610  whz              
24 months   ki1119695-PROBIT           BELARUS     <162 cm             52    3610  whz              
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm       170    3610  whz              
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            72     532  whz              
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            311     532  whz              
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       149     532  whz              


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
![](/tmp/1e7f779f-6e76-47d9-a643-b9aa846d717d/dec0e4c5-4ffc-4377-8b50-c882d15e0e07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1e7f779f-6e76-47d9-a643-b9aa846d717d/dec0e4c5-4ffc-4377-8b50-c882d15e0e07/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1e7f779f-6e76-47d9-a643-b9aa846d717d/dec0e4c5-4ffc-4377-8b50-c882d15e0e07/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.5430942   -0.7314366   -0.3547518
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.7551045   -0.9665828   -0.5436262
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7423303   -0.8678131   -0.6168474
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8715738   -1.0817775   -0.6613701
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2249771   -1.4056406   -1.0443136
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.7948516   -1.0205437   -0.5691595
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2808714   -0.3534820   -0.2082608
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0746977   -0.3656856    0.2162903
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.1675878   -0.2727772   -0.0623983
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.5796980    0.5207824    0.6386136
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6408082    0.5811296    0.7004868
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.5324059    0.4398448    0.6249670
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0443937   -0.3163272    0.4051146
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                 0.1289437   -0.0312415    0.2891289
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                 0.0549795   -0.2158170    0.3257760
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8157775   -0.8836872   -0.7478678
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.8012432   -1.0842663   -0.5182202
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.7685378   -0.8618342   -0.6752415
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.6831484    0.5727068    0.7935899
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.5252517    0.1235935    0.9269098
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.6040508    0.3493580    0.8587436
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2355783   -0.4268530   -0.0443035
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3025880   -0.4068858   -0.1982903
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.3190631   -0.4658658   -0.1722604


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.6502726   -0.7957520   -0.5047932
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.9997844   -1.1172238   -0.8823449
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.2272039   -0.2854286   -0.1689793
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.5791961    0.5216790    0.6367132
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                 0.0909226   -0.0348636    0.2167089
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                -0.7963776   -0.8498028   -0.7429525
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                 0.6785166    0.5638515    0.7931818
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.3002632   -0.3780672   -0.2224591


### Parameter: ATE


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2120103   -0.3812360   -0.0427847
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1992361   -0.3349406   -0.0635315
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3534034   -0.6308998   -0.0759070
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0767222   -0.2362203    0.3896647
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.2061737   -0.0932611    0.5056085
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.1132836   -0.0138173    0.2403845
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0611102   -0.0069221    0.1291425
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0472921   -0.1414849    0.0469007
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0845500   -0.3105116    0.4796116
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0105858   -0.4419938    0.4631655
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0145343   -0.2761643    0.3052329
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0472396   -0.0670869    0.1615662
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.1578967   -0.5232471    0.2074537
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0790976   -0.3153218    0.1571267
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0670098   -0.2849973    0.1509778
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0834848   -0.3245168    0.1575472


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1071784   -0.1726279   -0.0417290
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1282106   -0.3170178    0.0605966
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0536674    0.0093112    0.0980237
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0005019   -0.0055628    0.0045590
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0465289   -0.2912635    0.3843214
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0193999   -0.0209491    0.0597489
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0046318   -0.0176904    0.0084268
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0646849   -0.2472223    0.1178525
