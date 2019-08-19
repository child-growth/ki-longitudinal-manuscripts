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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hdlvry    n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             90     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0     90
Birth       ki1000108-IRC              INDIA                          0            381    388
Birth       ki1000108-IRC              INDIA                          1              7    388
Birth       ki1000109-EE               PAKISTAN                       0              2      2
Birth       ki1000109-EE               PAKISTAN                       1              0      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             11    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            169    180
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             22     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              5     27
Birth       ki1135781-COHORTS          INDIA                          0           2938   4694
Birth       ki1135781-COHORTS          INDIA                          1           1756   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             11    300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            289    300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             47    820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            773    820
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            358    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    366
6 months    ki1000108-IRC              INDIA                          0            399    407
6 months    ki1000108-IRC              INDIA                          1              8    407
6 months    ki1000109-EE               PAKISTAN                       0            248    370
6 months    ki1000109-EE               PAKISTAN                       1            122    370
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            944   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            433    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            150    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1889   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1            398    527
6 months    ki1135781-COHORTS          INDIA                          0           2900   4699
6 months    ki1135781-COHORTS          INDIA                          1           1799   4699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            293    332
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1081   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2957   4038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            361    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    369
24 months   ki1000108-IRC              INDIA                          0            401    409
24 months   ki1000108-IRC              INDIA                          1              8    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            432    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            145    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0            120    467
24 months   ki1113344-GMS-Nepal        NEPAL                          1            347    467
24 months   ki1135781-COHORTS          INDIA                          0           2233   3559
24 months   ki1135781-COHORTS          INDIA                          1           1326   3559
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             35    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            256    291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1033   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2972   4005


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/c9fd77d9-0fab-4444-83e9-a32adc11a593/8b33651a-0d3d-4b7e-823a-404c3e942ad8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0209005   -1.0466822    1.0884832
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4239206   -1.6163897   -1.2314515
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1953024   -2.2159772   -0.1746275
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6260598   -0.6706148   -0.5815048
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3291787   -1.4797102   -1.1786472
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1673961   -1.5043867   -0.8304055
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.9813115   -1.8293201   -0.1333029
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.2279257   -1.3621299   -1.0937214
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.1377581   -2.3192737   -1.9562425
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3806808   -1.4763014   -1.2850602
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.7688852   -2.0045445   -1.5332260
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0214285   -1.1096385   -0.9332184
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1145773   -1.2302816   -0.9988731
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7171236   -0.8700000   -0.5642471
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1714077   -1.3225445   -1.0202709
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9504153   -0.9952439   -0.9055868
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2772912   -1.6284059   -0.9261766
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2476437   -1.3232592   -1.1720282
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5842407   -3.2061160   -1.9623653
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7707852   -1.8661983   -1.6753721
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5472565   -1.6442792   -1.4502338
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3205960   -1.4507828   -1.1904093
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8358232   -1.9990204   -1.6726260
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.8441370   -1.8970333   -1.7912407
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8687296   -2.1673538   -1.5701055
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6061763   -1.6788526   -1.5335000


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3976667   -1.5639119   -1.2314214
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6762420   -0.7093108   -0.6431732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3381333   -1.4898513   -1.1864153
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4966707   -1.5808284   -1.4125130
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4189572   -1.5607165   -1.2771979
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2011622   -2.3246467   -2.0776776
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4699588   -1.5446559   -1.3952616
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5440573   -0.5945614   -0.4935533
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3111986   -1.3908744   -1.2315228
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0458076   -1.0793244   -1.0122908
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2787349   -1.4248268   -1.1326431
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3481303   -1.3904710   -1.3057895
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5615989   -2.6621298   -2.4610681
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8686046   -1.9550497   -1.7821594
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.0097359   -2.0499675   -1.9695043
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.1549141   -2.2975185   -2.0123097
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7500225   -1.7884190   -1.7116259


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3289417   -1.3825501    0.7246666
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0262539   -0.1007241    0.1532319
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0853024   -0.8545844    1.0251891
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0501822   -0.0788740   -0.0214904
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0089546   -0.0311681    0.0132588
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3292747   -0.6594816    0.0009323
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4376457   -1.2775663    0.4022748
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0064806   -0.0193638    0.0064027
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0634040   -0.2038192    0.0770111
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0892779   -0.2099935    0.0314376
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1297990   -0.3405748    0.0809768
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0656756   -0.1115036   -0.0198476
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0841010   -0.1703364    0.0021344
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1730662    0.0250347    0.3210978
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1397909   -0.2727788   -0.0068031
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0953923   -0.1257255   -0.0650591
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0014437   -0.2947072    0.2918198
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1004865   -0.1637719   -0.0372012
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0226418   -0.5907490    0.6360325
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0116924   -0.0260046    0.0026198
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0388614   -0.0869726    0.0092499
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1089370   -0.2033855   -0.0144886
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0327814   -0.1725839    0.1070211
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1655989   -0.2028625   -0.1283352
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2861845   -0.5712356   -0.0011334
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1438462   -0.2049680   -0.0827244
