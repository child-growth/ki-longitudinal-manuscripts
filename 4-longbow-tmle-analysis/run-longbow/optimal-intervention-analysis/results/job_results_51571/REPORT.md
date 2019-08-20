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
![](/tmp/d387ee01-b906-4d7a-a8cc-fb87cae47a42/cdbc31de-c589-4a2a-90cd-ce0d21227a9a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.3110484   -0.6036558   -0.0184410
Birth       ki1101329-Keneba           GAMBIA      optimal              observed           2.0584207    1.7171886    2.3996528
Birth       ki1119695-PROBIT           BELARUS     optimal              observed          -0.9487562   -1.0932554   -0.8042569
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.4867431   -1.0583434    0.0848572
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.5477176   -0.7422240   -0.3532111
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -0.7139805   -0.9405535   -0.4874075
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.1337046   -0.2444288   -0.0229805
6 months    ki1119695-PROBIT           BELARUS     optimal              observed           0.6138926    0.5567909    0.6709943
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed           0.1016400   -0.0924269    0.2957069
24 months   ki1101329-Keneba           GAMBIA      optimal              observed          -0.9102669   -1.0146894   -0.8058443
24 months   ki1119695-PROBIT           BELARUS     optimal              observed           0.4736353    0.3110103    0.6362602
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.4126232   -0.6157191   -0.2095273


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       observed             observed          -0.1156667   -0.4507658    0.2194325
Birth       ki1101329-Keneba           GAMBIA      observed             observed           1.7064875    1.6129215    1.8000534
Birth       ki1119695-PROBIT           BELARUS     observed             observed          -1.1390957   -1.3485249   -0.9296665
Birth       ki1135781-COHORTS          GUATEMALA   observed             observed          -0.5450521   -0.7653906   -0.3247135
6 months    ki1000304b-SAS-CompFeed    INDIA       observed             observed          -0.6502726   -0.7957520   -0.5047932
6 months    ki1000304b-SAS-FoodSuppl   INDIA       observed             observed          -0.9997844   -1.1172238   -0.8823449
6 months    ki1101329-Keneba           GAMBIA      observed             observed          -0.2272250   -0.2854487   -0.1690012
6 months    ki1119695-PROBIT           BELARUS     observed             observed           0.5791961    0.5216790    0.6367132
6 months    ki1135781-COHORTS          GUATEMALA   observed             observed           0.0909226   -0.0348636    0.2167089
24 months   ki1101329-Keneba           GAMBIA      observed             observed          -0.7963776   -0.8498028   -0.7429525
24 months   ki1119695-PROBIT           BELARUS     observed             observed           0.6773192    0.5626171    0.7920213
24 months   ki1135781-COHORTS          GUATEMALA   observed             observed          -0.3002632   -0.3780672   -0.2224591


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed           0.1953817   -0.0486591    0.4394225
Birth       ki1101329-Keneba           GAMBIA      optimal              observed          -0.3519332   -0.6775096   -0.0263568
Birth       ki1119695-PROBIT           BELARUS     optimal              observed          -0.1903396   -0.3152462   -0.0654329
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.0583090   -0.5673520    0.4507340
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.1025550   -0.1733017   -0.0318083
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -0.2858038   -0.4767422   -0.0948655
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.0935203   -0.1924955    0.0054549
6 months    ki1119695-PROBIT           BELARUS     optimal              observed          -0.0346965   -0.0899720    0.0205791
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.0107174   -0.1823298    0.1608951
24 months   ki1101329-Keneba           GAMBIA      optimal              observed           0.1138892    0.0200974    0.2076811
24 months   ki1119695-PROBIT           BELARUS     optimal              observed           0.2036839    0.1052469    0.3021209
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed           0.1123601   -0.0760895    0.3008097
