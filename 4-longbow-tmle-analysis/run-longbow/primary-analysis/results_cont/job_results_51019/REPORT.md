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
![](/tmp/3d89538f-7d24-4976-bc52-6b524abf8ac2/0d924245-4c0f-447a-b07d-338f132edcc8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3d89538f-7d24-4976-bc52-6b524abf8ac2/0d924245-4c0f-447a-b07d-338f132edcc8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3d89538f-7d24-4976-bc52-6b524abf8ac2/0d924245-4c0f-447a-b07d-338f132edcc8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.2626165   -1.2529913    0.7277584
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.6450573   -1.0254444   -0.2646701
Birth       ki1000108-IRC              INDIA                          0                    NA                -1.2506864   -1.7417373   -0.7596355
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.9468147   -1.1484150   -0.7452145
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -1.0680511   -1.2872019   -0.8489002
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -1.1574652   -1.3692245   -0.9457059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.6581159   -0.7496448   -0.5665871
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5057570   -0.5329055   -0.4786085
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.2939915   -0.7572208    0.1692378
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.4822910   -0.6402395   -0.3243425
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.4024080   -0.7300947   -0.0747213
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.6386782   -0.7875261   -0.4898304
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0922232   -0.2627818    0.0783354
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2298498   -0.3286100   -0.1310895
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0636757   -0.0785122    0.2058636
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0576626   -0.0772196    0.1925447
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2696396    0.0834177    0.4558616
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0593919    0.0040126    0.1147713
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.6131107    0.5242950    0.7019264
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.5762036    0.5165635    0.6358437
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.4411073    0.3480356    0.5341789
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2923817    0.2649798    0.3197836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.4004197   -0.4881517   -0.3126876
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6062049   -0.6258996   -0.5865102
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2239232   -0.3808679   -0.0669786
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.3869260   -0.4316702   -0.3421819
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3829521   -0.7634932   -0.0024111
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.5824671   -0.6870465   -0.4778876
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.5239459   -0.7827076   -0.2651841
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7841442   -0.8801913   -0.6880970
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8438041   -1.0008466   -0.6867617
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8959405   -0.9929638   -0.7989172
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.7951680   -0.9830909   -0.6072452
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.8742987   -1.0190724   -0.7295250
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.7656227    0.5723625    0.9588829
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.6780635    0.5677441    0.7883830
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.7957232   -1.1294682   -0.4619782
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.2171464   -1.3221799   -1.1121128
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1376174   -1.2396464   -1.0355884
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3092979   -1.3332001   -1.2853958
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1953490   -1.3120519   -1.0786461
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2473542   -1.2828254   -1.2118829


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5165387   -0.5425056   -0.4905717
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0515536   -0.0469240    0.1500313
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0769382    0.0241090    0.1297674
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3058247    0.2796439    0.3320055
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5935070   -0.6130727   -0.5739413
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3758037   -0.4184544   -0.3331531
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.8343077   -0.9482310   -0.7203844
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1870743   -1.2881393   -1.0860094
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2983928   -1.3216893   -1.2750962
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2433658   -1.2774681   -1.2092634


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3824408   -1.4464324    0.6815508
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.3038717   -0.2279942    0.8357376
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -0.0894142   -0.2074769    0.0286485
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.1523589    0.0569233    0.2477945
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1882995   -0.6769279    0.3003289
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.2362702   -0.5964357    0.1238953
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1376266   -0.3365787    0.0613254
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0060131   -0.2027956    0.1907694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2102477   -0.4046064   -0.0158890
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0369071   -0.0983075    0.0244933
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1487256   -0.2457708   -0.0516803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.2057852   -0.2935568   -0.1180137
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1630028   -0.3271894    0.0011838
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1995149   -0.5937877    0.1947578
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.2601983   -0.5365037    0.0161071
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0521363   -0.2362314    0.1319587
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0791307   -0.3169374    0.1586761
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0875592   -0.2334545    0.0583361
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.4214231   -0.7714651   -0.0713812
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1716805   -0.2759925   -0.0673685
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0520052   -0.1735607    0.0695504


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3648835   -1.3286317    0.5988647
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.2401033   -0.1930478    0.6732545
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0782959   -0.1831949    0.0266031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1415772    0.0538776    0.2292769
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.2086851   -0.6674219    0.2500516
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1965217   -0.4983368    0.1052933
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1161474   -0.2707333    0.0384385
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0121221   -0.1293566    0.1051125
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1927014   -0.3704591   -0.0149438
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0341474   -0.0892908    0.0209961
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1352826   -0.2244095   -0.0461556
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1930874   -0.2768125   -0.1093623
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1518805   -0.3031104   -0.0006507
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1741984   -0.5419557    0.1935589
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.2218691   -0.4544688    0.0107306
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0441370   -0.1851875    0.0969134
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0391397   -0.1866690    0.1083897
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0792792   -0.2101851    0.0516266
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.3913511   -0.7177872   -0.0649151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1607753   -0.2603228   -0.0612279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0480168   -0.1599008    0.0638673
