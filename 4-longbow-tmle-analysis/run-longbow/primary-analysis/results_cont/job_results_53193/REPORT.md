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
![](/tmp/7c737329-5290-4ce3-9210-8b0f887ac667/06a8999a-46c2-4c91-aa63-55b8889a6e0e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7c737329-5290-4ce3-9210-8b0f887ac667/06a8999a-46c2-4c91-aa63-55b8889a6e0e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7c737329-5290-4ce3-9210-8b0f887ac667/06a8999a-46c2-4c91-aa63-55b8889a6e0e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.5800440   -0.7719785   -0.3881095
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.5484572   -0.7579455   -0.3389690
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.5932072   -0.8673188   -0.3190957
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                -1.2052908   -1.2965116   -1.1140700
Birth       ki1101329-Keneba           GAMBIA      <162 cm              NA                -1.4893056   -1.7459925   -1.2326187
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.2793774   -1.4146900   -1.1440648
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -1.1326848   -1.3435658   -0.9218038
Birth       ki1119695-PROBIT           BELARUS     <162 cm              NA                -1.0932265   -1.1735860   -1.0128669
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -1.1725474   -1.3973213   -0.9477735
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3358545   -0.9009169    0.2292079
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.5105544   -0.8186567   -0.2024521
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.7580071   -1.1371536   -0.3788607
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.5382821   -0.7211470   -0.3554171
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.7497528   -0.9626143   -0.5368913
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7417375   -0.8679603   -0.6155147
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8580676   -1.0602345   -0.6559007
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2447505   -1.4279040   -1.0615970
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8303686   -1.0511408   -0.6095963
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2708176   -0.3439919   -0.1976433
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.2519384   -0.5165802    0.0127034
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.1926222   -0.3002898   -0.0849546
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.5811655    0.5221198    0.6402113
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6002118    0.5469258    0.6534978
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.4983622    0.4030860    0.5936384
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.1116472   -0.2682735    0.4915679
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                 0.1081822   -0.0558525    0.2722169
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                 0.0667949   -0.1810475    0.3146374
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8101258   -0.8795118   -0.7407399
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.8639474   -1.1403907   -0.5875040
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.7874447   -0.8784350   -0.6964544
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.6866317    0.5738240    0.7994395
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6187876    0.0918338    1.1457415
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.5110964    0.2539967    0.7681961
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1466392   -0.3464778    0.0531994
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3181225   -0.4263468   -0.2098983
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.3134655   -0.4600029   -0.1669280


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.5733486   -0.7681703   -0.3785268
Birth       ki1101329-Keneba           GAMBIA      NA                   NA                -1.2304129   -1.3019732   -1.1588526
Birth       ki1119695-PROBIT           BELARUS     NA                   NA                -1.1379626   -1.3471426   -0.9287826
Birth       ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.5450521   -0.7653906   -0.3247135
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
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0315868   -0.1565647    0.2197382
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0131632   -0.1627504    0.1364240
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.2840148   -0.5566047   -0.0114249
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0740866   -0.2369883    0.0888150
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0394584   -0.1286509    0.2075676
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0398626   -0.1754222    0.0956971
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1746998   -0.8185191    0.4691194
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.4221526   -1.1048864    0.2605812
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2114708   -0.3782123   -0.0447292
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2034555   -0.3362210   -0.0706900
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3866829   -0.6586239   -0.1147419
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0276991   -0.2725036    0.3279017
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0188792   -0.2560596    0.2938179
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0781954   -0.0518508    0.2082417
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0190463   -0.0501208    0.0882134
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0828033   -0.1779471    0.0123404
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0034650   -0.4177790    0.4108491
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0448522   -0.4997237    0.4100192
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0538215   -0.3391049    0.2314618
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0226811   -0.0918113    0.1371735
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0678441   -0.5509190    0.4152307
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.1755353   -0.4123808    0.0613102
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1714834   -0.3985715    0.0556048
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1668263   -0.4148170    0.0811644


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0066954   -0.0640229    0.0774138
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0251221   -0.0773385    0.0270942
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0052778   -0.0122768    0.0017213
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2091976   -0.7420967    0.3237016
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1119906   -0.1732332   -0.0507480
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1417167   -0.3219941    0.0385607
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0436137   -0.0015530    0.0887803
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0019694   -0.0071960    0.0032571
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0207246   -0.3810354    0.3395862
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0137482   -0.0283534    0.0558498
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0081151   -0.0181849    0.0019546
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1536240   -0.3455573    0.0383093
