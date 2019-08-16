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

**Outcome Variable:** whz

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
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm            46      90
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm             20      90
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        24      90
Birth       ki1101329-Keneba           GAMBIA      >=167 cm           710    1079
Birth       ki1101329-Keneba           GAMBIA      <162 cm             81    1079
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm       288    1079
Birth       ki1119695-PROBIT           BELARUS     >=167 cm         11684   12474
Birth       ki1119695-PROBIT           BELARUS     <162 cm            168   12474
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm       622   12474
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm            26     192
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm            112     192
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm        54     192
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           370     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            193     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       244     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm           102     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            148     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm       121     371
6 months    ki1101329-Keneba           GAMBIA      >=167 cm           979    1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm            113    1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm       418    1510
6 months    ki1119695-PROBIT           BELARUS     >=167 cm         11143   11892
6 months    ki1119695-PROBIT           BELARUS     <162 cm            156   11892
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm       593   11892
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            44     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm            198     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        94     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm           823    1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm             96    1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       379    1298
24 months   ki1119695-PROBIT           BELARUS     >=167 cm          3387    3609
24 months   ki1119695-PROBIT           BELARUS     <162 cm             52    3609
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm       170    3609
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            72     532
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            311     532
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       149     532


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
![](/tmp/2f8981fd-7a97-4758-999b-3221e882f288/64ff11ae-899a-4efd-a6ae-61e17c7ff947/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2f8981fd-7a97-4758-999b-3221e882f288/64ff11ae-899a-4efd-a6ae-61e17c7ff947/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2f8981fd-7a97-4758-999b-3221e882f288/64ff11ae-899a-4efd-a6ae-61e17c7ff947/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1145847   -0.4775432    0.2483737
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.3161775   -1.0310714    0.3987165
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0862460   -0.6785350    0.5060430
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                 1.6346272    1.5160912    1.7531633
Birth       ki1101329-Keneba           GAMBIA      <162 cm              NA                 1.9576644    1.5696803    2.3456484
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         NA                 1.7880547    1.6153166    1.9607928
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -1.1339549   -1.3451852   -0.9227246
Birth       ki1119695-PROBIT           BELARUS     <162 cm              NA                -1.1055252   -1.1916616   -1.0193887
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -1.1766984   -1.4039340   -0.9494629
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2606156   -0.8328706    0.3116394
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.5240821   -0.8391249   -0.2090393
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.7515102   -1.1279593   -0.3750611
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.5530680   -0.7475827   -0.3585533
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.7584375   -0.9773442   -0.5395308
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7331331   -0.8416653   -0.6246009
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8636346   -1.0673831   -0.6598861
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2373705   -1.4197039   -1.0550370
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8390757   -1.0581835   -0.6199679
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2661167   -0.3399065   -0.1923270
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.2339797   -0.4973188    0.0293594
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.1861722   -0.2941698   -0.0781746
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.5808940    0.5217496    0.6400384
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6330219    0.5737214    0.6923225
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.4855579    0.3870128    0.5841029
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0863501   -0.2643829    0.4370831
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                 0.1190760   -0.0442482    0.2824002
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                 0.0764830   -0.1721543    0.3251203
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8078377   -0.8778791   -0.7377963
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.9063853   -1.1717826   -0.6409881
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.7991258   -0.8919797   -0.7062720
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.6839186    0.5717139    0.7961232
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6108778    0.0745022    1.1472535
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.5407108    0.2681974    0.8132241
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2052062   -0.4211857    0.0107732
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3077462   -0.4148489   -0.2006435
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.3144701   -0.4541707   -0.1747695


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.1156667   -0.4507658    0.2194325
Birth       ki1101329-Keneba           GAMBIA      NA                   NA                 1.7064875    1.6129215    1.8000534
Birth       ki1119695-PROBIT           BELARUS     NA                   NA                -1.1390957   -1.3485249   -0.9296665
Birth       ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.5450521   -0.7653906   -0.3247135
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.6502726   -0.7957520   -0.5047932
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.9997844   -1.1172238   -0.8823449
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.2272250   -0.2854487   -0.1690012
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.5791961    0.5216790    0.6367132
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                 0.0909226   -0.0348636    0.2167089
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                -0.7963776   -0.8498028   -0.7429525
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                 0.6773192    0.5626171    0.7920213
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.3002632   -0.3780672   -0.2224591


### Parameter: ATE


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2015927   -0.9535646    0.5503792
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0283387   -0.6579085    0.7145860
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.3230372   -0.0824770    0.7285513
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.1534275   -0.0561047    0.3629597
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0284297   -0.1355720    0.1924315
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0427435   -0.1829931    0.0975061
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.2634665   -0.9219437    0.3950107
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.4908947   -1.1737629    0.1919736
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2053695   -0.3855721   -0.0251669
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1800651   -0.3371105   -0.0230196
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3737359   -0.6472171   -0.1002546
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0245589   -0.2760838    0.3252016
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0321371   -0.2414798    0.3057539
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0799445   -0.0507552    0.2106442
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0521279   -0.0203320    0.1245878
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0953361   -0.1902607   -0.0004116
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0327259   -0.3549420    0.4203938
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0098671   -0.4396709    0.4199368
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0985476   -0.3732956    0.1762004
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0087119   -0.1079386    0.1253624
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0730408   -0.5650907    0.4190092
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.1432078   -0.3944942    0.1080786
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1025400   -0.3436322    0.1385522
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1092638   -0.3665896    0.1480619


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0010819   -0.3114889    0.3093251
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0718603    0.0021501    0.1415705
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0051408   -0.0123893    0.0021077
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2844365   -0.8264245    0.2575515
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0972046   -0.1693575   -0.0250516
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1361498   -0.3182677    0.0459682
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0388918   -0.0068015    0.0845850
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0016979   -0.0070015    0.0036057
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0045725   -0.3268533    0.3359984
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0114601   -0.0313056    0.0542258
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0065994   -0.0176521    0.0044533
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0950569   -0.3027055    0.1125917
