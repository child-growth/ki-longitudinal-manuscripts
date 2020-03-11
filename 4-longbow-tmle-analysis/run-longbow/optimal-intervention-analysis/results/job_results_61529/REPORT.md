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
![](/tmp/4f399166-a742-47af-91c6-fea75a50e9a4/87f97fee-4235-40d6-8083-913ac631c696/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3890422   -1.9945320   -0.7835524
Birth       COHORTS          GUATEMALA                      optimal              observed           0.2413036    0.1172019    0.3654053
Birth       COHORTS          INDIA                          optimal              observed          -0.3830486   -0.4718892   -0.2942080
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.0029289   -0.0611504    0.0552926
Birth       IRC              INDIA                          optimal              observed          -0.2614355   -0.5737464    0.0508753
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.2823158   -1.3058344   -1.2587971
Birth       Keneba           GAMBIA                         optimal              observed           0.2259583    0.1391619    0.3127547
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.5621398   -0.7115604   -0.4127192
Birth       PROBIT           BELARUS                        optimal              observed           1.5065999    1.3523278    1.6608720
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -1.4576589   -1.7390286   -1.1762892
6 months    COHORTS          GUATEMALA                      optimal              observed          -1.5665996   -1.6829880   -1.4502112
6 months    COHORTS          INDIA                          optimal              observed          -0.8711421   -0.9618540   -0.7804303
6 months    COHORTS          PHILIPPINES                    optimal              observed          -1.0251327   -1.0905410   -0.9597245
6 months    IRC              INDIA                          optimal              observed          -1.1192850   -1.2882428   -0.9503272
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.1902883   -1.2181136   -1.1624629
6 months    Keneba           GAMBIA                         optimal              observed          -0.7891336   -0.8729478   -0.7053195
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.8697974   -1.0288687   -0.7107261
6 months    PROBIT           BELARUS                        optimal              observed           0.1783565    0.0806796    0.2760334
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4617332   -0.5258975   -0.3975688
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4832802   -2.6179178   -2.3486425
24 months   COHORTS          GUATEMALA                      optimal              observed          -2.9062793   -3.0789649   -2.7335937
24 months   COHORTS          INDIA                          optimal              observed          -2.0431557   -2.1387314   -1.9475799
24 months   COHORTS          PHILIPPINES                    optimal              observed          -2.3307857   -2.4002207   -2.2613506
24 months   IRC              INDIA                          optimal              observed          -1.7442822   -1.9022197   -1.5863447
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.9488850   -1.9863618   -1.9114081
24 months   Keneba           GAMBIA                         optimal              observed          -1.4955000   -1.5912224   -1.3997776
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.1994950   -1.4238589   -0.9751311
24 months   PROBIT           BELARUS                        optimal              observed          -0.2099818   -0.3914684   -0.0284952


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       COHORTS          GUATEMALA                      observed             observed           0.0530794   -0.0441925    0.1503513
Birth       COHORTS          INDIA                          observed             observed          -0.6072158   -0.6675691   -0.5468624
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.2492460   -0.2884729   -0.2100192
Birth       IRC              INDIA                          observed             observed          -0.3102981   -0.4751168   -0.1454794
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5980879   -1.6176172   -1.5785586
Birth       Keneba           GAMBIA                         observed             observed           0.0278680   -0.0365315    0.0922674
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        observed             observed           1.3114417    1.1524752    1.4704082
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.3856004   -1.5319935   -1.2392073
6 months    COHORTS          GUATEMALA                      observed             observed          -1.8315428   -1.9081267   -1.7549589
6 months    COHORTS          INDIA                          observed             observed          -0.9630335   -1.0220763   -0.9039908
6 months    COHORTS          PHILIPPINES                    observed             observed          -1.1409862   -1.1830414   -1.0989310
6 months    IRC              INDIA                          observed             observed          -1.2321263   -1.3660720   -1.0981806
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3168751   -1.3402193   -1.2935309
6 months    Keneba           GAMBIA                         observed             observed          -0.8948084   -0.9510697   -0.8385471
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        observed             observed           0.0980074    0.0062724    0.1897424
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5419570   -0.5926042   -0.4913098
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5319389   -2.6335015   -2.4303762
24 months   COHORTS          GUATEMALA                      observed             observed          -2.9911195   -3.0733804   -2.9088586
24 months   COHORTS          INDIA                          observed             observed          -2.1289450   -2.1901830   -2.0677069
24 months   COHORTS          PHILIPPINES                    observed             observed          -2.4144884   -2.4596605   -2.3693164
24 months   IRC              INDIA                          observed             observed          -1.7964915   -1.8912047   -1.7017782
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0156596   -2.0439781   -1.9873411
24 months   Keneba           GAMBIA                         observed             observed          -1.5800865   -1.6398819   -1.5202911
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        observed             observed          -0.1442891   -0.4253755    0.1367972


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed           0.4278465   -0.1312502    0.9869433
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.1882242   -0.2775666   -0.0988818
Birth       COHORTS          INDIA                          optimal              observed          -0.2241671   -0.2926686   -0.1556657
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.2463171   -0.2942343   -0.1983999
Birth       IRC              INDIA                          optimal              observed          -0.0488626   -0.3116683    0.2139432
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.3157721   -0.3332652   -0.2982790
Birth       Keneba           GAMBIA                         optimal              observed          -0.1980903   -0.2665903   -0.1295903
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.3473547   -0.4806777   -0.2140318
Birth       PROBIT           BELARUS                        optimal              observed          -0.1951581   -0.2513994   -0.1389169
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed           0.0720585   -0.1775334    0.3216504
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.2649432   -0.3589340   -0.1709523
6 months    COHORTS          INDIA                          optimal              observed          -0.0918914   -0.1590233   -0.0247595
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.1158535   -0.1676001   -0.0641069
6 months    IRC              INDIA                          optimal              observed          -0.1128413   -0.2117377   -0.0139448
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.1265868   -0.1435994   -0.1095742
6 months    Keneba           GAMBIA                         optimal              observed          -0.1056748   -0.1680525   -0.0432970
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.3288809   -0.4687936   -0.1889683
6 months    PROBIT           BELARUS                        optimal              observed          -0.0803491   -0.1124173   -0.0482809
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0802238   -0.1203728   -0.0400749
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0486587   -0.1308229    0.0335055
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0848402   -0.2342704    0.0645900
24 months   COHORTS          INDIA                          optimal              observed          -0.0857893   -0.1590610   -0.0125175
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.0837028   -0.1396563   -0.0277492
24 months   IRC              INDIA                          optimal              observed          -0.0522093   -0.1731794    0.0687609
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0667746   -0.0890096   -0.0445397
24 months   Keneba           GAMBIA                         optimal              observed          -0.0845865   -0.1603501   -0.0088229
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.2417696   -0.4493817   -0.0341576
24 months   PROBIT           BELARUS                        optimal              observed           0.0656927   -0.1449550    0.2763404
