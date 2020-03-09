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
![](/tmp/512c3859-61a6-4410-9f78-7994cff775f8/f69e2896-7912-4caf-9a1a-bc6aa9443e5e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/512c3859-61a6-4410-9f78-7994cff775f8/f69e2896-7912-4caf-9a1a-bc6aa9443e5e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/512c3859-61a6-4410-9f78-7994cff775f8/f69e2896-7912-4caf-9a1a-bc6aa9443e5e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.2349355   -1.1333674    0.6634965
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.4614936   -0.7836368   -0.1393505
Birth       IRC              INDIA                          0                    NA                -1.1316775   -1.6415783   -0.6217767
Birth       IRC              INDIA                          1                    NA                -0.9785128   -1.1798340   -0.7771916
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.0103114   -1.0909468   -0.9296759
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.7693642   -0.7887375   -0.7499909
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.9606423   -1.1654316   -0.7558529
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.6793950   -0.7328943   -0.6258957
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -1.0574547   -1.2045097   -0.9103996
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -1.2094934   -1.3495013   -1.0694854
Birth       PROBIT           BELARUS                        0                    NA                -1.0620844   -1.2776860   -0.8464828
Birth       PROBIT           BELARUS                        1                    NA                -1.1612237   -1.3737802   -0.9486672
Birth       PROVIDE          BANGLADESH                     0                    NA                -1.3357697   -1.5260804   -1.1454589
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.2843510   -1.3707987   -1.1979032
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.6856493   -0.7771824   -0.5941162
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5026907   -0.5298296   -0.4755519
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.6581940   -1.2050710   -0.1113171
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.4789909   -0.6364355   -0.3215464
6 months    IRC              INDIA                          0                    NA                -0.3673012   -0.7050722   -0.0295301
6 months    IRC              INDIA                          1                    NA                -0.6454519   -0.7933957   -0.4975080
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.4566331   -0.5500618   -0.3632045
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.6025582   -0.6224093   -0.5827071
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.3431791   -0.5300274   -0.1563307
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.3798614   -0.4250102   -0.3347125
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0182020   -0.1274393    0.1638433
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0888333   -0.0449470    0.2226136
6 months    PROBIT           BELARUS                        0                    NA                 0.5862515    0.5012592    0.6712439
6 months    PROBIT           BELARUS                        1                    NA                 0.5731057    0.5134443    0.6327671
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0319390   -0.2089665    0.1450885
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.2153259   -0.3107424   -0.1199094
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1815159   -0.0142458    0.3772775
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0661155    0.0109421    0.1212889
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.4168318    0.3260856    0.5075781
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.2986603    0.2717442    0.3255765
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0142793   -0.4364209    0.4078622
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.5797975   -0.6844042   -0.4751909
24 months   IRC              INDIA                          0                    NA                -0.5652668   -0.8298780   -0.3006556
24 months   IRC              INDIA                          1                    NA                -0.7838230   -0.8798369   -0.6878091
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.2138164   -1.3279682   -1.0996647
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.3073998   -1.3314846   -1.2833150
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.2778308   -1.3935922   -1.1620693
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.2443051   -1.2801399   -1.2084703
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.7279630   -0.9168064   -0.5391195
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.8487715   -0.9991892   -0.6983538
24 months   PROBIT           BELARUS                        0                    NA                 0.7339765    0.5661048    0.9018482
24 months   PROBIT           BELARUS                        1                    NA                 0.6944121    0.5831220    0.8057022
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.9057828   -1.0736583   -0.7379074
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.8772490   -0.9726589   -0.7818391
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.7668797   -1.1023990   -0.4313604
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.2148632   -1.3188609   -1.1108654


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
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -0.2265581   -1.1830167    0.7299004
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.1531647   -0.3954494    0.7017788
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                  0.2409472    0.1589282    0.3229661
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.2812472    0.0691495    0.4933450
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -0.1520387   -0.3564378    0.0523604
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -0.0991393   -0.2083617    0.0100830
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                  0.0514187   -0.1583115    0.2611490
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                  0.1829586    0.0876116    0.2783055
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.1792031   -0.3862564    0.7446626
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.2781507   -0.6477112    0.0914099
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.1459250   -0.2395934   -0.0522567
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.0366823   -0.2291681    0.1558034
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                  0.0706313   -0.1269295    0.2681921
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0131458   -0.0719528    0.0456612
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.1833869   -0.3856641    0.0188904
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1154004   -0.3191520    0.0883512
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.1181715   -0.2127134   -0.0236295
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.5655182   -1.0007044   -0.1303320
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.2185562   -0.5003260    0.0632136
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.0935834   -0.2101941    0.0230274
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                  0.0335257   -0.0862819    0.1533334
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1208086   -0.3649021    0.1232850
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.0395644   -0.1615972    0.0824684
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                  0.0285338   -0.1631081    0.2201758
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.4479835   -0.7995344   -0.0964325


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.2298901   -1.0831444    0.6233642
Birth       IRC              INDIA                          0                    NA                 0.1210944   -0.3287335    0.5709223
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.2328385    0.1534828    0.3121941
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.2716235    0.0677711    0.4754759
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0975238   -0.2214230    0.0263753
Birth       PROBIT           BELARUS                        0                    NA                -0.0870938   -0.1834787    0.0092911
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.0373110   -0.1346925    0.2093146
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.1687607    0.0811196    0.2564018
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.1555174   -0.3775548    0.6885896
6 months    IRC              INDIA                          0                    NA                -0.2316286   -0.5430807    0.0798236
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.1368739   -0.2268925   -0.0468553
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0326247   -0.2132671    0.1480177
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0333516   -0.0861207    0.1528240
6 months    PROBIT           BELARUS                        0                    NA                -0.0121416   -0.0642461    0.0399629
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.1671516   -0.3295734   -0.0047299
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1045776   -0.2907013    0.0815460
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.1052140   -0.1922108   -0.0182172
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.5428712   -0.9526457   -0.1330967
24 months   IRC              INDIA                          0                    NA                -0.1805482   -0.4175640    0.0564676
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0845763   -0.1971551    0.0280024
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0344650   -0.0766122    0.1455423
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.1063447   -0.2614281    0.0487387
24 months   PROBIT           BELARUS                        0                    NA                -0.0358359   -0.1435148    0.0718431
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0129158   -0.1394554    0.1652871
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.4195522   -0.7479860   -0.0911184
