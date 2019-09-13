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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country     fhtcm           ever_stunted   n_cell       n
------------  -------------------------  ----------  -------------  -------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   0      137     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   1      273     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    0       50     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    1      180     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               0       69     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               1      198     907
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   0       23     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   1       83     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    0       15     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    1      148     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               0       23     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               1      107     399
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   0      598    1929
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   1      647    1929
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    0       52    1929
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    1       80    1929
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               0      207    1929
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               1      345    1929
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   0     9839   12537
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   1     1905   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    0      119   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    1       49   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               0      474   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               1      151   12537
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   0       16     496
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   1       48     496
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    0       24     496
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    1      269     496
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               0       24     496
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               1      115     496
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   0      255     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   1      155     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                    0      117     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                    1      112     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               0      147     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               1      119     905
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   0       79     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   1       27     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    0       81     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    1       81     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               0       82     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               1       47     397
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                   0      780    1723
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                   1      333    1723
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                    0       84    1723
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                    1       40    1723
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm               0      322    1723
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm               1      164    1723
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                   0    10624   12537
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                   1     1120   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                    0      136   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                    1       32   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm               0      553   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm               1       72   12537
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                   0       36     337
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                   1       13     337
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                    0      112     337
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                    1       84     337
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm               0       66     337
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm               1       26     337
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   0      126     487
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   1      118     487
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    0       37     487
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    1       68     487
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               0       59     487
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               1       79     487
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   0       22     238
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   1       56     238
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    0       12     238
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    1       67     238
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               0       21     238
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               1       60     238
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   0      561    1345
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   1      314    1345
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    0       52    1345
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    1       40    1345
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               0      197    1345
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               1      181    1345
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   0     9833   11306
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   1      785   11306
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    0      119   11306
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    1       17   11306
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               0      473   11306
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               1       79   11306
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   0       16     372
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   1       35     372
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    0       23     372
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    1      185     372
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               0       24     372
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               1       89     372


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/5619e201-59ae-469d-bcec-dbc9dbe602cb/c929e9a0-2eb5-48f7-bbbd-4df22173477d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5619e201-59ae-469d-bcec-dbc9dbe602cb/c929e9a0-2eb5-48f7-bbbd-4df22173477d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5619e201-59ae-469d-bcec-dbc9dbe602cb/c929e9a0-2eb5-48f7-bbbd-4df22173477d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5619e201-59ae-469d-bcec-dbc9dbe602cb/c929e9a0-2eb5-48f7-bbbd-4df22173477d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.6855654   0.6368377   0.7342931
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.7574565   0.6840593   0.8308537
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.7382486   0.6652182   0.8112791
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.7862094   0.7074339   0.8649848
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.9056028   0.8620145   0.9491911
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.8266917   0.7602269   0.8931565
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.5261275   0.4981040   0.5541510
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.5748043   0.4887047   0.6609039
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.6143614   0.5726453   0.6560775
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.1649051   0.1466133   0.1831969
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.2565591   0.2274999   0.2856183
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.2321391   0.1892080   0.2750703
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7386470   0.6329531   0.8443408
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.9147571   0.8808232   0.9486909
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.8287499   0.7607936   0.8967062
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.3954678   0.3423726   0.4485630
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.4620344   0.4045899   0.5194790
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.4387289   0.3747820   0.5026759
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.2727238   0.1909968   0.3544509
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.4921561   0.4159350   0.5683773
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3839662   0.3015811   0.4663514
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.2984267   0.2711035   0.3257499
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3221267   0.2365670   0.4076863
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.3463641   0.3020269   0.3907014
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0966782   0.0836510   0.1097055
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1365984   0.1124359   0.1607610
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.1106102   0.0789395   0.1422808
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.2836989   0.1536468   0.4137510
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.4271675   0.3576419   0.4966931
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.2765943   0.1841788   0.3690097
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.4989882   0.4484602   0.5495162
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.6460631   0.5238846   0.7682415
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.5800966   0.5207037   0.6394895
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.7175603   0.6153147   0.8198058
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.8548585   0.7780706   0.9316464
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.7429104   0.6436770   0.8421439
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3684894   0.3359348   0.4010441
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.4247250   0.3188046   0.5306455
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4611058   0.4099595   0.5122520
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0751327   0.0615495   0.0887159
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1379069   0.1098315   0.1659824
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.1584593   0.1168640   0.2000545
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7146020   0.5895341   0.8396699
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.8873753   0.8437927   0.9309579
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.7886573   0.7102869   0.8670277


### Parameter: E(Y)


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.7177508   0.6751525   0.7603491
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.8471178   0.8117623   0.8824733
0-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.5557284   0.5335489   0.5779078
0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.1679030   0.1492221   0.1865839
0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.8709677   0.8414356   0.9004999
0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.4265193   0.3923837   0.4606550
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.3904282   0.3423793   0.4384771
0-6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.3116657   0.2897893   0.3335421
0-6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0976310   0.0843265   0.1109356
0-6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.3649852   0.3135088   0.4164615
6-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.5441478   0.5023342   0.5859615
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.7689076   0.7152410   0.8225741
6-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3977695   0.3716030   0.4239360
6-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0779232   0.0640302   0.0918162
6-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.8306452   0.7924799   0.8688104


### Parameter: RR


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1048640   1.0086888   1.210209
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.0768464   0.9519697   1.218104
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.1518596   1.0311547   1.286694
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.0514906   0.9251783   1.195048
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.0925189   0.9323679   1.280179
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.1677044   1.0722746   1.271627
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.5557983   1.3625179   1.776497
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.4077134   1.2027888   1.647552
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.2384226   1.0683741   1.435537
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.1219837   0.9515902   1.322888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1683238   0.9695360   1.407870
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1093923   0.9141404   1.346348
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.8045953   1.2921316   2.520304
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.4078939   0.9780512   2.026648
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.0794163   0.8153513   1.429003
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.1606337   0.9923856   1.357406
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.4129181   1.1987332   1.665373
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.1441059   0.9036515   1.448543
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.5057073   0.9250737   2.450782
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          0.9749571   0.5525979   1.720132
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.2947461   1.0827519   1.548247
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1625456   0.9803834   1.378555
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.1913403   1.0063965   1.410271
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.0353283   0.8510209   1.259551
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.1526112   0.8852424   1.500733
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.2513405   1.0875639   1.439780
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.8355116   1.4494962   2.324327
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          2.1090585   1.6631705   2.674487
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.2417756   1.0356858   1.488875
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.1036315   0.9030858   1.348712


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0321854   -0.0035581   0.0679290
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0609084   -0.0037274   0.1255443
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0296008    0.0130311   0.0461706
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0029979    0.0006219   0.0053739
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1323208    0.0351210   0.2295205
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0310515   -0.0062271   0.0683302
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1177044    0.0452578   0.1901510
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0132390   -0.0035360   0.0300140
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0009528   -0.0005191   0.0024246
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.0812862   -0.0408317   0.2034042
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0451596    0.0098738   0.0804455
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0513473   -0.0306268   0.1333214
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0292801    0.0091255   0.0494347
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0027905    0.0007405   0.0048405
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1160432    0.0024327   0.2296537


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0448421   -0.0056892   0.0928344
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0719008   -0.0082406   0.1456721
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0532649    0.0228401   0.0827425
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0178549    0.0039180   0.0315968
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1519239    0.0316450   0.2572630
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0728022   -0.0197261   0.1569346
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3014751    0.0902040   0.4636852
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0424781   -0.0129168   0.0948436
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0097588   -0.0051631   0.0244592
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.2227111   -0.1952036   0.4944978
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0829915    0.0164857   0.1450001
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0667795   -0.0467800   0.1680196
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0736107    0.0214368   0.1230029
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0358112    0.0098175   0.0611225
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1397025   -0.0098249   0.2670889
