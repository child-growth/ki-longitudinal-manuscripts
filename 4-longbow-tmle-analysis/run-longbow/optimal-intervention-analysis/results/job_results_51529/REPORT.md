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
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm            50     102
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm             23     102
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        29     102
Birth       ki1101329-Keneba           GAMBIA      >=167 cm           772    1165
Birth       ki1101329-Keneba           GAMBIA      <162 cm             87    1165
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm       306    1165
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
![](/tmp/18627beb-9b01-4be8-977a-0e5c9e955472/d7b5c21c-1051-4a61-bd4b-aec8faf355cd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -1.4774407   -1.8052747   -1.1496066
Birth       ki1101329-Keneba           GAMBIA      optimal              observed           0.2070948   -0.0473925    0.4615822
Birth       ki1119695-PROBIT           BELARUS     optimal              observed           1.3422897    1.1890136    1.4955658
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.0701196   -0.6340817    0.4938425
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -1.2458686   -1.3646649   -1.1270723
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -1.6751239   -1.8806440   -1.4696037
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.8607293   -0.9506079   -0.7708508
6 months    ki1119695-PROBIT           BELARUS     optimal              observed           0.1480993    0.0602506    0.2359480
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed          -1.8684196   -2.1340441   -1.6027951
24 months   ki1101329-Keneba           GAMBIA      optimal              observed          -1.4562933   -1.5442314   -1.3683553
24 months   ki1119695-PROBIT           BELARUS     optimal              observed          -0.0716448   -0.3992854    0.2559958
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          -2.3598917   -2.6562331   -2.0635503


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       observed             observed          -1.3448039   -1.5170851   -1.1725227
Birth       ki1101329-Keneba           GAMBIA      observed             observed           0.0735794   -0.0000676    0.1472264
Birth       ki1119695-PROBIT           BELARUS     observed             observed           1.3359283    1.1794815    1.4923752
Birth       ki1135781-COHORTS          GUATEMALA   observed             observed          -0.2367476   -0.3941046   -0.0793906
6 months    ki1000304b-SAS-CompFeed    INDIA       observed             observed          -1.4400743   -1.5370187   -1.3431300
6 months    ki1000304b-SAS-FoodSuppl   INDIA       observed             observed          -1.8871505   -1.9993302   -1.7749709
6 months    ki1101329-Keneba           GAMBIA      observed             observed          -0.9321551   -0.9872314   -0.8770788
6 months    ki1119695-PROBIT           BELARUS     observed             observed           0.1203779    0.0296502    0.2111056
6 months    ki1135781-COHORTS          GUATEMALA   observed             observed          -1.9652976   -2.0794998   -1.8510954
24 months   ki1101329-Keneba           GAMBIA      observed             observed          -1.6048736   -1.6613661   -1.5483810
24 months   ki1119695-PROBIT           BELARUS     observed             observed          -0.1266303   -0.4286611    0.1754004
24 months   ki1135781-COHORTS          GUATEMALA   observed             observed          -2.8628788   -2.9576712   -2.7680864


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed           0.1326367   -0.2484461    0.5137196
Birth       ki1101329-Keneba           GAMBIA      optimal              observed          -0.1335154   -0.3711652    0.1041343
Birth       ki1119695-PROBIT           BELARUS     optimal              observed          -0.0063613   -0.0254810    0.0127584
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.1666280   -0.6794554    0.3461995
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.1942057   -0.2558763   -0.1325352
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -0.2120267   -0.3895423   -0.0345110
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.0714258   -0.1461875    0.0033360
6 months    ki1119695-PROBIT           BELARUS     optimal              observed          -0.0277214   -0.0367762   -0.0186666
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.0968780   -0.3365323    0.1427762
24 months   ki1101329-Keneba           GAMBIA      optimal              observed          -0.1485802   -0.2208672   -0.0762932
24 months   ki1119695-PROBIT           BELARUS     optimal              observed          -0.0549856   -0.1442549    0.0342838
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.5029871   -0.7867206   -0.2192536
