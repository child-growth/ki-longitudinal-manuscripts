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
![](/tmp/79432bcd-eef5-46fa-b553-6636abd177c5/53dbb670-1d83-43d8-a449-3cdf1549418a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3523225   -0.7556798    0.0510349
Birth       COHORTS          GUATEMALA                      optimal              observed          -1.2209033   -1.5205068   -0.9212997
Birth       COHORTS          INDIA                          optimal              observed          -0.9424459   -1.0476342   -0.8372576
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.6093008   -0.6817721   -0.5368296
Birth       IRC              INDIA                          optimal              observed          -0.7867555   -1.0138202   -0.5596908
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.7595144   -0.7852573   -0.7337716
Birth       Keneba           GAMBIA                         optimal              observed          -1.2412113   -1.3498677   -1.1325550
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.9319767   -1.0947272   -0.7692261
Birth       PROBIT           BELARUS                        optimal              observed          -1.0999038   -1.3170785   -0.8827292
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8867803   -1.1580253   -0.6155352
6 months    COHORTS          GUATEMALA                      optimal              observed           0.0955856   -0.0657187    0.2568899
6 months    COHORTS          INDIA                          optimal              observed          -0.6819795   -0.7983852   -0.5655737
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.2597704   -0.3366468   -0.1828941
6 months    IRC              INDIA                          optimal              observed          -0.6411288   -0.8399360   -0.4423217
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.5927558   -0.6256718   -0.5598399
6 months    Keneba           GAMBIA                         optimal              observed          -0.1177495   -0.2217564   -0.0137425
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.2306938    0.0563761    0.4050116
6 months    PROBIT           BELARUS                        optimal              observed           0.5872340    0.5263005    0.6481675
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1086986    0.0403143    0.1770830
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5412083   -0.7263292   -0.3560875
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.2334614   -0.3378437   -0.1290791
24 months   COHORTS          INDIA                          optimal              observed          -0.6729477   -0.7635190   -0.5823765
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.5701995   -0.6277596   -0.5126393
24 months   IRC              INDIA                          optimal              observed          -0.7936803   -0.9309117   -0.6564489
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.2777228   -1.3162876   -1.2391579
24 months   Keneba           GAMBIA                         optimal              observed          -0.7626750   -0.8607413   -0.6646086
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.4230314   -0.6578469   -0.1882158
24 months   PROBIT           BELARUS                        optimal              observed           0.7112629    0.5776132    0.8449125


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      observed             observed          -1.0358042   -1.1559527   -0.9156557
Birth       COHORTS          INDIA                          observed             observed          -1.0098535   -1.0741510   -0.9455561
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.7417745   -0.7882773   -0.6952718
Birth       IRC              INDIA                          observed             observed          -1.0135366   -1.2024730   -0.8246002
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7794837   -0.7988174   -0.7601500
Birth       Keneba           GAMBIA                         observed             observed          -1.2295969   -1.2924879   -1.1667060
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        observed             observed          -1.1491782   -1.3593933   -0.9389630
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -0.4909778   -0.6451612   -0.3367945
6 months    COHORTS          GUATEMALA                      observed             observed           0.1864566    0.1024304    0.2704827
6 months    COHORTS          INDIA                          observed             observed          -0.6460976   -0.7081436   -0.5840516
6 months    COHORTS          PHILIPPINES                    observed             observed          -0.2920968   -0.3336448   -0.2505489
6 months    IRC              INDIA                          observed             observed          -0.5999270   -0.7403711   -0.4594828
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.5906060   -0.6106295   -0.5705826
6 months    Keneba           GAMBIA                         observed             observed          -0.1978013   -0.2594875   -0.1361150
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        observed             observed           0.5741099    0.5141290    0.6340908
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0815655    0.0271217    0.1360092
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -0.5369143   -0.6415957   -0.4322329
24 months   COHORTS          GUATEMALA                      observed             observed          -0.2397001   -0.3082360   -0.1711643
24 months   COHORTS          INDIA                          observed             observed          -0.5717874   -0.6260792   -0.5174955
24 months   COHORTS          PHILIPPINES                    observed             observed          -0.6079283   -0.6449298   -0.5709269
24 months   IRC              INDIA                          observed             observed          -0.7414957   -0.8350522   -0.6479392
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2935654   -1.3174540   -1.2696768
24 months   Keneba           GAMBIA                         observed             observed          -0.7953404   -0.8531640   -0.7375168
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        observed             observed           0.6981406    0.5843775    0.8119038


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1125031   -0.3440111    0.1190048
Birth       COHORTS          GUATEMALA                      optimal              observed           0.1850991   -0.0887389    0.4589370
Birth       COHORTS          INDIA                          optimal              observed          -0.0674076   -0.1434429    0.0086277
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.1324737   -0.1892910   -0.0756564
Birth       IRC              INDIA                          optimal              observed          -0.2267811   -0.3672125   -0.0863497
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0199693   -0.0377089   -0.0022297
Birth       Keneba           GAMBIA                         optimal              observed           0.0116144   -0.0793579    0.1025867
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.3121747   -0.4620180   -0.1623314
Birth       PROBIT           BELARUS                        optimal              observed          -0.0492743   -0.1230706    0.0245219
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed           0.3958024    0.1418918    0.6497131
6 months    COHORTS          GUATEMALA                      optimal              observed           0.0908710   -0.0458731    0.2276151
6 months    COHORTS          INDIA                          optimal              observed           0.0358819   -0.0666488    0.1384127
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.0323264   -0.0972840    0.0326312
6 months    IRC              INDIA                          optimal              observed           0.0412019   -0.0975301    0.1799339
6 months    JiVitA-3         BANGLADESH                     optimal              observed           0.0021498   -0.0225683    0.0268679
6 months    Keneba           GAMBIA                         optimal              observed          -0.0800518   -0.1621937    0.0020900
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.2009316   -0.3561429   -0.0457203
6 months    PROBIT           BELARUS                        optimal              observed          -0.0131241   -0.0316634    0.0054152
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0271332   -0.0716725    0.0174061
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed           0.0042940   -0.1600591    0.1686472
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0062388   -0.0792744    0.0667969
24 months   COHORTS          INDIA                          optimal              observed           0.1011603    0.0269105    0.1754102
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.0377288   -0.0836856    0.0082279
24 months   IRC              INDIA                          optimal              observed           0.0521846   -0.0422470    0.1466162
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0158426   -0.0461071    0.0144219
24 months   Keneba           GAMBIA                         optimal              observed          -0.0326654   -0.1095731    0.0442422
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.1873188   -0.4056931    0.0310554
24 months   PROBIT           BELARUS                        optimal              observed          -0.0131222   -0.0687037    0.0424592
