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

agecat      studyid          country                        vagbrth    n_cell       n
----------  ---------------  -----------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0              10      86
Birth       CMC-V-BCS-2002   INDIA                          1              76      86
Birth       IRC              INDIA                          0              66     343
Birth       IRC              INDIA                          1             277     343
Birth       JiVitA-3         BANGLADESH                     0             500   17985
Birth       JiVitA-3         BANGLADESH                     1           17485   17985
Birth       JiVitA-4         BANGLADESH                     0              71    2395
Birth       JiVitA-4         BANGLADESH                     1            2324    2395
Birth       NIH-Crypto       BANGLADESH                     0             184     465
Birth       NIH-Crypto       BANGLADESH                     1             281     465
Birth       PROBIT           BELARUS                        0            1591   13817
Birth       PROBIT           BELARUS                        1           12226   13817
Birth       PROVIDE          BANGLADESH                     0             108     532
Birth       PROVIDE          BANGLADESH                     1             424     532
Birth       ZVITAMBO         ZIMBABWE                       0            1100   12814
Birth       ZVITAMBO         ZIMBABWE                       1           11714   12814
6 months    CMC-V-BCS-2002   INDIA                          0              25     368
6 months    CMC-V-BCS-2002   INDIA                          1             343     368
6 months    IRC              INDIA                          0              68     408
6 months    IRC              INDIA                          1             340     408
6 months    JiVitA-3         BANGLADESH                     0            1075   16705
6 months    JiVitA-3         BANGLADESH                     1           15630   16705
6 months    JiVitA-4         BANGLADESH                     0             337    4056
6 months    JiVitA-4         BANGLADESH                     1            3719    4056
6 months    NIH-Crypto       BANGLADESH                     0             187     457
6 months    NIH-Crypto       BANGLADESH                     1             270     457
6 months    PROBIT           BELARUS                        0            1797   15757
6 months    PROBIT           BELARUS                        1           13960   15757
6 months    PROVIDE          BANGLADESH                     0             139     603
6 months    PROVIDE          BANGLADESH                     1             464     603
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2004
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1815    2004
6 months    ZVITAMBO         ZIMBABWE                       0             721    8437
6 months    ZVITAMBO         ZIMBABWE                       1            7716    8437
24 months   CMC-V-BCS-2002   INDIA                          0              25     372
24 months   CMC-V-BCS-2002   INDIA                          1             347     372
24 months   IRC              INDIA                          0              69     409
24 months   IRC              INDIA                          1             340     409
24 months   JiVitA-3         BANGLADESH                     0             475    8555
24 months   JiVitA-3         BANGLADESH                     1            8080    8555
24 months   JiVitA-4         BANGLADESH                     0             323    4008
24 months   JiVitA-4         BANGLADESH                     1            3685    4008
24 months   NIH-Crypto       BANGLADESH                     0              99     260
24 months   NIH-Crypto       BANGLADESH                     1             161     260
24 months   PROBIT           BELARUS                        0             463    3970
24 months   PROBIT           BELARUS                        1            3507    3970
24 months   PROVIDE          BANGLADESH                     0             137     579
24 months   PROVIDE          BANGLADESH                     1             442     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6
24 months   ZVITAMBO         ZIMBABWE                       0              28     426
24 months   ZVITAMBO         ZIMBABWE                       1             398     426


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
![](/tmp/89be1206-509f-4cc3-bd8a-0f553c5eaa7a/d288ac89-d827-42c9-9b40-fe7b4f10bfed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6462326   -1.5300647    0.2375995
Birth       IRC              INDIA                          optimal              observed          -1.0128430   -1.2175664   -0.8081195
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.7663430   -0.7861159   -0.7465700
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.6955436   -0.7634365   -0.6276507
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -1.0158095   -1.1572888   -0.8743301
Birth       PROBIT           BELARUS                        optimal              observed          -1.0838121   -1.2949911   -0.8726331
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.2182308   -1.3687054   -1.0677562
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5083774   -0.5431289   -0.4736259
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4810334   -0.6385757   -0.3234910
6 months    IRC              INDIA                          optimal              observed          -0.2537406   -0.5708588    0.0633776
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.4545388   -0.5442941   -0.3647834
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.3270739   -0.5159786   -0.1381693
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.0402634   -0.0906874    0.1712142
6 months    PROBIT           BELARUS                        optimal              observed           0.5652314    0.4877359    0.6427268
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0262919   -0.1682509    0.1156671
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2176748    0.0365934    0.3987563
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.4297890    0.3373134    0.5222646
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2321769   -0.6129664    0.1486125
24 months   IRC              INDIA                          optimal              observed          -0.5795196   -0.8361894   -0.3228497
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.2101482   -1.3241924   -1.0961040
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.3190602   -1.3958779   -1.2422426
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.6502026   -0.8218536   -0.4785517
24 months   PROBIT           BELARUS                        optimal              observed           0.7243365    0.5608328    0.8878403
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.8071001   -0.9493522   -0.6648481
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8108069   -1.1511304   -0.4704834


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7774729   -0.7964631   -0.7584827
Birth       JiVitA-4         BANGLADESH                     observed             observed          -0.6890188   -0.7414800   -0.6365575
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.1549785   -1.2577390   -1.0522180
Birth       PROBIT           BELARUS                        observed             observed          -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5168886   -0.5428625   -0.4909146
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.5935070   -0.6130727   -0.5739413
6 months    JiVitA-4         BANGLADESH                     observed             observed          -0.3758037   -0.4184544   -0.3331531
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0515536   -0.0469240    0.1500313
6 months    PROBIT           BELARUS                        observed             observed           0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0769382    0.0241090    0.1297674
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.3116179    0.2858347    0.3374010
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2983928   -1.3216893   -1.2750962
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.2433658   -1.2774681   -1.2092634
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.8343077   -0.9482310   -0.7203844
24 months   PROBIT           BELARUS                        observed             observed           0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.1864319   -1.2865891   -1.0862748


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed           0.1814070   -0.6195898    0.9824038
Birth       IRC              INDIA                          optimal              observed           0.0022599   -0.1113277    0.1158475
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0111299   -0.0165156   -0.0057442
Birth       JiVitA-4         BANGLADESH                     optimal              observed           0.0065248   -0.0398288    0.0528784
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.1391690   -0.2525929   -0.0257452
Birth       PROBIT           BELARUS                        optimal              observed          -0.0653661   -0.1542913    0.0235592
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0802279   -0.2044205    0.0439648
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0085112   -0.0307457    0.0137233
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0216433   -0.0571834    0.0138969
6 months    IRC              INDIA                          optimal              observed          -0.3451892   -0.6356038   -0.0547745
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.1389683   -0.2254547   -0.0524818
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.0487298   -0.2313893    0.1339297
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.0112902   -0.0843244    0.1069049
6 months    PROBIT           BELARUS                        optimal              observed           0.0088785   -0.0330255    0.0507825
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1727988   -0.3034900   -0.0421076
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1407366   -0.3123141    0.0308408
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1181712   -0.2067922   -0.0295501
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3249736   -0.6909887    0.0410414
24 months   IRC              INDIA                          optimal              observed          -0.1662954   -0.3945150    0.0619241
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0882445   -0.2005248    0.0240357
24 months   JiVitA-4         BANGLADESH                     optimal              observed           0.0756945    0.0058988    0.1454901
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.1841050   -0.3267901   -0.0414200
24 months   PROBIT           BELARUS                        optimal              observed          -0.0261959   -0.1253669    0.0729751
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0857669   -0.2132643    0.0417306
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3756250   -0.7082448   -0.0430053
