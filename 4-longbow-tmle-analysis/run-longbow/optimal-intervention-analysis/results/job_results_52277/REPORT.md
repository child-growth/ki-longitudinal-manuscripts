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
```

```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/685f84cd-05f8-4701-943d-b733dd365323/5886f7fd-d6d0-4696-9bc8-79661eb1f5a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -1.3567859   -1.4657847   -1.2477871
Birth       ki1101329-Keneba           GAMBIA      optimal              observed           0.1283436   -0.0879936    0.3446809
Birth       ki1119695-PROBIT           BELARUS     optimal              observed           1.3365294    1.1827064    1.4903524
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.2053197   -0.7044772    0.2938377
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -1.2737892   -1.3973418   -1.1502367
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -1.6772025   -1.8813683   -1.4730367
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.8214391   -0.9179698   -0.7249084
6 months    ki1119695-PROBIT           BELARUS     optimal              observed           0.1483707    0.0598728    0.2368687
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed          -1.7433271   -1.9435559   -1.5430983
24 months   ki1101329-Keneba           GAMBIA      optimal              observed          -1.5094342   -1.6050712   -1.4137972
24 months   ki1119695-PROBIT           BELARUS     optimal              observed          -0.0762063   -0.3704330    0.2180205
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          -2.8592175   -3.2143098   -2.5041252


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
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.1082946   -0.2069454   -0.0096437
Birth       ki1101329-Keneba           GAMBIA      optimal              observed          -0.0581380   -0.2566684    0.1403925
Birth       ki1119695-PROBIT           BELARUS     optimal              observed           0.0002379   -0.0193753    0.0198511
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.0314278   -0.4736617    0.4108060
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.1662851   -0.2269267   -0.1056435
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -0.2099481   -0.3865629   -0.0333332
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.1107160   -0.1924481   -0.0289839
6 months    ki1119695-PROBIT           BELARUS     optimal              observed          -0.0279928   -0.0350249   -0.0209608
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.2219705   -0.4065179   -0.0374232
24 months   ki1101329-Keneba           GAMBIA      optimal              observed          -0.1106607   -0.1889689   -0.0323525
24 months   ki1119695-PROBIT           BELARUS     optimal              observed          -0.0504241   -0.1011899    0.0003417
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.1755353   -0.5168646    0.1657940
