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

**Outcome Variable:** stunted

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

agecat      studyid         country     fhtcm           stunted   n_cell       n
----------  --------------  ----------  -------------  --------  -------  ------
Birth       COHORTS         GUATEMALA   >=167 cm              0       26     206
Birth       COHORTS         GUATEMALA   >=167 cm              1        3     206
Birth       COHORTS         GUATEMALA   <162 cm               0      111     206
Birth       COHORTS         GUATEMALA   <162 cm               1       10     206
Birth       COHORTS         GUATEMALA   [162-167) cm          0       54     206
Birth       COHORTS         GUATEMALA   [162-167) cm          1        2     206
Birth       Keneba          GAMBIA      >=167 cm              0      735    1167
Birth       Keneba          GAMBIA      >=167 cm              1       37    1167
Birth       Keneba          GAMBIA      <162 cm               0       82    1167
Birth       Keneba          GAMBIA      <162 cm               1        5    1167
Birth       Keneba          GAMBIA      [162-167) cm          0      291    1167
Birth       Keneba          GAMBIA      [162-167) cm          1       17    1167
Birth       PROBIT          BELARUS     >=167 cm              0    11713   12535
Birth       PROBIT          BELARUS     >=167 cm              1       29   12535
Birth       PROBIT          BELARUS     <162 cm               0      168   12535
Birth       PROBIT          BELARUS     <162 cm               1        0   12535
Birth       PROBIT          BELARUS     [162-167) cm          0      621   12535
Birth       PROBIT          BELARUS     [162-167) cm          1        4   12535
Birth       SAS-CompFeed    INDIA       >=167 cm              0      253     746
Birth       SAS-CompFeed    INDIA       >=167 cm              1       90     746
Birth       SAS-CompFeed    INDIA       <162 cm               0      126     746
Birth       SAS-CompFeed    INDIA       <162 cm               1       64     746
Birth       SAS-CompFeed    INDIA       [162-167) cm          0      148     746
Birth       SAS-CompFeed    INDIA       [162-167) cm          1       65     746
6 months    COHORTS         GUATEMALA   >=167 cm              0       31     336
6 months    COHORTS         GUATEMALA   >=167 cm              1       14     336
6 months    COHORTS         GUATEMALA   <162 cm               0       88     336
6 months    COHORTS         GUATEMALA   <162 cm               1      109     336
6 months    COHORTS         GUATEMALA   [162-167) cm          0       61     336
6 months    COHORTS         GUATEMALA   [162-167) cm          1       33     336
6 months    Keneba          GAMBIA      >=167 cm              0      849    1511
6 months    Keneba          GAMBIA      >=167 cm              1      130    1511
6 months    Keneba          GAMBIA      <162 cm               0       98    1511
6 months    Keneba          GAMBIA      <162 cm               1       15    1511
6 months    Keneba          GAMBIA      [162-167) cm          0      355    1511
6 months    Keneba          GAMBIA      [162-167) cm          1       64    1511
6 months    PROBIT          BELARUS     >=167 cm              0    10763   11894
6 months    PROBIT          BELARUS     >=167 cm              1      383   11894
6 months    PROBIT          BELARUS     <162 cm               0      141   11894
6 months    PROBIT          BELARUS     <162 cm               1       15   11894
6 months    PROBIT          BELARUS     [162-167) cm          0      554   11894
6 months    PROBIT          BELARUS     [162-167) cm          1       38   11894
6 months    SAS-CompFeed    INDIA       >=167 cm              0      281     807
6 months    SAS-CompFeed    INDIA       >=167 cm              1       88     807
6 months    SAS-CompFeed    INDIA       <162 cm               0      129     807
6 months    SAS-CompFeed    INDIA       <162 cm               1       65     807
6 months    SAS-CompFeed    INDIA       [162-167) cm          0      168     807
6 months    SAS-CompFeed    INDIA       [162-167) cm          1       76     807
6 months    SAS-FoodSuppl   INDIA       >=167 cm              0       64     372
6 months    SAS-FoodSuppl   INDIA       >=167 cm              1       38     372
6 months    SAS-FoodSuppl   INDIA       <162 cm               0       72     372
6 months    SAS-FoodSuppl   INDIA       <162 cm               1       76     372
6 months    SAS-FoodSuppl   INDIA       [162-167) cm          0       77     372
6 months    SAS-FoodSuppl   INDIA       [162-167) cm          1       45     372
24 months   COHORTS         GUATEMALA   >=167 cm              0       24     526
24 months   COHORTS         GUATEMALA   >=167 cm              1       46     526
24 months   COHORTS         GUATEMALA   <162 cm               0       40     526
24 months   COHORTS         GUATEMALA   <162 cm               1      267     526
24 months   COHORTS         GUATEMALA   [162-167) cm          0       36     526
24 months   COHORTS         GUATEMALA   [162-167) cm          1      113     526
24 months   Keneba          GAMBIA      >=167 cm              0      565    1297
24 months   Keneba          GAMBIA      >=167 cm              1      256    1297
24 months   Keneba          GAMBIA      <162 cm               0       63    1297
24 months   Keneba          GAMBIA      <162 cm               1       34    1297
24 months   Keneba          GAMBIA      [162-167) cm          0      216    1297
24 months   Keneba          GAMBIA      [162-167) cm          1      163    1297
24 months   PROBIT          BELARUS     >=167 cm              0     3228    3670
24 months   PROBIT          BELARUS     >=167 cm              1      217    3670
24 months   PROBIT          BELARUS     <162 cm               0       42    3670
24 months   PROBIT          BELARUS     <162 cm               1       11    3670
24 months   PROBIT          BELARUS     [162-167) cm          0      150    3670
24 months   PROBIT          BELARUS     [162-167) cm          1       22    3670


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/2cfdafcc-ea7b-4e6f-ad19-996827568eeb/77de2d3c-7365-4ee8-8f22-c10326a0fffd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2cfdafcc-ea7b-4e6f-ad19-996827568eeb/77de2d3c-7365-4ee8-8f22-c10326a0fffd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2cfdafcc-ea7b-4e6f-ad19-996827568eeb/77de2d3c-7365-4ee8-8f22-c10326a0fffd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2cfdafcc-ea7b-4e6f-ad19-996827568eeb/77de2d3c-7365-4ee8-8f22-c10326a0fffd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       Keneba          GAMBIA      >=167 cm             NA                0.0479275   0.0328526   0.0630023
Birth       Keneba          GAMBIA      <162 cm              NA                0.0574713   0.0085444   0.1063981
Birth       Keneba          GAMBIA      [162-167) cm         NA                0.0551948   0.0296808   0.0807088
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                0.2819926   0.2362070   0.3277781
Birth       SAS-CompFeed    INDIA       <162 cm              NA                0.3133924   0.2620763   0.3647085
Birth       SAS-CompFeed    INDIA       [162-167) cm         NA                0.2946875   0.2307360   0.3586389
6 months    COHORTS         GUATEMALA   >=167 cm             NA                0.2844661   0.1429949   0.4259372
6 months    COHORTS         GUATEMALA   <162 cm              NA                0.5549368   0.4855230   0.6243506
6 months    COHORTS         GUATEMALA   [162-167) cm         NA                0.3521405   0.2542434   0.4500376
6 months    Keneba          GAMBIA      >=167 cm             NA                0.1347568   0.1134799   0.1560337
6 months    Keneba          GAMBIA      <162 cm              NA                0.1320866   0.0681847   0.1959884
6 months    Keneba          GAMBIA      [162-167) cm         NA                0.1479102   0.1135478   0.1822726
6 months    PROBIT          BELARUS     >=167 cm             NA                0.0345229   0.0257131   0.0433326
6 months    PROBIT          BELARUS     <162 cm              NA                0.0899885   0.0661897   0.1137874
6 months    PROBIT          BELARUS     [162-167) cm         NA                0.0598997   0.0324586   0.0873408
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.2627823   0.2290684   0.2964963
6 months    SAS-CompFeed    INDIA       <162 cm              NA                0.2963240   0.2327182   0.3599299
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                0.2977413   0.2311192   0.3643635
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3759563   0.2841463   0.4677663
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                0.5062983   0.4263519   0.5862447
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3810732   0.2959488   0.4661976
24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.6848399   0.5588091   0.8108707
24 months   COHORTS         GUATEMALA   <162 cm              NA                0.8657795   0.8268531   0.9047058
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.7727447   0.7054344   0.8400550
24 months   Keneba          GAMBIA      >=167 cm             NA                0.3147303   0.2826562   0.3468045
24 months   Keneba          GAMBIA      <162 cm              NA                0.3685809   0.2673943   0.4697676
24 months   Keneba          GAMBIA      [162-167) cm         NA                0.4403362   0.3900086   0.4906638
24 months   PROBIT          BELARUS     >=167 cm             NA                0.0632098   0.0345017   0.0919180
24 months   PROBIT          BELARUS     <162 cm              NA                0.1832185   0.0770455   0.2893914
24 months   PROBIT          BELARUS     [162-167) cm         NA                0.1281259   0.0483508   0.2079009


### Parameter: E(Y)


agecat      studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       Keneba          GAMBIA      NA                   NA                0.0505570   0.0379815   0.0631324
Birth       SAS-CompFeed    INDIA       NA                   NA                0.2935657   0.2562276   0.3309038
6 months    COHORTS         GUATEMALA   NA                   NA                0.4642857   0.4108803   0.5176911
6 months    Keneba          GAMBIA      NA                   NA                0.1383190   0.1209060   0.1557320
6 months    PROBIT          BELARUS     NA                   NA                0.0366571   0.0273774   0.0459369
6 months    SAS-CompFeed    INDIA       NA                   NA                0.2837670   0.2471555   0.3203786
6 months    SAS-FoodSuppl   INDIA       NA                   NA                0.4274194   0.3770801   0.4777586
24 months   COHORTS         GUATEMALA   NA                   NA                0.8098859   0.7763209   0.8434510
24 months   Keneba          GAMBIA      NA                   NA                0.3492675   0.3233122   0.3752228
24 months   PROBIT          BELARUS     NA                   NA                0.0681199   0.0392337   0.0970061


### Parameter: RR


agecat      studyid         country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  ----------  ---------
Birth       Keneba          GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       Keneba          GAMBIA      <162 cm              >=167 cm          1.1991302   0.4838515   2.971807
Birth       Keneba          GAMBIA      [162-167) cm         >=167 cm          1.1516322   0.6584043   2.014350
Birth       SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1113499   0.9154977   1.349101
Birth       SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.0450185   0.8189466   1.333498
6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          1.9508015   1.1677056   3.259063
6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.2379000   0.6994969   2.190712
6 months    Keneba          GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    Keneba          GAMBIA      <162 cm              >=167 cm          0.9801848   0.5892428   1.630503
6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          1.0976084   0.8291426   1.453000
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm          2.6066363   1.9315271   3.517710
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          1.7350740   1.1411906   2.638018
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1276407   0.9823334   1.294442
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1330341   0.8780562   1.462055
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.3466946   1.0099429   1.795732
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.0136104   0.7303168   1.406795
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          1.2642071   1.0466234   1.527024
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.1283582   0.9211923   1.382113
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm          1.1711007   0.8741366   1.568950
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          1.3990906   1.2021403   1.628308
24 months   PROBIT          BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   PROBIT          BELARUS     <162 cm              >=167 cm          2.8985745   1.7402837   4.827796
24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          2.0269922   0.9420871   4.361271


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       Keneba          GAMBIA      >=167 cm             NA                0.0026295   -0.0065753   0.0118343
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                0.0115731   -0.0130586   0.0362048
6 months    COHORTS         GUATEMALA   >=167 cm             NA                0.1798197    0.0462417   0.3133977
6 months    Keneba          GAMBIA      >=167 cm             NA                0.0035622   -0.0094470   0.0165714
6 months    PROBIT          BELARUS     >=167 cm             NA                0.0021343    0.0006263   0.0036422
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.0209847    0.0002999   0.0416695
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0514630   -0.0269532   0.1298793
24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1250460    0.0088252   0.2412669
24 months   Keneba          GAMBIA      >=167 cm             NA                0.0345372    0.0140962   0.0549783
24 months   PROBIT          BELARUS     >=167 cm             NA                0.0049100    0.0007182   0.0091018


### Parameter: PAF


agecat      studyid         country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       Keneba          GAMBIA      >=167 cm             NA                0.0520111   -0.1482148   0.2173215
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                0.0394226   -0.0487029   0.1201426
6 months    COHORTS         GUATEMALA   >=167 cm             NA                0.3873039    0.0179945   0.6177246
6 months    Keneba          GAMBIA      >=167 cm             NA                0.0257535   -0.0728941   0.1153310
6 months    PROBIT          BELARUS     >=167 cm             NA                0.0582230    0.0194654   0.0954486
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.0739505    0.0018212   0.1408676
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1204041   -0.0837093   0.2860733
24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1543996   -0.0033779   0.2873671
24 months   Keneba          GAMBIA      >=167 cm             NA                0.0988847    0.0383884   0.1555751
24 months   PROBIT          BELARUS     >=167 cm             NA                0.0720794    0.0042258   0.1353094
