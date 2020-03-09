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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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
Birth       CMC-V-BCS-2002   INDIA                          Full or late term        53      86
Birth       CMC-V-BCS-2002   INDIA                          Preterm                  11      86
Birth       CMC-V-BCS-2002   INDIA                          Early term               22      86
Birth       COHORTS          GUATEMALA                      Full or late term       323     572
Birth       COHORTS          GUATEMALA                      Preterm                  78     572
Birth       COHORTS          GUATEMALA                      Early term              171     572
Birth       COHORTS          INDIA                          Full or late term       553    1229
Birth       COHORTS          INDIA                          Preterm                 259    1229
Birth       COHORTS          INDIA                          Early term              417    1229
Birth       COHORTS          PHILIPPINES                    Full or late term      1135    2874
Birth       COHORTS          PHILIPPINES                    Preterm                 579    2874
Birth       COHORTS          PHILIPPINES                    Early term             1160    2874
Birth       IRC              INDIA                          Full or late term       213     328
Birth       IRC              INDIA                          Preterm                  32     328
Birth       IRC              INDIA                          Early term               83     328
Birth       JiVitA-3         BANGLADESH                     Full or late term      9668   17161
Birth       JiVitA-3         BANGLADESH                     Preterm                2755   17161
Birth       JiVitA-3         BANGLADESH                     Early term             4738   17161
Birth       Keneba           GAMBIA                         Full or late term       709    1439
Birth       Keneba           GAMBIA                         Preterm                 206    1439
Birth       Keneba           GAMBIA                         Early term              524    1439
Birth       NIH-Crypto       BANGLADESH                     Full or late term       160     707
Birth       NIH-Crypto       BANGLADESH                     Preterm                 240     707
Birth       NIH-Crypto       BANGLADESH                     Early term              307     707
Birth       PROBIT           BELARUS                        Full or late term      7065   13817
Birth       PROBIT           BELARUS                        Preterm                 467   13817
Birth       PROBIT           BELARUS                        Early term             6285   13817
6 months    CMC-V-BCS-2002   INDIA                          Full or late term       212     346
6 months    CMC-V-BCS-2002   INDIA                          Preterm                  51     346
6 months    CMC-V-BCS-2002   INDIA                          Early term               83     346
6 months    COHORTS          GUATEMALA                      Full or late term       389     714
6 months    COHORTS          GUATEMALA                      Preterm                 114     714
6 months    COHORTS          GUATEMALA                      Early term              211     714
6 months    COHORTS          INDIA                          Full or late term       568    1312
6 months    COHORTS          INDIA                          Preterm                 299    1312
6 months    COHORTS          INDIA                          Early term              445    1312
6 months    COHORTS          PHILIPPINES                    Full or late term      1028    2685
6 months    COHORTS          PHILIPPINES                    Preterm                 572    2685
6 months    COHORTS          PHILIPPINES                    Early term             1085    2685
6 months    IRC              INDIA                          Full or late term       249     388
6 months    IRC              INDIA                          Preterm                  42     388
6 months    IRC              INDIA                          Early term               97     388
6 months    JiVitA-3         BANGLADESH                     Full or late term      8511   15989
6 months    JiVitA-3         BANGLADESH                     Preterm                3047   15989
6 months    JiVitA-3         BANGLADESH                     Early term             4431   15989
6 months    Keneba           GAMBIA                         Full or late term       658    1374
6 months    Keneba           GAMBIA                         Preterm                 207    1374
6 months    Keneba           GAMBIA                         Early term              509    1374
6 months    NIH-Crypto       BANGLADESH                     Full or late term       155     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                 251     715
6 months    NIH-Crypto       BANGLADESH                     Early term              309     715
6 months    PROBIT           BELARUS                        Full or late term      8006   15757
6 months    PROBIT           BELARUS                        Preterm                 551   15757
6 months    PROBIT           BELARUS                        Early term             7200   15757
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 290    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1902
24 months   CMC-V-BCS-2002   INDIA                          Full or late term       214     350
24 months   CMC-V-BCS-2002   INDIA                          Preterm                  52     350
24 months   CMC-V-BCS-2002   INDIA                          Early term               84     350
24 months   COHORTS          GUATEMALA                      Full or late term       377     667
24 months   COHORTS          GUATEMALA                      Preterm                 109     667
24 months   COHORTS          GUATEMALA                      Early term              181     667
24 months   COHORTS          INDIA                          Full or late term       559    1298
24 months   COHORTS          INDIA                          Preterm                 303    1298
24 months   COHORTS          INDIA                          Early term              436    1298
24 months   COHORTS          PHILIPPINES                    Full or late term       939    2428
24 months   COHORTS          PHILIPPINES                    Preterm                 517    2428
24 months   COHORTS          PHILIPPINES                    Early term              972    2428
24 months   IRC              INDIA                          Full or late term       250     390
24 months   IRC              INDIA                          Preterm                  42     390
24 months   IRC              INDIA                          Early term               98     390
24 months   JiVitA-3         BANGLADESH                     Full or late term      4309    8173
24 months   JiVitA-3         BANGLADESH                     Preterm                1598    8173
24 months   JiVitA-3         BANGLADESH                     Early term             2266    8173
24 months   Keneba           GAMBIA                         Full or late term       558    1157
24 months   Keneba           GAMBIA                         Preterm                 168    1157
24 months   Keneba           GAMBIA                         Early term              431    1157
24 months   NIH-Crypto       BANGLADESH                     Full or late term        79     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                 208     514
24 months   NIH-Crypto       BANGLADESH                     Early term              227     514
24 months   PROBIT           BELARUS                        Full or late term      1991    3970
24 months   PROBIT           BELARUS                        Preterm                 136    3970
24 months   PROBIT           BELARUS                        Early term             1843    3970
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
![](/tmp/de5490f9-e4e3-4757-91fd-f127dc09a413/13407c95-ff45-4438-a0ff-b9681d8ea9f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/de5490f9-e4e3-4757-91fd-f127dc09a413/13407c95-ff45-4438-a0ff-b9681d8ea9f8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/de5490f9-e4e3-4757-91fd-f127dc09a413/13407c95-ff45-4438-a0ff-b9681d8ea9f8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.3518873   -0.7531515    0.0493769
Birth       CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.8194534   -1.6529526    0.0140459
Birth       CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4929461   -1.0188934    0.0330011
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -1.0392739   -1.1995141   -0.8790337
Birth       COHORTS          GUATEMALA                      Preterm              NA                -0.9725066   -1.3326645   -0.6123488
Birth       COHORTS          GUATEMALA                      Early term           NA                -1.0922402   -1.2999426   -0.8845379
Birth       COHORTS          INDIA                          Full or late term    NA                -0.9392621   -1.0393525   -0.8391717
Birth       COHORTS          INDIA                          Preterm              NA                -1.1160277   -1.2570106   -0.9750449
Birth       COHORTS          INDIA                          Early term           NA                -1.0390299   -1.1433891   -0.9346707
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.6043817   -0.6767107   -0.5320526
Birth       COHORTS          PHILIPPINES                    Preterm              NA                -0.8971352   -1.0040841   -0.7901863
Birth       COHORTS          PHILIPPINES                    Early term           NA                -0.8017175   -0.8740887   -0.7293462
Birth       IRC              INDIA                          Full or late term    NA                -0.7921729   -1.0194009   -0.5649450
Birth       IRC              INDIA                          Preterm              NA                -1.5874140   -2.3102448   -0.8645832
Birth       IRC              INDIA                          Early term           NA                -1.3723373   -1.7346321   -1.0100425
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                -0.7512187   -0.7762995   -0.7261380
Birth       JiVitA-3         BANGLADESH                     Preterm              NA                -0.8780641   -0.9210207   -0.8351075
Birth       JiVitA-3         BANGLADESH                     Early term           NA                -0.7801824   -0.8123335   -0.7480312
Birth       Keneba           GAMBIA                         Full or late term    NA                -1.2554799   -1.3466552   -1.1643046
Birth       Keneba           GAMBIA                         Preterm              NA                -1.2335042   -1.3933077   -1.0737008
Birth       Keneba           GAMBIA                         Early term           NA                -1.1819954   -1.2845603   -1.0794306
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.9356253   -1.0991427   -0.7721078
Birth       NIH-Crypto       BANGLADESH                     Preterm              NA                -1.5542172   -1.6991644   -1.4092701
Birth       NIH-Crypto       BANGLADESH                     Early term           NA                -1.1709828   -1.3015559   -1.0404096
Birth       PROBIT           BELARUS                        Full or late term    NA                -1.0877883   -1.3012842   -0.8742925
Birth       PROBIT           BELARUS                        Preterm              NA                -1.1697976   -1.4420791   -0.8975161
Birth       PROBIT           BELARUS                        Early term           NA                -1.2091128   -1.4424494   -0.9757762
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.5035684   -0.7067979   -0.3003388
6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.5318713   -0.9518421   -0.1119006
6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4372497   -0.7186735   -0.1558259
6 months    COHORTS          GUATEMALA                      Full or late term    NA                 0.1801300    0.0642709    0.2959891
6 months    COHORTS          GUATEMALA                      Preterm              NA                 0.1597013   -0.0534964    0.3728990
6 months    COHORTS          GUATEMALA                      Early term           NA                 0.2128425    0.0649365    0.3607486
6 months    COHORTS          INDIA                          Full or late term    NA                -0.6338218   -0.7281897   -0.5394538
6 months    COHORTS          INDIA                          Preterm              NA                -0.6072385   -0.7350314   -0.4794457
6 months    COHORTS          INDIA                          Early term           NA                -0.6904570   -0.7987755   -0.5821384
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.2621750   -0.3272311   -0.1971190
6 months    COHORTS          PHILIPPINES                    Preterm              NA                -0.2775093   -0.3700838   -0.1849347
6 months    COHORTS          PHILIPPINES                    Early term           NA                -0.3229916   -0.3896998   -0.2562833
6 months    IRC              INDIA                          Full or late term    NA                -0.5426902   -0.7137175   -0.3716628
6 months    IRC              INDIA                          Preterm              NA                -0.8278849   -1.3129404   -0.3428293
6 months    IRC              INDIA                          Early term           NA                -0.6660562   -0.9640170   -0.3680953
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -0.5778603   -0.6041882   -0.5515323
6 months    JiVitA-3         BANGLADESH                     Preterm              NA                -0.6067778   -0.6482402   -0.5653153
6 months    JiVitA-3         BANGLADESH                     Early term           NA                -0.5994575   -0.6328544   -0.5660607
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.2572019   -0.3475576   -0.1668462
6 months    Keneba           GAMBIA                         Preterm              NA                -0.2227427   -0.3703993   -0.0750861
6 months    Keneba           GAMBIA                         Early term           NA                -0.1131826   -0.2176332   -0.0087320
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.2396124    0.0627730    0.4164518
6 months    NIH-Crypto       BANGLADESH                     Preterm              NA                -0.1014900   -0.2404855    0.0375054
6 months    NIH-Crypto       BANGLADESH                     Early term           NA                 0.0446374   -0.0734061    0.1626809
6 months    PROBIT           BELARUS                        Full or late term    NA                 0.5881419    0.5260265    0.6502573
6 months    PROBIT           BELARUS                        Preterm              NA                 0.5285301    0.3663378    0.6907224
6 months    PROBIT           BELARUS                        Early term           NA                 0.5606873    0.4971547    0.6242199
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1192622    0.0504022    0.1881222
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0528060   -0.1980661    0.0924541
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                 0.0716135   -0.0418819    0.1851088
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.5173650   -0.6536802   -0.3810498
24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.7657672   -1.0770168   -0.4545176
24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4373388   -0.6259952   -0.2486823
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.1873591   -0.2794990   -0.0952192
24 months   COHORTS          GUATEMALA                      Preterm              NA                -0.4273426   -0.5912499   -0.2634353
24 months   COHORTS          GUATEMALA                      Early term           NA                -0.2482979   -0.3763443   -0.1202515
24 months   COHORTS          INDIA                          Full or late term    NA                -0.5601105   -0.6398119   -0.4804091
24 months   COHORTS          INDIA                          Preterm              NA                -0.5911470   -0.7050193   -0.4772748
24 months   COHORTS          INDIA                          Early term           NA                -0.5782607   -0.6729257   -0.4835957
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.5679722   -0.6256737   -0.5102707
24 months   COHORTS          PHILIPPINES                    Preterm              NA                -0.6208092   -0.7008645   -0.5407539
24 months   COHORTS          PHILIPPINES                    Early term           NA                -0.6363627   -0.6962992   -0.5764261
24 months   IRC              INDIA                          Full or late term    NA                -0.6676594   -0.7851390   -0.5501799
24 months   IRC              INDIA                          Preterm              NA                -1.0384753   -1.3278869   -0.7490638
24 months   IRC              INDIA                          Early term           NA                -0.7747371   -0.9656356   -0.5838386
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -1.2699808   -1.3023863   -1.2375753
24 months   JiVitA-3         BANGLADESH                     Preterm              NA                -1.3607820   -1.4099959   -1.3115680
24 months   JiVitA-3         BANGLADESH                     Early term           NA                -1.2856899   -1.3315384   -1.2398413
24 months   Keneba           GAMBIA                         Full or late term    NA                -0.8125896   -0.8942267   -0.7309526
24 months   Keneba           GAMBIA                         Preterm              NA                -0.8458148   -1.0025268   -0.6891029
24 months   Keneba           GAMBIA                         Early term           NA                -0.7537295   -0.8511308   -0.6563282
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.4392689   -0.6655027   -0.2130351
24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                -0.7442268   -0.8930460   -0.5954076
24 months   NIH-Crypto       BANGLADESH                     Early term           NA                -0.5531179   -0.6981734   -0.4080625
24 months   PROBIT           BELARUS                        Full or late term    NA                 0.7089285    0.5735047    0.8443524
24 months   PROBIT           BELARUS                        Preterm              NA                 0.6298569    0.2535493    1.0061645
24 months   PROBIT           BELARUS                        Early term           NA                 0.6838648    0.5609654    0.8067642


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0358042   -1.1559527   -0.9156557
Birth       COHORTS          INDIA                          NA                   NA                -1.0098535   -1.0741510   -0.9455561
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7417745   -0.7882773   -0.6952718
Birth       IRC              INDIA                          NA                   NA                -1.0135366   -1.2024730   -0.8246002
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7794837   -0.7988174   -0.7601500
Birth       Keneba           GAMBIA                         NA                   NA                -1.2295969   -1.2924879   -1.1667060
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        NA                   NA                -1.1491782   -1.3593933   -0.9389630
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4909778   -0.6451612   -0.3367945
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1864566    0.1024304    0.2704827
6 months    COHORTS          INDIA                          NA                   NA                -0.6460976   -0.7081436   -0.5840516
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2920968   -0.3336448   -0.2505489
6 months    IRC              INDIA                          NA                   NA                -0.5999270   -0.7403711   -0.4594828
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5906060   -0.6106295   -0.5705826
6 months    Keneba           GAMBIA                         NA                   NA                -0.1978013   -0.2594875   -0.1361150
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5741099    0.5141290    0.6340908
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0815655    0.0271217    0.1360092
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5369143   -0.6415957   -0.4322329
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2397001   -0.3082360   -0.1711643
24 months   COHORTS          INDIA                          NA                   NA                -0.5717874   -0.6260792   -0.5174955
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6079283   -0.6449298   -0.5709269
24 months   IRC              INDIA                          NA                   NA                -0.7414957   -0.8350522   -0.6479392
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2935654   -1.3174540   -1.2696768
24 months   Keneba           GAMBIA                         NA                   NA                -0.7953404   -0.8531640   -0.7375168
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6981406    0.5843775    0.8119038


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.4675661   -1.3922135    0.4570813
Birth       CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.1410588   -0.8041597    0.5220420
Birth       COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Preterm              Full or late term     0.0667673   -0.3272387    0.4607733
Birth       COHORTS          GUATEMALA                      Early term           Full or late term    -0.0529664   -0.3147906    0.2088579
Birth       COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Preterm              Full or late term    -0.1767656   -0.3494531   -0.0040781
Birth       COHORTS          INDIA                          Early term           Full or late term    -0.0997678   -0.2446148    0.0450793
Birth       COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.2927536   -0.4215763   -0.1639308
Birth       COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1973358   -0.2991486   -0.0955231
Birth       IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Preterm              Full or late term    -0.7952411   -1.5538539   -0.0366283
Birth       IRC              INDIA                          Early term           Full or late term    -0.5801644   -1.0080251   -0.1523037
Birth       JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.1268454   -0.1757389   -0.0779519
Birth       JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.0289636   -0.0671918    0.0092646
Birth       Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Preterm              Full or late term     0.0219757   -0.1613912    0.2053425
Birth       Keneba           GAMBIA                         Early term           Full or late term     0.0734845   -0.0634700    0.2104390
Birth       NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.6185920   -0.8374800   -0.3997040
Birth       NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.2353575   -0.4447470   -0.0259680
Birth       PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Preterm              Full or late term    -0.0820093   -0.3163553    0.1523367
Birth       PROBIT           BELARUS                        Early term           Full or late term    -0.1213245   -0.2662604    0.0236114
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0283030   -0.4944146    0.4378087
6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0663186   -0.2796807    0.4123179
6 months    COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0204287   -0.2627115    0.2218541
6 months    COHORTS          GUATEMALA                      Early term           Full or late term     0.0327125   -0.1547361    0.2201611
6 months    COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Preterm              Full or late term     0.0265832   -0.1323062    0.1854726
6 months    COHORTS          INDIA                          Early term           Full or late term    -0.0566352   -0.2003121    0.0870418
6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0153342   -0.1286017    0.0979332
6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0608165   -0.1540214    0.0323883
6 months    IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Preterm              Full or late term    -0.2851947   -0.8000240    0.2296346
6 months    IRC              INDIA                          Early term           Full or late term    -0.1233660   -0.4706764    0.2239443
6 months    JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.0289175   -0.0767889    0.0189539
6 months    JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.0215973   -0.0614635    0.0182689
6 months    Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Preterm              Full or late term     0.0344592   -0.1386841    0.2076025
6 months    Keneba           GAMBIA                         Early term           Full or late term     0.1440193    0.0062842    0.2817545
6 months    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.3411025   -0.5665567   -0.1156483
6 months    NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1949750   -0.4074968    0.0175468
6 months    PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Preterm              Full or late term    -0.0596118   -0.2127617    0.0935381
6 months    PROBIT           BELARUS                        Early term           Full or late term    -0.0274547   -0.0658306    0.0109212
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.1720682   -0.3327950   -0.0113415
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0476488   -0.1806664    0.0853688
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2484021   -0.5883427    0.0915384
24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0800263   -0.1530008    0.3130533
24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    -0.2399835   -0.4286208   -0.0513462
24 months   COHORTS          GUATEMALA                      Early term           Full or late term    -0.0609388   -0.2185781    0.0967006
24 months   COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Preterm              Full or late term    -0.0310365   -0.1694207    0.1073477
24 months   COHORTS          INDIA                          Early term           Full or late term    -0.0181502   -0.1411407    0.1048404
24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0528370   -0.1513810    0.0457071
24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0683904   -0.1515343    0.0147534
24 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Preterm              Full or late term    -0.3708159   -0.6862561   -0.0553758
24 months   IRC              INDIA                          Early term           Full or late term    -0.1070777   -0.3332270    0.1190716
24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.0908011   -0.1493717   -0.0322306
24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.0157090   -0.0714034    0.0399853
24 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.0332252   -0.2099244    0.1434740
24 months   Keneba           GAMBIA                         Early term           Full or late term     0.0588601   -0.0682362    0.1859565
24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.3049579   -0.5759736   -0.0339422
24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1138490   -0.3828285    0.1551304
24 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Preterm              Full or late term    -0.0790716   -0.4650670    0.3069238
24 months   PROBIT           BELARUS                        Early term           Full or late term    -0.0250637   -0.1478281    0.0977006


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1129383   -0.3419962    0.1161196
Birth       COHORTS          GUATEMALA                      Full or late term    NA                 0.0034697   -0.1020926    0.1090320
Birth       COHORTS          INDIA                          Full or late term    NA                -0.0705914   -0.1426858    0.0015029
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.1373929   -0.1940939   -0.0806919
Birth       IRC              INDIA                          Full or late term    NA                -0.2213636   -0.3626162   -0.0801110
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0282650   -0.0433990   -0.0131310
Birth       Keneba           GAMBIA                         Full or late term    NA                 0.0258830   -0.0379586    0.0897246
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.3085261   -0.4584645   -0.1585876
Birth       PROBIT           BELARUS                        Full or late term    NA                -0.0613899   -0.1366022    0.0138225
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0125905   -0.1058800    0.1310610
6 months    COHORTS          GUATEMALA                      Full or late term    NA                 0.0063266   -0.0700734    0.0827265
6 months    COHORTS          INDIA                          Full or late term    NA                -0.0122758   -0.0833194    0.0587678
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.0299218   -0.0821407    0.0222970
6 months    IRC              INDIA                          Full or late term    NA                -0.0572368   -0.1672301    0.0527564
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0127458   -0.0295022    0.0040106
6 months    Keneba           GAMBIA                         Full or late term    NA                 0.0594006   -0.0051949    0.1239961
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.2098502   -0.3673375   -0.0523629
6 months    PROBIT           BELARUS                        Full or late term    NA                -0.0140320   -0.0330296    0.0049656
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0376968   -0.0814379    0.0060444
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0195493   -0.1025170    0.0634185
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0523411   -0.1124090    0.0077268
24 months   COHORTS          INDIA                          Full or late term    NA                -0.0116769   -0.0727960    0.0494423
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0399561   -0.0859973    0.0060851
24 months   IRC              INDIA                          Full or late term    NA                -0.0738363   -0.1464061   -0.0012665
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0235846   -0.0457164   -0.0014528
24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0172492   -0.0426864    0.0771849
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.1710813   -0.3823017    0.0401391
24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0107879   -0.0685461    0.0469704
