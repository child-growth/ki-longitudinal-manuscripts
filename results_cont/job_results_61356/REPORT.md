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

**Outcome Variable:** haz

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
Birth       CMC-V-BCS-2002   INDIA                          0              11      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          1              81      92  haz              
Birth       IRC              INDIA                          0              68     388  haz              
Birth       IRC              INDIA                          1             320     388  haz              
Birth       JiVitA-3         BANGLADESH                     0             539   22418  haz              
Birth       JiVitA-3         BANGLADESH                     1           21879   22418  haz              
Birth       JiVitA-4         BANGLADESH                     0              76    2822  haz              
Birth       JiVitA-4         BANGLADESH                     1            2746    2822  haz              
Birth       NIH-Crypto       BANGLADESH                     0             186     477  haz              
Birth       NIH-Crypto       BANGLADESH                     1             291     477  haz              
Birth       PROBIT           BELARUS                        0            1597   13893  haz              
Birth       PROBIT           BELARUS                        1           12296   13893  haz              
Birth       PROVIDE          BANGLADESH                     0             108     539  haz              
Birth       PROVIDE          BANGLADESH                     1             431     539  haz              
Birth       ZVITAMBO         ZIMBABWE                       0            1166   13761  haz              
Birth       ZVITAMBO         ZIMBABWE                       1           12595   13761  haz              
6 months    CMC-V-BCS-2002   INDIA                          0              25     369  haz              
6 months    CMC-V-BCS-2002   INDIA                          1             344     369  haz              
6 months    IRC              INDIA                          0              69     407  haz              
6 months    IRC              INDIA                          1             338     407  haz              
6 months    JiVitA-3         BANGLADESH                     0            1077   16732  haz              
6 months    JiVitA-3         BANGLADESH                     1           15655   16732  haz              
6 months    JiVitA-4         BANGLADESH                     0             336    4052  haz              
6 months    JiVitA-4         BANGLADESH                     1            3716    4052  haz              
6 months    NIH-Crypto       BANGLADESH                     0             187     457  haz              
6 months    NIH-Crypto       BANGLADESH                     1             270     457  haz              
6 months    PROBIT           BELARUS                        0            1799   15760  haz              
6 months    PROBIT           BELARUS                        1           13961   15760  haz              
6 months    PROVIDE          BANGLADESH                     0             139     604  haz              
6 months    PROVIDE          BANGLADESH                     1             465     604  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2005  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1816    2005  haz              
6 months    ZVITAMBO         ZIMBABWE                       0             740    8601  haz              
6 months    ZVITAMBO         ZIMBABWE                       1            7861    8601  haz              
24 months   CMC-V-BCS-2002   INDIA                          0              24     371  haz              
24 months   CMC-V-BCS-2002   INDIA                          1             347     371  haz              
24 months   IRC              INDIA                          0              69     409  haz              
24 months   IRC              INDIA                          1             340     409  haz              
24 months   JiVitA-3         BANGLADESH                     0             480    8584  haz              
24 months   JiVitA-3         BANGLADESH                     1            8104    8584  haz              
24 months   JiVitA-4         BANGLADESH                     0             323    4020  haz              
24 months   JiVitA-4         BANGLADESH                     1            3697    4020  haz              
24 months   NIH-Crypto       BANGLADESH                     0              99     260  haz              
24 months   NIH-Crypto       BANGLADESH                     1             161     260  haz              
24 months   PROBIT           BELARUS                        0             472    4035  haz              
24 months   PROBIT           BELARUS                        1            3563    4035  haz              
24 months   PROVIDE          BANGLADESH                     0             137     578  haz              
24 months   PROVIDE          BANGLADESH                     1             441     578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       0             133    1619  haz              
24 months   ZVITAMBO         ZIMBABWE                       1            1486    1619  haz              


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
![](/tmp/f1d6e792-e164-4f52-a550-40f8557dae08/e407ab69-9c78-4796-a888-2ca0c9e7220a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f1d6e792-e164-4f52-a550-40f8557dae08/e407ab69-9c78-4796-a888-2ca0c9e7220a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f1d6e792-e164-4f52-a550-40f8557dae08/e407ab69-9c78-4796-a888-2ca0c9e7220a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -1.7544362   -2.3788327   -1.1300398
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.9295420   -1.1613891   -0.6976948
Birth       IRC              INDIA                          0                    NA                -0.0878487   -0.4982408    0.3225434
Birth       IRC              INDIA                          1                    NA                -0.3358032   -0.5116710   -0.1599354
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.3439263   -1.4148964   -1.2729561
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.5964148   -1.6159535   -1.5768762
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.0055130   -1.2160879   -0.7949381
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.5315511   -1.5821379   -1.4809642
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.9643177   -1.0977469   -0.8308885
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9249446   -1.0282228   -0.8216664
Birth       PROBIT           BELARUS                        0                    NA                 1.3528069    1.1775595    1.5280542
Birth       PROBIT           BELARUS                        1                    NA                 1.3102156    1.1487162    1.4717151
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.7611071   -0.9553160   -0.5668982
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9201046   -1.0012369   -0.8389724
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.1824230   -0.2548667   -0.1099794
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5272395   -0.5488063   -0.5056727
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.4564244   -1.9866032   -0.9262457
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.4238767   -1.5709013   -1.2768522
6 months    IRC              INDIA                          0                    NA                -1.1995222   -1.5853003   -0.8137441
6 months    IRC              INDIA                          1                    NA                -1.2437441   -1.3805745   -1.1069138
6 months    JiVitA-3         BANGLADESH                     0                    NA                -1.0843770   -1.1856043   -0.9831497
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3284459   -1.3516172   -1.3052746
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.2039593   -1.3365647   -1.0713539
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.3642645   -1.4083694   -1.3201596
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.1716529   -1.3155040   -1.0278018
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.3383117   -1.4566187   -1.2200047
6 months    PROBIT           BELARUS                        0                    NA                 0.1525624    0.0521315    0.2529934
6 months    PROBIT           BELARUS                        1                    NA                 0.0910377   -0.0013442    0.1834196
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.9798163   -1.1819201   -0.7777124
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1123993   -1.1962882   -1.0285103
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4082201   -0.5744579   -0.2419823
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5568368   -0.6085054   -0.5051683
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.8735528   -0.9629844   -0.7841213
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.8695389   -0.8964930   -0.8425848
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.4220813   -2.8247274   -2.0194353
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.5685744   -2.6714066   -2.4657423
24 months   IRC              INDIA                          0                    NA                -1.6770212   -1.8997727   -1.4542696
24 months   IRC              INDIA                          1                    NA                -1.8253770   -1.9284132   -1.7223409
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.7329935   -1.8524806   -1.6135063
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.0283503   -2.0559992   -2.0007015
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.5787151   -1.7155561   -1.4418741
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.7881090   -1.8277770   -1.7484411
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.4595976   -1.6548959   -1.2642993
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.6102617   -1.7719049   -1.4486186
24 months   PROBIT           BELARUS                        0                    NA                -0.1551717   -0.3925905    0.0822472
24 months   PROBIT           BELARUS                        1                    NA                -0.1436733   -0.4395822    0.1522356
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5016810   -1.6709303   -1.3324317
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6342064   -1.7278435   -1.5405693
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.4908829   -1.6690410   -1.3127248
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.6142112   -1.6744616   -1.5539608


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5892417   -1.6084834   -1.5700000
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5231680   -1.5722488   -1.4740872
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9480084   -1.0301396   -0.8658772
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4970772   -0.5177022   -0.4764523
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3134013   -1.3366073   -1.2901952
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3500888   -1.3921730   -1.3080047
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.2731619   -1.3626957   -1.1836282
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5455565   -0.5948696   -0.4962435
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8685914   -0.8942954   -0.8428875
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0144245   -2.0420946   -1.9867544
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7734527   -1.8119258   -1.7349797
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.5776538   -1.6988448   -1.4564629
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6043391   -1.6616652   -1.5470130


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    0                  0.8248942    0.1529408    1.4968477
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                 -0.2479545   -0.6961066    0.2001975
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -0.2524886   -0.3242447   -0.1807324
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -0.5260380   -0.7416797   -0.3103964
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                  0.0393731   -0.1283854    0.2071316
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -0.0425912   -0.1564260    0.0712435
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.1589976   -0.3692048    0.0512097
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -0.3448165   -0.4202770   -0.2693560
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.0325477   -0.5198202    0.5849157
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.0442219   -0.4523040    0.3638601
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.2440689   -0.3464665   -0.1416713
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.1603052   -0.2987318   -0.0218787
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1666588   -0.3531351    0.0198175
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0615248   -0.1211480   -0.0019015
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.1325830   -0.3517033    0.0865373
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1486167   -0.3220479    0.0248145
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                  0.0040139   -0.0888613    0.0968892
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.1464931   -0.5620591    0.2690730
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.1483559   -0.3939608    0.0972491
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.2953569   -0.4154437   -0.1752701
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.2093939   -0.3497220   -0.0690658
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1506641   -0.4038673    0.1025390
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                  0.0114983   -0.2162085    0.2392052
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.1325254   -0.3238157    0.0587650
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.1233283   -0.3110806    0.0644240


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                 0.7932406    0.1838032    1.4026779
Birth       IRC              INDIA                          0                    NA                -0.2201925   -0.5925278    0.1521427
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.2453154   -0.3147308   -0.1759001
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.5176549   -0.7264456   -0.3088642
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0163093   -0.0912499    0.1238686
Birth       PROBIT           BELARUS                        0                    NA                -0.0413651   -0.1424158    0.0596855
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.1239950   -0.2961385    0.0481486
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.3146542   -0.3842045   -0.2451039
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0329737   -0.4826381    0.5485854
6 months    IRC              INDIA                          0                    NA                -0.0348840   -0.3759649    0.3061969
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.2290242   -0.3273626   -0.1306859
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.1461296   -0.2747725   -0.0174867
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.1015090   -0.2133117    0.0102936
6 months    PROBIT           BELARUS                        0                    NA                -0.0545550   -0.1071810   -0.0019291
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.1118752   -0.2938060    0.0700555
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1373364   -0.2958506    0.0211778
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0049614   -0.0809315    0.0908543
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.1367866   -0.5262091    0.2526359
24 months   IRC              INDIA                          0                    NA                -0.1217564   -0.3268041    0.0832914
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.2814310   -0.3962745   -0.1665876
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.1947376   -0.3265887   -0.0628866
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.1180562   -0.2795157    0.0434032
24 months   PROBIT           BELARUS                        0                    NA                 0.0108825   -0.1912188    0.2129839
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.1007411   -0.2517568    0.0502746
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.1134562   -0.2859198    0.0590075
