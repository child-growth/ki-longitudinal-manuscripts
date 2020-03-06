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
6 months    COHORTS         GUATEMALA   >=167 cm            44     336
6 months    COHORTS         GUATEMALA   <162 cm            198     336
6 months    COHORTS         GUATEMALA   [162-167) cm        94     336
6 months    Keneba          GAMBIA      >=167 cm           979    1510
6 months    Keneba          GAMBIA      <162 cm            113    1510
6 months    Keneba          GAMBIA      [162-167) cm       418    1510
6 months    PROBIT          BELARUS     >=167 cm         11142   11891
6 months    PROBIT          BELARUS     <162 cm            156   11891
6 months    PROBIT          BELARUS     [162-167) cm       593   11891
6 months    SAS-CompFeed    INDIA       >=167 cm           370     807
6 months    SAS-CompFeed    INDIA       <162 cm            193     807
6 months    SAS-CompFeed    INDIA       [162-167) cm       244     807
6 months    SAS-FoodSuppl   INDIA       >=167 cm           102     371
6 months    SAS-FoodSuppl   INDIA       <162 cm            148     371
6 months    SAS-FoodSuppl   INDIA       [162-167) cm       121     371
24 months   COHORTS         GUATEMALA   >=167 cm            72     532
24 months   COHORTS         GUATEMALA   <162 cm            311     532
24 months   COHORTS         GUATEMALA   [162-167) cm       149     532
24 months   Keneba          GAMBIA      >=167 cm           823    1298
24 months   Keneba          GAMBIA      <162 cm             96    1298
24 months   Keneba          GAMBIA      [162-167) cm       379    1298
24 months   PROBIT          BELARUS     >=167 cm          3386    3608
24 months   PROBIT          BELARUS     <162 cm             52    3608
24 months   PROBIT          BELARUS     [162-167) cm       170    3608


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
![](/tmp/7eb604b1-753b-4cbe-8306-c3d9814ed59e/a3edccec-686a-4b38-b1ac-7dea18ce9ed5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7eb604b1-753b-4cbe-8306-c3d9814ed59e/a3edccec-686a-4b38-b1ac-7dea18ce9ed5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7eb604b1-753b-4cbe-8306-c3d9814ed59e/a3edccec-686a-4b38-b1ac-7dea18ce9ed5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS         GUATEMALA   >=167 cm             NA                 0.0394666   -0.3305946    0.4095279
6 months    COHORTS         GUATEMALA   <162 cm              NA                 0.1231442   -0.0405552    0.2868435
6 months    COHORTS         GUATEMALA   [162-167) cm         NA                 0.0798637   -0.1860445    0.3457720
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.2836687   -0.3557470   -0.2115903
6 months    Keneba          GAMBIA      <162 cm              NA                -0.1183192   -0.4051415    0.1685032
6 months    Keneba          GAMBIA      [162-167) cm         NA                -0.1574872   -0.2622513   -0.0527230
6 months    PROBIT          BELARUS     >=167 cm             NA                 0.5739590    0.5144131    0.6335049
6 months    PROBIT          BELARUS     <162 cm              NA                 0.6248801    0.5589608    0.6907994
6 months    PROBIT          BELARUS     [162-167) cm         NA                 0.5566068    0.4556047    0.6576090
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.5445067   -0.7318480   -0.3571654
6 months    SAS-CompFeed    INDIA       <162 cm              NA                -0.7546178   -0.9787975   -0.5304381
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7269582   -0.8475708   -0.6063456
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8439512   -1.0474233   -0.6404791
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2219150   -1.4046721   -1.0391579
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8200517   -1.0407990   -0.5993044
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.2430922   -0.4563039   -0.0298806
24 months   COHORTS         GUATEMALA   <162 cm              NA                -0.3188642   -0.4243732   -0.2133552
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                -0.2806701   -0.4399684   -0.1213718
24 months   Keneba          GAMBIA      >=167 cm             NA                -0.8216348   -0.8890853   -0.7541843
24 months   Keneba          GAMBIA      <162 cm              NA                -0.7898350   -1.0685509   -0.5111192
24 months   Keneba          GAMBIA      [162-167) cm         NA                -0.7508017   -0.8469279   -0.6546755
24 months   PROBIT          BELARUS     >=167 cm             NA                 0.6948245    0.5809613    0.8086877
24 months   PROBIT          BELARUS     <162 cm              NA                 0.5727487    0.1637063    0.9817911
24 months   PROBIT          BELARUS     [162-167) cm         NA                 0.5457974    0.2567240    0.8348709


### Parameter: E(Y)


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS         GUATEMALA   NA                   NA                 0.0909226   -0.0348636    0.2167089
6 months    Keneba          GAMBIA      NA                   NA                -0.2272039   -0.2854286   -0.1689793
6 months    PROBIT          BELARUS     NA                   NA                 0.5737221    0.5157281    0.6317162
6 months    SAS-CompFeed    INDIA       NA                   NA                -0.6502726   -0.7957520   -0.5047932
6 months    SAS-FoodSuppl   INDIA       NA                   NA                -0.9997844   -1.1172238   -0.8823449
24 months   COHORTS         GUATEMALA   NA                   NA                -0.3002632   -0.3780672   -0.2224591
24 months   Keneba          GAMBIA      NA                   NA                -0.7963776   -0.8498028   -0.7429525
24 months   PROBIT          BELARUS     NA                   NA                 0.6878917    0.5705107    0.8052728


### Parameter: ATE


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0836776   -0.3220977    0.4894528
6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0403971   -0.4167736    0.4975678
6 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba          GAMBIA      <162 cm              >=167 cm           0.1653495   -0.1301086    0.4608076
6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm           0.1261815   -0.0000905    0.2524535
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm           0.0509211   -0.0274881    0.1293304
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0173522   -0.1141837    0.0794794
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2101111   -0.3823286   -0.0378936
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1824514   -0.3298751   -0.0350277
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3779638   -0.6516561   -0.1042714
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0238995   -0.2768668    0.3246658
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0757719   -0.3144796    0.1629357
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0375779   -0.3047065    0.2295508
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm           0.0317998   -0.2544935    0.3180930
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0708331   -0.0454176    0.1870838
24 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS     <162 cm              >=167 cm          -0.1220758   -0.4933407    0.2491891
24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.1490271   -0.4203279    0.1222738


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS         GUATEMALA   >=167 cm             NA                 0.0514560   -0.2970128    0.3999248
6 months    Keneba          GAMBIA      >=167 cm             NA                 0.0564647    0.0130647    0.0998648
6 months    PROBIT          BELARUS     >=167 cm             NA                -0.0002369   -0.0052310    0.0047573
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.1057659   -0.1720600   -0.0394718
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1558331   -0.3372624    0.0255961
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0571709   -0.2622734    0.1479316
24 months   Keneba          GAMBIA      >=167 cm             NA                 0.0252572   -0.0146221    0.0651365
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.0069328   -0.0207996    0.0069341
