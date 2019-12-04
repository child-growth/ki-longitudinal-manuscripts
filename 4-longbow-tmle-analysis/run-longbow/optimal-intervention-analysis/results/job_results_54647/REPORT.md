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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             27    292
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            265    292
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
![](/tmp/66067a46-ebff-4a5d-b7fc-8f9aadae39cc/ccff1f95-9162-4b57-8df1-244abc5ba1af/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9921082   -1.1807109   -0.8035055
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.5326315   -0.8056248   -0.2596382
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6156644   -0.7805488   -0.4507799
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.3004215   -1.3964133   -1.2044297
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2244849   -1.3230875   -1.1258822
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0827678   -1.2108185   -0.9547171
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9622272   -1.0126378   -0.9118166
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5565345   -1.0274083   -0.0856607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.7491056   -0.8585895   -0.6396217
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5742113   -1.1522443    0.0038217
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.8744759   -1.0764213   -0.6725305
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.7232425   -0.8661072   -0.5803778
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5405186   -0.6567042   -0.4243331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.8491582   -1.1168254   -0.5814911
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0989871   -0.2216158    0.0236417
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0276276   -0.0686212    0.1238765
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1695735   -0.3846938    0.0455467
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5119199   -0.6922835   -0.3315563
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6534853   -0.6976334   -0.6093372
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6125832   -1.0072497   -0.2179167
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2758688   -0.3510709   -0.2006667
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5686933   -0.8893757   -0.2480109
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7384584   -0.8312901   -0.6456267
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.9827162   -1.1737863   -0.7916462
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9017142   -1.0059116   -0.7975167
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5205971   -0.6773437   -0.3638505
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1296712   -1.2871771   -0.9721653
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5402508   -0.5849939   -0.4955077
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1219822   -1.6447711   -0.5991933
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1796303   -1.2422418   -1.1170188


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.8532192   -0.9644938   -0.7419446
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
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0184749   -0.0511544    0.0142046
Birth       ki1000109-EE               PAKISTAN                       optimal              observed           0.1916315    0.0048230    0.3784400
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0414203   -0.1343226    0.0514821
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0019628   -0.0621984    0.0661240
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0196665   -0.0731178    0.0337849
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0449671   -0.1362270    0.0462928
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0133595   -0.0501459    0.0234269
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2966847   -0.7769955    0.1836262
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0583715   -0.0258807    0.1426238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0697045   -0.5097929    0.6492018
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.2755462    0.1354733    0.4156190
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0463375   -0.1259426    0.0332677
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1329235   -0.2908847    0.0250378
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1629997   -0.4092133    0.0832140
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1001036   -0.1963913   -0.0038159
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0021346   -0.0551718    0.0594410
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2384498    0.0260852    0.4508144
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0873351   -0.2431457    0.0684755
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0625224   -0.0932812   -0.0317635
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0080922   -0.3573358    0.3735201
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1001963   -0.1660969   -0.0342957
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0249941   -0.3003200    0.3503083
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0073566   -0.0171299    0.0024167
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.0276730   -0.1242414    0.0688954
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0088471   -0.0571099    0.0748042
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0897531   -0.2044673    0.0249611
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0058323   -0.1259582    0.1376229
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1118069   -0.1419006   -0.0817133
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1769451   -0.6392785    0.2853883
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0625159   -0.1178282   -0.0072037
