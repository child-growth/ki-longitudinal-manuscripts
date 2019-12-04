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
![](/tmp/ef227c22-bcdf-4887-9c32-d4f74ed5a710/4898e0f5-5f95-43df-9230-aa531dbc3da8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5337455   -1.2570800    0.1895890
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.0172783   -1.2388089   -0.7957476
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2355710   -1.3616802   -1.1094619
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0482345   -1.1869379   -0.9095311
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0650002   -1.2788804   -0.8511200
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5062128   -0.5375792   -0.4748465
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7736862   -0.7935925   -0.7537799
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.6794570   -0.7327147   -0.6261993
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4804307   -0.6383821   -0.3224794
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3918264   -0.7180391   -0.0656138
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0004249   -0.1508174    0.1516671
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1017379   -0.0335142    0.2369900
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2120505    0.0339569    0.3901441
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5852671    0.5103861    0.6601482
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4460155    0.3530658    0.5389652
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4392728   -0.5291616   -0.3493840
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2624431   -0.4275919   -0.0972943
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2307220   -0.6394436    0.1779997
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5606951   -0.8128879   -0.3085022
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8733698   -0.9997981   -0.7469415
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6559963   -0.8138049   -0.4981876
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7149665    0.5398929    0.8900401
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7629937   -1.1292838   -0.3967036
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1646549   -1.2702673   -1.0590426
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2812435   -1.3802512   -1.1822358


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1549785   -1.2577390   -1.0522180
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5168886   -0.5428625   -0.4909146
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7774729   -0.7964631   -0.7584827
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6890188   -0.7414800   -0.6365575
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0515536   -0.0469240    0.1500313
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0769382    0.0241090    0.1297674
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3116179    0.2858347    0.3374010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935070   -0.6130727   -0.5739413
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3758037   -0.4184544   -0.3331531
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.8343077   -0.9482310   -0.7203844
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1864319   -1.2865891   -1.0862748
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2983928   -1.3216893   -1.2750962
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2433658   -1.2774681   -1.2092634


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0689199   -0.5758445    0.7136843
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0066952   -0.1167734    0.1301638
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0628876   -0.1717901    0.0460148
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1067440   -0.2213717    0.0078837
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0798632   -0.1817504    0.0220241
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0106757   -0.0275263    0.0061748
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0037867   -0.0093269    0.0017535
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0095618   -0.0194778    0.0003543
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0222459   -0.0579455    0.0134536
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2071033   -0.5069274    0.0927208
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1995155   -0.3374561   -0.0615749
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0501843   -0.1519048    0.0515361
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1351123   -0.3044501    0.0342254
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0060233   -0.0503961    0.0383496
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1343976   -0.2233380   -0.0454573
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1542342   -0.2405316   -0.0679369
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1133607   -0.2725104    0.0457890
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3264286   -0.7214825    0.0686253
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1851199   -0.4098251    0.0395853
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0194972   -0.1264857    0.0874913
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1783114   -0.3037028   -0.0529201
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0275370   -0.1359567    0.0808828
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4234382   -0.7813155   -0.0655609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1337378   -0.2368738   -0.0306018
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0378777   -0.0526723    0.1284278
