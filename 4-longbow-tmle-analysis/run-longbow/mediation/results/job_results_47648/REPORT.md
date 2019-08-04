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
![](/tmp/f73452df-9606-4a2b-b5f7-dda8423a8930/00e42802-2065-4f9b-b12e-ce89cee158ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f73452df-9606-4a2b-b5f7-dda8423a8930/00e42802-2065-4f9b-b12e-ce89cee158ac/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f73452df-9606-4a2b-b5f7-dda8423a8930/00e42802-2065-4f9b-b12e-ce89cee158ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -1.2522183   -1.3736784   -1.1307581
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -1.7300584   -1.8574818   -1.6026351
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -1.5304470   -1.6613287   -1.3995652
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -1.6807250   -1.8844837   -1.4769663
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -2.1304273   -2.2967326   -1.9641220
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -1.7741284   -1.9800079   -1.5682490
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8764042   -0.9445311   -0.8082773
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -1.0126454   -1.1998425   -0.8254484
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.0479926   -1.1502999   -0.9456852
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.1382969    0.0496441    0.2269497
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.5309914   -0.6448908   -0.4170920
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.2706640   -0.5035536   -0.0377743
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -1.6012119   -1.9446215   -1.2578023
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -2.1526627   -2.2916041   -2.0137214
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -1.6889112   -1.9088032   -1.4690193
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -1.5358071   -1.6048028   -1.4668115
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -1.7139312   -1.9439154   -1.4839470
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.7506332   -1.8512025   -1.6500639
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.1023201   -0.4048723    0.2002320
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.8008833   -1.1303272   -0.4714394
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.4845697   -0.8193754   -0.1497640
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -2.5288507   -2.7949932   -2.2627082
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -3.0449355   -3.1667389   -2.9231322
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -2.6512885   -2.8166409   -2.4859360


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -1.4400743   -1.5370187   -1.3431300
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -1.8871505   -1.9993302   -1.7749709
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.9321551   -0.9872314   -0.8770788
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.1203779    0.0296502    0.2111056
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                -1.9652976   -2.0794998   -1.8510954
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                -1.6048736   -1.6613661   -1.5483810
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                -0.1266303   -0.4286611    0.1754004
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -2.8628788   -2.9576712   -2.7680864


### Parameter: ATE


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.4778402   -0.5900324   -0.3656479
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2782287   -0.4415167   -0.1149407
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.4497023   -0.7118396   -0.1875651
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0934035   -0.3816414    0.1948345
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.1362412   -0.3347063    0.0622238
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.1715884   -0.2929114   -0.0502654
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.6692883   -0.8007370   -0.5378396
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.4089609   -0.6023078   -0.2156140
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.5514508   -0.9214955   -0.1814061
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0876993   -0.4982538    0.3228552
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.1781241   -0.4173945    0.0611463
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.2148260   -0.3328791   -0.0967730
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.6985632   -1.0661145   -0.3310118
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3822496   -0.7524907   -0.0120084
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.5160849   -0.8082950   -0.2238747
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1224378   -0.4355401    0.1906644


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1878561   -0.2544307   -0.1212815
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2064256   -0.3824499   -0.0304012
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0557509   -0.0960813   -0.0154206
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0179190   -0.0266578   -0.0091802
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3640857   -0.6868472   -0.0413243
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0690664   -0.1106633   -0.0274696
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0243102   -0.0416968   -0.0069236
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3340281   -0.5785603   -0.0894959
