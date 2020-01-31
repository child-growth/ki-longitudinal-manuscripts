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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        nchldlt5    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1               72     343
Birth       ki1000108-IRC              INDIA                          2+             271     343
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              385     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+             147     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              504     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+             203     707
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            10878   17991
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+            7113   17991
6 months    ki1000108-IRC              INDIA                          1               88     408
6 months    ki1000108-IRC              INDIA                          2+             320     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              438     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+             165     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             208     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2019
6 months    ki1148112-LCNI-5           MALAWI                         1              390     811
6 months    ki1148112-LCNI-5           MALAWI                         2+             421     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10872   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+            5901   16773
24 months   ki1000108-IRC              INDIA                          1               89     409
24 months   ki1000108-IRC              INDIA                          2+             320     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              424     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             155     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             157     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6
24 months   ki1148112-LCNI-5           MALAWI                         1              277     555
24 months   ki1148112-LCNI-5           MALAWI                         2+             278     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5434    8593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+            3159    8593


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/889e2510-5186-4f89-9f03-074719727747/4cdba600-487b-4cb0-b18b-462bdcf53b31/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9871333   -1.1942571   -0.7800094
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1728495   -1.3041857   -1.0415132
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2542873   -1.3880737   -1.1205008
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7296551   -0.7706535   -0.6886566
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7073980   -0.9928009   -0.4219951
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1664338   -0.2794501   -0.0534174
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0671566   -0.0286653    0.1629785
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0769685   -0.0302171    0.1841542
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5457282    0.4439048    0.6475517
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5759500   -0.6066942   -0.5452058
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7991791   -0.9210036   -0.6773546
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7622410   -0.9056179   -0.6188640
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5337831   -0.6527752   -0.4147910
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0463118   -0.0721315    0.1647552
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2608574   -1.3171429   -1.2045719


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7776666   -0.7966629   -0.7586703
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0801680    0.0273223    0.1330136
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4379655    0.3664533    0.5094777
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5932472   -0.6127728   -0.5737215
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0547297   -0.1370054    0.0275459
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2972908   -1.3206179   -1.2739638


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0234498   -0.1270987    0.0801991
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1256092   -0.2378012   -0.0134172
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0101359   -0.0971315    0.1174034
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0480115   -0.0864720   -0.0095511
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1084683   -0.1354263    0.3523628
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0326569   -0.1097578    0.0444440
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0373944   -0.0902607    0.0154719
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0031995   -0.0860989    0.0924978
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1077628   -0.1841860   -0.0313395
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0172972   -0.0400708    0.0054764
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0533641   -0.0288095    0.1355377
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1306260   -0.2448161   -0.0164359
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0765671   -0.1567176    0.0035834
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1010416   -0.1831401   -0.0189431
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0364334   -0.0876814    0.0148146
