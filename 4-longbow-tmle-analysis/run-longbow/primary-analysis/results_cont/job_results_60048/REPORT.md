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
![](/tmp/b6036814-26b9-4c93-8ddb-f9bef2fd7d2c/c686afa0-cf08-4225-8870-32f3fe86e5b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b6036814-26b9-4c93-8ddb-f9bef2fd7d2c/c686afa0-cf08-4225-8870-32f3fe86e5b1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b6036814-26b9-4c93-8ddb-f9bef2fd7d2c/c686afa0-cf08-4225-8870-32f3fe86e5b1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                 0.0672484   -0.4625700    0.5970669
Birth       COHORTS         GUATEMALA   <162 cm              NA                -0.3564647   -0.5514662   -0.1614631
Birth       COHORTS         GUATEMALA   [162-167) cm         NA                -0.1106304   -0.4144187    0.1931579
Birth       Keneba          GAMBIA      >=167 cm             NA                 0.1030739    0.0090315    0.1971163
Birth       Keneba          GAMBIA      <162 cm              NA                 0.0729253   -0.2009530    0.3468036
Birth       Keneba          GAMBIA      [162-167) cm         NA                -0.0213299   -0.1601710    0.1175113
Birth       PROBIT          BELARUS     >=167 cm             NA                 1.3284197    1.1711933    1.4856461
Birth       PROBIT          BELARUS     <162 cm              NA                 1.0511470    0.9888711    1.1134229
Birth       PROBIT          BELARUS     [162-167) cm         NA                 1.1642029    0.9836377    1.3447681
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                -1.3676281   -1.4938315   -1.2414247
Birth       SAS-CompFeed    INDIA       <162 cm              NA                -1.6209807   -1.8924964   -1.3494649
Birth       SAS-CompFeed    INDIA       [162-167) cm         NA                -1.4779362   -1.6514060   -1.3044664
6 months    COHORTS         GUATEMALA   >=167 cm             NA                -1.5829817   -1.9139878   -1.2519756
6 months    COHORTS         GUATEMALA   <162 cm              NA                -2.1668567   -2.3092614   -2.0244520
6 months    COHORTS         GUATEMALA   [162-167) cm         NA                -1.6676303   -1.8678618   -1.4673988
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.8616440   -0.9302385   -0.7930495
6 months    Keneba          GAMBIA      <162 cm              NA                -1.0184038   -1.1984444   -0.8383632
6 months    Keneba          GAMBIA      [162-167) cm         NA                -1.0657432   -1.1668272   -0.9646593
6 months    PROBIT          BELARUS     >=167 cm             NA                 0.1301801    0.0425325    0.2178278
6 months    PROBIT          BELARUS     <162 cm              NA                -0.3508399   -0.4323486   -0.2693311
6 months    PROBIT          BELARUS     [162-167) cm         NA                -0.1531406   -0.3209704    0.0146891
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -1.2730117   -1.3959179   -1.1501056
6 months    SAS-CompFeed    INDIA       <162 cm              NA                -1.6705726   -1.7955221   -1.5456231
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                -1.5105979   -1.6499018   -1.3712940
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -1.6691868   -1.8788329   -1.4595408
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                -2.1266012   -2.2945756   -1.9586267
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                -1.7737460   -1.9798913   -1.5676007
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -2.3472321   -2.6493802   -2.0450840
24 months   COHORTS         GUATEMALA   <162 cm              NA                -3.1938107   -3.3183821   -3.0692392
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                -2.8702350   -3.0854944   -2.6549757
24 months   Keneba          GAMBIA      >=167 cm             NA                -1.5391016   -1.6088213   -1.4693819
24 months   Keneba          GAMBIA      <162 cm              NA                -1.7796501   -2.0027142   -1.5565860
24 months   Keneba          GAMBIA      [162-167) cm         NA                -1.7592532   -1.8611633   -1.6573431
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.1145505   -0.3987697    0.1696687
24 months   PROBIT          BELARUS     <162 cm              NA                -0.8044170   -1.2204838   -0.3883502
24 months   PROBIT          BELARUS     [162-167) cm         NA                -0.4966641   -0.7777623   -0.2155658


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
Birth       COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.4237131   -0.9889222    0.1414959
Birth       COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.1778788   -0.7897068    0.4339492
Birth       Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba          GAMBIA      <162 cm              >=167 cm          -0.0301486   -0.3184807    0.2581835
Birth       Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.1244038   -0.2912746    0.0424670
Birth       PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS     <162 cm              >=167 cm          -0.2772727   -0.4029102   -0.1516352
Birth       PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.1642168   -0.2678519   -0.0605817
Birth       SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2533526   -0.5745833    0.0678780
Birth       SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1103082   -0.3076911    0.0870748
6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.5838750   -0.9444806   -0.2232695
6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0846486   -0.4732310    0.3039338
6 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba          GAMBIA      <162 cm              >=167 cm          -0.1567598   -0.3487408    0.0352213
6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.2040992   -0.3240884   -0.0841100
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm          -0.4810200   -0.5847957   -0.3772444
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.2833208   -0.3995670   -0.1670746
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.3975609   -0.5088281   -0.2862937
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2375861   -0.4085394   -0.0666329
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.4574144   -0.7260444   -0.1887843
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.1045592   -0.3991998    0.1900815
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.8465786   -1.1748631   -0.5182940
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.5230029   -0.8962543   -0.1497516
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.2405485   -0.4742068   -0.0068902
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.2201516   -0.3417061   -0.0985971
24 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS     <162 cm              >=167 cm          -0.6898665   -1.0875091   -0.2922238
24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.3821136   -0.7053201   -0.0589070


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.3039960   -0.7797148    0.1717227
Birth       Keneba          GAMBIA      >=167 cm             NA                -0.0328683   -0.0846482    0.0189117
Birth       PROBIT          BELARUS     >=167 cm             NA                -0.0080539   -0.0135002   -0.0026077
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                -0.0974524   -0.2157008    0.0207961
6 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.3823159   -0.6941776   -0.0704542
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.0705111   -0.1105401   -0.0304821
6 months    PROBIT          BELARUS     >=167 cm             NA                -0.0193556   -0.0256316   -0.0130797
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.1670626   -0.2264267   -0.1076985
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2179637   -0.3994172   -0.0365102
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.6875208   -0.9843971   -0.3906444
24 months   Keneba          GAMBIA      >=167 cm             NA                -0.0809933   -0.1240291   -0.0379576
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.0244894   -0.0407591   -0.0082198
