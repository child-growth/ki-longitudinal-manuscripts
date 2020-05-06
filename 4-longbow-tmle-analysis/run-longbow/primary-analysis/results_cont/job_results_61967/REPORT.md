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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        vagbrth    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0              10      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          1              76      86  whz              
Birth       IRC              INDIA                          0              66     343  whz              
Birth       IRC              INDIA                          1             277     343  whz              
Birth       JiVitA-3         BANGLADESH                     0             500   17985  whz              
Birth       JiVitA-3         BANGLADESH                     1           17485   17985  whz              
Birth       JiVitA-4         BANGLADESH                     0              71    2395  whz              
Birth       JiVitA-4         BANGLADESH                     1            2324    2395  whz              
Birth       NIH-Crypto       BANGLADESH                     0             184     465  whz              
Birth       NIH-Crypto       BANGLADESH                     1             281     465  whz              
Birth       PROBIT           BELARUS                        0            1591   13817  whz              
Birth       PROBIT           BELARUS                        1           12226   13817  whz              
Birth       PROVIDE          BANGLADESH                     0             108     532  whz              
Birth       PROVIDE          BANGLADESH                     1             424     532  whz              
Birth       ZVITAMBO         ZIMBABWE                       0            1100   12814  whz              
Birth       ZVITAMBO         ZIMBABWE                       1           11714   12814  whz              
6 months    CMC-V-BCS-2002   INDIA                          0              25     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          1             343     368  whz              
6 months    IRC              INDIA                          0              68     408  whz              
6 months    IRC              INDIA                          1             340     408  whz              
6 months    JiVitA-3         BANGLADESH                     0            1075   16705  whz              
6 months    JiVitA-3         BANGLADESH                     1           15630   16705  whz              
6 months    JiVitA-4         BANGLADESH                     0             337    4056  whz              
6 months    JiVitA-4         BANGLADESH                     1            3719    4056  whz              
6 months    NIH-Crypto       BANGLADESH                     0             187     457  whz              
6 months    NIH-Crypto       BANGLADESH                     1             270     457  whz              
6 months    PROBIT           BELARUS                        0            1797   15757  whz              
6 months    PROBIT           BELARUS                        1           13960   15757  whz              
6 months    PROVIDE          BANGLADESH                     0             139     603  whz              
6 months    PROVIDE          BANGLADESH                     1             464     603  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2004  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1815    2004  whz              
6 months    ZVITAMBO         ZIMBABWE                       0             721    8437  whz              
6 months    ZVITAMBO         ZIMBABWE                       1            7716    8437  whz              
24 months   CMC-V-BCS-2002   INDIA                          0              25     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          1             347     372  whz              
24 months   IRC              INDIA                          0              69     409  whz              
24 months   IRC              INDIA                          1             340     409  whz              
24 months   JiVitA-3         BANGLADESH                     0             475    8555  whz              
24 months   JiVitA-3         BANGLADESH                     1            8080    8555  whz              
24 months   JiVitA-4         BANGLADESH                     0             323    4008  whz              
24 months   JiVitA-4         BANGLADESH                     1            3685    4008  whz              
24 months   NIH-Crypto       BANGLADESH                     0              99     260  whz              
24 months   NIH-Crypto       BANGLADESH                     1             161     260  whz              
24 months   PROBIT           BELARUS                        0             463    3970  whz              
24 months   PROBIT           BELARUS                        1            3507    3970  whz              
24 months   PROVIDE          BANGLADESH                     0             137     579  whz              
24 months   PROVIDE          BANGLADESH                     1             442     579  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       0              28     426  whz              
24 months   ZVITAMBO         ZIMBABWE                       1             398     426  whz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8aad120e-8f8e-4a72-a2d1-138fbf1992c6/fc6ed04c-f8ed-43fc-9f56-18aad8ae9b94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8aad120e-8f8e-4a72-a2d1-138fbf1992c6/fc6ed04c-f8ed-43fc-9f56-18aad8ae9b94/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8aad120e-8f8e-4a72-a2d1-138fbf1992c6/fc6ed04c-f8ed-43fc-9f56-18aad8ae9b94/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.3013908   -1.2713206    0.6685390
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.4621497   -0.7846176   -0.1396817
Birth       IRC              INDIA                          0                    NA                -1.1158889   -1.6199964   -0.6117814
Birth       IRC              INDIA                          1                    NA                -0.9864356   -1.1880047   -0.7848665
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.9939000   -1.0750796   -0.9127204
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.7693027   -0.7886329   -0.7499724
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.0356838   -1.2978293   -0.7735382
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.6786260   -0.7321937   -0.6250583
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -1.0467749   -1.1930796   -0.9004702
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -1.2141986   -1.3536101   -1.0747870
Birth       PROBIT           BELARUS                        0                    NA                -1.0678258   -1.2826223   -0.8530293
Birth       PROBIT           BELARUS                        1                    NA                -1.1607418   -1.3733830   -0.9481007
Birth       PROVIDE          BANGLADESH                     0                    NA                -1.3100282   -1.4938617   -1.1261946
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.2927384   -1.3792591   -1.2062177
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.6759225   -0.7675297   -0.5843153
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5028194   -0.5299676   -0.4756712
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.9800353   -1.5042462   -0.4558245
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.4795547   -0.6374205   -0.3216890
6 months    IRC              INDIA                          0                    NA                -0.3358875   -0.6840498    0.0122748
6 months    IRC              INDIA                          1                    NA                -0.6506659   -0.8003752   -0.5009565
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.4532280   -0.5415091   -0.3649468
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.6021983   -0.6219805   -0.5824161
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.3403750   -0.5311770   -0.1495730
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.3793678   -0.4244505   -0.3342851
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0364589   -0.1112755    0.1841933
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0842001   -0.0499153    0.2183156
6 months    PROBIT           BELARUS                        0                    NA                 0.5843818    0.4959628    0.6728008
6 months    PROBIT           BELARUS                        1                    NA                 0.5729894    0.5133657    0.6326130
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0135818   -0.1707292    0.1978929
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.2091141   -0.3039644   -0.1142637
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2296009    0.0390236    0.4201782
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0667825    0.0117002    0.1218647
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.4484903    0.3549502    0.5420305
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.2987050    0.2717879    0.3256220
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.1687985   -0.6187871    0.2811900
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.5791731   -0.6836748   -0.4746713
24 months   IRC              INDIA                          0                    NA                -0.5390967   -0.8052057   -0.2729877
24 months   IRC              INDIA                          1                    NA                -0.7881085   -0.8839625   -0.6922546
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.2153990   -1.3288052   -1.1019927
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.3067413   -1.3308831   -1.2825995
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.2567136   -1.3736514   -1.1397758
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.2446067   -1.2800970   -1.2091163
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.7504229   -0.9487183   -0.5521276
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.8609187   -1.0077867   -0.7140507
24 months   PROBIT           BELARUS                        0                    NA                 0.7445112    0.5711284    0.9178940
24 months   PROBIT           BELARUS                        1                    NA                 0.6935535    0.5814465    0.8056605
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.9412790   -1.1174090   -0.7651490
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.8771248   -0.9716814   -0.7825682
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.7945118   -1.1570402   -0.4319834
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.2154312   -1.3194029   -1.1114595


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7774729   -0.7964631   -0.7584827
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6890188   -0.7414800   -0.6365575
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.1549785   -1.2577390   -1.0522180
Birth       PROBIT           BELARUS                        NA                   NA                -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5168886   -0.5428625   -0.4909146
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5935070   -0.6130727   -0.5739413
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3758037   -0.4184544   -0.3331531
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0515536   -0.0469240    0.1500313
6 months    PROBIT           BELARUS                        NA                   NA                 0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0769382    0.0241090    0.1297674
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3116179    0.2858347    0.3374010
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2983928   -1.3216893   -1.2750962
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2433658   -1.2774681   -1.2092634
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.8343077   -0.9482310   -0.7203844
24 months   PROBIT           BELARUS                        NA                   NA                 0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1864319   -1.2865891   -1.0862748


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -0.1607588   -1.1849643    0.8634466
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.1294533   -0.4143662    0.6732728
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                  0.2245973    0.1418706    0.3073241
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.3570578    0.0894584    0.6246571
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -0.1674237   -0.3701283    0.0352809
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -0.0929160   -0.2066747    0.0208426
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                  0.0172897   -0.1856732    0.2202527
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                  0.1731031    0.0777068    0.2684993
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.5004806   -0.0460168    1.0469779
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.3147784   -0.6977712    0.0682145
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.1489703   -0.2377019   -0.0602388
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.0389928   -0.2349734    0.1569879
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                  0.0477412   -0.1520242    0.2475067
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0113925   -0.0743749    0.0515900
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.2226959   -0.4319113   -0.0134805
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1628184   -0.3613625    0.0357257
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.1497854   -0.2469746   -0.0525961
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.4103745   -0.8733880    0.0526390
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.2490118   -0.5316663    0.0336426
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.0913424   -0.2079404    0.0252557
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                  0.0121069   -0.1080931    0.1323069
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1104958   -0.3585079    0.1375164
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.0509576   -0.1814216    0.0795063
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                  0.0641542   -0.1337987    0.2621071
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.4209194   -0.7985088   -0.0433300


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.1634347   -1.0850121    0.7581426
Birth       IRC              INDIA                          0                    NA                 0.1053058   -0.3396986    0.5503102
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.2164271    0.1363589    0.2964953
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.3466650    0.0872059    0.6061241
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.1082036   -0.2307973    0.0143901
Birth       PROBIT           BELARUS                        0                    NA                -0.0813524   -0.1816079    0.0189032
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.0115695   -0.1541782    0.1773172
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.1590339    0.0712954    0.2467725
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.4773587   -0.0358849    0.9906023
6 months    IRC              INDIA                          0                    NA                -0.2630422   -0.5849263    0.0588419
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.1402791   -0.2253715   -0.0551867
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0354287   -0.2196456    0.1487882
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0150947   -0.1075474    0.1377368
6 months    PROBIT           BELARUS                        0                    NA                -0.0102719   -0.0663965    0.0458527
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.2126725   -0.3829828   -0.0423622
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1526627   -0.3339389    0.0286136
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.1368724   -0.2264684   -0.0472765
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.3883520   -0.8240605    0.0473565
24 months   IRC              INDIA                          0                    NA                -0.2067183   -0.4446733    0.0312367
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0829938   -0.1953727    0.0293851
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0133478   -0.0981341    0.1248297
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0838847   -0.2432644    0.0754949
24 months   PROBIT           BELARUS                        0                    NA                -0.0463705   -0.1630518    0.0703107
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0484120   -0.1104904    0.2073144
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.3919201   -0.7460497   -0.0377904
