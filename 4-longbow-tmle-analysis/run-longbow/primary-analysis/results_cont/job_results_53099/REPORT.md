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

agecat      studyid                    country                        vagbrth    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              10      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              76      86
Birth       ki1000108-IRC              INDIA                          0              66     343
Birth       ki1000108-IRC              INDIA                          1             277     343
Birth       ki1017093b-PROVIDE         BANGLADESH                     0             108     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1             424     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             184     465
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             281     465
Birth       ki1119695-PROBIT           BELARUS                        0            1593   13830
Birth       ki1119695-PROBIT           BELARUS                        1           12237   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0            1100   12814
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           11714   12814
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            1409   22026
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           20617   22026
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              71    2395
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            2324    2395
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              25     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             343     368
6 months    ki1000108-IRC              INDIA                          0              68     408
6 months    ki1000108-IRC              INDIA                          1             340     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             139     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             464     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             187     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             270     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1815    2004
6 months    ki1119695-PROBIT           BELARUS                        0            1798   15758
6 months    ki1119695-PROBIT           BELARUS                        1           13960   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             721    8437
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            7716    8437
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            1069   16648
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           15579   16648
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             337    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            3719    4056
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             347     372
24 months   ki1000108-IRC              INDIA                          0              69     409
24 months   ki1000108-IRC              INDIA                          1             340     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             137     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             442     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              99     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             161     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6
24 months   ki1119695-PROBIT           BELARUS                        0             463    3972
24 months   ki1119695-PROBIT           BELARUS                        1            3509    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              28     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             398     426
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             471    8490
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8019    8490
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             323    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3685    4008


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
![](/tmp/3a981184-7912-4d37-bf82-7729d9e00cd0/0f376519-e78a-434a-80a6-b5c7662a1db4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3a981184-7912-4d37-bf82-7729d9e00cd0/0f376519-e78a-434a-80a6-b5c7662a1db4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3a981184-7912-4d37-bf82-7729d9e00cd0/0f376519-e78a-434a-80a6-b5c7662a1db4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3886066   -1.3637501    0.5865370
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.4635435   -0.7836247   -0.1434623
Birth       ki1000108-IRC              INDIA                          0                    NA                -1.2364895   -1.7168045   -0.7561745
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.9626725   -1.1645752   -0.7607699
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.2918007   -1.4715507   -1.1120507
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2837472   -1.3700024   -1.1974920
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.0652441   -1.2144064   -0.9160817
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2161121   -1.3555555   -1.0766686
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -1.0512698   -1.2651151   -0.8374245
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -1.1572832   -1.3693299   -0.9452365
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.6836700   -0.7761841   -0.5911558
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5045447   -0.5316824   -0.4774071
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.8542638   -0.9310682   -0.7774593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7397564   -0.7580229   -0.7214899
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.9958779   -1.2844804   -0.7072753
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6790202   -0.7321792   -0.6258613
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.9635795   -1.4768969   -0.4502621
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.4821732   -0.6399668   -0.3243796
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.4170915   -0.7457240   -0.0884590
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.6381354   -0.7863614   -0.4899094
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0728753   -0.2546252    0.1088747
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1844809   -0.2773356   -0.0916261
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0415980   -0.1029726    0.1861686
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0658790   -0.0678475    0.1996055
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2448339    0.0437158    0.4459519
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0672607    0.0118204    0.1227009
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.6061076    0.5188217    0.6933934
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.5767756    0.5172692    0.6362820
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.4218800    0.3275394    0.5162206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2989348    0.2719938    0.3258759
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.4427799   -0.5293563   -0.3562035
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6045321   -0.6243630   -0.5847013
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2527664   -0.4158536   -0.0896792
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.3839263   -0.4293098   -0.3385427
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.2113251   -0.6817120    0.2590619
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.5824792   -0.6870473   -0.4779112
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.5591033   -0.8132720   -0.3049345
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7855484   -0.8819376   -0.6891592
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.9202205   -1.0880311   -0.7524099
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8710932   -0.9663478   -0.7758385
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.7784102   -0.9669828   -0.5898375
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.8663697   -1.0101487   -0.7225907
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.7105544    0.5403489    0.8807600
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.6826058    0.5737787    0.7914330
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.7591735   -1.1343156   -0.3840315
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.2148876   -1.3187043   -1.1110709
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1620827   -1.2631419   -1.0610236
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3096847   -1.3336948   -1.2856745
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2101863   -1.3250170   -1.0953556
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2462505   -1.2818499   -1.2106511


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1549785   -1.2577390   -1.0522180
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5168886   -0.5428625   -0.4909146
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7497893   -0.7676477   -0.7319310
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6890188   -0.7414800   -0.6365575
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0515536   -0.0469240    0.1500313
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0769382    0.0241090    0.1297674
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3116179    0.2858347    0.3374010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5930619   -0.6126597   -0.5734642
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3758037   -0.4184544   -0.3331531
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.8343077   -0.9482310   -0.7203844
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1864319   -1.2865891   -1.0862748
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3000247   -1.3234004   -1.2766491
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2433658   -1.2774681   -1.2092634


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0749369   -1.1061254    0.9562516
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.2738169   -0.2487976    0.7964314
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0080535   -0.1915508    0.2076578
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1508680   -0.3553012    0.0535652
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -0.1060134   -0.2153755    0.0033487
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.1791252    0.0827867    0.2754637
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1145074    0.0374244    0.1915904
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.3168576    0.0225618    0.6111535
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.4814063   -0.0522044    1.0150170
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.2210439   -0.5820936    0.1400058
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1116056   -0.3171652    0.0939540
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0242810   -0.1729598    0.2215218
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1775732   -0.3862459    0.0310995
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0293319   -0.0895246    0.0308607
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1229452   -0.2209395   -0.0249509
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1617522   -0.2483130   -0.0751915
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1311599   -0.3012113    0.0388915
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3711542   -0.8531121    0.1108037
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.2264451   -0.4994871    0.0465969
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0491274   -0.1429026    0.2411573
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0879595   -0.3259284    0.1500095
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0279486   -0.1517289    0.0958317
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.4557140   -0.8452382   -0.0661898
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1476019   -0.2516696   -0.0435343
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0360642   -0.1552549    0.0831266


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0762190   -0.9983659    0.8459279
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.2259064   -0.1969458    0.6487586
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0066579   -0.1710897    0.1577739
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0897344   -0.2134161    0.0339473
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0935935   -0.1903890    0.0032020
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1667814    0.0781663    0.2553965
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1044744    0.0310319    0.1779170
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3068591    0.0211846    0.5925336
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.4609028   -0.0409176    0.9627232
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1818382   -0.4849242    0.1212477
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1262154   -0.2920649    0.0396341
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0099556   -0.1087015    0.1286127
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1678957   -0.3600795    0.0242882
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0268637   -0.0806551    0.0269277
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1102621   -0.2007150   -0.0198093
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1502820   -0.2328950   -0.0676691
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1230373   -0.2802387    0.0341641
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3458255   -0.8015300    0.1098790
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.1867117   -0.4145707    0.0411472
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0273535   -0.1239328    0.1786398
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0558975   -0.2044994    0.0927044
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0231249   -0.1336621    0.0874123
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.4272584   -0.7947076   -0.0598092
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1379420   -0.2372554   -0.0386286
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0331795   -0.1429900    0.0766311
