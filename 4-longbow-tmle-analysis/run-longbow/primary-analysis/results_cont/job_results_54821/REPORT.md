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

agecat      studyid                    country                        vagbrth    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  -------  ------  -----------------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              10      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              76      86  whz              
Birth       ki1000108-IRC              INDIA                          0              66     343  whz              
Birth       ki1000108-IRC              INDIA                          1             277     343  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0             108     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1             424     532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             184     465  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             281     465  whz              
Birth       ki1119695-PROBIT           BELARUS                        0            1593   13830  whz              
Birth       ki1119695-PROBIT           BELARUS                        1           12237   13830  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0            1100   12814  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           11714   12814  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             500   17985  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           17485   17985  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              71    2395  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            2324    2395  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              25     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             343     368  whz              
6 months    ki1000108-IRC              INDIA                          0              68     408  whz              
6 months    ki1000108-IRC              INDIA                          1             340     408  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             139     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             464     603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             187     457  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             270     457  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2004  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1815    2004  whz              
6 months    ki1119695-PROBIT           BELARUS                        0            1798   15758  whz              
6 months    ki1119695-PROBIT           BELARUS                        1           13960   15758  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             721    8437  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            7716    8437  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            1075   16705  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           15630   16705  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             337    4056  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            3719    4056  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              25     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             347     372  whz              
24 months   ki1000108-IRC              INDIA                          0              69     409  whz              
24 months   ki1000108-IRC              INDIA                          1             340     409  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             137     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             442     579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              99     260  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             161     260  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6  whz              
24 months   ki1119695-PROBIT           BELARUS                        0             463    3972  whz              
24 months   ki1119695-PROBIT           BELARUS                        1            3509    3972  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              28     426  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             398     426  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             475    8555  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8080    8555  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             323    4008  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3685    4008  whz              


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
![](/tmp/44c62333-49ce-421b-9bd4-6c93a45df288/bf165eff-5c82-4fa6-90de-a6e2ccd5ea48/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/44c62333-49ce-421b-9bd4-6c93a45df288/bf165eff-5c82-4fa6-90de-a6e2ccd5ea48/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/44c62333-49ce-421b-9bd4-6c93a45df288/bf165eff-5c82-4fa6-90de-a6e2ccd5ea48/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3508738   -1.2732454    0.5714978
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.4630659   -0.7836709   -0.1424608
Birth       ki1000108-IRC              INDIA                          0                    NA                -1.1500807   -1.6479341   -0.6522273
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.9623376   -1.1643648   -0.7603103
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.3017772   -1.4775675   -1.1259869
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2889930   -1.3744672   -1.2035187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.0816577   -1.2303822   -0.9329333
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2030927   -1.3414548   -1.0647307
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -1.0536911   -1.2653017   -0.8420806
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -1.1565676   -1.3684939   -0.9446413
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.6846003   -0.7764337   -0.5927668
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5041904   -0.5313306   -0.4770501
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.0111408   -1.1081785   -0.9141030
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7701317   -0.7893859   -0.7508774
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.9922013   -1.2767432   -0.7076594
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6791501   -0.7325075   -0.6257927
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.8825433   -1.4039891   -0.3610976
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.4808321   -0.6387149   -0.3229494
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.3678550   -0.6934731   -0.0422369
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.6368234   -0.7859858   -0.4876611
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0877047   -0.2617863    0.0863769
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2132917   -0.3076572   -0.1189261
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0385193   -0.1034095    0.1804480
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0604984   -0.0734156    0.1944123
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2268972    0.0449357    0.4088588
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0646719    0.0093858    0.1199580
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.6063056    0.5222056    0.6904057
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.5766744    0.5169636    0.6363851
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.4481638    0.3549253    0.5414024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2985809    0.2716501    0.3255117
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.4269390   -0.5136422   -0.3402358
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6045280   -0.6243078   -0.5847482
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2478488   -0.4094502   -0.0862474
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.3844856   -0.4296498   -0.3393214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0787828   -0.5347867    0.3772211
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.5800233   -0.6846818   -0.4753648
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.5359780   -0.7782918   -0.2936643
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7830013   -0.8790949   -0.6869078
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8814649   -1.0447730   -0.7181568
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8826081   -0.9784196   -0.7867966
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.7682530   -0.9585077   -0.5779983
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.8629079   -1.0078823   -0.7179336
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.7246594    0.5526239    0.8966948
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.6824180    0.5738543    0.7909818
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.6504635   -1.0081518   -0.2927752
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.2152663   -1.3192494   -1.1112833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1581881   -1.2679099   -1.0484664
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3081401   -1.3320552   -1.2842250
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2092441   -1.3258936   -1.0925945
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2461121   -1.2817651   -1.2104592


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1549785   -1.2577390   -1.0522180
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5168886   -0.5428625   -0.4909146
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7774729   -0.7964631   -0.7584827
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6890188   -0.7414800   -0.6365575
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0515536   -0.0469240    0.1500313
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0769382    0.0241090    0.1297674
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3116179    0.2858347    0.3374010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5935070   -0.6130727   -0.5739413
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3758037   -0.4184544   -0.3331531
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.8343077   -0.9482310   -0.7203844
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1864319   -1.2865891   -1.0862748
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2983928   -1.3216893   -1.2750962
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2433658   -1.2774681   -1.2092634


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1121921   -1.0877080    0.8633238
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.1877431   -0.3513184    0.7268047
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0127842   -0.1829167    0.2084852
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1214350   -0.3241359    0.0812659
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -0.1028765   -0.2139696    0.0082167
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.1804099    0.0847086    0.2761113
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.2410091    0.1432450    0.3387733
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.3130512    0.0227960    0.6033064
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.4017112   -0.1426119    0.9460342
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.2689685   -0.6272728    0.0893359
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1255869   -0.3243721    0.0731982
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0219791   -0.1731748    0.2171330
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1622253   -0.3523963    0.0279457
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0296313   -0.0868737    0.0276111
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1495829   -0.2464879   -0.0526780
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1775890   -0.2642768   -0.0909012
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1366368   -0.3054524    0.0321788
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.5012405   -0.9692667   -0.0332143
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.2470233   -0.5088132    0.0147666
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0011432   -0.1907502    0.1884638
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0946549   -0.3345876    0.1452778
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0422413   -0.1626516    0.0781690
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.5648029   -0.9376208   -0.1919849
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1499520   -0.2621391   -0.0377649
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0368681   -0.1580902    0.0843541


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1139518   -0.9829878    0.7550842
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.1394976   -0.2991910    0.5781863
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0033185   -0.1554760    0.1621130
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0733208   -0.1966113    0.0499698
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0911722   -0.1897880    0.0074436
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1677117    0.0797334    0.2556901
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2336679    0.1388582    0.3284776
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3031825    0.0212542    0.5851108
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.3798667   -0.1303808    0.8901142
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.2310748   -0.5307499    0.0686004
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1113860   -0.2710463    0.0482744
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0130343   -0.1029885    0.1290572
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1499590   -0.3231192    0.0232012
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0270618   -0.0780690    0.0239455
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1365459   -0.2258863   -0.0472056
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1665680   -0.2493108   -0.0838252
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1279550   -0.2839031    0.0279932
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.4783677   -0.9201837   -0.0365517
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.2098370   -0.4282923    0.0086184
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0114021   -0.1605237    0.1377195
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0660547   -0.2175215    0.0854121
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0372299   -0.1439280    0.0694683
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.5359684   -0.8860110   -0.1859259
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1402046   -0.2477619   -0.0326473
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0341217   -0.1458522    0.0776087
