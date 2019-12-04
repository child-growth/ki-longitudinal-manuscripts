---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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

agecat      studyid                    country     fhtcm           n_cell       n
----------  -------------------------  ----------  -------------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm           312     657
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm            159     657
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       186     657
Birth       ki1101329-Keneba           GAMBIA      >=167 cm           733    1114
Birth       ki1101329-Keneba           GAMBIA      <162 cm             83    1114
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm       298    1114
Birth       ki1119695-PROBIT           BELARUS     >=167 cm         11684   12474
Birth       ki1119695-PROBIT           BELARUS     <162 cm            168   12474
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm       622   12474
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm            26     192
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm            112     192
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm        54     192
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
24 months   ki1119695-PROBIT           BELARUS     >=167 cm          3388    3610
24 months   ki1119695-PROBIT           BELARUS     <162 cm             52    3610
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm       170    3610
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
![](/tmp/99cfca6e-80f1-4e8b-b0b9-9eb9d8458688/0a3f285a-bb1b-41f5-9f93-743b55b4cc03/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.6500293   -0.8984351   -0.4016235
Birth       ki1101329-Keneba           GAMBIA      optimal              observed          -1.2800765   -1.3721419   -1.1880111
Birth       ki1119695-PROBIT           BELARUS     optimal              observed          -1.1575492   -1.3024787   -1.0126198
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.3734603   -0.9602698    0.2133491
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.5361016   -0.7189991   -0.3532041
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -0.7969683   -1.0142323   -0.5797044
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.2240414   -0.3428093   -0.1052735
6 months    ki1119695-PROBIT           BELARUS     optimal              observed           0.6052411    0.5369153    0.6735669
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed           0.1965749    0.0113963    0.3817535
24 months   ki1101329-Keneba           GAMBIA      optimal              observed          -0.8601552   -0.9603496   -0.7599609
24 months   ki1119695-PROBIT           BELARUS     optimal              observed           0.5209672    0.3773752    0.6645592
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.2344849   -0.4337834   -0.0351864


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       observed             observed          -0.5733486   -0.7681703   -0.3785268
Birth       ki1101329-Keneba           GAMBIA      observed             observed          -1.2304129   -1.3019732   -1.1588526
Birth       ki1119695-PROBIT           BELARUS     observed             observed          -1.1379626   -1.3471426   -0.9287826
Birth       ki1135781-COHORTS          GUATEMALA   observed             observed          -0.5450521   -0.7653906   -0.3247135
6 months    ki1000304b-SAS-CompFeed    INDIA       observed             observed          -0.6502726   -0.7957520   -0.5047932
6 months    ki1000304b-SAS-FoodSuppl   INDIA       observed             observed          -0.9997844   -1.1172238   -0.8823449
6 months    ki1101329-Keneba           GAMBIA      observed             observed          -0.2272039   -0.2854286   -0.1689793
6 months    ki1119695-PROBIT           BELARUS     observed             observed           0.5791961    0.5216790    0.6367132
6 months    ki1135781-COHORTS          GUATEMALA   observed             observed           0.0909226   -0.0348636    0.2167089
24 months   ki1101329-Keneba           GAMBIA      observed             observed          -0.7963776   -0.8498028   -0.7429525
24 months   ki1119695-PROBIT           BELARUS     observed             observed           0.6785166    0.5638515    0.7931818
24 months   ki1135781-COHORTS          GUATEMALA   observed             observed          -0.3002632   -0.3780672   -0.2224591


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed           0.0766808   -0.0401730    0.1935345
Birth       ki1101329-Keneba           GAMBIA      optimal              observed           0.0496635   -0.0071963    0.1065233
Birth       ki1119695-PROBIT           BELARUS     optimal              observed           0.0195867   -0.0861673    0.1253406
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.1715918   -0.7078311    0.3646476
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.1141711   -0.1740426   -0.0542995
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -0.2028160   -0.3832801   -0.0223520
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.0031625   -0.1102037    0.1038786
6 months    ki1119695-PROBIT           BELARUS     optimal              observed          -0.0260450   -0.0914025    0.0393124
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.1056523   -0.2717077    0.0604031
24 months   ki1101329-Keneba           GAMBIA      optimal              observed           0.0637776   -0.0241334    0.1516886
24 months   ki1119695-PROBIT           BELARUS     optimal              observed           0.1575494    0.0805324    0.2345664
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.0657783   -0.2538590    0.1223025
