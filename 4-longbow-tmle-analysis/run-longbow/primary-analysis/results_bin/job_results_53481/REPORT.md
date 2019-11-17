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
![](/tmp/af75f365-09d0-4230-a5ba-efd3c95150a7/2740e0ea-c2a6-486c-81f9-38b40fb1de45/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/af75f365-09d0-4230-a5ba-efd3c95150a7/2740e0ea-c2a6-486c-81f9-38b40fb1de45/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/af75f365-09d0-4230-a5ba-efd3c95150a7/2740e0ea-c2a6-486c-81f9-38b40fb1de45/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/af75f365-09d0-4230-a5ba-efd3c95150a7/2740e0ea-c2a6-486c-81f9-38b40fb1de45/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.6857409   0.6381518   0.7333301
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.7521131   0.6773973   0.8268290
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.7411210   0.6665387   0.8157033
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.7834865   0.7049420   0.8620310
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.9087684   0.8652593   0.9522775
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.8253493   0.7591527   0.8915459
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.5272557   0.4991837   0.5553277
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.5569011   0.4697468   0.6440554
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.6145805   0.5728592   0.6563018
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.1644628   0.1462194   0.1827062
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.2602402   0.2285167   0.2919638
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.2319845   0.1873971   0.2765718
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7583037   0.6543767   0.8622306
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.9132143   0.8791206   0.9473080
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.8282561   0.7603351   0.8961770
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.3948059   0.3409023   0.4487095
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.4573219   0.3999137   0.5147302
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.4404994   0.3762520   0.5047468
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.2634780   0.1826296   0.3443264
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.4846121   0.4082830   0.5609412
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3876485   0.3044123   0.4708846
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.2987014   0.2714051   0.3259977
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3214423   0.2364377   0.4064468
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.3474584   0.3033112   0.3916056
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0965657   0.0835750   0.1095563
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1284448   0.1076023   0.1492873
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.1138390   0.0814473   0.1462308
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.2743822   0.1440983   0.4046661
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.4289081   0.3590291   0.4987871
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.2838553   0.1912942   0.3764165
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.4989882   0.4484602   0.5495162
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.6460631   0.5238846   0.7682415
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.5800966   0.5207037   0.6394895
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.7231338   0.6219387   0.8243289
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.8604241   0.7850590   0.9357892
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.7416767   0.6437221   0.8396313
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3705293   0.3379737   0.4030849
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.4007810   0.2927458   0.5088162
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4696832   0.4186589   0.5207074
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0751435   0.0615592   0.0887277
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1336451   0.1065600   0.1607301
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.1570495   0.1161614   0.1979377
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7024546   0.5803409   0.8245684
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.8893788   0.8458150   0.9329425
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.7882308   0.7092327   0.8672288


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


agecat        studyid                    country     intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.096789   1.0004037   1.202461
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.080759   0.9557034   1.222179
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.159903   1.0385478   1.295439
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.053432   0.9268924   1.197246
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.056226   0.8956735   1.245558
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.165621   1.0703866   1.269329
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.582365   1.3834065   1.809938
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.410559   1.1977117   1.661231
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.204286   1.0449367   1.387935
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.092249   0.9311972   1.281154
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.158346   0.9640841   1.391752
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.115737   0.9181131   1.355899
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.839289   1.3072422   2.587877
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.471275   1.0157383   2.131109
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.076132   0.8138174   1.422999
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.163230   0.9954184   1.359332
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.330129   1.1363835   1.556907
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.178877   0.9291748   1.495683
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.563177   0.9454481   2.584514
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.034525   0.5813872   1.840843
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.294746   1.0827519   1.548247
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.162546   0.9803834   1.378555
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.189855   1.0089949   1.403133
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.025642   0.8468300   1.242212
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.081645   0.8151285   1.435301
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.267601   1.1039856   1.455464
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.778532   1.4009580   2.257866
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          2.089996   1.6507780   2.646075
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.266101   1.0571867   1.516301
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.122109   0.9188793   1.370288


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0320099   -0.0029791   0.0669989
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0636313   -0.0008862   0.1281488
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0284727    0.0118658   0.0450796
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0034402    0.0010719   0.0058085
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1126641    0.0170884   0.2082397
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0317135   -0.0047397   0.0681666
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1269502    0.0552392   0.1986613
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0129643   -0.0037934   0.0297221
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0010654   -0.0004139   0.0025446
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.0906029   -0.0316431   0.2128490
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0451596    0.0098738   0.0804455
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0457738   -0.0348960   0.1264435
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0272403    0.0071597   0.0473208
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0027798    0.0007199   0.0048396
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1281905    0.0173710   0.2390100


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0445975   -0.0047640   0.0915340
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0751151   -0.0049024   0.1487609
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0512349    0.0207460   0.0807745
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0204892    0.0066692   0.0341168
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1293551    0.0116077   0.2330751
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0743541   -0.0164807   0.1570717
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3251564    0.1153104   0.4852274
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0415969   -0.0137320   0.0939059
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0109120   -0.0040263   0.0256281
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.2482373   -0.1739066   0.5185757
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0829915    0.0164857   0.1450001
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0595309   -0.0520079   0.1592439
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0684825    0.0165215   0.1176982
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0356730    0.0095482   0.0611087
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1543265    0.0084450   0.2787453
