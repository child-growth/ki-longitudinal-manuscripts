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

agecat      studyid          country                        gagebrth             n_cell       n
----------  ---------------  -----------------------------  ------------------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term        58      92
Birth       CMC-V-BCS-2002   INDIA                          Preterm                  11      92
Birth       CMC-V-BCS-2002   INDIA                          Early term               23      92
Birth       COHORTS          GUATEMALA                      Full or late term       341     617
Birth       COHORTS          GUATEMALA                      Preterm                  95     617
Birth       COHORTS          GUATEMALA                      Early term              181     617
Birth       COHORTS          INDIA                          Full or late term       570    1293
Birth       COHORTS          INDIA                          Preterm                 285    1293
Birth       COHORTS          INDIA                          Early term              438    1293
Birth       COHORTS          PHILIPPINES                    Full or late term      1164    3024
Birth       COHORTS          PHILIPPINES                    Preterm                 649    3024
Birth       COHORTS          PHILIPPINES                    Early term             1211    3024
Birth       IRC              INDIA                          Full or late term       238     369
Birth       IRC              INDIA                          Preterm                  36     369
Birth       IRC              INDIA                          Early term               95     369
Birth       JiVitA-3         BANGLADESH                     Full or late term     10944   21442
Birth       JiVitA-3         BANGLADESH                     Preterm                4514   21442
Birth       JiVitA-3         BANGLADESH                     Early term             5984   21442
Birth       Keneba           GAMBIA                         Full or late term       734    1515
Birth       Keneba           GAMBIA                         Preterm                 235    1515
Birth       Keneba           GAMBIA                         Early term              546    1515
Birth       NIH-Crypto       BANGLADESH                     Full or late term       162     732
Birth       NIH-Crypto       BANGLADESH                     Preterm                 257     732
Birth       NIH-Crypto       BANGLADESH                     Early term              313     732
Birth       PROBIT           BELARUS                        Full or late term      7100   13893
Birth       PROBIT           BELARUS                        Preterm                 472   13893
Birth       PROBIT           BELARUS                        Early term             6321   13893
6 months    CMC-V-BCS-2002   INDIA                          Full or late term       212     347
6 months    CMC-V-BCS-2002   INDIA                          Preterm                  52     347
6 months    CMC-V-BCS-2002   INDIA                          Early term               83     347
6 months    COHORTS          GUATEMALA                      Full or late term       389     713
6 months    COHORTS          GUATEMALA                      Preterm                 113     713
6 months    COHORTS          GUATEMALA                      Early term              211     713
6 months    COHORTS          INDIA                          Full or late term       568    1312
6 months    COHORTS          INDIA                          Preterm                 299    1312
6 months    COHORTS          INDIA                          Early term              445    1312
6 months    COHORTS          PHILIPPINES                    Full or late term      1028    2687
6 months    COHORTS          PHILIPPINES                    Preterm                 573    2687
6 months    COHORTS          PHILIPPINES                    Early term             1086    2687
6 months    IRC              INDIA                          Full or late term       249     388
6 months    IRC              INDIA                          Preterm                  42     388
6 months    IRC              INDIA                          Early term               97     388
6 months    JiVitA-3         BANGLADESH                     Full or late term      8527   16010
6 months    JiVitA-3         BANGLADESH                     Preterm                3045   16010
6 months    JiVitA-3         BANGLADESH                     Early term             4438   16010
6 months    Keneba           GAMBIA                         Full or late term       658    1374
6 months    Keneba           GAMBIA                         Preterm                 207    1374
6 months    Keneba           GAMBIA                         Early term              509    1374
6 months    NIH-Crypto       BANGLADESH                     Full or late term       155     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                 251     715
6 months    NIH-Crypto       BANGLADESH                     Early term              309     715
6 months    PROBIT           BELARUS                        Full or late term      8007   15760
6 months    PROBIT           BELARUS                        Preterm                 551   15760
6 months    PROBIT           BELARUS                        Early term             7202   15760
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 291    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1903
24 months   CMC-V-BCS-2002   INDIA                          Full or late term       213     349
24 months   CMC-V-BCS-2002   INDIA                          Preterm                  52     349
24 months   CMC-V-BCS-2002   INDIA                          Early term               84     349
24 months   COHORTS          GUATEMALA                      Full or late term       375     661
24 months   COHORTS          GUATEMALA                      Preterm                 107     661
24 months   COHORTS          GUATEMALA                      Early term              179     661
24 months   COHORTS          INDIA                          Full or late term       565    1308
24 months   COHORTS          INDIA                          Preterm                 305    1308
24 months   COHORTS          INDIA                          Early term              438    1308
24 months   COHORTS          PHILIPPINES                    Full or late term       938    2424
24 months   COHORTS          PHILIPPINES                    Preterm                 513    2424
24 months   COHORTS          PHILIPPINES                    Early term              973    2424
24 months   IRC              INDIA                          Full or late term       250     390
24 months   IRC              INDIA                          Preterm                  42     390
24 months   IRC              INDIA                          Early term               98     390
24 months   JiVitA-3         BANGLADESH                     Full or late term      4327    8202
24 months   JiVitA-3         BANGLADESH                     Preterm                1604    8202
24 months   JiVitA-3         BANGLADESH                     Early term             2271    8202
24 months   Keneba           GAMBIA                         Full or late term       557    1156
24 months   Keneba           GAMBIA                         Preterm                 167    1156
24 months   Keneba           GAMBIA                         Early term              432    1156
24 months   NIH-Crypto       BANGLADESH                     Full or late term        79     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                 208     514
24 months   NIH-Crypto       BANGLADESH                     Early term              227     514
24 months   PROBIT           BELARUS                        Full or late term      2025    4035
24 months   PROBIT           BELARUS                        Preterm                 137    4035
24 months   PROBIT           BELARUS                        Early term             1873    4035
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6


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
![](/tmp/ba453afe-8e1c-44cc-9613-acb9be404611/3403966f-9ea3-4576-af3a-797f7bb1fecb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ba453afe-8e1c-44cc-9613-acb9be404611/3403966f-9ea3-4576-af3a-797f7bb1fecb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ba453afe-8e1c-44cc-9613-acb9be404611/3403966f-9ea3-4576-af3a-797f7bb1fecb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.9521579   -1.2459700   -0.6583458
Birth       CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.6674272   -1.3346568   -0.0001975
Birth       CMC-V-BCS-2002   INDIA                          Early term           NA                -0.8705668   -1.2341310   -0.5070026
Birth       COHORTS          GUATEMALA                      Full or late term    NA                 0.2391002    0.1148756    0.3633247
Birth       COHORTS          GUATEMALA                      Preterm              NA                -0.4271436   -0.7217894   -0.1324978
Birth       COHORTS          GUATEMALA                      Early term           NA                -0.0562517   -0.2279607    0.1154572
Birth       COHORTS          INDIA                          Full or late term    NA                -0.3871239   -0.4756602   -0.2985876
Birth       COHORTS          INDIA                          Preterm              NA                -0.8872508   -1.0286750   -0.7458267
Birth       COHORTS          INDIA                          Early term           NA                -0.6795744   -0.7789991   -0.5801498
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.0069126   -0.0650970    0.0512717
Birth       COHORTS          PHILIPPINES                    Preterm              NA                -0.6321716   -0.7300345   -0.5343088
Birth       COHORTS          PHILIPPINES                    Early term           NA                -0.2783625   -0.3350782   -0.2216468
Birth       IRC              INDIA                          Full or late term    NA                -0.2647003   -0.4696940   -0.0597067
Birth       IRC              INDIA                          Preterm              NA                -0.8022823   -1.3358014   -0.2687633
Birth       IRC              INDIA                          Early term           NA                -0.1585138   -0.4749743    0.1579468
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                -1.2830686   -1.3065557   -1.2595815
Birth       JiVitA-3         BANGLADESH                     Preterm              NA                -2.2194400   -2.2638596   -2.1750203
Birth       JiVitA-3         BANGLADESH                     Early term           NA                -1.7035746   -1.7340889   -1.6730603
Birth       Keneba           GAMBIA                         Full or late term    NA                 0.2349200    0.1481897    0.3216502
Birth       Keneba           GAMBIA                         Preterm              NA                -0.6244899   -0.8085944   -0.4403854
Birth       Keneba           GAMBIA                         Early term           NA                 0.0423660   -0.0591349    0.1438668
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.5618081   -0.7133669   -0.4102493
Birth       NIH-Crypto       BANGLADESH                     Preterm              NA                -1.3640246   -1.4786999   -1.2493492
Birth       NIH-Crypto       BANGLADESH                     Early term           NA                -0.7085533   -0.8111401   -0.6059665
Birth       PROBIT           BELARUS                        Full or late term    NA                 1.5040099    1.3497945    1.6582253
Birth       PROBIT           BELARUS                        Preterm              NA                 0.3680671    0.0967357    0.6393986
Birth       PROBIT           BELARUS                        Early term           NA                 1.1446707    0.9603664    1.3289749
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -1.3917842   -1.5740516   -1.2095169
6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                -1.4419954   -1.9135489   -0.9704418
6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                -1.2597945   -1.5409428   -0.9786462
6 months    COHORTS          GUATEMALA                      Full or late term    NA                -1.6649095   -1.7631230   -1.5666960
6 months    COHORTS          GUATEMALA                      Preterm              NA                -2.1239880   -2.3276533   -1.9203226
6 months    COHORTS          GUATEMALA                      Early term           NA                -1.9829900   -2.1256129   -1.8403672
6 months    COHORTS          INDIA                          Full or late term    NA                -0.8715978   -0.9625862   -0.7806094
6 months    COHORTS          INDIA                          Preterm              NA                -1.1467953   -1.2687683   -1.0248224
6 months    COHORTS          INDIA                          Early term           NA                -0.9610536   -1.0595875   -0.8625197
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -1.0269108   -1.0922561   -0.9615655
6 months    COHORTS          PHILIPPINES                    Preterm              NA                -1.3297676   -1.4258747   -1.2336605
6 months    COHORTS          PHILIPPINES                    Early term           NA                -1.1467482   -1.2098084   -1.0836880
6 months    IRC              INDIA                          Full or late term    NA                -1.1208486   -1.2887684   -0.9529289
6 months    IRC              INDIA                          Preterm              NA                -1.6953232   -2.1586452   -1.2320011
6 months    IRC              INDIA                          Early term           NA                -1.2918939   -1.5283689   -1.0554188
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -1.1884988   -1.2162815   -1.1607162
6 months    JiVitA-3         BANGLADESH                     Preterm              NA                -1.6096552   -1.6558933   -1.5634171
6 months    JiVitA-3         BANGLADESH                     Early term           NA                -1.3577233   -1.3936940   -1.3217527
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.7806502   -0.8643991   -0.6969014
6 months    Keneba           GAMBIA                         Preterm              NA                -1.2649016   -1.4079170   -1.1218862
6 months    Keneba           GAMBIA                         Early term           NA                -0.8689548   -0.9534803   -0.7844293
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.8773572   -1.0357469   -0.7189675
6 months    NIH-Crypto       BANGLADESH                     Preterm              NA                -1.4449522   -1.5660557   -1.3238487
6 months    NIH-Crypto       BANGLADESH                     Early term           NA                -1.1593559   -1.2607889   -1.0579228
6 months    PROBIT           BELARUS                        Full or late term    NA                 0.1742142    0.0758842    0.2725441
6 months    PROBIT           BELARUS                        Preterm              NA                -0.3633995   -0.5682419   -0.1585572
6 months    PROBIT           BELARUS                        Early term           NA                 0.0446605   -0.0546975    0.1440185
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.4616625   -0.5258713   -0.3974538
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.7200843   -0.8537172   -0.5864513
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.6598671   -0.7616244   -0.5581097
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -2.4822842   -2.6159647   -2.3486038
24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                -2.6164493   -2.9010531   -2.3318455
24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                -2.5842211   -2.7736720   -2.3947703
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -2.9382941   -3.0474013   -2.8291868
24 months   COHORTS          GUATEMALA                      Preterm              NA                -3.0029732   -3.2187168   -2.7872296
24 months   COHORTS          GUATEMALA                      Early term           NA                -3.0856598   -3.2354978   -2.9358217
24 months   COHORTS          INDIA                          Full or late term    NA                -2.0614755   -2.1573087   -1.9656423
24 months   COHORTS          INDIA                          Preterm              NA                -2.2428785   -2.3705452   -2.1152119
24 months   COHORTS          INDIA                          Early term           NA                -2.1353892   -2.2351443   -2.0356341
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -2.3315421   -2.4010689   -2.2620154
24 months   COHORTS          PHILIPPINES                    Preterm              NA                -2.5039362   -2.6056852   -2.4021872
24 months   COHORTS          PHILIPPINES                    Early term           NA                -2.4473232   -2.5200081   -2.3746383
24 months   IRC              INDIA                          Full or late term    NA                -1.7251458   -1.8404047   -1.6098868
24 months   IRC              INDIA                          Preterm              NA                -2.1888440   -2.4722636   -1.9054244
24 months   IRC              INDIA                          Early term           NA                -1.8050502   -1.9988325   -1.6112679
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -1.9471062   -1.9841696   -1.9100428
24 months   JiVitA-3         BANGLADESH                     Preterm              NA                -2.1995190   -2.2521752   -2.1468628
24 months   JiVitA-3         BANGLADESH                     Early term           NA                -2.0090538   -2.0546404   -1.9634672
24 months   Keneba           GAMBIA                         Full or late term    NA                -1.5589243   -1.6440403   -1.4738084
24 months   Keneba           GAMBIA                         Preterm              NA                -1.8677955   -2.0216208   -1.7139701
24 months   Keneba           GAMBIA                         Early term           NA                -1.4852986   -1.5823732   -1.3882239
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -1.1836653   -1.3958180   -0.9715126
24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                -1.6240354   -1.7584350   -1.4896358
24 months   NIH-Crypto       BANGLADESH                     Early term           NA                -1.3635141   -1.4855681   -1.2414600
24 months   PROBIT           BELARUS                        Full or late term    NA                -0.1338094   -0.5933423    0.3257235
24 months   PROBIT           BELARUS                        Preterm              NA                -0.3650074   -0.7126346   -0.0173802
24 months   PROBIT           BELARUS                        Early term           NA                -0.1243388   -0.3118655    0.0631879


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
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.3856004   -1.5319935   -1.2392072
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
Birth       CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.2847308   -0.4484716    1.0179331
Birth       CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0815911   -0.3862622    0.5494445
Birth       COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Preterm              Full or late term    -0.6662437   -0.9861990   -0.3462885
Birth       COHORTS          GUATEMALA                      Early term           Full or late term    -0.2953519   -0.5074187   -0.0832851
Birth       COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Preterm              Full or late term    -0.5001270   -0.6673125   -0.3329414
Birth       COHORTS          INDIA                          Early term           Full or late term    -0.2924506   -0.4252361   -0.1596650
Birth       COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.6252590   -0.7388943   -0.5116236
Birth       COHORTS          PHILIPPINES                    Early term           Full or late term    -0.2714499   -0.3523192   -0.1905805
Birth       IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Preterm              Full or late term    -0.5375820   -1.1092861    0.0341221
Birth       IRC              INDIA                          Early term           Full or late term     0.1061866   -0.2713561    0.4837293
Birth       JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.9363714   -0.9870486   -0.8856942
Birth       JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.4205061   -0.4560537   -0.3849584
Birth       Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Preterm              Full or late term    -0.8594099   -1.0628729   -0.6559469
Birth       Keneba           GAMBIA                         Early term           Full or late term    -0.1925540   -0.3262311   -0.0588770
Birth       NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.8022165   -0.9921715   -0.6122615
Birth       NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1467452   -0.3298047    0.0363143
Birth       PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Preterm              Full or late term    -1.1359428   -1.3700801   -0.9018054
Birth       PROBIT           BELARUS                        Early term           Full or late term    -0.3593392   -0.4872408   -0.2314376
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0502111   -0.5543982    0.4539760
6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1319897   -0.2020687    0.4660481
6 months    COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Preterm              Full or late term    -0.4590785   -0.6853311   -0.2328258
6 months    COHORTS          GUATEMALA                      Early term           Full or late term    -0.3180805   -0.4913122   -0.1448488
6 months    COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Preterm              Full or late term    -0.2751975   -0.4274169   -0.1229782
6 months    COHORTS          INDIA                          Early term           Full or late term    -0.0894558   -0.2235579    0.0446463
6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.3028568   -0.4184333   -0.1872803
6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1198374   -0.2097175   -0.0299572
6 months    IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Preterm              Full or late term    -0.5744745   -1.0661376   -0.0828114
6 months    IRC              INDIA                          Early term           Full or late term    -0.1710452   -0.4601837    0.1180933
6 months    JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.4211563   -0.4715112   -0.3708014
6 months    JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.1692245   -0.2084558   -0.1299932
6 months    Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Preterm              Full or late term    -0.4842513   -0.6488939   -0.3196087
6 months    Keneba           GAMBIA                         Early term           Full or late term    -0.0883045   -0.2072773    0.0306682
6 months    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.5675950   -0.7664823   -0.3687077
6 months    NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.2819987   -0.4698649   -0.0941325
6 months    PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Preterm              Full or late term    -0.5376137   -0.7229088   -0.3523186
6 months    PROBIT           BELARUS                        Early term           Full or late term    -0.1295537   -0.1997533   -0.0593541
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.2584217   -0.4062896   -0.1105539
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.1982045   -0.3181484   -0.0782606
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.1341650   -0.4486628    0.1803327
24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.1019369   -0.3339972    0.1301234
24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0646791   -0.3064722    0.1771140
24 months   COHORTS          GUATEMALA                      Early term           Full or late term    -0.1473657   -0.3327790    0.0380476
24 months   COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Preterm              Full or late term    -0.1814031   -0.3408499   -0.0219563
24 months   COHORTS          INDIA                          Early term           Full or late term    -0.0739137   -0.2122170    0.0643895
24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.1723941   -0.2956070   -0.0491811
24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1157811   -0.2163752   -0.0151870
24 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Preterm              Full or late term    -0.4636983   -0.7692279   -0.1581686
24 months   IRC              INDIA                          Early term           Full or late term    -0.0799044   -0.3059699    0.1461610
24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.2524128   -0.3142961   -0.1905295
24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.0619476   -0.1148929   -0.0090023
24 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.3088711   -0.4840085   -0.1337338
24 months   Keneba           GAMBIA                         Early term           Full or late term     0.0736258   -0.0548571    0.2021086
24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.4403702   -0.6915880   -0.1891523
24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1798488   -0.4245415    0.0648439
24 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Preterm              Full or late term    -0.2311979   -0.7819354    0.3195396
24 months   PROBIT           BELARUS                        Early term           Full or late term     0.0094706   -0.4028908    0.4218320


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0090377   -0.1722508    0.1541754
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -0.1860207   -0.2752528   -0.0967887
Birth       COHORTS          INDIA                          Full or late term    NA                -0.2200919   -0.2885552   -0.1516286
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.2423334   -0.2901602   -0.1945066
Birth       IRC              INDIA                          Full or late term    NA                -0.0455978   -0.1693590    0.0781635
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                -0.3150193   -0.3325194   -0.2975192
Birth       Keneba           GAMBIA                         Full or late term    NA                -0.2070520   -0.2739679   -0.1401361
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.3476864   -0.4830506   -0.2123223
Birth       PROBIT           BELARUS                        Full or late term    NA                -0.1925682   -0.2516999   -0.1334364
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0061839   -0.1118686    0.1242363
6 months    COHORTS          GUATEMALA                      Full or late term    NA                -0.1666333   -0.2378968   -0.0953698
6 months    COHORTS          INDIA                          Full or late term    NA                -0.0914357   -0.1593471   -0.0235244
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.1140754   -0.1657555   -0.0623954
6 months    IRC              INDIA                          Full or late term    NA                -0.1112776   -0.2095442   -0.0130111
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -0.1283762   -0.1453371   -0.1114154
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.1141582   -0.1726492   -0.0556671
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.3213211   -0.4603297   -0.1823126
6 months    PROBIT           BELARUS                        Full or late term    NA                -0.0762068   -0.1103595   -0.0420541
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0802945   -0.1202321   -0.0403568
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0496546   -0.1305449    0.0312356
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0528255   -0.1260914    0.0204405
24 months   COHORTS          INDIA                          Full or late term    NA                -0.0674695   -0.1382999    0.0033610
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0829463   -0.1390061   -0.0268865
24 months   IRC              INDIA                          Full or late term    NA                -0.0713457   -0.1438411    0.0011497
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0685534   -0.0904027   -0.0467041
24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0211622   -0.0826983    0.0403739
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.2575993   -0.4538320   -0.0613666
24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0104797   -0.2176330    0.1966736
