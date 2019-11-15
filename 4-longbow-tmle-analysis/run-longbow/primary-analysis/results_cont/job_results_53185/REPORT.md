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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             500   17985
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           17485   17985
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            1075   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           15630   16705
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             475    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8080    8555
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
![](/tmp/6e8ad9bf-407f-4882-b4c0-36721103a579/13ffd0da-4073-42f4-ac9f-00b78fdf8ab7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6e8ad9bf-407f-4882-b4c0-36721103a579/13ffd0da-4073-42f4-ac9f-00b78fdf8ab7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6e8ad9bf-407f-4882-b4c0-36721103a579/13ffd0da-4073-42f4-ac9f-00b78fdf8ab7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3282698   -1.3658858    0.7093461
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.4701592   -0.7919151   -0.1484032
Birth       ki1000108-IRC              INDIA                          0                    NA                -1.1581741   -1.6626109   -0.6537373
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.9615856   -1.1633770   -0.7597943
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.3286377   -1.5119666   -1.1453088
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2866255   -1.3719004   -1.2013506
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.0793894   -1.2298005   -0.9289783
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2010591   -1.3413608   -1.0607573
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -1.0670723   -1.2822998   -0.8518448
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -1.1556863   -1.3677289   -0.9436438
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.6757016   -0.7678134   -0.5835899
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5043830   -0.5315064   -0.4772597
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.0056611   -1.0989447   -0.9123776
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7700250   -0.7892540   -0.7507960
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.9906200   -1.2925782   -0.6886618
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6794455   -0.7326508   -0.6262402
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.8365598   -1.3974792   -0.2756405
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.4823165   -0.6401668   -0.3244661
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.4051907   -0.7289160   -0.0814655
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.6381359   -0.7864635   -0.4898083
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0696755   -0.2406732    0.1013222
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1978678   -0.2919746   -0.1037609
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0452399   -0.0983089    0.1887888
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0651581   -0.0694537    0.1997699
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2530132    0.0738583    0.4321681
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0664677    0.0111665    0.1217689
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.6063184    0.5215587    0.6910781
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.5768758    0.5174411    0.6363105
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.4476890    0.3541783    0.5411997
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2992561    0.2723245    0.3261877
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.4377750   -0.5272458   -0.3483043
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6043402   -0.6241390   -0.5845413
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2541933   -0.4162374   -0.0921492
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.3840793   -0.4292906   -0.3388680
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0501311   -0.4684779    0.3682158
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.5807128   -0.6852627   -0.4761629
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.5537164   -0.8016912   -0.3057416
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7852009   -0.8814946   -0.6889071
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.9149512   -1.0765063   -0.7533962
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8649044   -0.9622892   -0.7675195
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.7753375   -0.9627391   -0.5879358
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.8660664   -1.0099959   -0.7221370
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.7209013    0.5509066    0.8908959
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.6824753    0.5734772    0.7914734
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.7531264   -1.1026073   -0.4036455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.2163953   -1.3202145   -1.1125761
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1893152   -1.2945582   -1.0840722
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3083402   -1.3322561   -1.2844242
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2109545   -1.3279363   -1.0939726
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2463341   -1.2819370   -1.2107313


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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1418894   -1.2320857    0.9483070
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.1965885   -0.3460293    0.7392063
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0420122   -0.1601415    0.2441658
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1216697   -0.3301367    0.0867973
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -0.0886140   -0.2020572    0.0248292
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.1713186    0.0753694    0.2672678
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.2356361    0.1414585    0.3298138
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.3111745    0.0040440    0.6183051
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3542434   -0.2283271    0.9368138
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.2329452   -0.5895351    0.1236448
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1281923   -0.3242407    0.0678561
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0199182   -0.1773072    0.2171435
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1865456   -0.3741594    0.0010683
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0294426   -0.0870250    0.0281397
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1484329   -0.2456297   -0.0512362
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1665651   -0.2560633   -0.0770670
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1298860   -0.2989339    0.0391619
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.5305817   -0.9623206   -0.0988428
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.2314845   -0.4979815    0.0350126
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0500469   -0.1371528    0.2372466
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0907290   -0.3277001    0.1462422
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0384259   -0.1616968    0.0848449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.4632689   -0.8278099   -0.0987279
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1190250   -0.2270241   -0.0110258
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0353797   -0.1566605    0.0859011


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1365558   -1.1194657    0.8463542
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.1475910   -0.2962139    0.5913959
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0301790   -0.1360638    0.1964218
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0755891   -0.2017673    0.0505891
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0777910   -0.1783802    0.0227981
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1588131    0.0705757    0.2470505
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2281883    0.1368510    0.3195256
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3016012    0.0031418    0.6000606
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.3338832   -0.2139923    0.8817587
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1937390   -0.4924194    0.1049414
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1294152   -0.2867663    0.0279360
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0063137   -0.1120515    0.1246789
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1760750   -0.3470445   -0.0051056
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0270745   -0.0781918    0.0240427
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1360712   -0.2256705   -0.0464718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1557320   -0.2412651   -0.0701989
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1216105   -0.2777831    0.0345622
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5070195   -0.9123808   -0.1016581
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.1920986   -0.4138462    0.0296490
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0220842   -0.1229743    0.1671427
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0589702   -0.2066831    0.0887427
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0334718   -0.1427744    0.0758309
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.4333055   -0.7753533   -0.0912578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1090776   -0.2123837   -0.0057715
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0324113   -0.1441896    0.0793670
