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

agecat      studyid                    country                        vagbrth    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  -------  ------  -----------------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              11      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              81      92  haz              
Birth       ki1000108-IRC              INDIA                          0              68     388  haz              
Birth       ki1000108-IRC              INDIA                          1             320     388  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0             108     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1             431     539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             186     477  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             291     477  haz              
Birth       ki1119695-PROBIT           BELARUS                        0            1597   13890  haz              
Birth       ki1119695-PROBIT           BELARUS                        1           12293   13890  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0            1166   13761  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           12595   13761  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             539   22418  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           21879   22418  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              76    2822  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            2746    2822  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              25     369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             344     369  haz              
6 months    ki1000108-IRC              INDIA                          0              69     407  haz              
6 months    ki1000108-IRC              INDIA                          1             338     407  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             139     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             465     604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             187     457  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             270     457  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2005  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1816    2005  haz              
6 months    ki1119695-PROBIT           BELARUS                        0            1799   15761  haz              
6 months    ki1119695-PROBIT           BELARUS                        1           13962   15761  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             740    8601  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            7861    8601  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            1077   16732  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           15655   16732  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             336    4052  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            3716    4052  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              24     371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             347     371  haz              
24 months   ki1000108-IRC              INDIA                          0              69     409  haz              
24 months   ki1000108-IRC              INDIA                          1             340     409  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             137     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             441     578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              99     260  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             161     260  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6  haz              
24 months   ki1119695-PROBIT           BELARUS                        0             472    4035  haz              
24 months   ki1119695-PROBIT           BELARUS                        1            3563    4035  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             133    1619  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            1486    1619  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             480    8584  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8104    8584  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             323    4020  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3697    4020  haz              


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
![](/tmp/2ba272bc-98cb-42a7-8071-44efc5e465e7/f411c5a8-edb2-4edc-8064-75f0457b94a1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2ba272bc-98cb-42a7-8071-44efc5e465e7/f411c5a8-edb2-4edc-8064-75f0457b94a1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2ba272bc-98cb-42a7-8071-44efc5e465e7/f411c5a8-edb2-4edc-8064-75f0457b94a1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.2258304   -1.8312705   -0.6203902
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.9403800   -1.1724750   -0.7082850
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.1773636   -0.5551861    0.2004590
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.3421731   -0.5183199   -0.1660264
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.7150542   -0.9231432   -0.5069653
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9130320   -0.9946776   -0.8313864
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.9463913   -1.0743790   -0.8184035
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9454335   -1.0517255   -0.8391414
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.3703855    1.1960804    1.5446905
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 1.3235351    1.1628252    1.4842451
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1833738   -0.2578261   -0.1089215
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5262508   -0.5477956   -0.5047060
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.2122397   -1.2923640   -1.1321153
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.5982246   -1.6177242   -1.5787250
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.0940469   -1.3570466   -0.8310472
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.5326691   -1.5826951   -1.4826431
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.4133974   -1.9389764   -0.8878185
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.4152700   -1.5625561   -1.2679839
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.1210894   -1.5138393   -0.7283395
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2554808   -1.3923694   -1.1185922
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.9913511   -1.1733812   -0.8093211
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1259780   -1.2112493   -1.0407067
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1784825   -1.3192841   -1.0376809
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3400555   -1.4562170   -1.2238939
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4066462   -0.5816543   -0.2316381
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5571596   -0.6088491   -0.5054700
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1824785    0.0738966    0.2910605
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0970055    0.0002425    0.1937685
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.8596598   -0.9443405   -0.7749790
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.8695664   -0.8965303   -0.8426025
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.0229693   -1.1127649   -0.9331738
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3333478   -1.3564323   -1.3102632
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1220927   -1.2527851   -0.9914003
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.3699323   -1.4136657   -1.3261989
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.3208440   -2.7400717   -1.9016162
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5671280   -2.6699030   -2.4643530
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.6590417   -1.8765669   -1.4415164
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.8230162   -1.9263402   -1.7196923
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.4502642   -1.6251223   -1.2754060
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6460853   -1.7410876   -1.5510831
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.4774484   -1.6693007   -1.2855962
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.6197880   -1.7762062   -1.4633698
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1497530   -0.3702492    0.0707432
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1310341   -0.4421501    0.1800820
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.4451449   -1.6234138   -1.2668760
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.6203301   -1.6804571   -1.5602031
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.7017922   -1.8295744   -1.5740101
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.0312178   -2.0586882   -2.0037475
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.5113104   -1.6473634   -1.3752573
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.7945821   -1.8338909   -1.7552733


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9480084   -1.0301396   -0.8658772
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4970772   -0.5177022   -0.4764523
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5892417   -1.6084834   -1.5700000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5231680   -1.5722488   -1.4740872
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2731619   -1.3626957   -1.1836282
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5455565   -0.5948696   -0.4962435
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8685914   -0.8942954   -0.8428875
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3134013   -1.3366073   -1.2901952
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3500888   -1.3921730   -1.3080047
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.5776538   -1.6988448   -1.4564629
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6043391   -1.6616652   -1.5470130
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0144245   -2.0420946   -1.9867544
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7734527   -1.8119258   -1.7349797


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2854504   -0.3641407    0.9350415
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 -0.1648096   -0.5821797    0.2525605
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1979778   -0.4211640    0.0252084
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0009578   -0.1653231    0.1672387
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -0.0468503   -0.1567395    0.0630388
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.3428770   -0.4203526   -0.2654015
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3859849   -0.4670275   -0.3049423
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.4386222   -0.7063289   -0.1709154
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0018726   -0.5479505    0.5442054
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.1343914   -0.5491631    0.2803803
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1346269   -0.3355246    0.0662709
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1615729   -0.3442538    0.0211080
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1505134   -0.3321723    0.0311455
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0854730   -0.1703830   -0.0005629
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0099066   -0.0983057    0.0784925
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3103784   -0.4013056   -0.2194512
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.2478396   -0.3843730   -0.1113062
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.2462840   -0.6777703    0.1852022
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.1639746   -0.4054327    0.0774836
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1958212   -0.3948208    0.0031784
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1423396   -0.3900455    0.1053664
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.0187189   -0.2451370    0.2825749
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1751852   -0.3623635    0.0119931
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3294256   -0.4580134   -0.2008378
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.2832717   -0.4218728   -0.1446706


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2646347   -0.3074254    0.8366949
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.1306777   -0.4740407    0.2126854
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1700478   -0.3571710    0.0170755
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0016171   -0.1040373    0.1008030
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0434409   -0.1404363    0.0535545
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.3137034   -0.3851910   -0.2422159
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3770020   -0.4555989   -0.2984051
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.4291211   -0.6896513   -0.1685908
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0100533   -0.5225907    0.5024840
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1133168   -0.4620778    0.2354441
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1003404   -0.2621868    0.0615060
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0946794   -0.2031495    0.0137907
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1389103   -0.3057981    0.0279774
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0754799   -0.1506779   -0.0002819
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0089317   -0.0903106    0.0724473
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2904319   -0.3770669   -0.2037970
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2279961   -0.3537079   -0.1022844
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.2380240   -0.6434026    0.1673547
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.1397358   -0.3413020    0.0618303
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1521580   -0.3080321    0.0037161
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1002054   -0.2570870    0.0566762
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0183482   -0.2222232    0.2589196
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1591942   -0.3313043    0.0129159
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3126323   -0.4355100   -0.1897545
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2621424   -0.3916387   -0.1326460
