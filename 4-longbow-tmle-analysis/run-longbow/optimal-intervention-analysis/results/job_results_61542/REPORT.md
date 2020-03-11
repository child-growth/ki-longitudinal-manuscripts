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

agecat      studyid         country     fhtcm           n_cell       n
----------  --------------  ----------  -------------  -------  ------
Birth       COHORTS         GUATEMALA   >=167 cm            29     206
Birth       COHORTS         GUATEMALA   <162 cm            121     206
Birth       COHORTS         GUATEMALA   [162-167) cm        56     206
Birth       Keneba          GAMBIA      >=167 cm           772    1167
Birth       Keneba          GAMBIA      <162 cm             87    1167
Birth       Keneba          GAMBIA      [162-167) cm       308    1167
Birth       PROBIT          BELARUS     >=167 cm         11742   12535
Birth       PROBIT          BELARUS     <162 cm            168   12535
Birth       PROBIT          BELARUS     [162-167) cm       625   12535
Birth       SAS-CompFeed    INDIA       >=167 cm           343     746
Birth       SAS-CompFeed    INDIA       <162 cm            190     746
Birth       SAS-CompFeed    INDIA       [162-167) cm       213     746
6 months    COHORTS         GUATEMALA   >=167 cm            45     336
6 months    COHORTS         GUATEMALA   <162 cm            197     336
6 months    COHORTS         GUATEMALA   [162-167) cm        94     336
6 months    Keneba          GAMBIA      >=167 cm           979    1511
6 months    Keneba          GAMBIA      <162 cm            113    1511
6 months    Keneba          GAMBIA      [162-167) cm       419    1511
6 months    PROBIT          BELARUS     >=167 cm         11146   11894
6 months    PROBIT          BELARUS     <162 cm            156   11894
6 months    PROBIT          BELARUS     [162-167) cm       592   11894
6 months    SAS-CompFeed    INDIA       >=167 cm           369     807
6 months    SAS-CompFeed    INDIA       <162 cm            194     807
6 months    SAS-CompFeed    INDIA       [162-167) cm       244     807
6 months    SAS-FoodSuppl   INDIA       >=167 cm           102     372
6 months    SAS-FoodSuppl   INDIA       <162 cm            148     372
6 months    SAS-FoodSuppl   INDIA       [162-167) cm       122     372
24 months   COHORTS         GUATEMALA   >=167 cm            70     526
24 months   COHORTS         GUATEMALA   <162 cm            307     526
24 months   COHORTS         GUATEMALA   [162-167) cm       149     526
24 months   Keneba          GAMBIA      >=167 cm           821    1297
24 months   Keneba          GAMBIA      <162 cm             97    1297
24 months   Keneba          GAMBIA      [162-167) cm       379    1297
24 months   PROBIT          BELARUS     >=167 cm          3445    3670
24 months   PROBIT          BELARUS     <162 cm             53    3670
24 months   PROBIT          BELARUS     [162-167) cm       172    3670


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA



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
![](/tmp/e147598e-d4f5-4aed-ba04-de33a4cb7dd3/a8c683a0-32cc-4b9f-886f-d51dd6335a9e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   optimal              observed          -0.0988842   -0.6701469    0.4723786
Birth       Keneba          GAMBIA      optimal              observed           0.1243444   -0.0673425    0.3160313
Birth       PROBIT          BELARUS     optimal              observed           1.3304861    1.1727488    1.4882233
Birth       SAS-CompFeed    INDIA       optimal              observed          -1.3567859   -1.4657847   -1.2477871
6 months    COHORTS         GUATEMALA   optimal              observed          -1.8692767   -2.1075615   -1.6309919
6 months    Keneba          GAMBIA      optimal              observed          -0.8255527   -0.9025792   -0.7485262
6 months    PROBIT          BELARUS     optimal              observed           0.1414570    0.0525230    0.2303910
6 months    SAS-CompFeed    INDIA       optimal              observed          -1.2737892   -1.3973418   -1.1502367
6 months    SAS-FoodSuppl   INDIA       optimal              observed          -1.7080946   -1.9171102   -1.4990790
24 months   COHORTS         GUATEMALA   optimal              observed          -2.7390652   -3.0708251   -2.4073053
24 months   Keneba          GAMBIA      optimal              observed          -1.5633260   -1.6736803   -1.4529718
24 months   PROBIT          BELARUS     optimal              observed          -0.1108891   -0.3828396    0.1610613


### Parameter: E(Y)


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   observed             observed          -0.2367476   -0.3941046   -0.0793906
Birth       Keneba          GAMBIA      observed             observed           0.0702057   -0.0035933    0.1440046
Birth       PROBIT          BELARUS     observed             observed           1.3203658    1.1636745    1.4770571
Birth       SAS-CompFeed    INDIA       observed             observed          -1.4650804   -1.5752607   -1.3549001
6 months    COHORTS         GUATEMALA   observed             observed          -1.9652976   -2.0794998   -1.8510954
6 months    Keneba          GAMBIA      observed             observed          -0.9321551   -0.9872314   -0.8770788
6 months    PROBIT          BELARUS     observed             observed           0.1108245    0.0214240    0.2002250
6 months    SAS-CompFeed    INDIA       observed             observed          -1.4400743   -1.5370187   -1.3431300
6 months    SAS-FoodSuppl   INDIA       observed             observed          -1.8871505   -1.9993302   -1.7749709
24 months   COHORTS         GUATEMALA   observed             observed          -3.0347529   -3.1289563   -2.9405494
24 months   Keneba          GAMBIA      observed             observed          -1.6200950   -1.6766111   -1.5635788
24 months   PROBIT          BELARUS     observed             observed          -0.1390400   -0.4237657    0.1456858


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   optimal              observed          -0.1378634   -0.6540536    0.3783267
Birth       Keneba          GAMBIA      optimal              observed          -0.0541388   -0.2293994    0.1211219
Birth       PROBIT          BELARUS     optimal              observed          -0.0101203   -0.0278032    0.0075626
Birth       SAS-CompFeed    INDIA       optimal              observed          -0.1082946   -0.2069454   -0.0096437
6 months    COHORTS         GUATEMALA   optimal              observed          -0.0960209   -0.3172324    0.1251906
6 months    Keneba          GAMBIA      optimal              observed          -0.1066024   -0.1685664   -0.0446384
6 months    PROBIT          BELARUS     optimal              observed          -0.0306325   -0.0363163   -0.0249487
6 months    SAS-CompFeed    INDIA       optimal              observed          -0.1662851   -0.2269267   -0.1056435
6 months    SAS-FoodSuppl   INDIA       optimal              observed          -0.1790559   -0.3560304   -0.0020814
24 months   COHORTS         GUATEMALA   optimal              observed          -0.2956877   -0.6142228    0.0228475
24 months   Keneba          GAMBIA      optimal              observed          -0.0567689   -0.1519829    0.0384451
24 months   PROBIT          BELARUS     optimal              observed          -0.0281508   -0.0767527    0.0204511
