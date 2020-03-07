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

agecat      studyid         country     fhtcm           n_cell       n
----------  --------------  ----------  -------------  -------  ------
Birth       COHORTS         GUATEMALA   >=167 cm            26     192
Birth       COHORTS         GUATEMALA   <162 cm            112     192
Birth       COHORTS         GUATEMALA   [162-167) cm        54     192
Birth       Keneba          GAMBIA      >=167 cm           733    1114
Birth       Keneba          GAMBIA      <162 cm             83    1114
Birth       Keneba          GAMBIA      [162-167) cm       298    1114
Birth       PROBIT          BELARUS     >=167 cm         11672   12461
Birth       PROBIT          BELARUS     <162 cm            168   12461
Birth       PROBIT          BELARUS     [162-167) cm       621   12461
Birth       SAS-CompFeed    INDIA       >=167 cm           312     657
Birth       SAS-CompFeed    INDIA       <162 cm            159     657
Birth       SAS-CompFeed    INDIA       [162-167) cm       186     657
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
![](/tmp/d6f128c4-c3e6-4cbe-9889-644d5930de4e/b5153fe3-a505-4aa8-8fca-6f412ccd0a1e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d6f128c4-c3e6-4cbe-9889-644d5930de4e/b5153fe3-a505-4aa8-8fca-6f412ccd0a1e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d6f128c4-c3e6-4cbe-9889-644d5930de4e/b5153fe3-a505-4aa8-8fca-6f412ccd0a1e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.4262668   -1.0030726    0.1505391
Birth       COHORTS         GUATEMALA   <162 cm              NA                -0.5093695   -0.8379983   -0.1807406
Birth       COHORTS         GUATEMALA   [162-167) cm         NA                -0.7375029   -1.1311609   -0.3438450
Birth       Keneba          GAMBIA      >=167 cm             NA                -1.2084546   -1.2988250   -1.1180841
Birth       Keneba          GAMBIA      <162 cm              NA                -1.4543884   -1.7017243   -1.2070525
Birth       Keneba          GAMBIA      [162-167) cm         NA                -1.2730976   -1.4120741   -1.1341212
Birth       PROBIT          BELARUS     >=167 cm             NA                -1.1368914   -1.3483792   -0.9254035
Birth       PROBIT          BELARUS     <162 cm              NA                -1.1268633   -1.2086920   -1.0450347
Birth       PROBIT          BELARUS     [162-167) cm         NA                -1.1733765   -1.3942659   -0.9524870
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                -0.5842626   -0.7776482   -0.3908771
Birth       SAS-CompFeed    INDIA       <162 cm              NA                -0.5437044   -0.7588653   -0.3285435
Birth       SAS-CompFeed    INDIA       [162-167) cm         NA                -0.5839248   -0.8650768   -0.3027728
6 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.0448916   -0.3657649    0.2759818
6 months    COHORTS         GUATEMALA   <162 cm              NA                 0.1196891   -0.0433951    0.2827733
6 months    COHORTS         GUATEMALA   [162-167) cm         NA                 0.0496699   -0.2123392    0.3116790
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.2706929   -0.3450576   -0.1963283
6 months    Keneba          GAMBIA      <162 cm              NA                -0.1568452   -0.4369040    0.1232136
6 months    Keneba          GAMBIA      [162-167) cm         NA                -0.1839237   -0.2899528   -0.0778946
6 months    PROBIT          BELARUS     >=167 cm             NA                 0.5758940    0.5163958    0.6353922
6 months    PROBIT          BELARUS     <162 cm              NA                 0.6113040    0.5513809    0.6712271
6 months    PROBIT          BELARUS     [162-167) cm         NA                 0.4875216    0.3913921    0.5836510
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.5497962   -0.7250747   -0.3745177
6 months    SAS-CompFeed    INDIA       <162 cm              NA                -0.7424898   -0.9666214   -0.5183583
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7369793   -0.8630013   -0.6109573
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8389108   -1.0406250   -0.6371966
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2309487   -1.4153906   -1.0465067
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8287993   -1.0508274   -0.6067711
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.2268054   -0.5014129    0.0478021
24 months   COHORTS         GUATEMALA   <162 cm              NA                -0.3114519   -0.4191836   -0.2037203
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                -0.3385830   -0.5074375   -0.1697284
24 months   Keneba          GAMBIA      >=167 cm             NA                -0.8103249   -0.8800953   -0.7405546
24 months   Keneba          GAMBIA      <162 cm              NA                -0.8873284   -1.1587954   -0.6158614
24 months   Keneba          GAMBIA      [162-167) cm         NA                -0.7948914   -0.8871815   -0.7026012
24 months   PROBIT          BELARUS     >=167 cm             NA                 0.6964061    0.5803929    0.8124194
24 months   PROBIT          BELARUS     <162 cm              NA                 0.6239315    0.0937757    1.1540873
24 months   PROBIT          BELARUS     [162-167) cm         NA                 0.5311223    0.2525595    0.8096851


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
Birth       COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0831027   -0.7483639    0.5821584
Birth       COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.3112362   -1.0094429    0.3869706
Birth       Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba          GAMBIA      <162 cm              >=167 cm          -0.2459338   -0.5094103    0.0175427
Birth       Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0646430   -0.2303440    0.1010580
Birth       PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS     <162 cm              >=167 cm           0.0100280   -0.1585484    0.1786044
Birth       PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0364851   -0.1606304    0.0876601
Birth       SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0405583   -0.1484355    0.2295520
Birth       SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0003378   -0.1534535    0.1541291
6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm           0.1645807   -0.1943486    0.5235099
6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0945615   -0.3216573    0.5107802
6 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba          GAMBIA      <162 cm              >=167 cm           0.1138477   -0.1761462    0.4038416
6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0867692   -0.0425816    0.2161200
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm           0.0354100   -0.0389361    0.1097561
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0883724   -0.1785197    0.0017748
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.1926936   -0.3549609   -0.0304264
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1871831   -0.3156938   -0.0586723
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3920378   -0.6654831   -0.1185926
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0101116   -0.2902069    0.3104301
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0846465   -0.3796542    0.2103612
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.1117775   -0.4342641    0.2107091
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0770035   -0.3574142    0.2034072
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0154335   -0.1003802    0.1312472
24 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS     <162 cm              >=167 cm          -0.0724746   -0.5591739    0.4142247
24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.1652838   -0.4199100    0.0893424


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.1187853   -0.6698440    0.4322734
Birth       Keneba          GAMBIA      >=167 cm             NA                -0.0219583   -0.0738050    0.0298883
Birth       PROBIT          BELARUS     >=167 cm             NA                -0.0050122   -0.0119536    0.0019292
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                 0.0109141   -0.0599323    0.0817605
6 months    COHORTS         GUATEMALA   >=167 cm             NA                 0.1358142   -0.1668612    0.4384896
6 months    Keneba          GAMBIA      >=167 cm             NA                 0.0434890   -0.0027863    0.0897643
6 months    PROBIT          BELARUS     >=167 cm             NA                -0.0021719   -0.0068444    0.0025007
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.1004764   -0.1517342   -0.0492186
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1608735   -0.3411513    0.0194043
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0734577   -0.3404403    0.1935249
24 months   Keneba          GAMBIA      >=167 cm             NA                 0.0139473   -0.0284431    0.0563377
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.0085144   -0.0193679    0.0023391
