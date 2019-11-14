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
* impsan
* safeh20
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
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        vagbrth    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              11      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              81      92
Birth       ki1000108-IRC              INDIA                          0              68     388
Birth       ki1000108-IRC              INDIA                          1             320     388
Birth       ki1017093b-PROVIDE         BANGLADESH                     0             108     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1             431     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             186     477
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             291     477
Birth       ki1119695-PROBIT           BELARUS                        0            1597   13890
Birth       ki1119695-PROBIT           BELARUS                        1           12293   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0            1166   13761
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           12595   13761
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            1472   26599
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           25127   26599
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              76    2822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            2746    2822
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              25     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             344     369
6 months    ki1000108-IRC              INDIA                          0              69     407
6 months    ki1000108-IRC              INDIA                          1             338     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             139     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             465     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             187     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             270     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1816    2005
6 months    ki1119695-PROBIT           BELARUS                        0            1799   15761
6 months    ki1119695-PROBIT           BELARUS                        1           13962   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             740    8601
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            7861    8601
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            1071   16675
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           15604   16675
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             336    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            3716    4052
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              24     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             347     371
24 months   ki1000108-IRC              INDIA                          0              69     409
24 months   ki1000108-IRC              INDIA                          1             340     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             137     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             441     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              99     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             161     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6
24 months   ki1119695-PROBIT           BELARUS                        0             472    4035
24 months   ki1119695-PROBIT           BELARUS                        1            3563    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             133    1619
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            1486    1619
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             476    8517
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8041    8517
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             323    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3697    4020


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0b7ba23e-a491-4450-8aea-5033e96c4a8c/f3f6c618-f5c2-4bc4-bf07-627400435ae5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0b7ba23e-a491-4450-8aea-5033e96c4a8c/f3f6c618-f5c2-4bc4-bf07-627400435ae5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0b7ba23e-a491-4450-8aea-5033e96c4a8c/f3f6c618-f5c2-4bc4-bf07-627400435ae5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.2809834   -1.9576507   -0.6043160
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.9384504   -1.1703464   -0.7065544
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.1143439   -0.5144077    0.2857198
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.3435574   -0.5196660   -0.1674488
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.6720791   -0.8735199   -0.4706383
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9203470   -1.0021308   -0.8385632
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.9503645   -1.0796105   -0.8211184
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9456824   -1.0519376   -0.8394272
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.3728389    1.1953998    1.5502779
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 1.3243359    1.1634612    1.4852106
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1802738   -0.2533800   -0.1071676
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5262246   -0.5477571   -0.5046920
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0682738   -0.0610171    0.1975647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2432208   -1.2691428   -1.2172987
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.0698564   -1.3250662   -0.8146466
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.5329145   -1.5829442   -1.4828848
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.3482230   -1.8655879   -0.8308582
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.4186040   -1.5658240   -1.2713840
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.2233796   -1.6049706   -0.8417887
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2579842   -1.3954844   -1.1204840
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.9886504   -1.1713837   -0.8059172
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1194724   -1.2045722   -1.0343727
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1721125   -1.3155655   -1.0286594
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3426530   -1.4573646   -1.2279414
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4309422   -0.6042264   -0.2576581
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5558510   -0.6076110   -0.5040911
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1878695    0.0786710    0.2970680
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0972495    0.0007556    0.1937435
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.8621723   -0.9481699   -0.7761746
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.8696362   -0.8966038   -0.8426685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.0709190   -1.1635450   -0.9782929
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3554841   -1.3785379   -1.3324302
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1105382   -1.2410019   -0.9800745
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.3701229   -1.4139462   -1.3262996
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5296754   -2.9587283   -2.1006225
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5691546   -2.6719382   -2.4663710
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.6658040   -1.8928700   -1.4387380
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.8266141   -1.9299266   -1.7233015
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.4802367   -1.6548175   -1.3056559
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6493202   -1.7438506   -1.5547897
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.4927496   -1.6851703   -1.3003288
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.6173782   -1.7740933   -1.4606631
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1411246   -0.3658859    0.0836367
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1326382   -0.4432772    0.1780007
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.4386946   -1.6128111   -1.2645782
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.6187768   -1.6789333   -1.5586204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.7042723   -1.8385933   -1.5699513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.0381772   -2.0656203   -2.0107342
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.5228755   -1.6565561   -1.3891950
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.7945999   -1.8339656   -1.7552342


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9480084   -1.0301396   -0.8658772
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4970772   -0.5177022   -0.4764523
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1739746   -1.2019520   -1.1459972
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5231680   -1.5722488   -1.4740872
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2731619   -1.3626957   -1.1836282
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5455565   -0.5948696   -0.4962435
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8685914   -0.8942954   -0.8428875
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3358351   -1.3589861   -1.3126841
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3500888   -1.3921730   -1.3080047
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.5776538   -1.6988448   -1.4564629
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6043391   -1.6616652   -1.5470130
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0204086   -2.0480344   -1.9927828
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7734527   -1.8119258   -1.7349797


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3425329   -0.3771616    1.0622275
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 -0.2292134   -0.6682002    0.2097733
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2482679   -0.4648368   -0.0316989
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0046821   -0.1622289    0.1715930
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -0.0485030   -0.1607344    0.0637285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.3459507   -0.4221126   -0.2697889
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -1.3114946   -1.4400494   -1.1829397
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.4630581   -0.7228875   -0.2032287
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0703810   -0.6105355    0.4697735
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.0346045   -0.4383720    0.3691629
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1308220   -0.3325571    0.0709131
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1705405   -0.3527872    0.0117061
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1249088   -0.3049950    0.0551774
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0906200   -0.1706364   -0.0106035
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0074639   -0.0971428    0.0822150
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.2845651   -0.3784828   -0.1906474
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.2595847   -0.3961085   -0.1230609
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0394792   -0.4816674    0.4027090
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.1608101   -0.4107514    0.0891313
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1690835   -0.3669727    0.0288057
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1246287   -0.3719946    0.1227372
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.0084864   -0.2295751    0.2465478
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1800822   -0.3631084    0.0029441
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3339049   -0.4686024   -0.1992075
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.2717244   -0.4080036   -0.1354451


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.3197877   -0.3205064    0.9600818
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.1936973   -0.5567757    0.1693811
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.2130229   -0.3924732   -0.0335726
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0023561   -0.1004334    0.1051455
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0458943   -0.1446835    0.0528950
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.3168034   -0.3869813   -0.2466255
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.2422484   -1.3648145   -1.1196822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.4533115   -0.7060225   -0.2006006
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0752277   -0.5801358    0.4296803
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0110266   -0.3485679    0.3265147
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1030411   -0.2653091    0.0592270
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1010495   -0.2109615    0.0088626
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1146143   -0.2800641    0.0508355
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0808709   -0.1513911   -0.0103507
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0064192   -0.0890485    0.0762102
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2649161   -0.3545466   -0.1752856
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2395507   -0.3652296   -0.1138717
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0291925   -0.4457644    0.3873793
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.1329735   -0.3425221    0.0765751
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1221855   -0.2771715    0.0328006
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0849043   -0.2418131    0.0720045
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0097198   -0.2058593    0.2252989
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1656445   -0.3338403    0.0025514
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3161363   -0.4452998   -0.1869728
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2505772   -0.3776055   -0.1235489
