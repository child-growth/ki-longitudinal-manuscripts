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

agecat      studyid          country                        gagebrth             n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ------------------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term        58      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          Preterm                  11      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          Early term               23      92  haz              
Birth       COHORTS          GUATEMALA                      Full or late term       341     617  haz              
Birth       COHORTS          GUATEMALA                      Preterm                  95     617  haz              
Birth       COHORTS          GUATEMALA                      Early term              181     617  haz              
Birth       COHORTS          INDIA                          Full or late term       570    1293  haz              
Birth       COHORTS          INDIA                          Preterm                 285    1293  haz              
Birth       COHORTS          INDIA                          Early term              438    1293  haz              
Birth       COHORTS          PHILIPPINES                    Full or late term      1164    3024  haz              
Birth       COHORTS          PHILIPPINES                    Preterm                 649    3024  haz              
Birth       COHORTS          PHILIPPINES                    Early term             1211    3024  haz              
Birth       IRC              INDIA                          Full or late term       238     369  haz              
Birth       IRC              INDIA                          Preterm                  36     369  haz              
Birth       IRC              INDIA                          Early term               95     369  haz              
Birth       JiVitA-3         BANGLADESH                     Full or late term     10944   21442  haz              
Birth       JiVitA-3         BANGLADESH                     Preterm                4514   21442  haz              
Birth       JiVitA-3         BANGLADESH                     Early term             5984   21442  haz              
Birth       Keneba           GAMBIA                         Full or late term       734    1515  haz              
Birth       Keneba           GAMBIA                         Preterm                 235    1515  haz              
Birth       Keneba           GAMBIA                         Early term              546    1515  haz              
Birth       NIH-Crypto       BANGLADESH                     Full or late term       162     732  haz              
Birth       NIH-Crypto       BANGLADESH                     Preterm                 257     732  haz              
Birth       NIH-Crypto       BANGLADESH                     Early term              313     732  haz              
Birth       PROBIT           BELARUS                        Full or late term      7100   13893  haz              
Birth       PROBIT           BELARUS                        Preterm                 472   13893  haz              
Birth       PROBIT           BELARUS                        Early term             6321   13893  haz              
6 months    CMC-V-BCS-2002   INDIA                          Full or late term       212     347  haz              
6 months    CMC-V-BCS-2002   INDIA                          Preterm                  52     347  haz              
6 months    CMC-V-BCS-2002   INDIA                          Early term               83     347  haz              
6 months    COHORTS          GUATEMALA                      Full or late term       389     713  haz              
6 months    COHORTS          GUATEMALA                      Preterm                 113     713  haz              
6 months    COHORTS          GUATEMALA                      Early term              211     713  haz              
6 months    COHORTS          INDIA                          Full or late term       568    1312  haz              
6 months    COHORTS          INDIA                          Preterm                 299    1312  haz              
6 months    COHORTS          INDIA                          Early term              445    1312  haz              
6 months    COHORTS          PHILIPPINES                    Full or late term      1028    2687  haz              
6 months    COHORTS          PHILIPPINES                    Preterm                 573    2687  haz              
6 months    COHORTS          PHILIPPINES                    Early term             1086    2687  haz              
6 months    IRC              INDIA                          Full or late term       249     388  haz              
6 months    IRC              INDIA                          Preterm                  42     388  haz              
6 months    IRC              INDIA                          Early term               97     388  haz              
6 months    JiVitA-3         BANGLADESH                     Full or late term      8527   16010  haz              
6 months    JiVitA-3         BANGLADESH                     Preterm                3045   16010  haz              
6 months    JiVitA-3         BANGLADESH                     Early term             4438   16010  haz              
6 months    Keneba           GAMBIA                         Full or late term       658    1374  haz              
6 months    Keneba           GAMBIA                         Preterm                 207    1374  haz              
6 months    Keneba           GAMBIA                         Early term              509    1374  haz              
6 months    NIH-Crypto       BANGLADESH                     Full or late term       155     715  haz              
6 months    NIH-Crypto       BANGLADESH                     Preterm                 251     715  haz              
6 months    NIH-Crypto       BANGLADESH                     Early term              309     715  haz              
6 months    PROBIT           BELARUS                        Full or late term      8007   15760  haz              
6 months    PROBIT           BELARUS                        Preterm                 551   15760  haz              
6 months    PROBIT           BELARUS                        Early term             7202   15760  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1903  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 291    1903  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1903  haz              
24 months   CMC-V-BCS-2002   INDIA                          Full or late term       213     349  haz              
24 months   CMC-V-BCS-2002   INDIA                          Preterm                  52     349  haz              
24 months   CMC-V-BCS-2002   INDIA                          Early term               84     349  haz              
24 months   COHORTS          GUATEMALA                      Full or late term       375     661  haz              
24 months   COHORTS          GUATEMALA                      Preterm                 107     661  haz              
24 months   COHORTS          GUATEMALA                      Early term              179     661  haz              
24 months   COHORTS          INDIA                          Full or late term       565    1308  haz              
24 months   COHORTS          INDIA                          Preterm                 305    1308  haz              
24 months   COHORTS          INDIA                          Early term              438    1308  haz              
24 months   COHORTS          PHILIPPINES                    Full or late term       938    2424  haz              
24 months   COHORTS          PHILIPPINES                    Preterm                 513    2424  haz              
24 months   COHORTS          PHILIPPINES                    Early term              973    2424  haz              
24 months   IRC              INDIA                          Full or late term       250     390  haz              
24 months   IRC              INDIA                          Preterm                  42     390  haz              
24 months   IRC              INDIA                          Early term               98     390  haz              
24 months   JiVitA-3         BANGLADESH                     Full or late term      4327    8202  haz              
24 months   JiVitA-3         BANGLADESH                     Preterm                1604    8202  haz              
24 months   JiVitA-3         BANGLADESH                     Early term             2271    8202  haz              
24 months   Keneba           GAMBIA                         Full or late term       557    1156  haz              
24 months   Keneba           GAMBIA                         Preterm                 167    1156  haz              
24 months   Keneba           GAMBIA                         Early term              432    1156  haz              
24 months   NIH-Crypto       BANGLADESH                     Full or late term        79     514  haz              
24 months   NIH-Crypto       BANGLADESH                     Preterm                 208     514  haz              
24 months   NIH-Crypto       BANGLADESH                     Early term              227     514  haz              
24 months   PROBIT           BELARUS                        Full or late term      2025    4035  haz              
24 months   PROBIT           BELARUS                        Preterm                 137    4035  haz              
24 months   PROBIT           BELARUS                        Early term             1873    4035  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6  haz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/19fd9c25-e174-4923-b372-d3939f8cf2fc/92cb51fa-66ad-4fa7-b724-ea16db9fe9f9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/19fd9c25-e174-4923-b372-d3939f8cf2fc/92cb51fa-66ad-4fa7-b724-ea16db9fe9f9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/19fd9c25-e174-4923-b372-d3939f8cf2fc/92cb51fa-66ad-4fa7-b724-ea16db9fe9f9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.9600877   -1.2521329   -0.6680425
Birth       CMC-V-BCS-2002   INDIA                          Preterm              NA                -1.0259041   -1.7258139   -0.3259943
Birth       CMC-V-BCS-2002   INDIA                          Early term           NA                -0.9731660   -1.3286399   -0.6176921
Birth       COHORTS          GUATEMALA                      Full or late term    NA                 0.2325176    0.1073468    0.3576885
Birth       COHORTS          GUATEMALA                      Preterm              NA                -0.3808010   -0.6650013   -0.0966008
Birth       COHORTS          GUATEMALA                      Early term           NA                -0.0584902   -0.2260386    0.1090582
Birth       COHORTS          INDIA                          Full or late term    NA                -0.3909479   -0.4787691   -0.3031266
Birth       COHORTS          INDIA                          Preterm              NA                -0.8902558   -1.0319092   -0.7486023
Birth       COHORTS          INDIA                          Early term           NA                -0.6830210   -0.7822977   -0.5837444
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.0116850   -0.0698780    0.0465080
Birth       COHORTS          PHILIPPINES                    Preterm              NA                -0.6365574   -0.7344423   -0.5386726
Birth       COHORTS          PHILIPPINES                    Early term           NA                -0.2802994   -0.3370384   -0.2235604
Birth       IRC              INDIA                          Full or late term    NA                -0.2653585   -0.4699900   -0.0607270
Birth       IRC              INDIA                          Preterm              NA                -0.8689551   -1.4219696   -0.3159406
Birth       IRC              INDIA                          Early term           NA                -0.1539886   -0.4670918    0.1591145
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                -1.2827233   -1.3060797   -1.2593668
Birth       JiVitA-3         BANGLADESH                     Preterm              NA                -2.2219588   -2.2664935   -2.1774241
Birth       JiVitA-3         BANGLADESH                     Early term           NA                -1.7036736   -1.7341737   -1.6731734
Birth       Keneba           GAMBIA                         Full or late term    NA                 0.2427415    0.1561410    0.3293421
Birth       Keneba           GAMBIA                         Preterm              NA                -0.6232956   -0.8097984   -0.4367927
Birth       Keneba           GAMBIA                         Early term           NA                 0.0433390   -0.0582447    0.1449227
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.5561849   -0.7049080   -0.4074617
Birth       NIH-Crypto       BANGLADESH                     Preterm              NA                -1.3713039   -1.4840059   -1.2586019
Birth       NIH-Crypto       BANGLADESH                     Early term           NA                -0.7093555   -0.8119729   -0.6067380
Birth       PROBIT           BELARUS                        Full or late term    NA                 1.4937113    1.3391144    1.6483081
Birth       PROBIT           BELARUS                        Preterm              NA                 0.3518275    0.0687938    0.6348612
Birth       PROBIT           BELARUS                        Early term           NA                 1.1495707    0.9659585    1.3331829
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -1.3655852   -1.5504811   -1.1806893
6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                -1.5019673   -1.9889562   -1.0149784
6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                -1.3004012   -1.5902381   -1.0105643
6 months    COHORTS          GUATEMALA                      Full or late term    NA                -1.6689178   -1.7671425   -1.5706932
6 months    COHORTS          GUATEMALA                      Preterm              NA                -2.1004269   -2.2985518   -1.9023020
6 months    COHORTS          GUATEMALA                      Early term           NA                -1.9812859   -2.1242091   -1.8383626
6 months    COHORTS          INDIA                          Full or late term    NA                -0.8758217   -0.9672350   -0.7844083
6 months    COHORTS          INDIA                          Preterm              NA                -1.1494618   -1.2720795   -1.0268441
6 months    COHORTS          INDIA                          Early term           NA                -0.9577190   -1.0561165   -0.8593215
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -1.0272414   -1.0924861   -0.9619967
6 months    COHORTS          PHILIPPINES                    Preterm              NA                -1.3346517   -1.4309323   -1.2383711
6 months    COHORTS          PHILIPPINES                    Early term           NA                -1.1465270   -1.2097245   -1.0833296
6 months    IRC              INDIA                          Full or late term    NA                -1.1150676   -1.2837701   -0.9463651
6 months    IRC              INDIA                          Preterm              NA                -1.6636551   -2.1231028   -1.2042074
6 months    IRC              INDIA                          Early term           NA                -1.2757713   -1.5085513   -1.0429912
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -1.1900388   -1.2178550   -1.1622226
6 months    JiVitA-3         BANGLADESH                     Preterm              NA                -1.6063025   -1.6527897   -1.5598153
6 months    JiVitA-3         BANGLADESH                     Early term           NA                -1.3558340   -1.3918321   -1.3198360
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.7889843   -0.8730550   -0.7049135
6 months    Keneba           GAMBIA                         Preterm              NA                -1.2774073   -1.4209580   -1.1338565
6 months    Keneba           GAMBIA                         Early term           NA                -0.8707235   -0.9554188   -0.7860283
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.8772352   -1.0366526   -0.7178177
6 months    NIH-Crypto       BANGLADESH                     Preterm              NA                -1.4438865   -1.5673949   -1.3203780
6 months    NIH-Crypto       BANGLADESH                     Early term           NA                -1.1590299   -1.2605837   -1.0574761
6 months    PROBIT           BELARUS                        Full or late term    NA                 0.1736939    0.0752079    0.2721800
6 months    PROBIT           BELARUS                        Preterm              NA                -0.3647756   -0.5753075   -0.1542436
6 months    PROBIT           BELARUS                        Early term           NA                 0.0444382   -0.0543952    0.1432717
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.4616518   -0.5258982   -0.3974054
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.7091279   -0.8436643   -0.5745915
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.6479476   -0.7499388   -0.5459564
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -2.4764778   -2.6110857   -2.3418700
24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                -2.6486075   -2.9298582   -2.3673569
24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                -2.5858584   -2.7745998   -2.3971170
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -2.9402183   -3.0483353   -2.8321013
24 months   COHORTS          GUATEMALA                      Preterm              NA                -3.0110418   -3.2283470   -2.7937367
24 months   COHORTS          GUATEMALA                      Early term           NA                -3.0873928   -3.2373171   -2.9374684
24 months   COHORTS          INDIA                          Full or late term    NA                -2.0584654   -2.1542518   -1.9626790
24 months   COHORTS          INDIA                          Preterm              NA                -2.2433609   -2.3709983   -2.1157235
24 months   COHORTS          INDIA                          Early term           NA                -2.1317483   -2.2320314   -2.0314653
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -2.3308632   -2.4003617   -2.2613647
24 months   COHORTS          PHILIPPINES                    Preterm              NA                -2.5059400   -2.6079706   -2.4039093
24 months   COHORTS          PHILIPPINES                    Early term           NA                -2.4484866   -2.5209475   -2.3760256
24 months   IRC              INDIA                          Full or late term    NA                -1.7220974   -1.8380696   -1.6061251
24 months   IRC              INDIA                          Preterm              NA                -2.2246882   -2.5165022   -1.9328742
24 months   IRC              INDIA                          Early term           NA                -1.8307279   -2.0276576   -1.6337982
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -1.9477621   -1.9849242   -1.9106000
24 months   JiVitA-3         BANGLADESH                     Preterm              NA                -2.1976872   -2.2502459   -2.1451286
24 months   JiVitA-3         BANGLADESH                     Early term           NA                -2.0075406   -2.0531036   -1.9619777
24 months   Keneba           GAMBIA                         Full or late term    NA                -1.5626536   -1.6475999   -1.4777072
24 months   Keneba           GAMBIA                         Preterm              NA                -1.8566066   -2.0098673   -1.7033458
24 months   Keneba           GAMBIA                         Early term           NA                -1.4814792   -1.5785857   -1.3843727
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -1.1795246   -1.3933609   -0.9656883
24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                -1.6266991   -1.7606410   -1.4927572
24 months   NIH-Crypto       BANGLADESH                     Early term           NA                -1.3642174   -1.4864469   -1.2419880
24 months   PROBIT           BELARUS                        Full or late term    NA                -0.1447152   -0.6091832    0.3197527
24 months   PROBIT           BELARUS                        Preterm              NA                -0.3687552   -0.6906046   -0.0469059
24 months   PROBIT           BELARUS                        Early term           NA                -0.1206151   -0.3078574    0.0666272


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.0530794   -0.0441925    0.1503513
Birth       COHORTS          INDIA                          NA                   NA                -0.6072158   -0.6675691   -0.5468624
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2492460   -0.2884729   -0.2100192
Birth       IRC              INDIA                          NA                   NA                -0.3102981   -0.4751168   -0.1454794
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5980879   -1.6176172   -1.5785586
Birth       Keneba           GAMBIA                         NA                   NA                 0.0278680   -0.0365315    0.0922674
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.3856004   -1.5319935   -1.2392073
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8315428   -1.9081267   -1.7549589
6 months    COHORTS          INDIA                          NA                   NA                -0.9630335   -1.0220763   -0.9039908
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1409862   -1.1830414   -1.0989310
6 months    IRC              INDIA                          NA                   NA                -1.2321263   -1.3660720   -1.0981806
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3168751   -1.3402193   -1.2935309
6 months    Keneba           GAMBIA                         NA                   NA                -0.8948084   -0.9510697   -0.8385471
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5419570   -0.5926042   -0.4913098
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5319389   -2.6335015   -2.4303762
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9911195   -3.0733804   -2.9088586
24 months   COHORTS          INDIA                          NA                   NA                -2.1289450   -2.1901830   -2.0677069
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4144884   -2.4596605   -2.3693164
24 months   IRC              INDIA                          NA                   NA                -1.7964915   -1.8912047   -1.7017782
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0156596   -2.0439781   -1.9873411
24 months   Keneba           GAMBIA                         NA                   NA                -1.5800865   -1.6398819   -1.5202911
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0658164   -0.8271499    0.6955172
Birth       CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0130783   -0.4764344    0.4502779
Birth       COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Preterm              Full or late term    -0.6133187   -0.9243012   -0.3023361
Birth       COHORTS          GUATEMALA                      Early term           Full or late term    -0.2910078   -0.5004178   -0.0815979
Birth       COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Preterm              Full or late term    -0.4993079   -0.6660136   -0.3326022
Birth       COHORTS          INDIA                          Early term           Full or late term    -0.2920732   -0.4240042   -0.1601421
Birth       COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.6248725   -0.7385178   -0.5112271
Birth       COHORTS          PHILIPPINES                    Early term           Full or late term    -0.2686144   -0.3496400   -0.1875889
Birth       IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Preterm              Full or late term    -0.6035966   -1.1929101   -0.0142832
Birth       IRC              INDIA                          Early term           Full or late term     0.1113699   -0.2635918    0.4863316
Birth       JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.9392356   -0.9897099   -0.8887613
Birth       JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.4209503   -0.4563952   -0.3855054
Birth       Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Preterm              Full or late term    -0.8660371   -1.0718300   -0.6602441
Birth       Keneba           GAMBIA                         Early term           Full or late term    -0.1994025   -0.3329771   -0.0658280
Birth       NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.8151190   -1.0019157   -0.6283224
Birth       NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1531706   -0.3338417    0.0275004
Birth       PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Preterm              Full or late term    -1.1418838   -1.3939976   -0.8897700
Birth       PROBIT           BELARUS                        Early term           Full or late term    -0.3441406   -0.4736723   -0.2146089
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.1363821   -0.6584017    0.3856376
6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0651840   -0.2805572    0.4109252
6 months    COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Preterm              Full or late term    -0.4315091   -0.6525984   -0.2104198
6 months    COHORTS          GUATEMALA                      Early term           Full or late term    -0.3123680   -0.4857867   -0.1389494
6 months    COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Preterm              Full or late term    -0.2736402   -0.4266789   -0.1206015
6 months    COHORTS          INDIA                          Early term           Full or late term    -0.0818974   -0.2162792    0.0524845
6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.3074103   -0.4230489   -0.1917717
6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1192857   -0.2090348   -0.0295365
6 months    IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Preterm              Full or late term    -0.5485875   -1.0365998   -0.0605752
6 months    IRC              INDIA                          Early term           Full or late term    -0.1607036   -0.4478751    0.1264678
6 months    JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.4162637   -0.4669906   -0.3655368
6 months    JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.1657952   -0.2050073   -0.1265832
6 months    Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Preterm              Full or late term    -0.4884230   -0.6544034   -0.3224426
6 months    Keneba           GAMBIA                         Early term           Full or late term    -0.0817393   -0.2009179    0.0374394
6 months    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.5666513   -0.7683645   -0.3649381
6 months    NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.2817947   -0.4708576   -0.0927319
6 months    PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Preterm              Full or late term    -0.5384695   -0.7274796   -0.3494594
6 months    PROBIT           BELARUS                        Early term           Full or late term    -0.1292557   -0.2002227   -0.0582887
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.2474761   -0.3960409   -0.0989113
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.1862958   -0.3068626   -0.0657290
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.1721297   -0.4836850    0.1394255
24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.1093806   -0.3410083    0.1222472
24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0708236   -0.3132602    0.1716131
24 months   COHORTS          GUATEMALA                      Early term           Full or late term    -0.1471745   -0.3318047    0.0374557
24 months   COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Preterm              Full or late term    -0.1848956   -0.3444309   -0.0253603
24 months   COHORTS          INDIA                          Early term           Full or late term    -0.0732830   -0.2119973    0.0654313
24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.1750768   -0.2985282   -0.0516254
24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1176234   -0.2180250   -0.0172218
24 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Preterm              Full or late term    -0.5025908   -0.8168233   -0.1883583
24 months   IRC              INDIA                          Early term           Full or late term    -0.1086305   -0.3374974    0.1202364
24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.2499251   -0.3117293   -0.1881209
24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.0597785   -0.1128091   -0.0067479
24 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.2939530   -0.4680728   -0.1198332
24 months   Keneba           GAMBIA                         Early term           Full or late term     0.0811743   -0.0472564    0.2096051
24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.4471745   -0.6990766   -0.1952724
24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1846928   -0.4308617    0.0614761
24 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Preterm              Full or late term    -0.2240400   -0.7615988    0.3135188
24 months   PROBIT           BELARUS                        Early term           Full or late term     0.0241001   -0.3993765    0.4475767


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0011079   -0.1610332    0.1588173
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -0.1794382   -0.2694517   -0.0894246
Birth       COHORTS          INDIA                          Full or late term    NA                -0.2162679   -0.2839184   -0.1486173
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.2375611   -0.2854285   -0.1896936
Birth       IRC              INDIA                          Full or late term    NA                -0.0449396   -0.1686547    0.0787755
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                -0.3153646   -0.3327505   -0.2979787
Birth       Keneba           GAMBIA                         Full or late term    NA                -0.2148735   -0.2818442   -0.1479029
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.3533097   -0.4861579   -0.2204615
Birth       PROBIT           BELARUS                        Full or late term    NA                -0.1822695   -0.2449573   -0.1195818
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0200152   -0.1418638    0.1018334
6 months    COHORTS          GUATEMALA                      Full or late term    NA                -0.1626249   -0.2340762   -0.0911737
6 months    COHORTS          INDIA                          Full or late term    NA                -0.0872119   -0.1555504   -0.0188734
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.1137448   -0.1653189   -0.0621708
6 months    IRC              INDIA                          Full or late term    NA                -0.1170587   -0.2162427   -0.0178747
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -0.1268363   -0.1438430   -0.1098295
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.1058241   -0.1646040   -0.0470442
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.3214431   -0.4616113   -0.1812750
6 months    PROBIT           BELARUS                        Full or late term    NA                -0.0756865   -0.1103469   -0.0410261
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0803052   -0.1204424   -0.0401680
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0554610   -0.1372182    0.0262962
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0509012   -0.1229088    0.0211063
24 months   COHORTS          INDIA                          Full or late term    NA                -0.0704796   -0.1413184    0.0003592
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0836253   -0.1396394   -0.0276111
24 months   IRC              INDIA                          Full or late term    NA                -0.0743941   -0.1473337   -0.0014545
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0678975   -0.0898450   -0.0459499
24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0174329   -0.0787369    0.0438710
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.2617400   -0.4593181   -0.0641619
24 months   PROBIT           BELARUS                        Full or late term    NA                 0.0004261   -0.2110177    0.2118699
