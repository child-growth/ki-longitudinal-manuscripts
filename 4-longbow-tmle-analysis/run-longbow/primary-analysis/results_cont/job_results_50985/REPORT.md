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
![](/tmp/931d54eb-3781-446c-b835-427574aa4a06/4c45fe11-fe34-466c-bff1-456c1fe7d56e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/931d54eb-3781-446c-b835-427574aa4a06/4c45fe11-fe34-466c-bff1-456c1fe7d56e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/931d54eb-3781-446c-b835-427574aa4a06/4c45fe11-fe34-466c-bff1-456c1fe7d56e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -1.2587278   -1.4795973   -1.0378583
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -1.1931130   -1.8259504   -0.5602755
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -1.6533965   -2.0680323   -1.2387608
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.1036905    0.0100495    0.1973315
Birth       ki1101329-Keneba           GAMBIA      <162 cm              NA                 0.0406670   -0.2147090    0.2960429
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         NA                 0.0080911   -0.1283782    0.1445603
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                 1.3449068    1.1888127    1.5010010
Birth       ki1119695-PROBIT           BELARUS     <162 cm              NA                 1.0805267    0.9999339    1.1611195
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 1.1475865    0.9472875    1.3478855
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0889618   -0.4679725    0.6458961
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3366996   -0.5316825   -0.1417166
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0786976   -0.3436591    0.1862639
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -1.2494051   -1.3694044   -1.1294059
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -1.7209330   -1.8440811   -1.5977848
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -1.5219130   -1.6546094   -1.3892166
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -1.6757899   -1.8776533   -1.4739265
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -2.1203344   -2.2891492   -1.9515197
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -1.7419247   -1.9472765   -1.5365730
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8711824   -0.9398641   -0.8025008
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.9673758   -1.1493216   -0.7854300
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.0459925   -1.1441182   -0.9478668
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.1427262    0.0546168    0.2308356
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.3685754   -0.4868903   -0.2502606
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.2168251   -0.4489221    0.0152720
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -1.6475083   -1.9702249   -1.3247918
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -2.1700836   -2.3151927   -2.0249744
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -1.6415570   -1.8528041   -1.4303099
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -1.5202173   -1.5903980   -1.4500366
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -1.7674356   -1.9880490   -1.5468223
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.7759987   -1.8811160   -1.6708815
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.1016649   -0.4045370    0.2012072
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.8736484   -1.2860344   -0.4612623
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.4229866   -0.7882612   -0.0577121
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -2.5366659   -2.8745747   -2.1987571
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -3.0507259   -3.1752697   -2.9261822
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -2.6280542   -2.7854673   -2.4706412


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -1.3448039   -1.5170851   -1.1725227
Birth       ki1101329-Keneba           GAMBIA      NA                   NA                 0.0735794   -0.0000676    0.1472264
Birth       ki1119695-PROBIT           BELARUS     NA                   NA                 1.3359283    1.1794815    1.4923752
Birth       ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.2367476   -0.3941046   -0.0793906
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
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0656148   -0.7114166    0.8426463
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.3946687   -0.7912785    0.0019410
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0630235   -0.3336793    0.2076322
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0955995   -0.2605751    0.0693762
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.2643801   -0.3897280   -0.1390322
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.1973203   -0.3143072   -0.0803335
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.4256614   -1.0169854    0.1656627
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1676594   -0.7858280    0.4505092
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.4715278   -0.5790479   -0.3640077
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2725078   -0.4359440   -0.1090717
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.4445446   -0.7058054   -0.1832837
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0661349   -0.3525473    0.2202776
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0961933   -0.2897863    0.0973996
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.1748101   -0.2924652   -0.0571550
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.5113017   -0.6448064   -0.3777969
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3595513   -0.5513362   -0.1677663
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.5225752   -0.8761312   -0.1690193
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0059513   -0.3796883    0.3915909
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.2472183   -0.4783453   -0.0160914
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.2557814   -0.3802687   -0.1312942
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.7719834   -1.1879162   -0.3560507
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3213217   -0.6680119    0.0253684
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.5140600   -0.8743509   -0.1537691
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0913883   -0.4641489    0.2813722


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0860761   -0.2562641    0.0841118
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0301111   -0.0815779    0.0213557
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0089785   -0.0156153   -0.0023416
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3257094   -0.8288365    0.1774178
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1906692   -0.2551229   -0.1262155
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2113607   -0.3861231   -0.0365983
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0609727   -0.1011261   -0.0208193
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0223483   -0.0298561   -0.0148405
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3177893   -0.6244227   -0.0111558
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0846563   -0.1281181   -0.0411944
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0249654   -0.0419708   -0.0079601
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3262129   -0.6435581   -0.0088677
