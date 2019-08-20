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
* W_mhtcm
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        vagbrth    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              10      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              78      88
Birth       ki1000108-IRC              INDIA                          0              66     343
Birth       ki1000108-IRC              INDIA                          1             277     343
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              16      17
Birth       ki1119695-PROBIT           BELARUS                        0            1593   13824
Birth       ki1119695-PROBIT           BELARUS                        1           12231   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0            1099   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           11714   12813
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2   15689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           15687   15689
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             682     683
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              25     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             343     368
6 months    ki1000108-IRC              INDIA                          0              68     408
6 months    ki1000108-IRC              INDIA                          1             340     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             134     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             448     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             187     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             270     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1815    2004
6 months    ki1119695-PROBIT           BELARUS                        0            1798   15757
6 months    ki1119695-PROBIT           BELARUS                        1           13959   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             706    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            7491    8197
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            1075   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           15630   16705
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             337    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            3719    4056
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             347     372
24 months   ki1000108-IRC              INDIA                          0              69     409
24 months   ki1000108-IRC              INDIA                          1             340     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             137     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             441     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              99     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             161     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6
24 months   ki1119695-PROBIT           BELARUS                        0             463    3971
24 months   ki1119695-PROBIT           BELARUS                        1            3508    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              28     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             389     417
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ea592068-7e0d-41bf-9e70-6e2046db2db8/3c75ae27-96b2-4d80-9f06-21834f63af12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6816311   -1.5115209    0.1482588
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9461284   -1.1478666   -0.7443901
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0674188   -1.2807479   -0.8540898
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5084795   -0.5377979   -0.4791610
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4745252   -0.7391857   -0.2098646
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3980099   -0.7444051   -0.0516147
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1103590   -0.2517332    0.0310151
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0665879   -0.2059046    0.0727289
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2759894    0.0865041    0.4654747
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6010097    0.5181767    0.6838428
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4302034    0.3336440    0.5267629
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3917529   -0.4775821   -0.3059237
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2790136   -0.4366806   -0.1213467
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1341645   -0.6009705    0.3326415
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5526485   -0.8202828   -0.2850141
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8349675   -0.9885844   -0.6813507
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6944249   -0.8763209   -0.5125288
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7741205    0.5867555    0.9614855
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7659341   -1.1385994   -0.3932688
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1517494   -1.2546655   -1.0488333
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2027782   -1.3198896   -1.0856668


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5165387   -0.5425056   -0.4905717
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0515536   -0.0469240    0.1500313
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0769382    0.0241090    0.1297674
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3058247    0.2796439    0.3320055
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935070   -0.6130727   -0.5739413
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3758037   -0.4184544   -0.3331531
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.8343077   -0.9482310   -0.7203844
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1870743   -1.2881393   -1.0860094
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2983928   -1.3216893   -1.2750962
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2433658   -1.2774681   -1.2092634


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0541311   -0.7024286    0.8106907
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0644547   -0.1658365    0.0369271
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0789281   -0.1797891    0.0219329
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0080592   -0.0212295    0.0051111
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0281515   -0.2364584    0.1801555
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2009199   -0.5218965    0.1200568
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0980116   -0.2256580    0.0296349
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1181415    0.0233945    0.2128884
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1990512   -0.3803630   -0.0177394
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0220464   -0.0722508    0.0281579
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1243787   -0.2168662   -0.0318913
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2017541   -0.2837363   -0.1197720
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0967901   -0.2473769    0.0537966
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4229861   -0.8753736    0.0294015
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1931665   -0.4330616    0.0467285
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0529737   -0.1914180    0.0854707
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1398828   -0.2680706   -0.0116951
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0877770   -0.2025498    0.0269958
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4211402   -0.7850893   -0.0571911
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1466433   -0.2477329   -0.0455538
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0405876   -0.1528283    0.0716531
