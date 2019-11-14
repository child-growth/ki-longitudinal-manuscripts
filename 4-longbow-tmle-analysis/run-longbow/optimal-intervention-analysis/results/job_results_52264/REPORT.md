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
* W_nchldlt5
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term     13089   25394
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                5265   25394
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             7040   25394
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      8499   15953
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3031   15953
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             4423   15953
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      4298    8138
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1590    8138
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             2250    8138


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
![](/tmp/b81e78a7-77f2-4363-96ef-f6bd57e91629/371e1161-9782-44ad-a806-37d9b9e85c22/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3459432   -1.8556235   -0.8362628
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3427618   -0.6263829   -0.0591406
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.4447674   -2.5637013    1.6741666
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5501485   -0.7022044   -0.3980925
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.2394244    0.1518181    0.3270306
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.5242065    1.3690380    1.6793749
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2382290    0.0937900    0.3826680
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3884607   -0.4779051   -0.2990164
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0072208   -0.0653789    0.0509372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.8687946   -0.9013321   -0.8362571
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2929198   -1.5826729   -1.0031667
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1227667   -1.2914956   -0.9540377
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.8878023   -2.3511247   -1.4244798
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8658543   -1.0222901   -0.7094185
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4599230   -0.5241049   -0.3957411
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7655438   -0.8490513   -0.6820363
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1856031    0.0918498    0.2793564
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.5899413   -1.7089154   -1.4709673
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8716784   -0.9622308   -0.7811260
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0242156   -1.0907101   -0.9577210
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2125039   -1.2401811   -1.1848267
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4822676   -2.6161368   -2.3483984
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6546280   -1.8049769   -1.5042791
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.2766313   -2.5799206   -1.9733421
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1957994   -1.4061865   -0.9854123
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5057597   -1.6025059   -1.4090134
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1874485   -0.3859289    0.0110320
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8857319   -3.0468277   -2.7246360
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.0571643   -2.1545182   -1.9598104
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3302285   -2.3997106   -2.2607464
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9523760   -1.9899881   -1.9147638


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1878459   -1.2167939   -1.1588980
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3392722   -1.3625791   -1.3159653
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5319389   -2.6335015   -2.4303762
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7964915   -1.8912047   -1.7017782
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5800865   -1.6398819   -1.5202911
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9911195   -3.0733804   -2.9088586
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.1289450   -2.1901830   -2.0677069
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4144884   -2.4596605   -2.3693164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0218641   -2.0501149   -1.9936133


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.3847475   -0.0915699    0.8610650
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0324637   -0.2181393    0.2830667
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -1.4161076   -3.4829392    0.6507240
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3593461   -0.4955473   -0.2231448
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2115564   -0.2794058   -0.1437069
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1972619   -0.2528584   -0.1416654
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1851496   -0.2937858   -0.0765133
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2187550   -0.2877388   -0.1497713
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2420252   -0.2898645   -0.1941859
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3190513   -0.3406733   -0.2974293
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0926806   -0.3457604    0.1603993
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1093596   -0.2082500   -0.0104693
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.1957545   -0.6541270    0.2626181
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3328240   -0.4705273   -0.1951207
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0820340   -0.1220916   -0.0419764
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1292646   -0.1911804   -0.0673488
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0786045   -0.1103596   -0.0468494
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2416015   -0.3425433   -0.1406596
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0913551   -0.1584778   -0.0242325
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1167707   -0.1697878   -0.0637535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1267683   -0.1436537   -0.1098830
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0496712   -0.1310622    0.0317197
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1418635   -0.2579354   -0.0257915
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.3933587   -0.6806488   -0.1060686
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2454652   -0.4398534   -0.0510771
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0743268   -0.1516324    0.0029787
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0560437   -0.1665723    0.2786597
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1053876   -0.2436350    0.0328597
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0717806   -0.1456717    0.0021104
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0842599   -0.1402574   -0.0282625
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0694881   -0.0920308   -0.0469455
