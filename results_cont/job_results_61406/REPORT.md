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
![](/tmp/832080a1-ca34-4ad7-b45d-0271a4484c0d/edefbdab-9543-434d-a193-b6ad824ae823/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/832080a1-ca34-4ad7-b45d-0271a4484c0d/edefbdab-9543-434d-a193-b6ad824ae823/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/832080a1-ca34-4ad7-b45d-0271a4484c0d/edefbdab-9543-434d-a193-b6ad824ae823/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.2888421   -0.8941058    0.3164216
Birth       COHORTS         GUATEMALA   <162 cm              NA                -0.4984468   -0.8148195   -0.1820742
Birth       COHORTS         GUATEMALA   [162-167) cm         NA                -0.7561497   -1.1438323   -0.3684670
Birth       Keneba          GAMBIA      >=167 cm             NA                -1.2080282   -1.2992647   -1.1167918
Birth       Keneba          GAMBIA      <162 cm              NA                -1.5064380   -1.7540924   -1.2587836
Birth       Keneba          GAMBIA      [162-167) cm         NA                -1.2850242   -1.4245209   -1.1455275
Birth       PROBIT          BELARUS     >=167 cm             NA                -1.1371059   -1.3486810   -0.9255308
Birth       PROBIT          BELARUS     <162 cm              NA                -1.1160999   -1.1984667   -1.0337331
Birth       PROBIT          BELARUS     [162-167) cm         NA                -1.1711026   -1.3988067   -0.9433986
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                -0.5842626   -0.7776482   -0.3908771
Birth       SAS-CompFeed    INDIA       <162 cm              NA                -0.5437044   -0.7588653   -0.3285435
Birth       SAS-CompFeed    INDIA       [162-167) cm         NA                -0.5839248   -0.8650768   -0.3027728
6 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.0523951   -0.3525173    0.2477271
6 months    COHORTS         GUATEMALA   <162 cm              NA                 0.1242188   -0.0402404    0.2886780
6 months    COHORTS         GUATEMALA   [162-167) cm         NA                 0.0585615   -0.2086671    0.3257902
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.2646441   -0.3379743   -0.1913140
6 months    Keneba          GAMBIA      <162 cm              NA                -0.2303006   -0.5054821    0.0448809
6 months    Keneba          GAMBIA      [162-167) cm         NA                -0.2091437   -0.3140603   -0.1042271
6 months    PROBIT          BELARUS     >=167 cm             NA                 0.5757049    0.5164657    0.6349441
6 months    PROBIT          BELARUS     <162 cm              NA                 0.6103930    0.5510766    0.6697094
6 months    PROBIT          BELARUS     [162-167) cm         NA                 0.4984960    0.4034210    0.5935710
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.5497962   -0.7250747   -0.3745177
6 months    SAS-CompFeed    INDIA       <162 cm              NA                -0.7424898   -0.9666214   -0.5183583
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7369793   -0.8630013   -0.6109573
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8677586   -1.0695596   -0.6659577
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2385545   -1.4222289   -1.0548801
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8551777   -1.0762835   -0.6340719
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.3390720   -0.6596213   -0.0185227
24 months   COHORTS         GUATEMALA   <162 cm              NA                -0.2961196   -0.4169815   -0.1752577
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                -0.3848581   -0.5553081   -0.2144080
24 months   Keneba          GAMBIA      >=167 cm             NA                -0.8073737   -0.8774668   -0.7372807
24 months   Keneba          GAMBIA      <162 cm              NA                -0.8893268   -1.1735146   -0.6051390
24 months   Keneba          GAMBIA      [162-167) cm         NA                -0.8153335   -0.9081547   -0.7225123
24 months   PROBIT          BELARUS     >=167 cm             NA                 0.6971788    0.5814632    0.8128944
24 months   PROBIT          BELARUS     <162 cm              NA                 0.6631765    0.1386109    1.1877422
24 months   PROBIT          BELARUS     [162-167) cm         NA                 0.4965839    0.2265450    0.7666227


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
Birth       COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.2096047   -0.8925611    0.4733517
Birth       COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.4673075   -1.1860964    0.2514813
Birth       Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba          GAMBIA      <162 cm              >=167 cm          -0.2984098   -0.5629008   -0.0339188
Birth       Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0769960   -0.2437720    0.0897801
Birth       PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS     <162 cm              >=167 cm           0.0210060   -0.1429863    0.1849983
Birth       PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0339968   -0.1688950    0.1009014
Birth       SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0405583   -0.1484355    0.2295520
Birth       SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0003378   -0.1534535    0.1541291
6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm           0.1766140   -0.1642204    0.5174484
6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.1109567   -0.2910988    0.5130122
6 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba          GAMBIA      <162 cm              >=167 cm           0.0343436   -0.2508272    0.3195144
6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0555004   -0.0724720    0.1834728
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm           0.0346881   -0.0360067    0.1053829
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0772089   -0.1699059    0.0154881
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.1926936   -0.3549609   -0.0304264
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1871831   -0.3156938   -0.0586723
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3707959   -0.6436906   -0.0979012
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0125809   -0.2870893    0.3122511
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0429524   -0.2996868    0.3855916
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0457861   -0.4089167    0.3173446
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0819531   -0.3750635    0.2111573
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0079598   -0.1242983    0.1083788
24 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS     <162 cm              >=167 cm          -0.0340023   -0.5117867    0.4437821
24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.2005949   -0.4539319    0.0527420


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.2562100   -0.8296405    0.3172205
Birth       Keneba          GAMBIA      >=167 cm             NA                -0.0223847   -0.0748807    0.0301113
Birth       PROBIT          BELARUS     >=167 cm             NA                -0.0047977   -0.0113745    0.0017792
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                 0.0109141   -0.0599323    0.0817605
6 months    COHORTS         GUATEMALA   >=167 cm             NA                 0.1433177   -0.1399296    0.4265650
6 months    Keneba          GAMBIA      >=167 cm             NA                 0.0374402   -0.0079642    0.0828446
6 months    PROBIT          BELARUS     >=167 cm             NA                -0.0019828   -0.0067456    0.0027801
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.1004764   -0.1517342   -0.0492186
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1320257   -0.3121071    0.0480556
24 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0388088   -0.2748802    0.3524979
24 months   Keneba          GAMBIA      >=167 cm             NA                 0.0109961   -0.0319562    0.0539484
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.0092871   -0.0208036    0.0022295
