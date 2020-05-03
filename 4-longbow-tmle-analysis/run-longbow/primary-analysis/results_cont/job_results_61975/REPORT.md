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

agecat      studyid         country     fhtcm           n_cell       n  outcome_variable 
----------  --------------  ----------  -------------  -------  ------  -----------------
Birth       COHORTS         GUATEMALA   >=167 cm            26     192  whz              
Birth       COHORTS         GUATEMALA   <162 cm            112     192  whz              
Birth       COHORTS         GUATEMALA   [162-167) cm        54     192  whz              
Birth       Keneba          GAMBIA      >=167 cm           733    1114  whz              
Birth       Keneba          GAMBIA      <162 cm             83    1114  whz              
Birth       Keneba          GAMBIA      [162-167) cm       298    1114  whz              
Birth       PROBIT          BELARUS     >=167 cm         11672   12461  whz              
Birth       PROBIT          BELARUS     <162 cm            168   12461  whz              
Birth       PROBIT          BELARUS     [162-167) cm       621   12461  whz              
Birth       SAS-CompFeed    INDIA       >=167 cm           312     657  whz              
Birth       SAS-CompFeed    INDIA       <162 cm            159     657  whz              
Birth       SAS-CompFeed    INDIA       [162-167) cm       186     657  whz              
6 months    COHORTS         GUATEMALA   >=167 cm            44     336  whz              
6 months    COHORTS         GUATEMALA   <162 cm            198     336  whz              
6 months    COHORTS         GUATEMALA   [162-167) cm        94     336  whz              
6 months    Keneba          GAMBIA      >=167 cm           979    1510  whz              
6 months    Keneba          GAMBIA      <162 cm            113    1510  whz              
6 months    Keneba          GAMBIA      [162-167) cm       418    1510  whz              
6 months    PROBIT          BELARUS     >=167 cm         11142   11891  whz              
6 months    PROBIT          BELARUS     <162 cm            156   11891  whz              
6 months    PROBIT          BELARUS     [162-167) cm       593   11891  whz              
6 months    SAS-CompFeed    INDIA       >=167 cm           370     807  whz              
6 months    SAS-CompFeed    INDIA       <162 cm            193     807  whz              
6 months    SAS-CompFeed    INDIA       [162-167) cm       244     807  whz              
6 months    SAS-FoodSuppl   INDIA       >=167 cm           102     371  whz              
6 months    SAS-FoodSuppl   INDIA       <162 cm            148     371  whz              
6 months    SAS-FoodSuppl   INDIA       [162-167) cm       121     371  whz              
24 months   COHORTS         GUATEMALA   >=167 cm            72     532  whz              
24 months   COHORTS         GUATEMALA   <162 cm            311     532  whz              
24 months   COHORTS         GUATEMALA   [162-167) cm       149     532  whz              
24 months   Keneba          GAMBIA      >=167 cm           823    1298  whz              
24 months   Keneba          GAMBIA      <162 cm             96    1298  whz              
24 months   Keneba          GAMBIA      [162-167) cm       379    1298  whz              
24 months   PROBIT          BELARUS     >=167 cm          3386    3608  whz              
24 months   PROBIT          BELARUS     <162 cm             52    3608  whz              
24 months   PROBIT          BELARUS     [162-167) cm       170    3608  whz              


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
![](/tmp/2f36355a-3de6-45d0-9d42-ca7087557ba7/9396b3d1-d581-4aa5-a622-b67764bce607/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2f36355a-3de6-45d0-9d42-ca7087557ba7/9396b3d1-d581-4aa5-a622-b67764bce607/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2f36355a-3de6-45d0-9d42-ca7087557ba7/9396b3d1-d581-4aa5-a622-b67764bce607/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.4481118   -1.0460889    0.1498653
Birth       COHORTS         GUATEMALA   <162 cm              NA                -0.5026787   -0.8243660   -0.1809915
Birth       COHORTS         GUATEMALA   [162-167) cm         NA                -0.7463786   -1.1412470   -0.3515102
Birth       Keneba          GAMBIA      >=167 cm             NA                -1.2069152   -1.2979979   -1.1158325
Birth       Keneba          GAMBIA      <162 cm              NA                -1.5114855   -1.7770308   -1.2459403
Birth       Keneba          GAMBIA      [162-167) cm         NA                -1.2788477   -1.4137542   -1.1439413
Birth       PROBIT          BELARUS     >=167 cm             NA                -1.1368216   -1.3479293   -0.9257140
Birth       PROBIT          BELARUS     <162 cm              NA                -1.1137366   -1.1933837   -1.0340895
Birth       PROBIT          BELARUS     [162-167) cm         NA                -1.1897994   -1.4145872   -0.9650117
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                -0.5842626   -0.7776482   -0.3908771
Birth       SAS-CompFeed    INDIA       <162 cm              NA                -0.5437044   -0.7588653   -0.3285435
Birth       SAS-CompFeed    INDIA       [162-167) cm         NA                -0.5839248   -0.8650768   -0.3027728
6 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.0114665   -0.3229900    0.3000570
6 months    COHORTS         GUATEMALA   <162 cm              NA                 0.1283088   -0.0360651    0.2926826
6 months    COHORTS         GUATEMALA   [162-167) cm         NA                 0.0302462   -0.2216434    0.2821359
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.2698687   -0.3429172   -0.1968202
6 months    Keneba          GAMBIA      <162 cm              NA                -0.2887052   -0.5549479   -0.0224626
6 months    Keneba          GAMBIA      [162-167) cm         NA                -0.1849802   -0.2897047   -0.0802557
6 months    PROBIT          BELARUS     >=167 cm             NA                 0.5754406    0.5159237    0.6349576
6 months    PROBIT          BELARUS     <162 cm              NA                 0.6030932    0.5417563    0.6644302
6 months    PROBIT          BELARUS     [162-167) cm         NA                 0.4943824    0.4017823    0.5869824
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.5497962   -0.7250747   -0.3745177
6 months    SAS-CompFeed    INDIA       <162 cm              NA                -0.7424898   -0.9666214   -0.5183583
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7369793   -0.8630013   -0.6109573
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8763760   -1.0831877   -0.6695643
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2356802   -1.4175101   -1.0538504
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8310312   -1.0546098   -0.6074526
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.2369736   -0.5006295    0.0266823
24 months   COHORTS         GUATEMALA   <162 cm              NA                -0.3169914   -0.4336678   -0.2003150
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                -0.3436474   -0.5156681   -0.1716267
24 months   Keneba          GAMBIA      >=167 cm             NA                -0.8075399   -0.8765356   -0.7385442
24 months   Keneba          GAMBIA      <162 cm              NA                -0.8931228   -1.1624243   -0.6238213
24 months   Keneba          GAMBIA      [162-167) cm         NA                -0.7973290   -0.8884086   -0.7062493
24 months   PROBIT          BELARUS     >=167 cm             NA                 0.6954147    0.5799616    0.8108679
24 months   PROBIT          BELARUS     <162 cm              NA                 0.6496910    0.1120055    1.1873766
24 months   PROBIT          BELARUS     [162-167) cm         NA                 0.4824482    0.2387128    0.7261835


### Parameter: E(Y)


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   NA                   NA                -0.5450521   -0.7653906   -0.3247135
Birth       Keneba          GAMBIA      NA                   NA                -1.2304129   -1.3019732   -1.1588526
Birth       PROBIT          BELARUS     NA                   NA                -1.1419035   -1.3515776   -0.9322295
Birth       SAS-CompFeed    INDIA       NA                   NA                -0.5733486   -0.7681703   -0.3785268
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
Birth       COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0545669   -0.7355837    0.6264499
Birth       COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.2982668   -1.0151557    0.4186220
Birth       Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba          GAMBIA      <162 cm              >=167 cm          -0.3045704   -0.5856559   -0.0234848
Birth       Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0719325   -0.2351497    0.0912846
Birth       PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS     <162 cm              >=167 cm           0.0230850   -0.1454256    0.1915957
Birth       PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0529778   -0.1828639    0.0769083
Birth       SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0405583   -0.1484355    0.2295520
Birth       SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0003378   -0.1534535    0.1541291
6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm           0.1397752   -0.2119530    0.4915035
6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0417127   -0.3599035    0.4433289
6 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba          GAMBIA      <162 cm              >=167 cm          -0.0188365   -0.2951139    0.2574408
6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0848885   -0.0425888    0.2123657
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm           0.0276526   -0.0459056    0.1012108
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0810583   -0.1717803    0.0096637
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.1926936   -0.3549609   -0.0304264
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1871831   -0.3156938   -0.0586723
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3593043   -0.6347648   -0.0838438
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0453448   -0.2611641    0.3518537
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0800178   -0.3683115    0.2082759
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.1066738   -0.4219347    0.2085871
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0855829   -0.3638263    0.1926604
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0102109   -0.1042333    0.1246551
24 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS     <162 cm              >=167 cm          -0.0457237   -0.5404018    0.4489544
24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.2129666   -0.4409321    0.0149990


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.0969403   -0.6650416    0.4711611
Birth       Keneba          GAMBIA      >=167 cm             NA                -0.0234977   -0.0759313    0.0289358
Birth       PROBIT          BELARUS     >=167 cm             NA                -0.0050819   -0.0117422    0.0015783
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                 0.0109141   -0.0599323    0.0817605
6 months    COHORTS         GUATEMALA   >=167 cm             NA                 0.1023891   -0.1913735    0.3961517
6 months    Keneba          GAMBIA      >=167 cm             NA                 0.0426647   -0.0022464    0.0875759
6 months    PROBIT          BELARUS     >=167 cm             NA                -0.0017185   -0.0066958    0.0032588
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.1004764   -0.1517342   -0.0492186
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1234084   -0.3077104    0.0608936
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0632896   -0.3195024    0.1929233
24 months   Keneba          GAMBIA      >=167 cm             NA                 0.0111622   -0.0307125    0.0530370
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.0075230   -0.0185462    0.0035002
