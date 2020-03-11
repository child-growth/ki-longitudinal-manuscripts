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

agecat      studyid          country                        hdlvry    n_cell      n
----------  ---------------  -----------------------------  -------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0             86     86
Birth       CMC-V-BCS-2002   INDIA                          1              0     86
Birth       COHORTS          INDIA                          0           2763   4389
Birth       COHORTS          INDIA                          1           1626   4389
Birth       EE               PAKISTAN                       0            120    175
Birth       EE               PAKISTAN                       1             55    175
Birth       GMS-Nepal        NEPAL                          0            143    596
Birth       GMS-Nepal        NEPAL                          1            453    596
Birth       IRC              INDIA                          0            337    343
Birth       IRC              INDIA                          1              6    343
Birth       JiVitA-3         BANGLADESH                     0             27    292
Birth       JiVitA-3         BANGLADESH                     1            265    292
Birth       JiVitA-4         BANGLADESH                     0            500   2384
Birth       JiVitA-4         BANGLADESH                     1           1884   2384
Birth       NIH-Crypto       BANGLADESH                     0            548    707
Birth       NIH-Crypto       BANGLADESH                     1            159    707
Birth       PROVIDE          BANGLADESH                     0            387    532
Birth       PROVIDE          BANGLADESH                     1            145    532
Birth       SAS-CompFeed     INDIA                          0            108    957
Birth       SAS-CompFeed     INDIA                          1            849    957
6 months    CMC-V-BCS-2002   INDIA                          0            357    365
6 months    CMC-V-BCS-2002   INDIA                          1              8    365
6 months    COHORTS          INDIA                          0           2896   4694
6 months    COHORTS          INDIA                          1           1798   4694
6 months    EE               PAKISTAN                       0            252    373
6 months    EE               PAKISTAN                       1            121    373
6 months    GMS-Nepal        NEPAL                          0            129    528
6 months    GMS-Nepal        NEPAL                          1            399    528
6 months    IRC              INDIA                          0            400    408
6 months    IRC              INDIA                          1              8    408
6 months    JiVitA-3         BANGLADESH                     0             39    334
6 months    JiVitA-3         BANGLADESH                     1            295    334
6 months    JiVitA-4         BANGLADESH                     0           1082   4042
6 months    JiVitA-4         BANGLADESH                     1           2960   4042
6 months    NIH-Crypto       BANGLADESH                     0            554    715
6 months    NIH-Crypto       BANGLADESH                     1            161    715
6 months    PROVIDE          BANGLADESH                     0            450    603
6 months    PROVIDE          BANGLADESH                     1            153    603
6 months    SAS-CompFeed     INDIA                          0            147   1088
6 months    SAS-CompFeed     INDIA                          1            941   1088
6 months    SAS-FoodSuppl    INDIA                          0             76    380
6 months    SAS-FoodSuppl    INDIA                          1            304    380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1888   1920
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1920
24 months   CMC-V-BCS-2002   INDIA                          0            361    369
24 months   CMC-V-BCS-2002   INDIA                          1              8    369
24 months   COHORTS          INDIA                          0           2214   3533
24 months   COHORTS          INDIA                          1           1319   3533
24 months   EE               PAKISTAN                       0            112    167
24 months   EE               PAKISTAN                       1             55    167
24 months   GMS-Nepal        NEPAL                          0            118    455
24 months   GMS-Nepal        NEPAL                          1            337    455
24 months   IRC              INDIA                          0            401    409
24 months   IRC              INDIA                          1              8    409
24 months   JiVitA-3         BANGLADESH                     0             34    289
24 months   JiVitA-3         BANGLADESH                     1            255    289
24 months   JiVitA-4         BANGLADESH                     0           1032   3993
24 months   JiVitA-4         BANGLADESH                     1           2961   3993
24 months   NIH-Crypto       BANGLADESH                     0            391    514
24 months   NIH-Crypto       BANGLADESH                     1            123    514
24 months   PROVIDE          BANGLADESH                     0            433    579
24 months   PROVIDE          BANGLADESH                     1            146    579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/235f971b-93d8-4baa-92cd-391bec6fc143/0612f58a-94e0-40f4-af30-fe2b2e74e906/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          optimal              observed          -0.9361804   -1.0031492   -0.8692115
Birth       EE               PAKISTAN                       optimal              observed          -0.1446782   -0.4586229    0.1692666
Birth       GMS-Nepal        NEPAL                          optimal              observed          -1.0296852   -1.1945621   -0.8648082
Birth       IRC              INDIA                          optimal              observed          -0.9919875   -1.1805922   -0.8033828
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.5817397   -0.8371993   -0.3262800
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.6874331   -0.7754140   -0.5994523
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -1.1979244   -1.2920700   -1.1037788
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.2355457   -1.3494898   -1.1216017
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.6413660   -0.7823629   -0.5003691
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5855050   -1.1909653    0.0199554
6 months    COHORTS          INDIA                          optimal              observed          -0.6767343   -0.7274172   -0.6260515
6 months    EE               PAKISTAN                       optimal              observed          -0.6669836   -0.8088420   -0.5251253
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.5705648   -0.7493891   -0.3917405
6 months    IRC              INDIA                          optimal              observed          -0.7231593   -1.2152238   -0.2310948
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.5025282   -0.8114624   -0.1935940
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.2903334   -0.3747751   -0.2058917
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.0696029   -0.0190463    0.1582521
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.2487060   -0.3654168   -0.1319951
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.5574744   -0.6457101   -0.4692388
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.8114743   -1.0785248   -0.5444239
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0359194   -0.3082187    0.2363799
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3051100   -0.8609573    0.2507372
24 months   COHORTS          INDIA                          optimal              observed          -0.5754524   -0.6222585   -0.5286464
24 months   EE               PAKISTAN                       optimal              observed          -1.0646617   -1.2521024   -0.8772211
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.2554446   -1.3963974   -1.1144919
24 months   IRC              INDIA                          optimal              observed          -0.7381427   -0.8309731   -0.6453122
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.0835172   -1.4950409   -0.6719935
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.1861742   -1.2538445   -1.1185038
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.5710595   -0.7227169   -0.4194022
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.8830262   -0.9773860   -0.7886664


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          observed             observed          -0.9755867   -1.0106993   -0.9404741
Birth       EE               PAKISTAN                       observed             observed          -0.3410000   -0.5302198   -0.1517802
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.1277349   -1.2174865   -1.0379833
Birth       IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.8532192   -0.9644938   -0.7419446
Birth       JiVitA-4         BANGLADESH                     observed             observed          -0.6907341   -0.7437042   -0.6377640
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          observed             observed          -0.6570846   -0.8496671   -0.4645022
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -0.5045068   -0.6566169   -0.3523968
6 months    COHORTS          INDIA                          observed             observed          -0.7160077   -0.7492815   -0.6827338
6 months    EE               PAKISTAN                       observed             observed          -0.7695800   -0.8839306   -0.6552294
6 months    GMS-Nepal        NEPAL                          observed             observed          -0.5992551   -0.6878945   -0.5106156
6 months    IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.6044910   -0.7122040   -0.4967781
6 months    JiVitA-4         BANGLADESH                     observed             observed          -0.3760651   -0.4191017   -0.3330285
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          observed             observed          -0.6734421   -0.8121314   -0.5347528
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0688763    0.0147308    0.1230218
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -0.5436992   -0.6434110   -0.4439874
24 months   COHORTS          INDIA                          observed             observed          -0.6520577   -0.6860033   -0.6181122
24 months   EE               PAKISTAN                       observed             observed          -1.0103892   -1.1580613   -0.8627171
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.1238388   -1.2161263   -1.0315513
24 months   IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2989273   -1.4377964   -1.1600583
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.2421463   -1.2763113   -1.2079812
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          optimal              observed          -0.0394063   -0.0956966    0.0168840
Birth       EE               PAKISTAN                       optimal              observed          -0.1963218   -0.4278746    0.0352309
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.0980497   -0.2300614    0.0339619
Birth       IRC              INDIA                          optimal              observed          -0.0185956   -0.0516944    0.0145032
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.2714795   -0.5357199   -0.0072391
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.0033009   -0.0752314    0.0686295
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.0462270   -0.0947864    0.0023325
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0629129   -0.1496144    0.0237886
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0157187   -0.1059920    0.0745547
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed           0.0809981   -0.5253243    0.6873206
6 months    COHORTS          INDIA                          optimal              observed          -0.0392733   -0.0784532   -0.0000934
6 months    EE               PAKISTAN                       optimal              observed          -0.1025964   -0.2003830   -0.0048097
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.0286902   -0.1859662    0.1285858
6 months    IRC              INDIA                          optimal              observed           0.1242296   -0.3397958    0.5882549
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.1019628   -0.3817514    0.1778258
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.0857317   -0.1572458   -0.0142175
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0398406   -0.0845487    0.0048674
6 months    PROVIDE          BANGLADESH                     optimal              observed           0.0496153   -0.0391194    0.1383500
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.1159677   -0.2577741    0.0258387
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.2006835   -0.4457296    0.0443625
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1047957   -0.1646476    0.3742389
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2385891   -0.7901966    0.3130183
24 months   COHORTS          INDIA                          optimal              observed          -0.0766053   -0.1095054   -0.0437053
24 months   EE               PAKISTAN                       optimal              observed           0.0542725   -0.0702645    0.1788096
24 months   GMS-Nepal        NEPAL                          optimal              observed           0.1316058    0.0223979    0.2408137
24 months   IRC              INDIA                          optimal              observed          -0.0076723   -0.0176940    0.0023493
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.2154101   -0.5985964    0.1677762
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.0559721   -0.1128745    0.0009303
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.0392906   -0.1544256    0.0758443
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0098408   -0.0568351    0.0371535
