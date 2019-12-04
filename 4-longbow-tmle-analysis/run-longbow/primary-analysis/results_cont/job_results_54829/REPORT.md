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

agecat      studyid                    country     fhtcm           n_cell       n  outcome_variable 
----------  -------------------------  ----------  -------------  -------  ------  -----------------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm           312     657  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm            159     657  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       186     657  whz              
Birth       ki1101329-Keneba           GAMBIA      >=167 cm           733    1114  whz              
Birth       ki1101329-Keneba           GAMBIA      <162 cm             83    1114  whz              
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm       298    1114  whz              
Birth       ki1119695-PROBIT           BELARUS     >=167 cm         11684   12474  whz              
Birth       ki1119695-PROBIT           BELARUS     <162 cm            168   12474  whz              
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm       622   12474  whz              
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm            26     192  whz              
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm            112     192  whz              
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm        54     192  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           370     807  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            193     807  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       244     807  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm           102     371  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            148     371  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm       121     371  whz              
6 months    ki1101329-Keneba           GAMBIA      >=167 cm           979    1510  whz              
6 months    ki1101329-Keneba           GAMBIA      <162 cm            113    1510  whz              
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm       418    1510  whz              
6 months    ki1119695-PROBIT           BELARUS     >=167 cm         11143   11892  whz              
6 months    ki1119695-PROBIT           BELARUS     <162 cm            156   11892  whz              
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm       593   11892  whz              
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            44     336  whz              
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm            198     336  whz              
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        94     336  whz              
24 months   ki1101329-Keneba           GAMBIA      >=167 cm           823    1298  whz              
24 months   ki1101329-Keneba           GAMBIA      <162 cm             96    1298  whz              
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       379    1298  whz              
24 months   ki1119695-PROBIT           BELARUS     >=167 cm          3388    3610  whz              
24 months   ki1119695-PROBIT           BELARUS     <162 cm             52    3610  whz              
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm       170    3610  whz              
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            72     532  whz              
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            311     532  whz              
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       149     532  whz              


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
![](/tmp/a85988ba-179c-427d-a9b8-4afa143792ee/f39c86b2-3d0d-4513-8baa-a25a0d55868e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a85988ba-179c-427d-a9b8-4afa143792ee/f39c86b2-3d0d-4513-8baa-a25a0d55868e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a85988ba-179c-427d-a9b8-4afa143792ee/f39c86b2-3d0d-4513-8baa-a25a0d55868e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.5800440   -0.7719785   -0.3881095
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.5484572   -0.7579455   -0.3389690
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.5932072   -0.8673188   -0.3190957
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                -1.2090341   -1.3008112   -1.1172571
Birth       ki1101329-Keneba           GAMBIA      <162 cm              NA                -1.5030756   -1.7504616   -1.2556895
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.2810531   -1.4155588   -1.1465474
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -1.1327021   -1.3434483   -0.9219559
Birth       ki1119695-PROBIT           BELARUS     <162 cm              NA                -1.1269030   -1.2072589   -1.0465472
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -1.1701526   -1.3950719   -0.9452332
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1701068   -0.7457289    0.4055152
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.4915760   -0.7996474   -0.1835046
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.6715803   -1.0582298   -0.2849307
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.5382821   -0.7211470   -0.3554171
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.7497528   -0.9626143   -0.5368913
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7417375   -0.8679603   -0.6155147
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8735713   -1.0770113   -0.6701313
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2449263   -1.4285252   -1.0613275
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8341307   -1.0511082   -0.6171532
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2687771   -0.3415632   -0.1959911
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.2088531   -0.4771931    0.0594868
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.1773464   -0.2822258   -0.0724669
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.5816587    0.5225547    0.6407627
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6320453    0.5772948    0.6867958
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.4847135    0.3901591    0.5792679
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.1427607   -0.2370567    0.5225782
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                 0.1069506   -0.0578974    0.2717986
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                 0.1023135   -0.1592446    0.3638716
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8075521   -0.8774578   -0.7376465
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.8949964   -1.1538226   -0.6361702
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.7952208   -0.8868439   -0.7035977
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.6869356    0.5743274    0.7995438
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.5951703    0.0608478    1.1294928
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.4997179    0.2559908    0.7434450
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1826259   -0.4111685    0.0459166
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3318021   -0.4435137   -0.2200906
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.3063963   -0.4695622   -0.1432304


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.5733486   -0.7681703   -0.3785268
Birth       ki1101329-Keneba           GAMBIA      NA                   NA                -1.2304129   -1.3019732   -1.1588526
Birth       ki1119695-PROBIT           BELARUS     NA                   NA                -1.1379626   -1.3471426   -0.9287826
Birth       ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.5450521   -0.7653906   -0.3247135
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.6502726   -0.7957520   -0.5047932
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.9997844   -1.1172238   -0.8823449
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.2272039   -0.2854286   -0.1689793
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.5791961    0.5216790    0.6367132
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                 0.0909226   -0.0348636    0.2167089
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                -0.7963776   -0.8498028   -0.7429525
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                 0.6785166    0.5638515    0.7931818
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.3002632   -0.3780672   -0.2224591


### Parameter: ATE


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0315868   -0.1565647    0.2197382
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0131632   -0.1627504    0.1364240
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.2940414   -0.5582192   -0.0298637
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0720190   -0.2348854    0.0908474
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0057990   -0.1618915    0.1734896
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0374505   -0.1752283    0.1003273
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.3214692   -0.9820048    0.3390664
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.5014734   -1.1946649    0.1917180
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2114708   -0.3782123   -0.0447292
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2034555   -0.3362210   -0.0706900
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3713550   -0.6466165   -0.0960934
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0394407   -0.2582981    0.3371794
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0599240   -0.2184913    0.3383393
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0914308   -0.0361908    0.2190524
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0503866   -0.0192811    0.1200542
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0969452   -0.1907139   -0.0031765
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0358101   -0.4492861    0.3776658
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0404472   -0.5011423    0.4202479
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0874443   -0.3558979    0.1810093
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0123313   -0.1030170    0.1276797
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0917653   -0.5774885    0.3939580
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.1872177   -0.4054397    0.0310043
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1491762   -0.4033693    0.1050169
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1237703   -0.4050077    0.1574671


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0066954   -0.0640229    0.0774138
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0213788   -0.0740882    0.0313306
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0052605   -0.0120758    0.0015548
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3749453   -0.9247071    0.1748166
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1119906   -0.1732332   -0.0507480
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1262130   -0.3084329    0.0560068
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0415732   -0.0031964    0.0863428
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0024626   -0.0077633    0.0028380
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0518381   -0.4119327    0.3082565
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0111745   -0.0314513    0.0538003
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0084190   -0.0181812    0.0013433
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1176372   -0.3375485    0.1022741
