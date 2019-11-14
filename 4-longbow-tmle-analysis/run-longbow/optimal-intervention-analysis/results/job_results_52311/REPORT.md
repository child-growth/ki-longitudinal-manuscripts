---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/1911000b-d7be-4e99-befb-4a81d05a8bed/647412f4-72e1-4794-ba1b-6669a5e3e59b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.9345699   -1.4722327   -0.3969072
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9742609   -1.1755268   -0.7729950
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2439021   -1.3832157   -1.1045886
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0292240   -1.1675673   -0.8908807
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0759049   -1.2854556   -0.8663541
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5037925   -0.5309396   -0.4766453
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7377867   -0.7607451   -0.7148283
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.6781737   -0.7316021   -0.6247452
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4800071   -0.6376163   -0.3223978
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3629888   -0.7004898   -0.0254879
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0012210   -0.1438311    0.1462730
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0981305   -0.0324058    0.2286667
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2229166    0.0300040    0.4158291
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5743259    0.4948672    0.6537845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4379681    0.3449841    0.5309522
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4374289   -0.5271919   -0.3476658
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3221688   -0.5139037   -0.1304339
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3027659   -0.6862893    0.0807575
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5353041   -0.7874324   -0.2831759
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7995827   -0.9388998   -0.6602657
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5750690   -0.7418665   -0.4082714
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7209630    0.5487746    0.8931515
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7936652   -1.1556076   -0.4317228
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2181274   -1.3153510   -1.1209038
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3005807   -1.3706302   -1.2305311


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1549785   -1.2577390   -1.0522180
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5168886   -0.5428625   -0.4909146
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7497893   -0.7676477   -0.7319310
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6890188   -0.7414800   -0.6365575
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0515536   -0.0469240    0.1500313
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0769382    0.0241090    0.1297674
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3116179    0.2858347    0.3374010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5930619   -0.6126597   -0.5734642
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3758037   -0.4184544   -0.3331531
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.8343077   -0.9482310   -0.7203844
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1864319   -1.2865891   -1.0862748
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3000247   -1.3234004   -1.2766491
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2433658   -1.2774681   -1.2092634


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.4697444   -0.0677351    1.0072238
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0363222   -0.1373922    0.0647478
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0545565   -0.1722286    0.0631156
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1257545   -0.2390390   -0.0124700
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0689585   -0.1581700    0.0202531
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0130961   -0.0211637   -0.0050285
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0120026   -0.0267472    0.0027420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0108451   -0.0212723   -0.0004179
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0226696   -0.0579467    0.0126075
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2359409   -0.5462633    0.0743814
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2003116   -0.3324715   -0.0681517
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0465768   -0.1454345    0.0522808
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1459783   -0.3297643    0.0378076
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0049180   -0.0316062    0.0414422
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1263502   -0.2154336   -0.0372669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1556331   -0.2422310   -0.0690351
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0536350   -0.2391707    0.1319008
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2543846   -0.6230675    0.1142983
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2105109   -0.4350123    0.0139905
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0932843   -0.2197552    0.0331867
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2592387   -0.3907451   -0.1277323
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0335335   -0.1436751    0.0766081
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3927668   -0.7460568   -0.0394767
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0818973   -0.1776665    0.0138718
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0572149   -0.0040302    0.1184599
