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

agecat      studyid                    country     fhtcm           n_cell       n
----------  -------------------------  ----------  -------------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm           343     746
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm            190     746
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       213     746
Birth       ki1101329-Keneba           GAMBIA      >=167 cm           772    1167
Birth       ki1101329-Keneba           GAMBIA      <162 cm             87    1167
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm       308    1167
Birth       ki1119695-PROBIT           BELARUS     >=167 cm         11740   12533
Birth       ki1119695-PROBIT           BELARUS     <162 cm            168   12533
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm       625   12533
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm            29     206
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm            121     206
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm        56     206
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
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            70     526
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            307     526
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       149     526


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
![](/tmp/13623cc7-9904-4a85-9d30-9c44bc284ac5/b1c0c190-45cb-42f5-8bfb-8038a4c1659b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -1.3193319   -1.4397244   -1.1989395
Birth       ki1101329-Keneba           GAMBIA      optimal              observed           0.1393160   -0.0622897    0.3409218
Birth       ki1119695-PROBIT           BELARUS     optimal              observed           1.3447009    1.1884535    1.5009483
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.1336562   -0.6639898    0.3966774
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -1.2514506   -1.3712216   -1.1316797
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -1.6991475   -1.9090339   -1.4892612
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.8768922   -0.9725297   -0.7812548
6 months    ki1119695-PROBIT           BELARUS     optimal              observed           0.1550598    0.0657984    0.2443212
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed          -1.6125992   -1.8278093   -1.3973890
24 months   ki1101329-Keneba           GAMBIA      optimal              observed          -1.4681019   -1.5580709   -1.3781328
24 months   ki1119695-PROBIT           BELARUS     optimal              observed          -0.1100841   -0.4077146    0.1875465
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          -2.7599596   -3.0326418   -2.4872773


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       observed             observed          -1.4650804   -1.5752607   -1.3549001
Birth       ki1101329-Keneba           GAMBIA      observed             observed           0.0702057   -0.0035933    0.1440046
Birth       ki1119695-PROBIT           BELARUS     observed             observed           1.3367673    1.1803545    1.4931801
Birth       ki1135781-COHORTS          GUATEMALA   observed             observed          -0.2367476   -0.3941046   -0.0793906
6 months    ki1000304b-SAS-CompFeed    INDIA       observed             observed          -1.4400743   -1.5370187   -1.3431300
6 months    ki1000304b-SAS-FoodSuppl   INDIA       observed             observed          -1.8871505   -1.9993302   -1.7749709
6 months    ki1101329-Keneba           GAMBIA      observed             observed          -0.9321551   -0.9872314   -0.8770788
6 months    ki1119695-PROBIT           BELARUS     observed             observed           0.1203779    0.0296502    0.2111056
6 months    ki1135781-COHORTS          GUATEMALA   observed             observed          -1.9652976   -2.0794998   -1.8510954
24 months   ki1101329-Keneba           GAMBIA      observed             observed          -1.6200950   -1.6766111   -1.5635788
24 months   ki1119695-PROBIT           BELARUS     observed             observed          -0.1266303   -0.4286611    0.1754004
24 months   ki1135781-COHORTS          GUATEMALA   observed             observed          -3.0347529   -3.1289563   -2.9405494


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.1457485   -0.2554985   -0.0359985
Birth       ki1101329-Keneba           GAMBIA      optimal              observed          -0.0691104   -0.2533246    0.1151038
Birth       ki1119695-PROBIT           BELARUS     optimal              observed          -0.0079335   -0.0142231   -0.0016440
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.1030914   -0.5873459    0.3811631
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.1886237   -0.2508686   -0.1263789
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -0.1880030   -0.3672158   -0.0087902
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.0552629   -0.1358807    0.0253549
6 months    ki1119695-PROBIT           BELARUS     optimal              observed          -0.0346819   -0.0442907   -0.0250732
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.3526984   -0.5491972   -0.1561997
24 months   ki1101329-Keneba           GAMBIA      optimal              observed          -0.1519931   -0.2265455   -0.0774407
24 months   ki1119695-PROBIT           BELARUS     optimal              observed          -0.0165463   -0.0709643    0.0378717
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.2747933   -0.5295211   -0.0200654
