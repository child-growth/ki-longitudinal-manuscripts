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
![](/tmp/a5915769-d59f-46a7-8c77-8bc52902f544/9e9fd444-63db-490e-b9df-e76bc49154a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a5915769-d59f-46a7-8c77-8bc52902f544/9e9fd444-63db-490e-b9df-e76bc49154a2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a5915769-d59f-46a7-8c77-8bc52902f544/9e9fd444-63db-490e-b9df-e76bc49154a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.5431049   -0.7417606   -0.3444491
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.7569103   -0.9671144   -0.5467063
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7438568   -0.8607601   -0.6269535
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8675588   -1.0707680   -0.6643496
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2402787   -1.4244697   -1.0560877
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8339917   -1.0505838   -0.6173995
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2877454   -0.3598812   -0.2156096
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0925046   -0.3597654    0.1747562
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.1488639   -0.2592448   -0.0384830
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.5798885    0.5209522    0.6388248
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6276308    0.5570670    0.6981946
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.5394780    0.4471538    0.6318022
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0275643   -0.3251608    0.3802895
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                 0.1182543   -0.0408684    0.2773769
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                 0.0300856   -0.2340471    0.2942183
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8279350   -0.8960429   -0.7598271
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.7924104   -1.0714801   -0.5133407
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.7392016   -0.8341294   -0.6442738
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.6822951    0.5715373    0.7930528
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6376042    0.1629411    1.1122672
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.5495699    0.2521235    0.8470164
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1975152   -0.3908155   -0.0042149
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3029577   -0.4057483   -0.2001670
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.3359785   -0.4858395   -0.1861175


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
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3727199   -0.6467176   -0.0987221
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0335671   -0.2639953    0.3311296
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.1952408   -0.0811362    0.4716177
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.1388815    0.0081781    0.2695848
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0477423   -0.0289099    0.1243944
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0404105   -0.1316449    0.0508238
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0906900   -0.2961277    0.4775076
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0025213   -0.4390784    0.4441210
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0355246   -0.2511035    0.3221528
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0887334   -0.0268298    0.2042966
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0446909   -0.4756474    0.3862657
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.1327251   -0.4039310    0.1384807
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1054425   -0.3244460    0.1135611
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1384633   -0.3832569    0.1063303


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1071678   -0.1862006   -0.0281349
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1322256   -0.3135877    0.0491366
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0605204    0.0167754    0.1042653
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0006924   -0.0058704    0.0044855
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0633583   -0.2671124    0.3938290
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0315574   -0.0088841    0.0719989
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0049759   -0.0181714    0.0082197
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1027480   -0.2868030    0.0813071
