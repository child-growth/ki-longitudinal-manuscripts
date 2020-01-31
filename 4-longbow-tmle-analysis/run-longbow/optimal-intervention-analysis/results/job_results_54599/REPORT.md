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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth             n_cell       n
----------  -------------------------  -----------------------------  ------------------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        58      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  11      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term               23      92
Birth       ki1000108-IRC              INDIA                          Full or late term       238     369
Birth       ki1000108-IRC              INDIA                          Preterm                  36     369
Birth       ki1000108-IRC              INDIA                          Early term               95     369
Birth       ki1000109-EE               PAKISTAN                       Full or late term        11     240
Birth       ki1000109-EE               PAKISTAN                       Preterm                 182     240
Birth       ki1000109-EE               PAKISTAN                       Early term               47     240
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       162     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 257     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term              313     732
Birth       ki1101329-Keneba           GAMBIA                         Full or late term       734    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                 235    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term              546    1515
Birth       ki1119695-PROBIT           BELARUS                        Full or late term      7098   13890
Birth       ki1119695-PROBIT           BELARUS                        Preterm                 472   13890
Birth       ki1119695-PROBIT           BELARUS                        Early term             6320   13890
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term       341     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                  95     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term              181     617
Birth       ki1135781-COHORTS          INDIA                          Full or late term       570    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                 285    1293
Birth       ki1135781-COHORTS          INDIA                          Early term              438    1293
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term      1164    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                 649    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term             1211    3024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term     10944   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                4514   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             5984   21442
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       212     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               83     347
6 months    ki1000108-IRC              INDIA                          Full or late term       249     388
6 months    ki1000108-IRC              INDIA                          Preterm                  42     388
6 months    ki1000108-IRC              INDIA                          Early term               97     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term        17     373
6 months    ki1000109-EE               PAKISTAN                       Preterm                 297     373
6 months    ki1000109-EE               PAKISTAN                       Early term               59     373
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       155     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              309     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 291    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1903
6 months    ki1101329-Keneba           GAMBIA                         Full or late term       658    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                 207    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term              509    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term      8008   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                 551   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term             7202   15761
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       389     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                 113     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term              211     713
6 months    ki1135781-COHORTS          INDIA                          Full or late term       568    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                 299    1312
6 months    ki1135781-COHORTS          INDIA                          Early term              445    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term      1028    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                 573    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term             1086    2687
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      8527   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3045   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             4438   16010
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       213     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               84     349
24 months   ki1000108-IRC              INDIA                          Full or late term       250     390
24 months   ki1000108-IRC              INDIA                          Preterm                  42     390
24 months   ki1000108-IRC              INDIA                          Early term               98     390
24 months   ki1000109-EE               PAKISTAN                       Full or late term         7     167
24 months   ki1000109-EE               PAKISTAN                       Preterm                 131     167
24 months   ki1000109-EE               PAKISTAN                       Early term               29     167
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        79     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 208     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              227     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term       557    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                 167    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term              432    1156
24 months   ki1119695-PROBIT           BELARUS                        Full or late term      2024    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                 137    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term             1874    4035
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       375     661
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                 107     661
24 months   ki1135781-COHORTS          GUATEMALA                      Early term              179     661
24 months   ki1135781-COHORTS          INDIA                          Full or late term       565    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                 305    1308
24 months   ki1135781-COHORTS          INDIA                          Early term              438    1308
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term       938    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                 513    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term              973    2424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      4327    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1604    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             2271    8202


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/ec3be411-6aa4-42ef-a3a8-44d8572fa242/27d1b0fa-4975-4bf4-b9f8-df3ecbb3e18a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3329157   -1.6736485   -0.9921829
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1821349   -0.5027784    0.1385087
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.7628907   -2.5063967    0.9806154
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5584274   -0.7037003   -0.4131546
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.2481632    0.1620734    0.3342530
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.5152148    1.3593215    1.6711080
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2391142    0.1146859    0.3635425
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3932361   -0.4816946   -0.3047776
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0005837   -0.0587840    0.0576166
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2749833   -1.2985989   -1.2513677
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.4930214   -1.7549584   -1.2310844
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1080187   -1.2791700   -0.9368674
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.9303128   -2.4265619   -1.4340637
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8735725   -1.0317019   -0.7154431
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4587871   -0.5234393   -0.3941349
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7824760   -0.8663857   -0.6985663
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1616930    0.0566845    0.2667016
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6725868   -1.7704471   -1.5747265
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8701492   -0.9613270   -0.7789715
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0269710   -1.0928264   -0.9611156
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1847782   -1.2136785   -1.1558778
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4796506   -2.6123223   -2.3469789
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7359647   -1.8644717   -1.6074577
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.2776828   -2.5640235   -1.9913420
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1822054   -1.3949820   -0.9694288
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5340862   -1.6272438   -1.4409286
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1758324   -0.6799045    0.3282396
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.9634207   -3.1238407   -2.8030006
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.0657246   -2.1623704   -1.9690788
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3298730   -2.3993352   -2.2604109
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9392470   -1.9768408   -1.9016532


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3102981   -0.4751168   -0.1454794
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0278680   -0.0365315    0.0922674
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3269446    1.1683850    1.4855041
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0530794   -0.0441925    0.1503513
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6072158   -0.6675691   -0.5468624
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2492460   -0.2884729   -0.2100192
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5980879   -1.6176172   -1.5785586
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.3856004   -1.5319935   -1.2392073
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2321263   -1.3660720   -1.0981806
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.0835567   -2.2027557   -1.9643578
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5419570   -0.5926042   -0.4913098
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.8948084   -0.9510697   -0.8385471
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8315428   -1.9081267   -1.7549589
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9630335   -1.0220763   -0.9039908
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1409862   -1.1830414   -1.0989310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3168751   -1.3402193   -1.2935309
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5319389   -2.6335015   -2.4303762
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7964915   -1.8912047   -1.7017782
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5800865   -1.6398819   -1.5202911
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9911195   -3.0733804   -2.9088586
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.1289450   -2.1901830   -2.0677069
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4144884   -2.4596605   -2.3693164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0156596   -2.0439781   -1.9873411


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.3717201    0.0368358    0.7066043
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1281632   -0.4081342    0.1518077
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -1.0979843   -2.7949989    0.5990303
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3510671   -0.4796466   -0.2224876
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2202952   -0.2878150   -0.1527755
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1882702   -0.2451085   -0.1314319
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1860348   -0.2753165   -0.0967531
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2139797   -0.2822319   -0.1457274
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2486623   -0.2967027   -0.2006220
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3231046   -0.3407379   -0.3054712
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1074210   -0.1188661    0.3337081
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1241076   -0.2251832   -0.0230320
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.1532439   -0.6430046    0.3365167
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3251058   -0.4639464   -0.1862652
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0831699   -0.1235294   -0.0428104
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1123324   -0.1739380   -0.0507268
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0546944   -0.0977031   -0.0116857
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1589560   -0.2303182   -0.0875938
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0928843   -0.1606755   -0.0250932
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1140152   -0.1662778   -0.0617527
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1320969   -0.1499693   -0.1142245
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0522883   -0.1322796    0.0277031
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0605268   -0.1492749    0.0282214
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.3923073   -0.6648818   -0.1197328
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2590592   -0.4558907   -0.0622277
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0460003   -0.1201807    0.0281801
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0444276   -0.1978059    0.2866612
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0276988   -0.1608060    0.1054083
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0632204   -0.1345373    0.0080966
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0846154   -0.1406016   -0.0286293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0764126   -0.0991531   -0.0536721
