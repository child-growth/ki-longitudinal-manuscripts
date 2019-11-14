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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             86     86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0     86
Birth       ki1000108-IRC              INDIA                          0            337    343
Birth       ki1000108-IRC              INDIA                          1              6    343
Birth       ki1000109-EE               PAKISTAN                       0            120    175
Birth       ki1000109-EE               PAKISTAN                       1             55    175
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            108    957
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            849    957
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            387    532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            145    532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            548    707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            159    707
Birth       ki1113344-GMS-Nepal        NEPAL                          0            143    596
Birth       ki1113344-GMS-Nepal        NEPAL                          1            453    596
Birth       ki1135781-COHORTS          INDIA                          0           2763   4389
Birth       ki1135781-COHORTS          INDIA                          1           1626   4389
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             38    307
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            269    307
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            500   2384
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           1884   2384
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            357    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    365
6 months    ki1000108-IRC              INDIA                          0            400    408
6 months    ki1000108-IRC              INDIA                          1              8    408
6 months    ki1000109-EE               PAKISTAN                       0            252    373
6 months    ki1000109-EE               PAKISTAN                       1            121    373
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            941   1088
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            450    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            153    603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1888   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1920
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1            399    528
6 months    ki1135781-COHORTS          INDIA                          0           2896   4694
6 months    ki1135781-COHORTS          INDIA                          1           1798   4694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            295    334
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1082   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2960   4042
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            361    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    369
24 months   ki1000108-IRC              INDIA                          0            401    409
24 months   ki1000108-IRC              INDIA                          1              8    409
24 months   ki1000109-EE               PAKISTAN                       0            112    167
24 months   ki1000109-EE               PAKISTAN                       1             55    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            433    579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            146    579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0            118    455
24 months   ki1113344-GMS-Nepal        NEPAL                          1            337    455
24 months   ki1135781-COHORTS          INDIA                          0           2214   3533
24 months   ki1135781-COHORTS          INDIA                          1           1319   3533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             34    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            255    289
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1032   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2961   3993


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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
![](/tmp/964e950d-becc-4823-b299-20b49d061abc/e86797e0-934e-4cc7-a28f-86f18fa22a11/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9919424   -1.1805471   -0.8033377
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.4426359   -0.6907778   -0.1944940
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6156644   -0.7805488   -0.4507799
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2254819   -1.3283137   -1.1226501
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2014671   -1.2952103   -1.1077238
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1374206   -1.2525952   -1.0222461
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9414779   -0.9928764   -0.8900794
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5894722   -0.8974146   -0.2815299
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.7825433   -0.8832597   -0.6818270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2916545   -0.9922325    0.4089235
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7743971   -1.2420099   -0.3067843
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.7197637   -0.8624729   -0.5770544
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5405186   -0.6567042   -0.4243331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.8114064   -1.0664421   -0.5563706
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0671811   -0.1986330    0.0642708
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0612680   -0.0434686    0.1660046
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0237860   -0.2364977    0.2840697
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4887695   -0.6708912   -0.3066477
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6501882   -0.6951747   -0.6052018
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4963351   -0.8823102   -0.1103601
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2735957   -0.3527000   -0.1944913
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5661140   -0.9551349   -0.1770931
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7383450   -0.8311775   -0.6455125
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -1.0963445   -1.2942837   -0.8984053
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9498475   -1.0492699   -0.8504250
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4842383   -0.6308412   -0.3376353
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2617351   -1.4005155   -1.1229546
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5422008   -0.5865671   -0.4978345
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1046947   -1.5949097   -0.6144797
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1933617   -1.2578349   -1.1288885


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -0.3410000   -0.5302198   -0.1517802
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6570846   -0.8496671   -0.4645022
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1277349   -1.2174865   -1.0379833
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9755867   -1.0106993   -0.9404741
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.8643648   -0.9709313   -0.7577983
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6907341   -0.7437042   -0.6377640
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5045068   -0.6566169   -0.3523968
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7695800   -0.8839306   -0.6552294
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6734421   -0.8121314   -0.5347528
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0688763    0.0147308    0.1230218
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.5992551   -0.6878945   -0.5106156
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7160077   -0.7492815   -0.6827338
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.6044910   -0.7122040   -0.4967781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3760651   -0.4191017   -0.3330285
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5436992   -0.6434110   -0.4439874
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -1.0103892   -1.1580613   -0.8627171
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1238388   -1.2161263   -1.0315513
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6520577   -0.6860033   -0.6181122
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2989273   -1.4377964   -1.1600583
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2421463   -1.2763113   -1.2079812


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0186407   -0.0515487    0.0142674
Birth       ki1000109-EE               PAKISTAN                       optimal              observed           0.1016359   -0.0654832    0.2687549
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0414203   -0.1343226    0.0514821
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0729767   -0.1566383    0.0106848
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0426843   -0.0899431    0.0045745
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0096857   -0.0701495    0.0895210
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0341088   -0.0710135    0.0027960
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2748926   -0.5938669    0.0440817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0918093    0.0086767    0.1749418
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2128524   -0.9136691    0.4879644
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1754674   -0.2662329    0.6171677
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0498163   -0.1277784    0.0281458
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1329235   -0.2908847    0.0250378
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2007515   -0.4356817    0.0341787
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1319096   -0.2327042   -0.0311150
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0315057   -0.0977266    0.0347151
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0450903   -0.2135065    0.3036870
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1104856   -0.2692172    0.0482460
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0658194   -0.0979407   -0.0336982
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1081559   -0.4785274    0.2622157
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1024694   -0.1689131   -0.0360257
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0224148   -0.3679786    0.4128082
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0074700   -0.0173983    0.0024583
24 months   ki1000109-EE               PAKISTAN                       optimal              observed           0.0859553   -0.0654852    0.2373958
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0569805   -0.0050291    0.1189901
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1261119   -0.2326914   -0.0195324
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1378963    0.0225953    0.2531972
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1098569   -0.1395447   -0.0801692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1942326   -0.6276329    0.2391677
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0487846   -0.1043444    0.0067752
