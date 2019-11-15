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
![](/tmp/530e8f2c-67f5-45bb-8fe4-9c8f766777f4/5420a764-8084-423f-a4ce-55317ffe0fe2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/530e8f2c-67f5-45bb-8fe4-9c8f766777f4/5420a764-8084-423f-a4ce-55317ffe0fe2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/530e8f2c-67f5-45bb-8fe4-9c8f766777f4/5420a764-8084-423f-a4ce-55317ffe0fe2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -1.3589035   -1.4845687   -1.2332383
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -1.6385744   -1.8971294   -1.3800195
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -1.4809829   -1.6471320   -1.3148339
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.1057212    0.0118250    0.1996174
Birth       ki1101329-Keneba           GAMBIA      <162 cm              NA                 0.0625402   -0.1911589    0.3162393
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0312266   -0.1672611    0.1048078
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                 1.3459120    1.1899254    1.5018987
Birth       ki1119695-PROBIT           BELARUS     <162 cm              NA                 1.0653656    0.9817666    1.1489647
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 1.1477083    0.9376844    1.3577323
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0346012   -0.5394592    0.6086615
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3397031   -0.5332740   -0.1461322
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0784810   -0.3486705    0.1917084
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -1.2510708   -1.3705294   -1.1316121
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -1.7019419   -1.8228618   -1.5810220
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -1.5167927   -1.6549390   -1.3786464
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -1.6768129   -1.8893770   -1.4642487
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -2.1206042   -2.2878597   -1.9533487
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -1.7800215   -1.9875817   -1.5724612
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8658129   -0.9338335   -0.7977924
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.9790695   -1.1742917   -0.7838472
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.0683999   -1.1684421   -0.9683576
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.1433004    0.0554558    0.2311451
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.3411667   -0.4494459   -0.2328876
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.2393499   -0.4660490   -0.0126508
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -1.5748260   -1.8873573   -1.2622947
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -2.1766943   -2.3200485   -2.0333400
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -1.6878540   -1.9013158   -1.4743922
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -1.5364443   -1.6067378   -1.4661508
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -1.7502710   -1.9787920   -1.5217500
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.7831284   -1.8872427   -1.6790141
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.1026834   -0.4062858    0.2009190
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.8336745   -1.2883465   -0.3790025
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.4304685   -0.7498060   -0.1111310
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -2.5944389   -2.8826924   -2.3061854
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -3.2354966   -3.3623854   -3.1086079
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -2.8060329   -2.9749513   -2.6371146


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -1.4650804   -1.5752607   -1.3549001
Birth       ki1101329-Keneba           GAMBIA      NA                   NA                 0.0702057   -0.0035933    0.1440046
Birth       ki1119695-PROBIT           BELARUS     NA                   NA                 1.3367673    1.1803545    1.4931801
Birth       ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.2367476   -0.3941046   -0.0793906
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -1.4400743   -1.5370187   -1.3431300
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -1.8871505   -1.9993302   -1.7749709
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.9321551   -0.9872314   -0.8770788
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.1203779    0.0296502    0.2111056
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                -1.9652976   -2.0794998   -1.8510954
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                -1.6200950   -1.6766111   -1.5635788
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                -0.1266303   -0.4286611    0.1754004
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -3.0347529   -3.1289563   -2.9405494


### Parameter: ATE


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2796709   -0.5834821    0.0241403
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1220794   -0.3109562    0.0667974
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0431810   -0.3127628    0.2264007
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.1369479   -0.3015250    0.0276293
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.2805464   -0.4065969   -0.1544959
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.1982037   -0.3213189   -0.0750885
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.3743042   -0.9809250    0.2323166
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1130822   -0.7492350    0.5230706
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.4508712   -0.5559092   -0.3458332
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2657219   -0.4354423   -0.0960015
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.4437914   -0.7142470   -0.1733357
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.1032086   -0.4003587    0.1939416
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.1132565   -0.3194777    0.0929647
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.2025869   -0.3212809   -0.0838929
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.4844672   -0.6092825   -0.3596519
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3826503   -0.5705721   -0.1947285
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.6018683   -0.9468759   -0.2568606
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1130280   -0.4921758    0.2661199
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.2138267   -0.4525033    0.0248499
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.2466841   -0.3702980   -0.1230701
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.7309911   -1.1785835   -0.2833986
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3277851   -0.6803814    0.0248112
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.6410578   -0.9571997   -0.3249158
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.2115941   -0.5463709    0.1231828


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1061769   -0.2167133    0.0043595
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0355156   -0.0873049    0.0162738
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0091447   -0.0155493   -0.0027401
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2713487   -0.7912263    0.2485288
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1890036   -0.2507407   -0.1272664
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2103377   -0.3941583   -0.0265170
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0663422   -0.1059513   -0.0267331
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0229226   -0.0306777   -0.0151674
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3904716   -0.6852383   -0.0957049
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0836506   -0.1271673   -0.0401339
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0239469   -0.0392653   -0.0086286
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.4403140   -0.7146824   -0.1659455
