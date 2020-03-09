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
![](/tmp/ae32659b-36e8-4882-bca2-9bbde80b6cf8/bca8ede4-f724-4cef-a146-40a37f97c9cb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ae32659b-36e8-4882-bca2-9bbde80b6cf8/bca8ede4-f724-4cef-a146-40a37f97c9cb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ae32659b-36e8-4882-bca2-9bbde80b6cf8/bca8ede4-f724-4cef-a146-40a37f97c9cb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.9690937   -1.2663925   -0.6717950
Birth       CMC-V-BCS-2002   INDIA                          Preterm              NA                -1.1046548   -1.7579682   -0.4513414
Birth       CMC-V-BCS-2002   INDIA                          Early term           NA                -1.0407982   -1.4030018   -0.6785946
Birth       COHORTS          GUATEMALA                      Full or late term    NA                 0.2322238    0.1075980    0.3568495
Birth       COHORTS          GUATEMALA                      Preterm              NA                -0.3753694   -0.6643969   -0.0863419
Birth       COHORTS          GUATEMALA                      Early term           NA                -0.0775900   -0.2444015    0.0892215
Birth       COHORTS          INDIA                          Full or late term    NA                -0.3871873   -0.4761943   -0.2981803
Birth       COHORTS          INDIA                          Preterm              NA                -0.8808832   -1.0241400   -0.7376264
Birth       COHORTS          INDIA                          Early term           NA                -0.6837297   -0.7842137   -0.5832457
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.0069068   -0.0651415    0.0513279
Birth       COHORTS          PHILIPPINES                    Preterm              NA                -0.6308995   -0.7283596   -0.5334394
Birth       COHORTS          PHILIPPINES                    Early term           NA                -0.2812704   -0.3380634   -0.2244775
Birth       IRC              INDIA                          Full or late term    NA                -0.2676666   -0.4722078   -0.0631253
Birth       IRC              INDIA                          Preterm              NA                -1.1432855   -1.7013015   -0.5852694
Birth       IRC              INDIA                          Early term           NA                -0.1983354   -0.5108999    0.1142291
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                -1.2828858   -1.3063016   -1.2594700
Birth       JiVitA-3         BANGLADESH                     Preterm              NA                -2.2197685   -2.2642046   -2.1753324
Birth       JiVitA-3         BANGLADESH                     Early term           NA                -1.7048048   -1.7352992   -1.6743104
Birth       Keneba           GAMBIA                         Full or late term    NA                 0.2402424    0.1539908    0.3264941
Birth       Keneba           GAMBIA                         Preterm              NA                -0.6510665   -0.8344660   -0.4676670
Birth       Keneba           GAMBIA                         Early term           NA                 0.0537517   -0.0480247    0.1555281
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.5663502   -0.7159884   -0.4167121
Birth       NIH-Crypto       BANGLADESH                     Preterm              NA                -1.3707340   -1.4829232   -1.2585449
Birth       NIH-Crypto       BANGLADESH                     Early term           NA                -0.7094953   -0.8135591   -0.6054314
Birth       PROBIT           BELARUS                        Full or late term    NA                 1.4998051    1.3453604    1.6542499
Birth       PROBIT           BELARUS                        Preterm              NA                 0.3421522    0.0639243    0.6203801
Birth       PROBIT           BELARUS                        Early term           NA                 1.1559979    0.9701805    1.3418153
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -1.3711874   -1.5555405   -1.1868344
6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                -1.6010376   -2.0674369   -1.1346383
6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                -1.2580240   -1.5421019   -0.9739461
6 months    COHORTS          GUATEMALA                      Full or late term    NA                -1.6659352   -1.7643072   -1.5675631
6 months    COHORTS          GUATEMALA                      Preterm              NA                -2.1129062   -2.3135314   -1.9122811
6 months    COHORTS          GUATEMALA                      Early term           NA                -1.9796040   -2.1215949   -1.8376130
6 months    COHORTS          INDIA                          Full or late term    NA                -0.8706009   -0.9613502   -0.7798515
6 months    COHORTS          INDIA                          Preterm              NA                -1.1280156   -1.2502611   -1.0057702
6 months    COHORTS          INDIA                          Early term           NA                -0.9579710   -1.0553442   -0.8605978
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -1.0251898   -1.0905143   -0.9598654
6 months    COHORTS          PHILIPPINES                    Preterm              NA                -1.3314719   -1.4272175   -1.2357263
6 months    COHORTS          PHILIPPINES                    Early term           NA                -1.1456304   -1.2086697   -1.0825910
6 months    IRC              INDIA                          Full or late term    NA                -1.1223203   -1.2907177   -0.9539229
6 months    IRC              INDIA                          Preterm              NA                -1.7624291   -2.2185681   -1.3062900
6 months    IRC              INDIA                          Early term           NA                -1.3133171   -1.5454622   -1.0811721
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -1.1895934   -1.2173685   -1.1618183
6 months    JiVitA-3         BANGLADESH                     Preterm              NA                -1.6070668   -1.6532882   -1.5608454
6 months    JiVitA-3         BANGLADESH                     Early term           NA                -1.3565337   -1.3924489   -1.3206184
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.7849141   -0.8689438   -0.7008843
6 months    Keneba           GAMBIA                         Preterm              NA                -1.2530912   -1.3952039   -1.1109784
6 months    Keneba           GAMBIA                         Early term           NA                -0.8723513   -0.9572378   -0.7874649
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.8776877   -1.0352295   -0.7201458
6 months    NIH-Crypto       BANGLADESH                     Preterm              NA                -1.4459223   -1.5689725   -1.3228722
6 months    NIH-Crypto       BANGLADESH                     Early term           NA                -1.1562312   -1.2582996   -1.0541628
6 months    PROBIT           BELARUS                        Full or late term    NA                 0.1685145    0.0696135    0.2674154
6 months    PROBIT           BELARUS                        Preterm              NA                -0.3490650   -0.5484588   -0.1496713
6 months    PROBIT           BELARUS                        Early term           NA                 0.0403543   -0.0583419    0.1390506
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.4628935   -0.5271657   -0.3986213
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.7116127   -0.8456854   -0.5775400
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.6502256   -0.7515011   -0.5489502
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -2.4782923   -2.6122746   -2.3443100
24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                -2.6447375   -2.9253778   -2.3640972
24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                -2.6076395   -2.8006907   -2.4145884
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -2.9294356   -3.0382012   -2.8206700
24 months   COHORTS          GUATEMALA                      Preterm              NA                -3.0327023   -3.2472457   -2.8181588
24 months   COHORTS          GUATEMALA                      Early term           NA                -3.0865224   -3.2355370   -2.9375079
24 months   COHORTS          INDIA                          Full or late term    NA                -2.0578185   -2.1538372   -1.9617997
24 months   COHORTS          INDIA                          Preterm              NA                -2.2408201   -2.3674977   -2.1141426
24 months   COHORTS          INDIA                          Early term           NA                -2.1377318   -2.2378905   -2.0375731
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -2.3305811   -2.4000195   -2.2611427
24 months   COHORTS          PHILIPPINES                    Preterm              NA                -2.5072120   -2.6092389   -2.4051851
24 months   COHORTS          PHILIPPINES                    Early term           NA                -2.4484177   -2.5208656   -2.3759699
24 months   IRC              INDIA                          Full or late term    NA                -1.7212951   -1.8367308   -1.6058594
24 months   IRC              INDIA                          Preterm              NA                -2.1745396   -2.4607643   -1.8883150
24 months   IRC              INDIA                          Early term           NA                -1.8183757   -2.0140379   -1.6227135
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -1.9485826   -1.9858908   -1.9112744
24 months   JiVitA-3         BANGLADESH                     Preterm              NA                -2.1958439   -2.2490550   -2.1426328
24 months   JiVitA-3         BANGLADESH                     Early term           NA                -2.0073152   -2.0531445   -1.9614860
24 months   Keneba           GAMBIA                         Full or late term    NA                -1.5496052   -1.6347582   -1.4644521
24 months   Keneba           GAMBIA                         Preterm              NA                -1.8768718   -2.0352441   -1.7184994
24 months   Keneba           GAMBIA                         Early term           NA                -1.4834935   -1.5818286   -1.3851583
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -1.1777175   -1.3918015   -0.9636336
24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                -1.6247042   -1.7583653   -1.4910432
24 months   NIH-Crypto       BANGLADESH                     Early term           NA                -1.3633828   -1.4864157   -1.2403499
24 months   PROBIT           BELARUS                        Full or late term    NA                -0.1260933   -0.5949900    0.3428035
24 months   PROBIT           BELARUS                        Preterm              NA                -0.3416802   -0.6804875   -0.0028729
24 months   PROBIT           BELARUS                        Early term           NA                -0.1305105   -0.3229811    0.0619602


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
Birth       CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.1355611   -0.8560327    0.5849105
Birth       CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0717044   -0.5404320    0.3970231
Birth       COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Preterm              Full or late term    -0.6075931   -0.9226191   -0.2925671
Birth       COHORTS          GUATEMALA                      Early term           Full or late term    -0.3098138   -0.5183387   -0.1012889
Birth       COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Preterm              Full or late term    -0.4936959   -0.6625113   -0.3248805
Birth       COHORTS          INDIA                          Early term           Full or late term    -0.2965424   -0.4304624   -0.1626224
Birth       COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.6239927   -0.7373051   -0.5106804
Birth       COHORTS          PHILIPPINES                    Early term           Full or late term    -0.2743637   -0.3554100   -0.1933173
Birth       IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Preterm              Full or late term    -0.8756189   -1.4708741   -0.2803637
Birth       IRC              INDIA                          Early term           Full or late term     0.0693311   -0.3051358    0.4437981
Birth       JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.9368827   -0.9873908   -0.8863746
Birth       JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.4219190   -0.4574834   -0.3863546
Birth       Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Preterm              Full or late term    -0.8913089   -1.0940118   -0.6886061
Birth       Keneba           GAMBIA                         Early term           Full or late term    -0.1864907   -0.3198703   -0.0531112
Birth       NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.8043838   -0.9916243   -0.6171433
Birth       NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1431450   -0.3254507    0.0391606
Birth       PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Preterm              Full or late term    -1.1576529   -1.4030361   -0.9122698
Birth       PROBIT           BELARUS                        Early term           Full or late term    -0.3438073   -0.4751655   -0.2124490
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2298502   -0.7310349    0.2713344
6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1131634   -0.2260454    0.4523721
6 months    COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Preterm              Full or late term    -0.4469711   -0.6707676   -0.2231745
6 months    COHORTS          GUATEMALA                      Early term           Full or late term    -0.3136688   -0.4864934   -0.1408442
6 months    COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Preterm              Full or late term    -0.2574148   -0.4094675   -0.1053620
6 months    COHORTS          INDIA                          Early term           Full or late term    -0.0873701   -0.2194908    0.0447506
6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.3062821   -0.4214563   -0.1911078
6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1204405   -0.2102358   -0.0306453
6 months    IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Preterm              Full or late term    -0.6401088   -1.1250342   -0.1551833
6 months    IRC              INDIA                          Early term           Full or late term    -0.1909969   -0.4765192    0.0945255
6 months    JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.4174734   -0.4679256   -0.3670213
6 months    JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.1669403   -0.2060999   -0.1277806
6 months    Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Preterm              Full or late term    -0.4681771   -0.6324206   -0.3039335
6 months    Keneba           GAMBIA                         Early term           Full or late term    -0.0874372   -0.2070204    0.0321460
6 months    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.5682347   -0.7681451   -0.3683242
6 months    NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.2785435   -0.4663407   -0.0907464
6 months    PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Preterm              Full or late term    -0.5175795   -0.6952749   -0.3398841
6 months    PROBIT           BELARUS                        Early term           Full or late term    -0.1281601   -0.1977912   -0.0585291
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.2487192   -0.3969740   -0.1004644
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.1873321   -0.3070349   -0.0676294
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.1664453   -0.4775187    0.1446282
24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.1293473   -0.3646291    0.1059346
24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    -0.1032667   -0.3439948    0.1374615
24 months   COHORTS          GUATEMALA                      Early term           Full or late term    -0.1570869   -0.3418116    0.0276379
24 months   COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Preterm              Full or late term    -0.1830016   -0.3419106   -0.0240927
24 months   COHORTS          INDIA                          Early term           Full or late term    -0.0799133   -0.2186860    0.0588593
24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.1766309   -0.3000419   -0.0532198
24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1178366   -0.2181922   -0.0174810
24 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Preterm              Full or late term    -0.4532446   -0.7615735   -0.1449156
24 months   IRC              INDIA                          Early term           Full or late term    -0.0970806   -0.3242430    0.1300818
24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.2472613   -0.3098017   -0.1847209
24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.0587326   -0.1118762   -0.0055891
24 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.3272666   -0.5064809   -0.1480524
24 months   Keneba           GAMBIA                         Early term           Full or late term     0.0661117   -0.0633586    0.1955820
24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.4469867   -0.6984913   -0.1954821
24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1856653   -0.4318964    0.0605659
24 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Preterm              Full or late term    -0.2155870   -0.7604419    0.3292680
24 months   PROBIT           BELARUS                        Early term           Full or late term    -0.0044172   -0.4337748    0.4249405


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0078981   -0.1545875    0.1703837
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -0.1791443   -0.2686993   -0.0895894
Birth       COHORTS          INDIA                          Full or late term    NA                -0.2200284   -0.2888544   -0.1512025
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.2423393   -0.2901992   -0.1944793
Birth       IRC              INDIA                          Full or late term    NA                -0.0426315   -0.1651718    0.0799087
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                -0.3152020   -0.3326221   -0.2977820
Birth       Keneba           GAMBIA                         Full or late term    NA                -0.2123745   -0.2791223   -0.1456266
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.3431443   -0.4767329   -0.2095557
Birth       PROBIT           BELARUS                        Full or late term    NA                -0.1883634   -0.2495766   -0.1271502
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0144130   -0.1343442    0.1055183
6 months    COHORTS          GUATEMALA                      Full or late term    NA                -0.1656076   -0.2373222   -0.0938930
6 months    COHORTS          INDIA                          Full or late term    NA                -0.0924327   -0.1598785   -0.0249868
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.1157964   -0.1673864   -0.0642064
6 months    IRC              INDIA                          Full or late term    NA                -0.1098060   -0.2081317   -0.0114803
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -0.1272817   -0.1443034   -0.1102599
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.1098943   -0.1686213   -0.0511674
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.3209906   -0.4594863   -0.1824950
6 months    PROBIT           BELARUS                        Full or late term    NA                -0.0705071   -0.1053155   -0.0356987
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0790635   -0.1191080   -0.0390190
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0536466   -0.1352316    0.0279384
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0616839   -0.1348829    0.0115151
24 months   COHORTS          INDIA                          Full or late term    NA                -0.0711265   -0.1421231   -0.0001299
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0839073   -0.1398811   -0.0279335
24 months   IRC              INDIA                          Full or late term    NA                -0.0751964   -0.1474411   -0.0029517
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0670770   -0.0892147   -0.0449393
24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0304813   -0.0922414    0.0312787
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.2635470   -0.4612648   -0.0658293
24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0181959   -0.2363310    0.1999392
