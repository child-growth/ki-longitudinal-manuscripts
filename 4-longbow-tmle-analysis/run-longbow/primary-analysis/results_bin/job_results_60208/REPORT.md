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

agecat        studyid         country     fhtcm           ever_stunted   n_cell       n
------------  --------------  ----------  -------------  -------------  -------  ------
0-24 months   COHORTS         GUATEMALA   >=167 cm                   0       16     496
0-24 months   COHORTS         GUATEMALA   >=167 cm                   1       48     496
0-24 months   COHORTS         GUATEMALA   <162 cm                    0       24     496
0-24 months   COHORTS         GUATEMALA   <162 cm                    1      269     496
0-24 months   COHORTS         GUATEMALA   [162-167) cm               0       24     496
0-24 months   COHORTS         GUATEMALA   [162-167) cm               1      115     496
0-24 months   Keneba          GAMBIA      >=167 cm                   0      598    1929
0-24 months   Keneba          GAMBIA      >=167 cm                   1      647    1929
0-24 months   Keneba          GAMBIA      <162 cm                    0       52    1929
0-24 months   Keneba          GAMBIA      <162 cm                    1       80    1929
0-24 months   Keneba          GAMBIA      [162-167) cm               0      207    1929
0-24 months   Keneba          GAMBIA      [162-167) cm               1      345    1929
0-24 months   PROBIT          BELARUS     >=167 cm                   0    10314   12537
0-24 months   PROBIT          BELARUS     >=167 cm                   1     1430   12537
0-24 months   PROBIT          BELARUS     <162 cm                    0      122   12537
0-24 months   PROBIT          BELARUS     <162 cm                    1       46   12537
0-24 months   PROBIT          BELARUS     [162-167) cm               0      495   12537
0-24 months   PROBIT          BELARUS     [162-167) cm               1      130   12537
0-24 months   SAS-CompFeed    INDIA       >=167 cm                   0      137     907
0-24 months   SAS-CompFeed    INDIA       >=167 cm                   1      273     907
0-24 months   SAS-CompFeed    INDIA       <162 cm                    0       50     907
0-24 months   SAS-CompFeed    INDIA       <162 cm                    1      180     907
0-24 months   SAS-CompFeed    INDIA       [162-167) cm               0       69     907
0-24 months   SAS-CompFeed    INDIA       [162-167) cm               1      198     907
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   0       23     399
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   1       83     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                    0       15     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                    1      148     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               0       23     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               1      107     399
0-6 months    COHORTS         GUATEMALA   >=167 cm                   0       36     337
0-6 months    COHORTS         GUATEMALA   >=167 cm                   1       13     337
0-6 months    COHORTS         GUATEMALA   <162 cm                    0      112     337
0-6 months    COHORTS         GUATEMALA   <162 cm                    1       84     337
0-6 months    COHORTS         GUATEMALA   [162-167) cm               0       66     337
0-6 months    COHORTS         GUATEMALA   [162-167) cm               1       26     337
0-6 months    Keneba          GAMBIA      >=167 cm                   0      780    1723
0-6 months    Keneba          GAMBIA      >=167 cm                   1      333    1723
0-6 months    Keneba          GAMBIA      <162 cm                    0       84    1723
0-6 months    Keneba          GAMBIA      <162 cm                    1       40    1723
0-6 months    Keneba          GAMBIA      [162-167) cm               0      322    1723
0-6 months    Keneba          GAMBIA      [162-167) cm               1      164    1723
0-6 months    PROBIT          BELARUS     >=167 cm                   0    11014   12537
0-6 months    PROBIT          BELARUS     >=167 cm                   1      730   12537
0-6 months    PROBIT          BELARUS     <162 cm                    0      145   12537
0-6 months    PROBIT          BELARUS     <162 cm                    1       23   12537
0-6 months    PROBIT          BELARUS     [162-167) cm               0      560   12537
0-6 months    PROBIT          BELARUS     [162-167) cm               1       65   12537
0-6 months    SAS-CompFeed    INDIA       >=167 cm                   0      255     905
0-6 months    SAS-CompFeed    INDIA       >=167 cm                   1      155     905
0-6 months    SAS-CompFeed    INDIA       <162 cm                    0      117     905
0-6 months    SAS-CompFeed    INDIA       <162 cm                    1      112     905
0-6 months    SAS-CompFeed    INDIA       [162-167) cm               0      147     905
0-6 months    SAS-CompFeed    INDIA       [162-167) cm               1      119     905
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                   0       79     397
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                   1       27     397
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                    0       81     397
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                    1       81     397
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm               0       82     397
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm               1       47     397
6-24 months   COHORTS         GUATEMALA   >=167 cm                   0       16     372
6-24 months   COHORTS         GUATEMALA   >=167 cm                   1       35     372
6-24 months   COHORTS         GUATEMALA   <162 cm                    0       23     372
6-24 months   COHORTS         GUATEMALA   <162 cm                    1      185     372
6-24 months   COHORTS         GUATEMALA   [162-167) cm               0       24     372
6-24 months   COHORTS         GUATEMALA   [162-167) cm               1       89     372
6-24 months   Keneba          GAMBIA      >=167 cm                   0      561    1345
6-24 months   Keneba          GAMBIA      >=167 cm                   1      314    1345
6-24 months   Keneba          GAMBIA      <162 cm                    0       52    1345
6-24 months   Keneba          GAMBIA      <162 cm                    1       40    1345
6-24 months   Keneba          GAMBIA      [162-167) cm               0      197    1345
6-24 months   Keneba          GAMBIA      [162-167) cm               1      181    1345
6-24 months   PROBIT          BELARUS     >=167 cm                   0    10308   11712
6-24 months   PROBIT          BELARUS     >=167 cm                   1      700   11712
6-24 months   PROBIT          BELARUS     <162 cm                    0      122   11712
6-24 months   PROBIT          BELARUS     <162 cm                    1       23   11712
6-24 months   PROBIT          BELARUS     [162-167) cm               0      494   11712
6-24 months   PROBIT          BELARUS     [162-167) cm               1       65   11712
6-24 months   SAS-CompFeed    INDIA       >=167 cm                   0      126     487
6-24 months   SAS-CompFeed    INDIA       >=167 cm                   1      118     487
6-24 months   SAS-CompFeed    INDIA       <162 cm                    0       37     487
6-24 months   SAS-CompFeed    INDIA       <162 cm                    1       68     487
6-24 months   SAS-CompFeed    INDIA       [162-167) cm               0       59     487
6-24 months   SAS-CompFeed    INDIA       [162-167) cm               1       79     487
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   0       22     238
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   1       56     238
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                    0       12     238
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                    1       67     238
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               0       21     238
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               1       60     238


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA



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
![](/tmp/defb35f5-33bd-41dd-a715-959ed2c84aee/2f10f748-0527-45ad-9ec0-ae4e2481b6bf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/defb35f5-33bd-41dd-a715-959ed2c84aee/2f10f748-0527-45ad-9ec0-ae4e2481b6bf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/defb35f5-33bd-41dd-a715-959ed2c84aee/2f10f748-0527-45ad-9ec0-ae4e2481b6bf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/defb35f5-33bd-41dd-a715-959ed2c84aee/2f10f748-0527-45ad-9ec0-ae4e2481b6bf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.7694939   0.6655547   0.8734330
0-24 months   COHORTS         GUATEMALA   <162 cm              NA                0.9135652   0.8802943   0.9468362
0-24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.8289385   0.7624700   0.8954069
0-24 months   Keneba          GAMBIA      >=167 cm             NA                0.5269127   0.4987828   0.5550427
0-24 months   Keneba          GAMBIA      <162 cm              NA                0.5839342   0.4990263   0.6688420
0-24 months   Keneba          GAMBIA      [162-167) cm         NA                0.6129661   0.5712401   0.6546920
0-24 months   PROBIT          BELARUS     >=167 cm             NA                0.1240926   0.1087904   0.1393948
0-24 months   PROBIT          BELARUS     <162 cm              NA                0.1802822   0.1476224   0.2129420
0-24 months   PROBIT          BELARUS     [162-167) cm         NA                0.1744275   0.1273464   0.2215085
0-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.6855886   0.6382807   0.7328966
0-24 months   SAS-CompFeed    INDIA       <162 cm              NA                0.7505702   0.6757926   0.8253478
0-24 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.7406719   0.6659023   0.8154414
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.7914721   0.7123517   0.8705926
0-24 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.9086888   0.8650036   0.9523741
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.8278331   0.7616090   0.8940573
0-6 months    COHORTS         GUATEMALA   >=167 cm             NA                0.2856344   0.1581971   0.4130718
0-6 months    COHORTS         GUATEMALA   <162 cm              NA                0.4292342   0.3597325   0.4987359
0-6 months    COHORTS         GUATEMALA   [162-167) cm         NA                0.2902534   0.1973249   0.3831818
0-6 months    Keneba          GAMBIA      >=167 cm             NA                0.2984817   0.2711748   0.3257886
0-6 months    Keneba          GAMBIA      <162 cm              NA                0.3122354   0.2265190   0.3979517
0-6 months    Keneba          GAMBIA      [162-167) cm         NA                0.3440740   0.3004692   0.3876788
0-6 months    PROBIT          BELARUS     >=167 cm             NA                0.0634510   0.0524404   0.0744617
0-6 months    PROBIT          BELARUS     <162 cm              NA                0.1236160   0.1054545   0.1417775
0-6 months    PROBIT          BELARUS     [162-167) cm         NA                0.0883857   0.0629102   0.1138611
0-6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.4055241   0.3473816   0.4636666
0-6 months    SAS-CompFeed    INDIA       <162 cm              NA                0.4533901   0.4010173   0.5057630
0-6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                0.4349737   0.3758340   0.4941134
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.2636240   0.1818001   0.3454479
0-6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                0.4804130   0.4039920   0.5568341
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3736184   0.2902346   0.4570022
6-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.6803842   0.5555318   0.8052367
6-24 months   COHORTS         GUATEMALA   <162 cm              NA                0.8874929   0.8428222   0.9321636
6-24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.7873514   0.7064815   0.8682213
6-24 months   Keneba          GAMBIA      >=167 cm             NA                0.3687979   0.3362496   0.4013462
6-24 months   Keneba          GAMBIA      <162 cm              NA                0.4156221   0.3093533   0.5218909
6-24 months   Keneba          GAMBIA      [162-167) cm         NA                0.4540809   0.4041874   0.5039744
6-24 months   PROBIT          BELARUS     >=167 cm             NA                0.0646533   0.0530253   0.0762813
6-24 months   PROBIT          BELARUS     <162 cm              NA                0.0987215   0.0671583   0.1302847
6-24 months   PROBIT          BELARUS     [162-167) cm         NA                0.1067946   0.0717557   0.1418336
6-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.4989882   0.4484602   0.5495162
6-24 months   SAS-CompFeed    INDIA       <162 cm              NA                0.6460631   0.5238846   0.7682415
6-24 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.5800966   0.5207037   0.6394895
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.7272917   0.6241620   0.8304215
6-24 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.8539152   0.7773163   0.9305141
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.7393223   0.6408728   0.8377719


### Parameter: E(Y)


agecat        studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA   NA                   NA                0.8709677   0.8414356   0.9004999
0-24 months   Keneba          GAMBIA      NA                   NA                0.5557284   0.5335489   0.5779078
0-24 months   PROBIT          BELARUS     NA                   NA                0.1281008   0.1120747   0.1441270
0-24 months   SAS-CompFeed    INDIA       NA                   NA                0.7177508   0.6751525   0.7603491
0-24 months   SAS-FoodSuppl   INDIA       NA                   NA                0.8471178   0.8117623   0.8824733
0-6 months    COHORTS         GUATEMALA   NA                   NA                0.3649852   0.3135088   0.4164615
0-6 months    Keneba          GAMBIA      NA                   NA                0.3116657   0.2897893   0.3335421
0-6 months    PROBIT          BELARUS     NA                   NA                0.0652469   0.0543989   0.0760949
0-6 months    SAS-CompFeed    INDIA       NA                   NA                0.4265193   0.3923837   0.4606550
0-6 months    SAS-FoodSuppl   INDIA       NA                   NA                0.3904282   0.3423793   0.4384771
6-24 months   COHORTS         GUATEMALA   NA                   NA                0.8306452   0.7924799   0.8688104
6-24 months   Keneba          GAMBIA      NA                   NA                0.3977695   0.3716030   0.4239360
6-24 months   PROBIT          BELARUS     NA                   NA                0.0672814   0.0549972   0.0795656
6-24 months   SAS-CompFeed    INDIA       NA                   NA                0.5441478   0.5023342   0.5859615
6-24 months   SAS-FoodSuppl   INDIA       NA                   NA                0.7689076   0.7152410   0.8225741


### Parameter: RR


agecat        studyid         country     intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------------  ----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          1.187229   1.0324006   1.365276
0-24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.077252   0.9210037   1.260007
0-24 months   Keneba          GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   Keneba          GAMBIA      <162 cm              >=167 cm          1.108218   0.9495870   1.293349
0-24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          1.163316   1.0680301   1.267103
0-24 months   PROBIT          BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   PROBIT          BELARUS     <162 cm              >=167 cm          1.452804   1.2023182   1.755475
0-24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          1.405624   1.1105706   1.779066
0-24 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.094782   0.9982849   1.200607
0-24 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.080344   0.9553606   1.221679
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.148100   1.0280386   1.282182
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.045941   0.9206334   1.188304
0-6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          1.502740   0.9335987   2.418842
0-6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.016171   0.5872596   1.758342
0-6 months    Keneba          GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    Keneba          GAMBIA      <162 cm              >=167 cm          1.046079   0.7834444   1.396756
0-6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          1.152747   0.9867082   1.346727
0-6 months    PROBIT          BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    PROBIT          BELARUS     <162 cm              >=167 cm          1.948210   1.5568269   2.437986
0-6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          1.392974   1.0616936   1.827624
0-6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.118035   0.9361099   1.335316
0-6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.072621   0.8831436   1.302750
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.822342   1.2905123   2.573342
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.417240   0.9707266   2.069139
6-24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          1.304400   1.0783052   1.577900
6-24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.157216   0.9383911   1.427069
6-24 months   Keneba          GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   Keneba          GAMBIA      <162 cm              >=167 cm          1.126964   0.8604719   1.475991
6-24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          1.231246   1.0710805   1.415362
6-24 months   PROBIT          BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   PROBIT          BELARUS     <162 cm              >=167 cm          1.526937   1.1389438   2.047105
6-24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          1.651805   1.2356171   2.208176
6-24 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.294746   1.0827519   1.548247
6-24 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.162546   0.9803834   1.378555
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.174103   0.9926634   1.388706
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.016542   0.8372851   1.234176


### Parameter: PAR


agecat        studyid         country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1014739    0.0062655   0.1966823
0-24 months   Keneba          GAMBIA      >=167 cm             NA                0.0288156    0.0121539   0.0454773
0-24 months   PROBIT          BELARUS     >=167 cm             NA                0.0040082    0.0016909   0.0063256
0-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.0321622   -0.0027182   0.0670425
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0556457   -0.0093174   0.1206088
0-6 months    COHORTS         GUATEMALA   >=167 cm             NA                0.0793507   -0.0403191   0.1990206
0-6 months    Keneba          GAMBIA      >=167 cm             NA                0.0131840   -0.0035226   0.0298906
0-6 months    PROBIT          BELARUS     >=167 cm             NA                0.0017958    0.0002089   0.0033828
0-6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.0209952   -0.0170810   0.0590714
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1268042    0.0542750   0.1993335
6-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1502609    0.0362608   0.2642611
6-24 months   Keneba          GAMBIA      >=167 cm             NA                0.0289717    0.0088707   0.0490726
6-24 months   PROBIT          BELARUS     >=167 cm             NA                0.0026281    0.0008517   0.0044046
6-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.0451596    0.0098738   0.0804455
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0416158   -0.0411231   0.1243547


### Parameter: PAF


agecat        studyid         country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1165070   -0.0006243   0.2199272
0-24 months   Keneba          GAMBIA      >=167 cm             NA                0.0518520    0.0212549   0.0814925
0-24 months   PROBIT          BELARUS     >=167 cm             NA                0.0312897    0.0141369   0.0481442
0-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.0448097   -0.0043700   0.0915812
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0656882   -0.0147972   0.1397903
0-6 months    COHORTS         GUATEMALA   >=167 cm             NA                0.2174081   -0.1892544   0.4850134
0-6 months    Keneba          GAMBIA      >=167 cm             NA                0.0423017   -0.0128664   0.0944649
0-6 months    PROBIT          BELARUS     >=167 cm             NA                0.0275235    0.0023181   0.0520921
0-6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.0492245   -0.0457341   0.1355603
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3247824    0.1118845   0.4866447
6-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1808966    0.0299124   0.3083818
6-24 months   Keneba          GAMBIA      >=167 cm             NA                0.0728353    0.0208000   0.1221054
6-24 months   PROBIT          BELARUS     >=167 cm             NA                0.0390617    0.0145602   0.0629540
6-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.0829915    0.0164857   0.1450001
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0541233   -0.0603492   0.1562377
