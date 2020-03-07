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

agecat      studyid          country                        vagbrth    n_cell       n
----------  ---------------  -----------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0              11      92
Birth       CMC-V-BCS-2002   INDIA                          1              81      92
Birth       IRC              INDIA                          0              68     388
Birth       IRC              INDIA                          1             320     388
Birth       JiVitA-3         BANGLADESH                     0             539   22418
Birth       JiVitA-3         BANGLADESH                     1           21879   22418
Birth       JiVitA-4         BANGLADESH                     0              76    2822
Birth       JiVitA-4         BANGLADESH                     1            2746    2822
Birth       NIH-Crypto       BANGLADESH                     0             186     477
Birth       NIH-Crypto       BANGLADESH                     1             291     477
Birth       PROBIT           BELARUS                        0            1597   13893
Birth       PROBIT           BELARUS                        1           12296   13893
Birth       PROVIDE          BANGLADESH                     0             108     539
Birth       PROVIDE          BANGLADESH                     1             431     539
Birth       ZVITAMBO         ZIMBABWE                       0            1166   13761
Birth       ZVITAMBO         ZIMBABWE                       1           12595   13761
6 months    CMC-V-BCS-2002   INDIA                          0              25     369
6 months    CMC-V-BCS-2002   INDIA                          1             344     369
6 months    IRC              INDIA                          0              69     407
6 months    IRC              INDIA                          1             338     407
6 months    JiVitA-3         BANGLADESH                     0            1077   16732
6 months    JiVitA-3         BANGLADESH                     1           15655   16732
6 months    JiVitA-4         BANGLADESH                     0             336    4052
6 months    JiVitA-4         BANGLADESH                     1            3716    4052
6 months    NIH-Crypto       BANGLADESH                     0             187     457
6 months    NIH-Crypto       BANGLADESH                     1             270     457
6 months    PROBIT           BELARUS                        0            1799   15760
6 months    PROBIT           BELARUS                        1           13961   15760
6 months    PROVIDE          BANGLADESH                     0             139     604
6 months    PROVIDE          BANGLADESH                     1             465     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1816    2005
6 months    ZVITAMBO         ZIMBABWE                       0             740    8601
6 months    ZVITAMBO         ZIMBABWE                       1            7861    8601
24 months   CMC-V-BCS-2002   INDIA                          0              24     371
24 months   CMC-V-BCS-2002   INDIA                          1             347     371
24 months   IRC              INDIA                          0              69     409
24 months   IRC              INDIA                          1             340     409
24 months   JiVitA-3         BANGLADESH                     0             480    8584
24 months   JiVitA-3         BANGLADESH                     1            8104    8584
24 months   JiVitA-4         BANGLADESH                     0             323    4020
24 months   JiVitA-4         BANGLADESH                     1            3697    4020
24 months   NIH-Crypto       BANGLADESH                     0              99     260
24 months   NIH-Crypto       BANGLADESH                     1             161     260
24 months   PROBIT           BELARUS                        0             472    4035
24 months   PROBIT           BELARUS                        1            3563    4035
24 months   PROVIDE          BANGLADESH                     0             137     578
24 months   PROVIDE          BANGLADESH                     1             441     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6
24 months   ZVITAMBO         ZIMBABWE                       0             133    1619
24 months   ZVITAMBO         ZIMBABWE                       1            1486    1619


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
![](/tmp/0c167c5a-6afd-4875-8e44-dec1d0f34baa/aa793f86-0d1b-4249-ae99-4e2e7cd69d5e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0c167c5a-6afd-4875-8e44-dec1d0f34baa/aa793f86-0d1b-4249-ae99-4e2e7cd69d5e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0c167c5a-6afd-4875-8e44-dec1d0f34baa/aa793f86-0d1b-4249-ae99-4e2e7cd69d5e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.9799653   -1.5901508   -0.3697797
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.9316452   -1.1630119   -0.7002786
Birth       IRC              INDIA                          0                    NA                -0.1016804   -0.5083777    0.3050168
Birth       IRC              INDIA                          1                    NA                -0.3328069   -0.5087636   -0.1568502
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.3010525   -1.3689974   -1.2331077
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.5965174   -1.6160569   -1.5769778
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.0219914   -1.2066194   -0.8373633
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.5314843   -1.5818043   -1.4811643
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.9675400   -1.0956389   -0.8394411
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9383543   -1.0432041   -0.8335044
Birth       PROBIT           BELARUS                        0                    NA                 1.3554823    1.1798062    1.5311585
Birth       PROBIT           BELARUS                        1                    NA                 1.3097418    1.1484338    1.4710498
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.7328272   -0.9230611   -0.5425933
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9199640   -1.0012805   -0.8386475
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.1827360   -0.2543949   -0.1110772
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5271412   -0.5486854   -0.5055970
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.3866814   -1.9036482   -0.8697146
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.4216753   -1.5687664   -1.2745841
6 months    IRC              INDIA                          0                    NA                -1.2070980   -1.6084402   -0.8057557
6 months    IRC              INDIA                          1                    NA                -1.2462357   -1.3829437   -1.1095277
6 months    JiVitA-3         BANGLADESH                     0                    NA                -1.0840780   -1.1883574   -0.9797986
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3279663   -1.3512562   -1.3046763
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.2479706   -1.3814548   -1.1144863
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.3626765   -1.4065072   -1.3188458
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.1636618   -1.3121430   -1.0151805
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.3455402   -1.4646170   -1.2264634
6 months    PROBIT           BELARUS                        0                    NA                 0.1483615    0.0503421    0.2463810
6 months    PROBIT           BELARUS                        1                    NA                 0.0905728   -0.0017285    0.1828741
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.9797980   -1.1587312   -0.8008649
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1131275   -1.1963743   -1.0298807
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4110074   -0.5791143   -0.2429005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5571421   -0.6086925   -0.5055916
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.8492289   -0.9353925   -0.7630653
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.8702546   -0.8971993   -0.8433099
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.9253153   -3.2943681   -2.5562625
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.5703267   -2.6731419   -2.4675114
24 months   IRC              INDIA                          0                    NA                -1.6871480   -1.9086024   -1.4656937
24 months   IRC              INDIA                          1                    NA                -1.8212786   -1.9242662   -1.7182911
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.7623960   -1.8745762   -1.6502159
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.0277463   -2.0553562   -2.0001363
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.5660486   -1.7092337   -1.4228635
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.7872169   -1.8268747   -1.7475591
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.4641636   -1.6581729   -1.2701542
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.6214509   -1.7774704   -1.4654314
24 months   PROBIT           BELARUS                        0                    NA                -0.1631924   -0.3949606    0.0685758
24 months   PROBIT           BELARUS                        1                    NA                -0.1444782   -0.4378743    0.1489178
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5384806   -1.7122851   -1.3646760
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6402303   -1.7343982   -1.5460624
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.4543643   -1.6343474   -1.2743812
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.6180626   -1.6781517   -1.5579736


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
Birth       CMC-V-BCS-2002   INDIA                          1                    0                  0.0483200   -0.6039482    0.7005882
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                 -0.2311265   -0.6742786    0.2120256
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -0.2954648   -0.3646004   -0.2263293
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -0.5094930   -0.6996190   -0.3193669
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                  0.0291857   -0.1349374    0.1933089
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -0.0457405   -0.1539948    0.0625138
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.1871368   -0.3935073    0.0192337
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -0.3444051   -0.4191060   -0.2697043
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0349939   -0.5749293    0.5049416
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.0391377   -0.4626980    0.3844226
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.2438883   -0.3495284   -0.1382482
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.1147060   -0.2543975    0.0249856
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1818784   -0.3722807    0.0085238
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0577887   -0.1158081    0.0002308
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.1333295   -0.3301330    0.0634740
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1461347   -0.3211006    0.0288313
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.0210257   -0.1108335    0.0687821
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.3549886   -0.0299081    0.7398854
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.1341306   -0.3779659    0.1097047
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.2653502   -0.3781282   -0.1525723
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.2211683   -0.3675505   -0.0747861
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1572873   -0.4022211    0.0876465
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                  0.0187141   -0.2057546    0.2431829
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.1017497   -0.2982139    0.0947145
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.1636984   -0.3522469    0.0248502


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                 0.0187696   -0.5570913    0.5946305
Birth       IRC              INDIA                          0                    NA                -0.2063608   -0.5749459    0.1622242
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.2881891   -0.3549901   -0.2213882
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.5011766   -0.6847588   -0.3175944
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0195316   -0.0823581    0.1214213
Birth       PROBIT           BELARUS                        0                    NA                -0.0440406   -0.1395178    0.0514366
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.1522749   -0.3202566    0.0157068
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.3143412   -0.3831489   -0.2455335
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0367694   -0.5406576    0.4671188
6 months    IRC              INDIA                          0                    NA                -0.0273082   -0.3840385    0.3294220
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.2293233   -0.3308191   -0.1278275
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.1021183   -0.2322967    0.0280601
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.1095002   -0.2253972    0.0063969
6 months    PROBIT           BELARUS                        0                    NA                -0.0503541   -0.1013479    0.0006396
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.1118935   -0.2701711    0.0463842
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1345491   -0.2945720    0.0254737
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0193625   -0.1021672    0.0634421
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.3664474    0.0040344    0.7288603
24 months   IRC              INDIA                          0                    NA                -0.1116295   -0.3150408    0.0917819
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.2520285   -0.3597935   -0.1442634
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.2074041   -0.3453657   -0.0694425
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.1134903   -0.2703229    0.0433423
24 months   PROBIT           BELARUS                        0                    NA                 0.0189032   -0.1834417    0.2212482
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0639416   -0.2194330    0.0915498
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.1499748   -0.3235986    0.0236489
