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
![](/tmp/160457b9-d35d-4472-a58c-e218b78546b7/c621fe9a-5abe-4f3e-af1c-c36596b46fdc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/160457b9-d35d-4472-a58c-e218b78546b7/c621fe9a-5abe-4f3e-af1c-c36596b46fdc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/160457b9-d35d-4472-a58c-e218b78546b7/c621fe9a-5abe-4f3e-af1c-c36596b46fdc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.6938623   -1.7690571    0.3813325
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.4658953   -0.7880397   -0.1437508
Birth       IRC              INDIA                          0                    NA                -1.0662154   -1.5504023   -0.5820285
Birth       IRC              INDIA                          1                    NA                -0.9967694   -1.1985747   -0.7949642
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.0014667   -1.0828617   -0.9200717
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.7695587   -0.7889167   -0.7502007
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.0487306   -1.2749477   -0.8225135
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.6787939   -0.7324587   -0.6251291
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -1.0633433   -1.2145181   -0.9121685
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -1.2134046   -1.3546295   -1.0721797
Birth       PROBIT           BELARUS                        0                    NA                -1.0701587   -1.2902697   -0.8500478
Birth       PROBIT           BELARUS                        1                    NA                -1.1598524   -1.3719989   -0.9477058
Birth       PROVIDE          BANGLADESH                     0                    NA                -1.3253244   -1.5073037   -1.1433451
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.2890298   -1.3746193   -1.2034404
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.6827415   -0.7743811   -0.5911019
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5037820   -0.5309250   -0.4766390
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.6667690   -1.1513439   -0.1821942
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.4812371   -0.6388857   -0.3235884
6 months    IRC              INDIA                          0                    NA                -0.3081637   -0.6493279    0.0330005
6 months    IRC              INDIA                          1                    NA                -0.6566802   -0.8065005   -0.5068598
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.4461895   -0.5352549   -0.3571242
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.6025356   -0.6223693   -0.5827019
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.3249400   -0.5215926   -0.1282875
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.3806406   -0.4258794   -0.3354018
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0491383   -0.0941366    0.1924132
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0729280   -0.0626337    0.2084898
6 months    PROBIT           BELARUS                        0                    NA                 0.5968150    0.5088159    0.6848141
6 months    PROBIT           BELARUS                        1                    NA                 0.5726373    0.5128956    0.6323790
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0781842   -0.2570215    0.1006530
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.2043872   -0.2997587   -0.1090158
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1921199   -0.0035115    0.3877513
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0649863    0.0098585    0.1201141
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.4423302    0.3492320    0.5354284
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.2992339    0.2723204    0.3261474
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.1671407   -0.6039267    0.2696452
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.5803655   -0.6849787   -0.4757523
24 months   IRC              INDIA                          0                    NA                -0.5343819   -0.7958023   -0.2729616
24 months   IRC              INDIA                          1                    NA                -0.7897473   -0.8866165   -0.6928780
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.2249669   -1.3401165   -1.1098173
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.3074969   -1.3316470   -1.2833468
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.2665845   -1.3830314   -1.1501376
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.2446326   -1.2802412   -1.2090240
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.7257246   -0.9165047   -0.5349445
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.8529044   -1.0034288   -0.7023801
24 months   PROBIT           BELARUS                        0                    NA                 0.7444954    0.5803737    0.9086172
24 months   PROBIT           BELARUS                        1                    NA                 0.6935168    0.5820777    0.8049559
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.8890767   -1.0659739   -0.7121796
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.8862958   -0.9824002   -0.7901915
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.6095088   -0.9323771   -0.2866404
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.2138099   -1.3177839   -1.1098359


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
Birth       CMC-V-BCS-2002   INDIA                          1                    0                  0.2279670   -0.9072765    1.3632106
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.0694460   -0.4562554    0.5951473
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                  0.2319080    0.1490206    0.3147954
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.3699367    0.1371148    0.6027586
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -0.1500613   -0.3571075    0.0569849
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -0.0896936   -0.2018889    0.0225016
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                  0.0362946   -0.1646412    0.2372303
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                  0.1789595    0.0835137    0.2744052
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.1855320   -0.3229930    0.6940569
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.3485164   -0.7257090    0.0286761
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.1563460   -0.2455825   -0.0671095
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.0557006   -0.2573005    0.1458993
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                  0.0237897   -0.1738685    0.2214480
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0241777   -0.0861447    0.0377894
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.1262030   -0.3298280    0.0774220
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1271336   -0.3307389    0.0764717
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.1430963   -0.2398917   -0.0463009
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.4132248   -0.8638841    0.0374345
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.2553653   -0.5356822    0.0249516
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.0825300   -0.2004039    0.0353440
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                  0.0219519   -0.0982875    0.1421913
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1271798   -0.3722122    0.1178525
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.0509786   -0.1679221    0.0659648
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                  0.0027809   -0.1984612    0.2040230
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.6043011   -0.9437371   -0.2648651


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                 0.2290367   -0.7986843    1.2567577
Birth       IRC              INDIA                          0                    NA                 0.0556323   -0.3726094    0.4838740
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.2239938    0.1437440    0.3042436
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.3597118    0.1340336    0.5853900
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0916352   -0.2177529    0.0344825
Birth       PROBIT           BELARUS                        0                    NA                -0.0790195   -0.1780841    0.0200452
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.0268658   -0.1361357    0.1898672
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.1658529    0.0780888    0.2536170
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.1640924   -0.3107310    0.6389159
6 months    IRC              INDIA                          0                    NA                -0.2907660   -0.6066560    0.0251240
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.1473175   -0.2328904   -0.0617446
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0508637   -0.2406653    0.1389378
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0024153   -0.1164705    0.1213012
6 months    PROBIT           BELARUS                        0                    NA                -0.0227050   -0.0775797    0.0321696
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.1209064   -0.2840496    0.0422368
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1151817   -0.3014338    0.0710704
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.1307123   -0.2199459   -0.0414787
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.3900098   -0.8128707    0.0328511
24 months   IRC              INDIA                          0                    NA                -0.2114331   -0.4463604    0.0234943
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0734258   -0.1870402    0.0401886
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0232187   -0.0883193    0.1347567
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.1085831   -0.2648015    0.0476354
24 months   PROBIT           BELARUS                        0                    NA                -0.0463548   -0.1501652    0.0574557
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0037903   -0.1647693    0.1571888
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.5769231   -0.8946149   -0.2592314
