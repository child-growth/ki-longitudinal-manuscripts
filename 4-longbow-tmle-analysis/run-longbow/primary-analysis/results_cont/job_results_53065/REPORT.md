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
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             3       7
Birth       ki1101329-Keneba           GAMBIA      <162 cm              1       7
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         3       7
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA

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
![](/tmp/ecac2c47-142a-45fc-910e-d4e4dc896953/dbfcc14b-3abe-47b7-b96f-be8efa8a61a3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ecac2c47-142a-45fc-910e-d4e4dc896953/dbfcc14b-3abe-47b7-b96f-be8efa8a61a3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ecac2c47-142a-45fc-910e-d4e4dc896953/dbfcc14b-3abe-47b7-b96f-be8efa8a61a3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -1.3589035   -1.4845687   -1.2332383
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -1.6385744   -1.8971294   -1.3800195
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -1.4809829   -1.6471320   -1.3148339
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                 1.3452160    1.1890311    1.5014009
Birth       ki1119695-PROBIT           BELARUS     <162 cm              NA                 1.0672837    0.9912906    1.1432767
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 1.1643972    0.9649630    1.3638314
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0201003   -0.5611643    0.6013649
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3290992   -0.5220339   -0.1361645
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0536713   -0.3143707    0.2070281
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -1.2510708   -1.3705294   -1.1316121
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -1.7019419   -1.8228618   -1.5810220
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -1.5167927   -1.6549390   -1.3786464
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -1.6613108   -1.8747257   -1.4478958
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -2.1247193   -2.2923649   -1.9570736
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -1.7708330   -1.9772432   -1.5644228
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8623495   -0.9303900   -0.7943090
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.9861659   -1.1795628   -0.7927689
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.0576457   -1.1544690   -0.9608224
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.1418340    0.0542652    0.2294027
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.3435754   -0.4570750   -0.2300757
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.2104246   -0.4318001    0.0109510
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -1.5889819   -1.9329538   -1.2450099
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -2.1774812   -2.3186252   -2.0363372
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -1.6802690   -1.8958127   -1.4647253
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -1.5363580   -1.6061059   -1.4666101
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -1.7429744   -1.9740264   -1.5119224
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.7658936   -1.8693138   -1.6624733
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.1034201   -0.4065772    0.1997369
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.7786967   -1.1993489   -0.3580445
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.4390119   -0.7578903   -0.1201334
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -2.5947527   -2.8942781   -2.2952273
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -3.2189021   -3.3414641   -3.0963401
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -2.8334422   -3.0047483   -2.6621362


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -1.4650804   -1.5752607   -1.3549001
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
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.2779324   -0.4060010   -0.1498637
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.1808188   -0.3029324   -0.0587052
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.3491996   -0.9628879    0.2644888
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0737716   -0.7114772    0.5639340
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.4508712   -0.5559092   -0.3458332
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2657219   -0.4354423   -0.0960015
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.4634085   -0.7350913   -0.1917257
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.1095222   -0.4065281    0.1874836
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.1238164   -0.3282282    0.0805955
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.1952962   -0.3114603   -0.0791321
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.4854093   -0.6086731   -0.3621456
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3522585   -0.5347403   -0.1697768
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.5884994   -0.9613245   -0.2156742
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0912871   -0.4981173    0.3155431
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.2066164   -0.4475668    0.0343340
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.2295356   -0.3522876   -0.1067835
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.6752766   -1.0961962   -0.2543570
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3355917   -0.6830160    0.0118326
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.6241494   -0.9486961   -0.2996027
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.2386895   -0.5845521    0.1071730


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1061769   -0.2167133    0.0043595
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0084487   -0.0151361   -0.0017613
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2568479   -0.7839501    0.2702544
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1890036   -0.2507407   -0.1272664
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2258398   -0.4106066   -0.0410730
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0698056   -0.1096190   -0.0299922
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0214561   -0.0293638   -0.0135484
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3763158   -0.7001650   -0.0524665
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0837370   -0.1267558   -0.0407181
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0232102   -0.0387983   -0.0076221
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.4400001   -0.7254088   -0.1545914
