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

agecat      studyid         country     fhtcm           n_cell       n  outcome_variable 
----------  --------------  ----------  -------------  -------  ------  -----------------
Birth       COHORTS         GUATEMALA   >=167 cm            29     206  haz              
Birth       COHORTS         GUATEMALA   <162 cm            121     206  haz              
Birth       COHORTS         GUATEMALA   [162-167) cm        56     206  haz              
Birth       Keneba          GAMBIA      >=167 cm           772    1167  haz              
Birth       Keneba          GAMBIA      <162 cm             87    1167  haz              
Birth       Keneba          GAMBIA      [162-167) cm       308    1167  haz              
Birth       PROBIT          BELARUS     >=167 cm         11742   12535  haz              
Birth       PROBIT          BELARUS     <162 cm            168   12535  haz              
Birth       PROBIT          BELARUS     [162-167) cm       625   12535  haz              
Birth       SAS-CompFeed    INDIA       >=167 cm           343     746  haz              
Birth       SAS-CompFeed    INDIA       <162 cm            190     746  haz              
Birth       SAS-CompFeed    INDIA       [162-167) cm       213     746  haz              
6 months    COHORTS         GUATEMALA   >=167 cm            45     336  haz              
6 months    COHORTS         GUATEMALA   <162 cm            197     336  haz              
6 months    COHORTS         GUATEMALA   [162-167) cm        94     336  haz              
6 months    Keneba          GAMBIA      >=167 cm           979    1511  haz              
6 months    Keneba          GAMBIA      <162 cm            113    1511  haz              
6 months    Keneba          GAMBIA      [162-167) cm       419    1511  haz              
6 months    PROBIT          BELARUS     >=167 cm         11146   11894  haz              
6 months    PROBIT          BELARUS     <162 cm            156   11894  haz              
6 months    PROBIT          BELARUS     [162-167) cm       592   11894  haz              
6 months    SAS-CompFeed    INDIA       >=167 cm           369     807  haz              
6 months    SAS-CompFeed    INDIA       <162 cm            194     807  haz              
6 months    SAS-CompFeed    INDIA       [162-167) cm       244     807  haz              
6 months    SAS-FoodSuppl   INDIA       >=167 cm           102     372  haz              
6 months    SAS-FoodSuppl   INDIA       <162 cm            148     372  haz              
6 months    SAS-FoodSuppl   INDIA       [162-167) cm       122     372  haz              
24 months   COHORTS         GUATEMALA   >=167 cm            70     526  haz              
24 months   COHORTS         GUATEMALA   <162 cm            307     526  haz              
24 months   COHORTS         GUATEMALA   [162-167) cm       149     526  haz              
24 months   Keneba          GAMBIA      >=167 cm           821    1297  haz              
24 months   Keneba          GAMBIA      <162 cm             97    1297  haz              
24 months   Keneba          GAMBIA      [162-167) cm       379    1297  haz              
24 months   PROBIT          BELARUS     >=167 cm          3445    3670  haz              
24 months   PROBIT          BELARUS     <162 cm             53    3670  haz              
24 months   PROBIT          BELARUS     [162-167) cm       172    3670  haz              


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
![](/tmp/ed1a277a-3fb2-4acb-812b-923d3282e578/c45e16a4-b6cc-4707-a8b3-ddcd8e13fb20/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ed1a277a-3fb2-4acb-812b-923d3282e578/c45e16a4-b6cc-4707-a8b3-ddcd8e13fb20/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ed1a277a-3fb2-4acb-812b-923d3282e578/c45e16a4-b6cc-4707-a8b3-ddcd8e13fb20/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.2240936   -0.8529014    0.4047142
Birth       COHORTS         GUATEMALA   <162 cm              NA                -0.3503786   -0.5419722   -0.1587850
Birth       COHORTS         GUATEMALA   [162-167) cm         NA                -0.1044806   -0.3968507    0.1878896
Birth       Keneba          GAMBIA      >=167 cm             NA                 0.1080697    0.0136663    0.2024730
Birth       Keneba          GAMBIA      <162 cm              NA                 0.1210679   -0.1647022    0.4068380
Birth       Keneba          GAMBIA      [162-167) cm         NA                -0.0309025   -0.1706765    0.1088715
Birth       PROBIT          BELARUS     >=167 cm             NA                 1.3277541    1.1702677    1.4852404
Birth       PROBIT          BELARUS     <162 cm              NA                 1.0548133    0.9886460    1.1209805
Birth       PROBIT          BELARUS     [162-167) cm         NA                 1.1565079    0.9764813    1.3365345
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                -1.3676281   -1.4938315   -1.2414247
Birth       SAS-CompFeed    INDIA       <162 cm              NA                -1.6209807   -1.8924964   -1.3494649
Birth       SAS-CompFeed    INDIA       [162-167) cm         NA                -1.4779362   -1.6514060   -1.3044664
6 months    COHORTS         GUATEMALA   >=167 cm             NA                -1.5041247   -1.7907176   -1.2175318
6 months    COHORTS         GUATEMALA   <162 cm              NA                -2.1762963   -2.3206687   -2.0319239
6 months    COHORTS         GUATEMALA   [162-167) cm         NA                -1.6827303   -1.8937446   -1.4717159
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.8651551   -0.9334176   -0.7968926
6 months    Keneba          GAMBIA      <162 cm              NA                -0.9993080   -1.1937969   -0.8048192
6 months    Keneba          GAMBIA      [162-167) cm         NA                -1.0598111   -1.1580664   -0.9615558
6 months    PROBIT          BELARUS     >=167 cm             NA                 0.1298947    0.0424109    0.2173785
6 months    PROBIT          BELARUS     <162 cm              NA                -0.3255871   -0.4162948   -0.2348794
6 months    PROBIT          BELARUS     [162-167) cm         NA                -0.1544374   -0.3092797    0.0004050
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -1.2730117   -1.3959179   -1.1501056
6 months    SAS-CompFeed    INDIA       <162 cm              NA                -1.6705726   -1.7955221   -1.5456231
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                -1.5105979   -1.6499018   -1.3712939
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -1.6824818   -1.8895458   -1.4754179
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                -2.1323755   -2.2987674   -1.9659836
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                -1.7583250   -1.9645407   -1.5521093
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -2.4334990   -2.7423472   -2.1246508
24 months   COHORTS         GUATEMALA   <162 cm              NA                -3.2282810   -3.3608259   -3.0957360
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                -2.8792147   -3.0965792   -2.6618502
24 months   Keneba          GAMBIA      >=167 cm             NA                -1.5334193   -1.6040401   -1.4627984
24 months   Keneba          GAMBIA      <162 cm              NA                -1.7945460   -2.0339278   -1.5551643
24 months   Keneba          GAMBIA      [162-167) cm         NA                -1.7746595   -1.8758179   -1.6735010
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.1144433   -0.3993328    0.1704462
24 months   PROBIT          BELARUS     <162 cm              NA                -0.7607714   -1.0584086   -0.4631342
24 months   PROBIT          BELARUS     [162-167) cm         NA                -0.5177551   -0.8083040   -0.2272062


### Parameter: E(Y)


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   NA                   NA                -0.2367476   -0.3941046   -0.0793906
Birth       Keneba          GAMBIA      NA                   NA                 0.0702057   -0.0035933    0.1440046
Birth       PROBIT          BELARUS     NA                   NA                 1.3203658    1.1636745    1.4770571
Birth       SAS-CompFeed    INDIA       NA                   NA                -1.4650804   -1.5752607   -1.3549001
6 months    COHORTS         GUATEMALA   NA                   NA                -1.9652976   -2.0794998   -1.8510954
6 months    Keneba          GAMBIA      NA                   NA                -0.9321551   -0.9872314   -0.8770788
6 months    PROBIT          BELARUS     NA                   NA                 0.1108245    0.0214240    0.2002250
6 months    SAS-CompFeed    INDIA       NA                   NA                -1.4400743   -1.5370187   -1.3431300
6 months    SAS-FoodSuppl   INDIA       NA                   NA                -1.8871505   -1.9993302   -1.7749709
24 months   COHORTS         GUATEMALA   NA                   NA                -3.0347529   -3.1289563   -2.9405494
24 months   Keneba          GAMBIA      NA                   NA                -1.6200950   -1.6766111   -1.5635788
24 months   PROBIT          BELARUS     NA                   NA                -0.1390400   -0.4237657    0.1456858


### Parameter: ATE


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.1262850   -0.7846770    0.5321070
Birth       COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.1196131   -0.5737789    0.8130050
Birth       Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba          GAMBIA      <162 cm              >=167 cm           0.0129982   -0.2868019    0.3127984
Birth       Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.1389721   -0.3072886    0.0293444
Birth       PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS     <162 cm              >=167 cm          -0.2729408   -0.3982891   -0.1475925
Birth       PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.1712462   -0.2720223   -0.0704701
Birth       SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2533526   -0.5745833    0.0678780
Birth       SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1103082   -0.3076911    0.0870748
6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.6721716   -0.9941264   -0.3502168
6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.1786056   -0.5363169    0.1791057
6 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba          GAMBIA      <162 cm              >=167 cm          -0.1341529   -0.3395497    0.0712439
6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.1946560   -0.3120863   -0.0772256
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm          -0.4554818   -0.5649867   -0.3459769
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.2843320   -0.3878161   -0.1808480
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.3975609   -0.5088281   -0.2862937
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2375861   -0.4085394   -0.0666329
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.4498937   -0.7132672   -0.1865201
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0758432   -0.3662531    0.2145667
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.7947819   -1.1315988   -0.4579651
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.4457157   -0.8239406   -0.0674907
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.2611268   -0.5100729   -0.0121807
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.2412402   -0.3627766   -0.1197038
24 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS     <162 cm              >=167 cm          -0.6463281   -0.9612205   -0.3314357
24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.4033118   -0.7430183   -0.0636052


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.0126539   -0.5803618    0.5550539
Birth       Keneba          GAMBIA      >=167 cm             NA                -0.0378640   -0.0900811    0.0143531
Birth       PROBIT          BELARUS     >=167 cm             NA                -0.0073883   -0.0131781   -0.0015985
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                -0.0974524   -0.2157008    0.0207961
6 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.4611729   -0.7333912   -0.1889547
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.0670000   -0.1069495   -0.0270506
6 months    PROBIT          BELARUS     >=167 cm             NA                -0.0190702   -0.0253988   -0.0127416
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.1670626   -0.2264267   -0.1076985
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2046687   -0.3835355   -0.0258019
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.6012538   -0.9016839   -0.3008238
24 months   Keneba          GAMBIA      >=167 cm             NA                -0.0866757   -0.1305573   -0.0427941
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.0245966   -0.0402801   -0.0089132
