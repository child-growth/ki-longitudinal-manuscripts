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
![](/tmp/23deea0a-d624-4d14-942d-706df09432f5/6b3549e1-2da7-4a6e-86b5-f0020134dca6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/23deea0a-d624-4d14-942d-706df09432f5/6b3549e1-2da7-4a6e-86b5-f0020134dca6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/23deea0a-d624-4d14-942d-706df09432f5/6b3549e1-2da7-4a6e-86b5-f0020134dca6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                 0.0298167   -0.4892607    0.5488942
Birth       COHORTS         GUATEMALA   <162 cm              NA                -0.3520767   -0.5425595   -0.1615940
Birth       COHORTS         GUATEMALA   [162-167) cm         NA                -0.0893795   -0.4003605    0.2216016
Birth       Keneba          GAMBIA      >=167 cm             NA                 0.1026866    0.0074423    0.1979310
Birth       Keneba          GAMBIA      <162 cm              NA                 0.0779262   -0.1801092    0.3359616
Birth       Keneba          GAMBIA      [162-167) cm         NA                -0.0153054   -0.1522303    0.1216194
Birth       PROBIT          BELARUS     >=167 cm             NA                 1.3283440    1.1711017    1.4855864
Birth       PROBIT          BELARUS     <162 cm              NA                 1.0295782    0.9662140    1.0929424
Birth       PROBIT          BELARUS     [162-167) cm         NA                 1.1478992    0.9725609    1.3232375
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                -1.3676281   -1.4938315   -1.2414247
Birth       SAS-CompFeed    INDIA       <162 cm              NA                -1.6209807   -1.8924964   -1.3494649
Birth       SAS-CompFeed    INDIA       [162-167) cm         NA                -1.4779362   -1.6514060   -1.3044664
6 months    COHORTS         GUATEMALA   >=167 cm             NA                -1.5274634   -1.8001775   -1.2547492
6 months    COHORTS         GUATEMALA   <162 cm              NA                -2.1845228   -2.3295495   -2.0394962
6 months    COHORTS         GUATEMALA   [162-167) cm         NA                -1.6819320   -1.8934202   -1.4704438
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.8673098   -0.9357839   -0.7988357
6 months    Keneba          GAMBIA      <162 cm              NA                -1.0553426   -1.2436882   -0.8669970
6 months    Keneba          GAMBIA      [162-167) cm         NA                -1.0513889   -1.1509876   -0.9517901
6 months    PROBIT          BELARUS     >=167 cm             NA                 0.1295342    0.0422703    0.2167981
6 months    PROBIT          BELARUS     <162 cm              NA                -0.3425403   -0.4236944   -0.2613861
6 months    PROBIT          BELARUS     [162-167) cm         NA                -0.1692898   -0.3205645   -0.0180150
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -1.2730117   -1.3959179   -1.1501056
6 months    SAS-CompFeed    INDIA       <162 cm              NA                -1.6705726   -1.7955221   -1.5456231
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                -1.5105979   -1.6499018   -1.3712940
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -1.6742647   -1.8818581   -1.4666713
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                -2.1408413   -2.3098419   -1.9718407
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                -1.7953844   -2.0014539   -1.5893148
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -2.3418181   -2.6036701   -2.0799660
24 months   COHORTS         GUATEMALA   <162 cm              NA                -3.2245047   -3.3511189   -3.0978905
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                -2.8563948   -3.1173356   -2.5954541
24 months   Keneba          GAMBIA      >=167 cm             NA                -1.5342380   -1.6047445   -1.4637316
24 months   Keneba          GAMBIA      <162 cm              NA                -1.7328478   -1.9504158   -1.5152797
24 months   Keneba          GAMBIA      [162-167) cm         NA                -1.7999305   -1.9040562   -1.6958048
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.1149817   -0.3983360    0.1683726
24 months   PROBIT          BELARUS     <162 cm              NA                -0.7767267   -1.1260291   -0.4274244
24 months   PROBIT          BELARUS     [162-167) cm         NA                -0.5057046   -0.7914710   -0.2199382


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
Birth       COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.3818935   -0.9347274    0.1709405
Birth       COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.1191962   -0.7259666    0.4875742
Birth       Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba          GAMBIA      <162 cm              >=167 cm          -0.0247605   -0.2984971    0.2489762
Birth       Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.1179921   -0.2842706    0.0482865
Birth       PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS     <162 cm              >=167 cm          -0.2987658   -0.4262348   -0.1712969
Birth       PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.1804448   -0.2798528   -0.0810369
Birth       SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2533526   -0.5745833    0.0678780
Birth       SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1103082   -0.3076911    0.0870748
6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.6570595   -0.9667993   -0.3473196
6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.1544687   -0.5004418    0.1915045
6 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba          GAMBIA      <162 cm              >=167 cm          -0.1880328   -0.3877311    0.0116655
6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.1840791   -0.3028892   -0.0652689
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm          -0.4720745   -0.5783156   -0.3658334
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.2988240   -0.4007311   -0.1969169
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.3975609   -0.5088281   -0.2862937
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2375861   -0.4085394   -0.0666329
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.4665766   -0.7348268   -0.1983263
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.1211197   -0.4137094    0.1714700
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.8826866   -1.1752971   -0.5900762
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.5145768   -0.8860245   -0.1431291
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.1986097   -0.4267567    0.0295372
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.2656925   -0.3891249   -0.1422601
24 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS     <162 cm              >=167 cm          -0.6617451   -1.0111606   -0.3123295
24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.3907229   -0.7103344   -0.0711114


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.2665643   -0.7301004    0.1969717
Birth       Keneba          GAMBIA      >=167 cm             NA                -0.0324810   -0.0853889    0.0204269
Birth       PROBIT          BELARUS     >=167 cm             NA                -0.0079783   -0.0136875   -0.0022690
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                -0.0974524   -0.2157008    0.0207961
6 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.4378343   -0.6959319   -0.1797367
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.0648453   -0.1048066   -0.0248840
6 months    PROBIT          BELARUS     >=167 cm             NA                -0.0187097   -0.0250923   -0.0123271
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.1670626   -0.2264267   -0.1076985
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2128858   -0.3925636   -0.0332081
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.6929348   -0.9494109   -0.4364587
24 months   Keneba          GAMBIA      >=167 cm             NA                -0.0858569   -0.1293767   -0.0423372
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.0240583   -0.0405722   -0.0075443
