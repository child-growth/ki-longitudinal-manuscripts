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

agecat      studyid         country     fhtcm           n_cell       n
----------  --------------  ----------  -------------  -------  ------
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
![](/tmp/12ebc267-82e2-42e1-b78f-44544c6c737e/9f89cb47-1744-4f7b-b01b-f0f4636b7f6c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/12ebc267-82e2-42e1-b78f-44544c6c737e/9f89cb47-1744-4f7b-b01b-f0f4636b7f6c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/12ebc267-82e2-42e1-b78f-44544c6c737e/9f89cb47-1744-4f7b-b01b-f0f4636b7f6c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS         GUATEMALA   >=167 cm             NA                -1.6229692   -1.9659094   -1.2800290
6 months    COHORTS         GUATEMALA   <162 cm              NA                -2.1616347   -2.3004453   -2.0228241
6 months    COHORTS         GUATEMALA   [162-167) cm         NA                -1.6953611   -1.9198965   -1.4708257
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.8695603   -0.9360771   -0.8030434
6 months    Keneba          GAMBIA      <162 cm              NA                -0.9578212   -1.1705920   -0.7450505
6 months    Keneba          GAMBIA      [162-167) cm         NA                -1.0325495   -1.1287805   -0.9363185
6 months    PROBIT          BELARUS     >=167 cm             NA                 0.1276713    0.0401645    0.2151782
6 months    PROBIT          BELARUS     <162 cm              NA                -0.5056371   -0.5991266   -0.4121476
6 months    PROBIT          BELARUS     [162-167) cm         NA                -0.2390448   -0.3958122   -0.0822774
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -1.2595870   -1.3757957   -1.1433784
6 months    SAS-CompFeed    INDIA       <162 cm              NA                -1.6829476   -1.8022390   -1.5636562
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                -1.5127075   -1.6421457   -1.3832694
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -1.6759080   -1.8805527   -1.4712634
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                -2.1297169   -2.2968329   -1.9626009
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                -1.7844188   -1.9911381   -1.5776995
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -2.5926430   -2.8517352   -2.3335508
24 months   COHORTS         GUATEMALA   <162 cm              NA                -3.2370781   -3.3580739   -3.1160824
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                -2.8355531   -3.0109114   -2.6601948
24 months   Keneba          GAMBIA      >=167 cm             NA                -1.5381844   -1.6070900   -1.4692789
24 months   Keneba          GAMBIA      <162 cm              NA                -1.7515804   -2.0039810   -1.4991798
24 months   Keneba          GAMBIA      [162-167) cm         NA                -1.7920656   -1.8943268   -1.6898045
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.1040819   -0.3924844    0.1843207
24 months   PROBIT          BELARUS     <162 cm              NA                -0.9497312   -1.3135899   -0.5858725
24 months   PROBIT          BELARUS     [162-167) cm         NA                -0.6191516   -0.9158003   -0.3225028


### Parameter: E(Y)


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
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
6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.5386655   -0.9089495   -0.1683814
6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0723919   -0.4839693    0.3391854
6 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba          GAMBIA      <162 cm              >=167 cm          -0.0882610   -0.3102366    0.1337147
6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.1629892   -0.2754629   -0.0505155
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm          -0.6333084   -0.7520803   -0.5145365
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.3667162   -0.4763475   -0.2570849
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.4233606   -0.5295706   -0.3171505
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2531205   -0.4029614   -0.1032797
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.4538089   -0.7163877   -0.1912300
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.1085108   -0.3975010    0.1804795
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.6444351   -0.9305381   -0.3583321
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.2429101   -0.5562770    0.0704567
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.2133960   -0.4744347    0.0476428
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.2538812   -0.3736643   -0.1340981
24 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS     <162 cm              >=167 cm          -0.8456493   -1.2290300   -0.4622686
24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.5150697   -0.8224778   -0.2076616


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.3423284   -0.6642552   -0.0204017
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.0625949   -0.1006699   -0.0245199
6 months    PROBIT          BELARUS     >=167 cm             NA                -0.0168468   -0.0235805   -0.0101132
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.1804873   -0.2415708   -0.1194039
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2112425   -0.3876303   -0.0348547
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.4421099   -0.6861686   -0.1980511
24 months   Keneba          GAMBIA      >=167 cm             NA                -0.0819105   -0.1239477   -0.0398733
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.0349581   -0.0546274   -0.0152888
