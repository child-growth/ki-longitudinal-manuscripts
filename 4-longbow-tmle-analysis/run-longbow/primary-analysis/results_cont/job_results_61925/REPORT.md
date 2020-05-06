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
![](/tmp/bed42ba9-6855-4a94-9299-08ae70aab18c/34b1486b-79df-4908-a9df-8f3b63a9aabe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bed42ba9-6855-4a94-9299-08ae70aab18c/34b1486b-79df-4908-a9df-8f3b63a9aabe/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bed42ba9-6855-4a94-9299-08ae70aab18c/34b1486b-79df-4908-a9df-8f3b63a9aabe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.8396854   -1.4508393   -0.2285315
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.9305187   -1.1629937   -0.6980438
Birth       IRC              INDIA                          0                    NA                -0.0753282   -0.4580182    0.3073619
Birth       IRC              INDIA                          1                    NA                -0.3371206   -0.5137386   -0.1605025
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.3574057   -1.4297108   -1.2851006
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.5963179   -1.6158855   -1.5767503
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.0101112   -1.1945750   -0.8256474
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.5317508   -1.5823714   -1.4811302
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.9561693   -1.0849549   -0.8273837
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9494133   -1.0557822   -0.8430445
Birth       PROBIT           BELARUS                        0                    NA                 1.3417197    1.1626978    1.5207415
Birth       PROBIT           BELARUS                        1                    NA                 1.3107496    1.1494457    1.4720536
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.7246547   -0.9269460   -0.5223635
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9179386   -0.9991285   -0.8367487
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.1792421   -0.2516379   -0.1068462
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5268418   -0.5483830   -0.5053006
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.2446404   -1.7685049   -0.7207758
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.4210355   -1.5679444   -1.2741266
6 months    IRC              INDIA                          0                    NA                -1.1787025   -1.5789323   -0.7784726
6 months    IRC              INDIA                          1                    NA                -1.2438937   -1.3807794   -1.1070080
6 months    JiVitA-3         BANGLADESH                     0                    NA                -1.0909245   -1.1855103   -0.9963386
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3285416   -1.3518142   -1.3052691
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.2044374   -1.3318495   -1.0770253
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.3633770   -1.4075582   -1.3191957
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.1577447   -1.3052216   -1.0102678
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.3386508   -1.4594881   -1.2178136
6 months    PROBIT           BELARUS                        0                    NA                 0.1618822    0.0636392    0.2601253
6 months    PROBIT           BELARUS                        1                    NA                 0.0909269   -0.0014795    0.1833333
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0061332   -1.1876493   -0.8246172
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1075199   -1.1922027   -1.0228371
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4054024   -0.5737105   -0.2370943
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5555090   -0.6073304   -0.5036875
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.8534403   -0.9404381   -0.7664424
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.8701142   -0.8970517   -0.8431767
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.3663646   -2.7558139   -1.9769154
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.5685234   -2.6713198   -2.4657269
24 months   IRC              INDIA                          0                    NA                -1.6649274   -1.8805559   -1.4492989
24 months   IRC              INDIA                          1                    NA                -1.8236305   -1.9266721   -1.7205888
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.7267397   -1.8551602   -1.5983192
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.0269637   -2.0545639   -1.9993635
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.5686264   -1.7074594   -1.4297935
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.7876790   -1.8272156   -1.7481424
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.5016723   -1.6968504   -1.3064942
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.6136379   -1.7701692   -1.4571066
24 months   PROBIT           BELARUS                        0                    NA                -0.1733570   -0.3963955    0.0496816
24 months   PROBIT           BELARUS                        1                    NA                -0.1418281   -0.4381449    0.1544886
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.4770189   -1.6555633   -1.2984745
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6427588   -1.7378978   -1.5476198
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.4475999   -1.6264788   -1.2687210
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.6179203   -1.6780074   -1.5578332


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
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -0.0908334   -0.7488899    0.5672231
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                 -0.2617924   -0.6833663    0.1597814
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -0.2389122   -0.3124998   -0.1653246
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -0.5216396   -0.7124146   -0.3308646
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                  0.0067560   -0.1600562    0.1735681
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -0.0309700   -0.1451306    0.0831905
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.1932838   -0.4114018    0.0248341
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -0.3475998   -0.4230090   -0.2721906
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.1763951   -0.7235848    0.3707945
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.0651913   -0.4874711    0.3570886
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.2376172   -0.3336106   -0.1416238
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.1589396   -0.2926049   -0.0252744
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1809061   -0.3720178    0.0102056
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0709554   -0.1292035   -0.0127072
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.1013866   -0.3009196    0.0981463
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1501066   -0.3257681    0.0255549
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.0166739   -0.1072502    0.0739023
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.2021587   -0.6050186    0.2007011
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.1587031   -0.3972182    0.0798120
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.3002240   -0.4292329   -0.1712151
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.2190526   -0.3614553   -0.0766499
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1119656   -0.3600128    0.1360816
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                  0.0315288   -0.2301520    0.2932096
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.1657400   -0.3674798    0.0359998
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.1703204   -0.3579360    0.0172951


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.1215103   -0.7046726    0.4616521
Birth       IRC              INDIA                          0                    NA                -0.2327131   -0.5797520    0.1143258
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.2318360   -0.3030155   -0.1606564
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.5130568   -0.6972171   -0.3288965
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0081609   -0.0944103    0.1107321
Birth       PROBIT           BELARUS                        0                    NA                -0.0302779   -0.1311986    0.0706427
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.1604473   -0.3399272    0.0190326
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.3178352   -0.3873262   -0.2483442
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.1788104   -0.6899968    0.3323760
6 months    IRC              INDIA                          0                    NA                -0.0557038   -0.4099607    0.2985532
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.2224768   -0.3146079   -0.1303457
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.1456515   -0.2692552   -0.0220478
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.1154172   -0.2313318    0.0004973
6 months    PROBIT           BELARUS                        0                    NA                -0.0638748   -0.1151888   -0.0125609
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0855583   -0.2470426    0.0759261
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1401541   -0.3010543    0.0207460
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0151512   -0.0987348    0.0684324
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.1925033   -0.5693812    0.1843746
24 months   IRC              INDIA                          0                    NA                -0.1338501   -0.3326304    0.0649301
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.2876848   -0.4115183   -0.1638513
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.2048263   -0.3389016   -0.0707510
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0759816   -0.2337688    0.0818056
24 months   PROBIT           BELARUS                        0                    NA                 0.0290678   -0.2065297    0.2646654
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.1254033   -0.2844274    0.0336208
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.1567392   -0.3293374    0.0158590
