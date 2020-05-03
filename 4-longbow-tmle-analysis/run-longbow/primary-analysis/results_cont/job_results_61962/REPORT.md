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

agecat      studyid          country                        gagebrth             n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ------------------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term        53      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          Preterm                  11      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          Early term               22      86  whz              
Birth       COHORTS          GUATEMALA                      Full or late term       323     572  whz              
Birth       COHORTS          GUATEMALA                      Preterm                  78     572  whz              
Birth       COHORTS          GUATEMALA                      Early term              171     572  whz              
Birth       COHORTS          INDIA                          Full or late term       553    1229  whz              
Birth       COHORTS          INDIA                          Preterm                 259    1229  whz              
Birth       COHORTS          INDIA                          Early term              417    1229  whz              
Birth       COHORTS          PHILIPPINES                    Full or late term      1135    2874  whz              
Birth       COHORTS          PHILIPPINES                    Preterm                 579    2874  whz              
Birth       COHORTS          PHILIPPINES                    Early term             1160    2874  whz              
Birth       IRC              INDIA                          Full or late term       213     328  whz              
Birth       IRC              INDIA                          Preterm                  32     328  whz              
Birth       IRC              INDIA                          Early term               83     328  whz              
Birth       JiVitA-3         BANGLADESH                     Full or late term      9668   17161  whz              
Birth       JiVitA-3         BANGLADESH                     Preterm                2755   17161  whz              
Birth       JiVitA-3         BANGLADESH                     Early term             4738   17161  whz              
Birth       Keneba           GAMBIA                         Full or late term       709    1439  whz              
Birth       Keneba           GAMBIA                         Preterm                 206    1439  whz              
Birth       Keneba           GAMBIA                         Early term              524    1439  whz              
Birth       NIH-Crypto       BANGLADESH                     Full or late term       160     707  whz              
Birth       NIH-Crypto       BANGLADESH                     Preterm                 240     707  whz              
Birth       NIH-Crypto       BANGLADESH                     Early term              307     707  whz              
Birth       PROBIT           BELARUS                        Full or late term      7065   13817  whz              
Birth       PROBIT           BELARUS                        Preterm                 467   13817  whz              
Birth       PROBIT           BELARUS                        Early term             6285   13817  whz              
6 months    CMC-V-BCS-2002   INDIA                          Full or late term       212     346  whz              
6 months    CMC-V-BCS-2002   INDIA                          Preterm                  51     346  whz              
6 months    CMC-V-BCS-2002   INDIA                          Early term               83     346  whz              
6 months    COHORTS          GUATEMALA                      Full or late term       389     714  whz              
6 months    COHORTS          GUATEMALA                      Preterm                 114     714  whz              
6 months    COHORTS          GUATEMALA                      Early term              211     714  whz              
6 months    COHORTS          INDIA                          Full or late term       568    1312  whz              
6 months    COHORTS          INDIA                          Preterm                 299    1312  whz              
6 months    COHORTS          INDIA                          Early term              445    1312  whz              
6 months    COHORTS          PHILIPPINES                    Full or late term      1028    2685  whz              
6 months    COHORTS          PHILIPPINES                    Preterm                 572    2685  whz              
6 months    COHORTS          PHILIPPINES                    Early term             1085    2685  whz              
6 months    IRC              INDIA                          Full or late term       249     388  whz              
6 months    IRC              INDIA                          Preterm                  42     388  whz              
6 months    IRC              INDIA                          Early term               97     388  whz              
6 months    JiVitA-3         BANGLADESH                     Full or late term      8511   15989  whz              
6 months    JiVitA-3         BANGLADESH                     Preterm                3047   15989  whz              
6 months    JiVitA-3         BANGLADESH                     Early term             4431   15989  whz              
6 months    Keneba           GAMBIA                         Full or late term       658    1374  whz              
6 months    Keneba           GAMBIA                         Preterm                 207    1374  whz              
6 months    Keneba           GAMBIA                         Early term              509    1374  whz              
6 months    NIH-Crypto       BANGLADESH                     Full or late term       155     715  whz              
6 months    NIH-Crypto       BANGLADESH                     Preterm                 251     715  whz              
6 months    NIH-Crypto       BANGLADESH                     Early term              309     715  whz              
6 months    PROBIT           BELARUS                        Full or late term      8006   15757  whz              
6 months    PROBIT           BELARUS                        Preterm                 551   15757  whz              
6 months    PROBIT           BELARUS                        Early term             7200   15757  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1902  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 290    1902  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1902  whz              
24 months   CMC-V-BCS-2002   INDIA                          Full or late term       214     350  whz              
24 months   CMC-V-BCS-2002   INDIA                          Preterm                  52     350  whz              
24 months   CMC-V-BCS-2002   INDIA                          Early term               84     350  whz              
24 months   COHORTS          GUATEMALA                      Full or late term       377     667  whz              
24 months   COHORTS          GUATEMALA                      Preterm                 109     667  whz              
24 months   COHORTS          GUATEMALA                      Early term              181     667  whz              
24 months   COHORTS          INDIA                          Full or late term       559    1298  whz              
24 months   COHORTS          INDIA                          Preterm                 303    1298  whz              
24 months   COHORTS          INDIA                          Early term              436    1298  whz              
24 months   COHORTS          PHILIPPINES                    Full or late term       939    2428  whz              
24 months   COHORTS          PHILIPPINES                    Preterm                 517    2428  whz              
24 months   COHORTS          PHILIPPINES                    Early term              972    2428  whz              
24 months   IRC              INDIA                          Full or late term       250     390  whz              
24 months   IRC              INDIA                          Preterm                  42     390  whz              
24 months   IRC              INDIA                          Early term               98     390  whz              
24 months   JiVitA-3         BANGLADESH                     Full or late term      4309    8173  whz              
24 months   JiVitA-3         BANGLADESH                     Preterm                1598    8173  whz              
24 months   JiVitA-3         BANGLADESH                     Early term             2266    8173  whz              
24 months   Keneba           GAMBIA                         Full or late term       558    1157  whz              
24 months   Keneba           GAMBIA                         Preterm                 168    1157  whz              
24 months   Keneba           GAMBIA                         Early term              431    1157  whz              
24 months   NIH-Crypto       BANGLADESH                     Full or late term        79     514  whz              
24 months   NIH-Crypto       BANGLADESH                     Preterm                 208     514  whz              
24 months   NIH-Crypto       BANGLADESH                     Early term              227     514  whz              
24 months   PROBIT           BELARUS                        Full or late term      1991    3970  whz              
24 months   PROBIT           BELARUS                        Preterm                 136    3970  whz              
24 months   PROBIT           BELARUS                        Early term             1843    3970  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6  whz              


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
![](/tmp/1c87ca45-1529-494b-b6c1-7176cbd59149/cbddf432-baa7-4a14-aa46-bcadb3fb532f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1c87ca45-1529-494b-b6c1-7176cbd59149/cbddf432-baa7-4a14-aa46-bcadb3fb532f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1c87ca45-1529-494b-b6c1-7176cbd59149/cbddf432-baa7-4a14-aa46-bcadb3fb532f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.3517998   -0.7564272    0.0528277
Birth       CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.7222143   -1.6968601    0.2524314
Birth       CMC-V-BCS-2002   INDIA                          Early term           NA                -0.5217331   -1.0492399    0.0057736
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -1.0331319   -1.1941742   -0.8720896
Birth       COHORTS          GUATEMALA                      Preterm              NA                -0.9438152   -1.3043620   -0.5832685
Birth       COHORTS          GUATEMALA                      Early term           NA                -1.0838858   -1.2906972   -0.8770744
Birth       COHORTS          INDIA                          Full or late term    NA                -0.9415267   -1.0415034   -0.8415501
Birth       COHORTS          INDIA                          Preterm              NA                -1.1150680   -1.2552684   -0.9748677
Birth       COHORTS          INDIA                          Early term           NA                -1.0356914   -1.1405582   -0.9308247
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.6015938   -0.6739650   -0.5292226
Birth       COHORTS          PHILIPPINES                    Preterm              NA                -0.8908850   -0.9968939   -0.7848760
Birth       COHORTS          PHILIPPINES                    Early term           NA                -0.7989934   -0.8713963   -0.7265905
Birth       IRC              INDIA                          Full or late term    NA                -0.8111034   -1.0413111   -0.5808957
Birth       IRC              INDIA                          Preterm              NA                -1.7178715   -2.4195046   -1.0162383
Birth       IRC              INDIA                          Early term           NA                -1.4409366   -1.7927136   -1.0891595
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                -0.7514159   -0.7764344   -0.7263974
Birth       JiVitA-3         BANGLADESH                     Preterm              NA                -0.8775321   -0.9203827   -0.8346815
Birth       JiVitA-3         BANGLADESH                     Early term           NA                -0.7801179   -0.8122928   -0.7479429
Birth       Keneba           GAMBIA                         Full or late term    NA                -1.2592152   -1.3505868   -1.1678437
Birth       Keneba           GAMBIA                         Preterm              NA                -1.2170091   -1.3769642   -1.0570541
Birth       Keneba           GAMBIA                         Early term           NA                -1.1903752   -1.2946749   -1.0860756
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.9414663   -1.1034580   -0.7794746
Birth       NIH-Crypto       BANGLADESH                     Preterm              NA                -1.5503876   -1.6951457   -1.4056296
Birth       NIH-Crypto       BANGLADESH                     Early term           NA                -1.1687196   -1.2986987   -1.0387404
Birth       PROBIT           BELARUS                        Full or late term    NA                -1.0755834   -1.2871878   -0.8639790
Birth       PROBIT           BELARUS                        Preterm              NA                -1.1550207   -1.4286857   -0.8813557
Birth       PROBIT           BELARUS                        Early term           NA                -1.1900304   -1.4245864   -0.9554744
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.5252365   -0.7280502   -0.3224227
6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.5418197   -0.9514618   -0.1321776
6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                -0.3820382   -0.6737225   -0.0903539
6 months    COHORTS          GUATEMALA                      Full or late term    NA                 0.1625120    0.0460199    0.2790041
6 months    COHORTS          GUATEMALA                      Preterm              NA                 0.1585527   -0.0488060    0.3659113
6 months    COHORTS          GUATEMALA                      Early term           NA                 0.2462527    0.0965834    0.3959219
6 months    COHORTS          INDIA                          Full or late term    NA                -0.6316028   -0.7261878   -0.5370177
6 months    COHORTS          INDIA                          Preterm              NA                -0.6082693   -0.7354114   -0.4811273
6 months    COHORTS          INDIA                          Early term           NA                -0.6886508   -0.7963468   -0.5809548
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.2618798   -0.3268356   -0.1969240
6 months    COHORTS          PHILIPPINES                    Preterm              NA                -0.2810349   -0.3731615   -0.1889083
6 months    COHORTS          PHILIPPINES                    Early term           NA                -0.3256516   -0.3925312   -0.2587720
6 months    IRC              INDIA                          Full or late term    NA                -0.5416033   -0.7102884   -0.3729183
6 months    IRC              INDIA                          Preterm              NA                -0.8457417   -1.3283793   -0.3631041
6 months    IRC              INDIA                          Early term           NA                -0.6478587   -0.9379256   -0.3577917
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -0.5781829   -0.6044771   -0.5518888
6 months    JiVitA-3         BANGLADESH                     Preterm              NA                -0.6058721   -0.6471392   -0.5646051
6 months    JiVitA-3         BANGLADESH                     Early term           NA                -0.5994831   -0.6329171   -0.5660490
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.2587312   -0.3493311   -0.1681314
6 months    Keneba           GAMBIA                         Preterm              NA                -0.2042238   -0.3512257   -0.0572219
6 months    Keneba           GAMBIA                         Early term           NA                -0.1148719   -0.2190398   -0.0107039
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.2184833    0.0468750    0.3900915
6 months    NIH-Crypto       BANGLADESH                     Preterm              NA                -0.1105687   -0.2468489    0.0257115
6 months    NIH-Crypto       BANGLADESH                     Early term           NA                 0.0478891   -0.0695846    0.1653627
6 months    PROBIT           BELARUS                        Full or late term    NA                 0.5869623    0.5262100    0.6477146
6 months    PROBIT           BELARUS                        Preterm              NA                 0.5299922    0.3663819    0.6936025
6 months    PROBIT           BELARUS                        Early term           NA                 0.5627367    0.4984803    0.6269931
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1204309    0.0515852    0.1892766
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0778810   -0.2252747    0.0695127
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                 0.0633968   -0.0495627    0.1763564
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.5179342   -0.6531379   -0.3827304
24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.7457120   -1.0534175   -0.4380065
24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4397782   -0.6373595   -0.2421969
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.1688906   -0.2615056   -0.0762757
24 months   COHORTS          GUATEMALA                      Preterm              NA                -0.4409353   -0.6080536   -0.2738169
24 months   COHORTS          GUATEMALA                      Early term           NA                -0.2648634   -0.3904547   -0.1392722
24 months   COHORTS          INDIA                          Full or late term    NA                -0.5595467   -0.6395310   -0.4795625
24 months   COHORTS          INDIA                          Preterm              NA                -0.5784694   -0.6920631   -0.4648756
24 months   COHORTS          INDIA                          Early term           NA                -0.5801416   -0.6752381   -0.4850451
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.5702695   -0.6279879   -0.5125510
24 months   COHORTS          PHILIPPINES                    Preterm              NA                -0.6227982   -0.7030074   -0.5425889
24 months   COHORTS          PHILIPPINES                    Early term           NA                -0.6349952   -0.6949642   -0.5750263
24 months   IRC              INDIA                          Full or late term    NA                -0.6672706   -0.7838791   -0.5506622
24 months   IRC              INDIA                          Preterm              NA                -1.0937188   -1.3575422   -0.8298955
24 months   IRC              INDIA                          Early term           NA                -0.7800855   -0.9690253   -0.5911457
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -1.2691783   -1.3016821   -1.2366745
24 months   JiVitA-3         BANGLADESH                     Preterm              NA                -1.3600276   -1.4091543   -1.3109010
24 months   JiVitA-3         BANGLADESH                     Early term           NA                -1.2895601   -1.3355132   -1.2436071
24 months   Keneba           GAMBIA                         Full or late term    NA                -0.8109982   -0.8927522   -0.7292442
24 months   Keneba           GAMBIA                         Preterm              NA                -0.8437621   -1.0026926   -0.6848316
24 months   Keneba           GAMBIA                         Early term           NA                -0.7538077   -0.8508410   -0.6567744
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.4526424   -0.6820252   -0.2232596
24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                -0.7416583   -0.8901048   -0.5932118
24 months   NIH-Crypto       BANGLADESH                     Early term           NA                -0.5414102   -0.6855612   -0.3972591
24 months   PROBIT           BELARUS                        Full or late term    NA                 0.7207757    0.5834782    0.8580733
24 months   PROBIT           BELARUS                        Preterm              NA                 0.6233882    0.2296595    1.0171168
24 months   PROBIT           BELARUS                        Early term           NA                 0.6846650    0.5605263    0.8088037


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
Birth       CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.3704146   -1.4275558    0.6867267
Birth       CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.1699334   -0.8371461    0.4972794
Birth       COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Preterm              Full or late term     0.0893167   -0.3053979    0.4840313
Birth       COHORTS          GUATEMALA                      Early term           Full or late term    -0.0507539   -0.3124222    0.2109144
Birth       COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Preterm              Full or late term    -0.1735413   -0.3455813   -0.0015013
Birth       COHORTS          INDIA                          Early term           Full or late term    -0.0941647   -0.2394524    0.0511231
Birth       COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.2892912   -0.4172289   -0.1613535
Birth       COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1973996   -0.2993919   -0.0954074
Birth       IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Preterm              Full or late term    -0.9067681   -1.6473904   -0.1661458
Birth       IRC              INDIA                          Early term           Full or late term    -0.6298332   -1.0509299   -0.2087365
Birth       JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.1261162   -0.1749899   -0.0772425
Birth       JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.0287019   -0.0669397    0.0095359
Birth       Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Preterm              Full or late term     0.0422061   -0.1414338    0.2258460
Birth       Keneba           GAMBIA                         Early term           Full or late term     0.0688400   -0.0695961    0.2072760
Birth       NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.6089213   -0.8259546   -0.3918881
Birth       NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.2272532   -0.4351287   -0.0193777
Birth       PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Preterm              Full or late term    -0.0794373   -0.3185449    0.1596702
Birth       PROBIT           BELARUS                        Early term           Full or late term    -0.1144470   -0.2743955    0.0455014
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0165832   -0.4699423    0.4367758
6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1431983   -0.2099034    0.4962999
6 months    COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0039594   -0.2413052    0.2333865
6 months    COHORTS          GUATEMALA                      Early term           Full or late term     0.0837406   -0.1051788    0.2726600
6 months    COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Preterm              Full or late term     0.0233334   -0.1352249    0.1818918
6 months    COHORTS          INDIA                          Early term           Full or late term    -0.0570480   -0.2004076    0.0863116
6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0191551   -0.1318662    0.0935560
6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0637718   -0.1570345    0.0294909
6 months    IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Preterm              Full or late term    -0.3041384   -0.8156079    0.2073312
6 months    IRC              INDIA                          Early term           Full or late term    -0.1062554   -0.4418461    0.2293354
6 months    JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.0276892   -0.0753051    0.0199267
6 months    JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.0213001   -0.0610099    0.0184096
6 months    Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Preterm              Full or late term     0.0545074   -0.1183645    0.2273793
6 months    Keneba           GAMBIA                         Early term           Full or late term     0.1438594    0.0059872    0.2817315
6 months    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.3290520   -0.5484449   -0.1096590
6 months    NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1705942   -0.3787202    0.0375318
6 months    PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Preterm              Full or late term    -0.0569701   -0.2116676    0.0977274
6 months    PROBIT           BELARUS                        Early term           Full or late term    -0.0242256   -0.0608400    0.0123887
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.1983119   -0.3609662   -0.0356576
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0570341   -0.1895379    0.0754697
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2277778   -0.5639318    0.1083762
24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0781559   -0.1611754    0.3174872
24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    -0.2720446   -0.4631469   -0.0809424
24 months   COHORTS          GUATEMALA                      Early term           Full or late term    -0.0959728   -0.2521076    0.0601620
24 months   COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Preterm              Full or late term    -0.0189226   -0.1574182    0.1195730
24 months   COHORTS          INDIA                          Early term           Full or late term    -0.0205948   -0.1441973    0.1030076
24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0525287   -0.1512129    0.0461555
24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0647258   -0.1478339    0.0183823
24 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Preterm              Full or late term    -0.4264482   -0.7150298   -0.1378666
24 months   IRC              INDIA                          Early term           Full or late term    -0.1128148   -0.3348877    0.1092580
24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.0908493   -0.1492560   -0.0324426
24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.0203818   -0.0762779    0.0355143
24 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.0327639   -0.2115024    0.1459746
24 months   Keneba           GAMBIA                         Early term           Full or late term     0.0571905   -0.0697210    0.1841020
24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.2890159   -0.5612579   -0.0167738
24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.0887677   -0.3589689    0.1814334
24 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Preterm              Full or late term    -0.0973876   -0.4941421    0.2993669
24 months   PROBIT           BELARUS                        Early term           Full or late term    -0.0361108   -0.1607771    0.0885555


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1130258   -0.3467013    0.1206497
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -0.0026723   -0.1083646    0.1030200
Birth       COHORTS          INDIA                          Full or late term    NA                -0.0683268   -0.1402562    0.0036026
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.1401807   -0.1969337   -0.0834278
Birth       IRC              INDIA                          Full or late term    NA                -0.2024332   -0.3443520   -0.0605144
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0280678   -0.0430993   -0.0130363
Birth       Keneba           GAMBIA                         Full or late term    NA                 0.0296183   -0.0344282    0.0936648
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.3026850   -0.4510452   -0.1543249
Birth       PROBIT           BELARUS                        Full or late term    NA                -0.0735948   -0.1624013    0.0152117
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0342586   -0.0844596    0.1529769
6 months    COHORTS          GUATEMALA                      Full or late term    NA                 0.0239446   -0.0525725    0.1004616
6 months    COHORTS          INDIA                          Full or late term    NA                -0.0144948   -0.0857068    0.0567172
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.0302170   -0.0823608    0.0219268
6 months    IRC              INDIA                          Full or late term    NA                -0.0583237   -0.1661623    0.0495150
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0124231   -0.0291093    0.0042631
6 months    Keneba           GAMBIA                         Full or late term    NA                 0.0609299   -0.0038620    0.1257219
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.1887210   -0.3412085   -0.0362335
6 months    PROBIT           BELARUS                        Full or late term    NA                -0.0128524   -0.0309960    0.0052913
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0388655   -0.0826231    0.0048922
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0189801   -0.1015183    0.0635581
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0708095   -0.1310183   -0.0106007
24 months   COHORTS          INDIA                          Full or late term    NA                -0.0122406   -0.0736669    0.0491857
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0376589   -0.0837029    0.0083851
24 months   IRC              INDIA                          Full or late term    NA                -0.0742251   -0.1445897   -0.0038605
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0243871   -0.0465859   -0.0021883
24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0156578   -0.0443779    0.0756935
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.1577078   -0.3711758    0.0557603
24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0226351   -0.0838084    0.0385382
