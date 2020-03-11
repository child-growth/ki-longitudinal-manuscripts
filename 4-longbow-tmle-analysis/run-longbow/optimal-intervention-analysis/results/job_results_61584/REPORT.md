---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
![](/tmp/ee94e0a4-a365-47cb-86d6-5cd6796d1269/8ec10c02-23d3-4c33-8f77-25915960f515/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   optimal              observed          -0.4393290   -0.9957489    0.1170910
Birth       Keneba          GAMBIA      optimal              observed          -1.1845786   -1.2826018   -1.0865553
Birth       PROBIT          BELARUS     optimal              observed          -1.2137114   -1.3823571   -1.0450657
Birth       SAS-CompFeed    INDIA       optimal              observed          -0.6261182   -0.8932693   -0.3589671
6 months    COHORTS         GUATEMALA   optimal              observed           0.0169231   -0.2204283    0.2542746
6 months    Keneba          GAMBIA      optimal              observed          -0.1709690   -0.2817928   -0.0601453
6 months    PROBIT          BELARUS     optimal              observed           0.5926097    0.5329228    0.6522966
6 months    SAS-CompFeed    INDIA       optimal              observed          -0.5310488   -0.7076820   -0.3544157
6 months    SAS-FoodSuppl   INDIA       optimal              observed          -1.0185389   -1.2351565   -0.8019214
24 months   COHORTS         GUATEMALA   optimal              observed          -0.3027182   -0.4776614   -0.1277750
24 months   Keneba          GAMBIA      optimal              observed          -0.8245098   -0.9140890   -0.7349306
24 months   PROBIT          BELARUS     optimal              observed           0.5389693    0.3820738    0.6958648


### Parameter: E(Y)


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   observed             observed          -0.5450521   -0.7653906   -0.3247135
Birth       Keneba          GAMBIA      observed             observed          -1.2304129   -1.3019732   -1.1588526
Birth       PROBIT          BELARUS     observed             observed          -1.1419035   -1.3515776   -0.9322295
Birth       SAS-CompFeed    INDIA       observed             observed          -0.5733486   -0.7681703   -0.3785268
6 months    COHORTS         GUATEMALA   observed             observed           0.0909226   -0.0348636    0.2167089
6 months    Keneba          GAMBIA      observed             observed          -0.2272039   -0.2854286   -0.1689793
6 months    PROBIT          BELARUS     observed             observed           0.5737221    0.5157281    0.6317162
6 months    SAS-CompFeed    INDIA       observed             observed          -0.6502726   -0.7957520   -0.5047932
6 months    SAS-FoodSuppl   INDIA       observed             observed          -0.9997844   -1.1172238   -0.8823449
24 months   COHORTS         GUATEMALA   observed             observed          -0.3002632   -0.3780672   -0.2224591
24 months   Keneba          GAMBIA      observed             observed          -0.7963776   -0.8498028   -0.7429525
24 months   PROBIT          BELARUS     observed             observed           0.6878917    0.5705107    0.8052728


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   optimal              observed          -0.1057231   -0.6206171    0.4091709
Birth       Keneba          GAMBIA      optimal              observed          -0.0458344   -0.1193408    0.0276721
Birth       PROBIT          BELARUS     optimal              observed           0.0718079   -0.0066608    0.1502765
Birth       SAS-CompFeed    INDIA       optimal              observed           0.0527696   -0.0604655    0.1660047
6 months    COHORTS         GUATEMALA   optimal              observed           0.0739995   -0.1189442    0.2669433
6 months    Keneba          GAMBIA      optimal              observed          -0.0562349   -0.1540315    0.0415616
6 months    PROBIT          BELARUS     optimal              observed          -0.0188876   -0.0819677    0.0441926
6 months    SAS-CompFeed    INDIA       optimal              observed          -0.1192238   -0.1763005   -0.0621471
6 months    SAS-FoodSuppl   INDIA       optimal              observed           0.0187546   -0.1609906    0.1984997
24 months   COHORTS         GUATEMALA   optimal              observed           0.0024550   -0.1627764    0.1676865
24 months   Keneba          GAMBIA      optimal              observed           0.0281322   -0.0495326    0.1057970
24 months   PROBIT          BELARUS     optimal              observed           0.1489224    0.0619472    0.2358976
