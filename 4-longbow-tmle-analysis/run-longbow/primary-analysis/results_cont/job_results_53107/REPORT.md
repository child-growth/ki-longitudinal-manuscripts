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
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             4       8
Birth       ki1101329-Keneba           GAMBIA      <162 cm              1       8
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         3       8
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA

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
![](/tmp/46c0a4c9-d3fa-4797-8b01-d6a93c09ea1d/480ca9c5-b7ee-41bb-8988-396e5d6c3006/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/46c0a4c9-d3fa-4797-8b01-d6a93c09ea1d/480ca9c5-b7ee-41bb-8988-396e5d6c3006/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/46c0a4c9-d3fa-4797-8b01-d6a93c09ea1d/480ca9c5-b7ee-41bb-8988-396e5d6c3006/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.5800440   -0.7719785   -0.3881095
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.5484572   -0.7579455   -0.3389690
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.5932072   -0.8673188   -0.3190957
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -1.1331278   -1.3441191   -0.9221365
Birth       ki1119695-PROBIT           BELARUS     <162 cm              NA                -1.1031981   -1.1851878   -1.0212084
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -1.1861545   -1.4091566   -0.9631524
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3898402   -0.9830285    0.2033481
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.5358440   -0.8400948   -0.2315932
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.7677727   -1.1401301   -0.3954152
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.5382821   -0.7211470   -0.3554171
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.7497528   -0.9626143   -0.5368913
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7417375   -0.8679603   -0.6155147
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8510257   -1.0536258   -0.6484256
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2328855   -1.4166282   -1.0491427
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8327111   -1.0527542   -0.6126680
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2657103   -0.3396674   -0.1917532
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.1849688   -0.4367488    0.0668113
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.1953714   -0.3023450   -0.0883979
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.5813962    0.5222842    0.6405082
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6027796    0.5402402    0.6653190
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.5069579    0.4122600    0.6016559
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.1085175   -0.2565380    0.4735730
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                 0.1001860   -0.0662969    0.2666688
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                 0.0731858   -0.1738967    0.3202684
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8096318   -0.8794547   -0.7398089
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.9016679   -1.1695518   -0.6337841
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.7908817   -0.8854841   -0.6962794
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.6861849    0.5733277    0.7990420
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.5615838   -0.0019391    1.1251066
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.4981740    0.2459996    0.7503483
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2458309   -0.4804211   -0.0112407
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3222722   -0.4311034   -0.2134411
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.3151942   -0.4593729   -0.1710154


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.5733486   -0.7681703   -0.3785268
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
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0299297   -0.1389683    0.1988277
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0530267   -0.1812786    0.0752252
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1460038   -0.8125515    0.5205439
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.3779325   -1.0801053    0.3242404
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2114708   -0.3782123   -0.0447292
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2034555   -0.3362210   -0.0706900
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3818598   -0.6553753   -0.1083442
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0183146   -0.2812167    0.3178458
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0807416   -0.1817477    0.3432308
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0703389   -0.0594676    0.2001453
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0213834   -0.0558814    0.0986482
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0744382   -0.1669440    0.0180675
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0083315   -0.4097562    0.3930932
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0353317   -0.4771913    0.4065280
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0920362   -0.3691688    0.1850964
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0187500   -0.0991208    0.1366209
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.1246011   -0.6427983    0.3935961
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.1880109   -0.4217000    0.0456782
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0764413   -0.3350728    0.1821901
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0693632   -0.3450207    0.2062942


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0066954   -0.0640229    0.0774138
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0048348   -0.0115881    0.0019185
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1552119   -0.7138685    0.4034447
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1119906   -0.1732332   -0.0507480
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1487587   -0.3294283    0.0319110
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0385064   -0.0072815    0.0842942
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0022001   -0.0073380    0.0029378
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0175949   -0.3641282    0.3289384
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0132541   -0.0293745    0.0558828
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0076683   -0.0178492    0.0025126
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0544322   -0.2786587    0.1697942
