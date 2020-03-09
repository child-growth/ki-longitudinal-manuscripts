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
![](/tmp/6857fa5d-a4d5-4a11-a179-681c2f8c63ab/12836243-1f9e-4bd9-8f34-7ef8dfcf1c9f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6857fa5d-a4d5-4a11-a179-681c2f8c63ab/12836243-1f9e-4bd9-8f34-7ef8dfcf1c9f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6857fa5d-a4d5-4a11-a179-681c2f8c63ab/12836243-1f9e-4bd9-8f34-7ef8dfcf1c9f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.3843869   -0.7852685    0.0164947
Birth       CMC-V-BCS-2002   INDIA                          Preterm              NA                -1.5432431   -2.4623967   -0.6240894
Birth       CMC-V-BCS-2002   INDIA                          Early term           NA                -0.9434887   -1.4659007   -0.4210768
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -1.0361280   -1.1973543   -0.8749017
Birth       COHORTS          GUATEMALA                      Preterm              NA                -0.9662165   -1.3215195   -0.6109136
Birth       COHORTS          GUATEMALA                      Early term           NA                -1.0691077   -1.2742091   -0.8640062
Birth       COHORTS          INDIA                          Full or late term    NA                -0.9371436   -1.0367376   -0.8375496
Birth       COHORTS          INDIA                          Preterm              NA                -1.1217896   -1.2616882   -0.9818910
Birth       COHORTS          INDIA                          Early term           NA                -1.0359441   -1.1399129   -0.9319753
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.6049830   -0.6775502   -0.5324157
Birth       COHORTS          PHILIPPINES                    Preterm              NA                -0.8899628   -0.9958295   -0.7840960
Birth       COHORTS          PHILIPPINES                    Early term           NA                -0.7980486   -0.8704673   -0.7256298
Birth       IRC              INDIA                          Full or late term    NA                -0.7880890   -1.0171518   -0.5590262
Birth       IRC              INDIA                          Preterm              NA                -1.6689864   -2.3848887   -0.9530841
Birth       IRC              INDIA                          Early term           NA                -1.3899318   -1.7432231   -1.0366406
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                -0.7523352   -0.7773337   -0.7273367
Birth       JiVitA-3         BANGLADESH                     Preterm              NA                -0.8775722   -0.9205340   -0.8346103
Birth       JiVitA-3         BANGLADESH                     Early term           NA                -0.7813725   -0.8136232   -0.7491217
Birth       Keneba           GAMBIA                         Full or late term    NA                -1.2539549   -1.3448533   -1.1630565
Birth       Keneba           GAMBIA                         Preterm              NA                -1.2312909   -1.3931337   -1.0694480
Birth       Keneba           GAMBIA                         Early term           NA                -1.1871161   -1.2896453   -1.0845870
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.9419285   -1.1021078   -0.7817492
Birth       NIH-Crypto       BANGLADESH                     Preterm              NA                -1.5633304   -1.7085188   -1.4181421
Birth       NIH-Crypto       BANGLADESH                     Early term           NA                -1.1666743   -1.2962966   -1.0370519
Birth       PROBIT           BELARUS                        Full or late term    NA                -1.0953934   -1.3097418   -0.8810450
Birth       PROBIT           BELARUS                        Preterm              NA                -1.1502466   -1.4326694   -0.8678237
Birth       PROBIT           BELARUS                        Early term           NA                -1.1997312   -1.4342089   -0.9652535
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.5054458   -0.7106938   -0.3001979
6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.5683100   -0.9794003   -0.1572197
6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4800471   -0.7569414   -0.2031528
6 months    COHORTS          GUATEMALA                      Full or late term    NA                 0.1881940    0.0721600    0.3042280
6 months    COHORTS          GUATEMALA                      Preterm              NA                 0.1242547   -0.0935861    0.3420955
6 months    COHORTS          GUATEMALA                      Early term           NA                 0.2158444    0.0672090    0.3644799
6 months    COHORTS          INDIA                          Full or late term    NA                -0.6196843   -0.7140317   -0.5253368
6 months    COHORTS          INDIA                          Preterm              NA                -0.6160729   -0.7436222   -0.4885236
6 months    COHORTS          INDIA                          Early term           NA                -0.7021216   -0.8103467   -0.5938965
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.2605778   -0.3256037   -0.1955519
6 months    COHORTS          PHILIPPINES                    Preterm              NA                -0.2691782   -0.3619573   -0.1763992
6 months    COHORTS          PHILIPPINES                    Early term           NA                -0.3193310   -0.3861376   -0.2525243
6 months    IRC              INDIA                          Full or late term    NA                -0.5437118   -0.7122737   -0.3751499
6 months    IRC              INDIA                          Preterm              NA                -0.8700558   -1.3585829   -0.3815288
6 months    IRC              INDIA                          Early term           NA                -0.6493285   -0.9473734   -0.3512836
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -0.5786572   -0.6048596   -0.5524547
6 months    JiVitA-3         BANGLADESH                     Preterm              NA                -0.6056777   -0.6471108   -0.5642446
6 months    JiVitA-3         BANGLADESH                     Early term           NA                -0.5995967   -0.6332230   -0.5659704
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.2576215   -0.3481950   -0.1670481
6 months    Keneba           GAMBIA                         Preterm              NA                -0.2090754   -0.3572828   -0.0608681
6 months    Keneba           GAMBIA                         Early term           NA                -0.1154306   -0.2199253   -0.0109360
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.2167733    0.0398476    0.3936990
6 months    NIH-Crypto       BANGLADESH                     Preterm              NA                -0.1289257   -0.2652629    0.0074115
6 months    NIH-Crypto       BANGLADESH                     Early term           NA                 0.0474272   -0.0715927    0.1664470
6 months    PROBIT           BELARUS                        Full or late term    NA                 0.5872447    0.5260757    0.6484137
6 months    PROBIT           BELARUS                        Preterm              NA                 0.5102446    0.3461205    0.6743687
6 months    PROBIT           BELARUS                        Early term           NA                 0.5633896    0.4991047    0.6276746
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1198439    0.0510404    0.1886474
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0406788   -0.1862108    0.1048533
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                 0.0657092   -0.0466447    0.1780632
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.5185779   -0.6550937   -0.3820621
24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.7817803   -1.0761385   -0.4874221
24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4552259   -0.6462645   -0.2641873
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.1848895   -0.2774203   -0.0923587
24 months   COHORTS          GUATEMALA                      Preterm              NA                -0.4108403   -0.5740505   -0.2476301
24 months   COHORTS          GUATEMALA                      Early term           NA                -0.2543000   -0.3839808   -0.1246193
24 months   COHORTS          INDIA                          Full or late term    NA                -0.5607770   -0.6411242   -0.4804299
24 months   COHORTS          INDIA                          Preterm              NA                -0.5913867   -0.7068468   -0.4759267
24 months   COHORTS          INDIA                          Early term           NA                -0.5704991   -0.6660510   -0.4749471
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.5700405   -0.6276421   -0.5124389
24 months   COHORTS          PHILIPPINES                    Preterm              NA                -0.6230560   -0.7034929   -0.5426192
24 months   COHORTS          PHILIPPINES                    Early term           NA                -0.6349511   -0.6949537   -0.5749485
24 months   IRC              INDIA                          Full or late term    NA                -0.6646386   -0.7813184   -0.5479588
24 months   IRC              INDIA                          Preterm              NA                -1.0674450   -1.3333144   -0.8015755
24 months   IRC              INDIA                          Early term           NA                -0.7673613   -0.9570664   -0.5776561
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -1.2712176   -1.3036366   -1.2387986
24 months   JiVitA-3         BANGLADESH                     Preterm              NA                -1.3555159   -1.4048263   -1.3062056
24 months   JiVitA-3         BANGLADESH                     Early term           NA                -1.2865483   -1.3328058   -1.2402908
24 months   Keneba           GAMBIA                         Full or late term    NA                -0.8222505   -0.9040570   -0.7404439
24 months   Keneba           GAMBIA                         Preterm              NA                -0.8566262   -1.0121348   -0.7011176
24 months   Keneba           GAMBIA                         Early term           NA                -0.7425176   -0.8400431   -0.6449920
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.4435275   -0.6810204   -0.2060346
24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                -0.7404993   -0.8888276   -0.5921709
24 months   NIH-Crypto       BANGLADESH                     Early term           NA                -0.5504122   -0.6949947   -0.4058296
24 months   PROBIT           BELARUS                        Full or late term    NA                 0.7123838    0.5769044    0.8478633
24 months   PROBIT           BELARUS                        Preterm              NA                 0.6321167    0.2356303    1.0286031
24 months   PROBIT           BELARUS                        Early term           NA                 0.6822168    0.5598458    0.8045877


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
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2397002   -0.3082360   -0.1711643
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
Birth       CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -1.1588562   -2.1674560   -0.1502564
Birth       CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.5591019   -1.2388046    0.1206009
Birth       COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Preterm              Full or late term     0.0699115   -0.3196192    0.4594422
Birth       COHORTS          GUATEMALA                      Early term           Full or late term    -0.0329797   -0.2935101    0.2275508
Birth       COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Preterm              Full or late term    -0.1846459   -0.3560815   -0.0132104
Birth       COHORTS          INDIA                          Early term           Full or late term    -0.0988005   -0.2428033    0.0452024
Birth       COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.2849798   -0.4130263   -0.1569332
Birth       COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1930656   -0.2952665   -0.0908647
Birth       IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Preterm              Full or late term    -0.8808974   -1.6326727   -0.1291221
Birth       IRC              INDIA                          Early term           Full or late term    -0.6018429   -1.0221133   -0.1815724
Birth       JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.1252369   -0.1742244   -0.0762495
Birth       JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.0290372   -0.0672947    0.0092203
Birth       Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Preterm              Full or late term     0.0226641   -0.1624929    0.2078210
Birth       Keneba           GAMBIA                         Early term           Full or late term     0.0668388   -0.0698572    0.2035348
Birth       NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.6214020   -0.8378016   -0.4050023
Birth       NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.2247458   -0.4308836   -0.0186080
Birth       PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Preterm              Full or late term    -0.0548532   -0.2996710    0.1899646
Birth       PROBIT           BELARUS                        Early term           Full or late term    -0.1043378   -0.2531231    0.0444475
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0628642   -0.5216553    0.3959269
6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0253987   -0.3181100    0.3689074
6 months    COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0639394   -0.3108893    0.1830106
6 months    COHORTS          GUATEMALA                      Early term           Full or late term     0.0276504   -0.1610761    0.2163770
6 months    COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Preterm              Full or late term     0.0036114   -0.1549868    0.1622095
6 months    COHORTS          INDIA                          Early term           Full or late term    -0.0824373   -0.2254999    0.0606253
6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0086004   -0.1219642    0.1047634
6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0587532   -0.1519767    0.0344703
6 months    IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Preterm              Full or late term    -0.3263440   -0.8432546    0.1905665
6 months    IRC              INDIA                          Early term           Full or late term    -0.1056167   -0.4487031    0.2374696
6 months    JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.0270205   -0.0747879    0.0207468
6 months    JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.0209396   -0.0607858    0.0189067
6 months    Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Preterm              Full or late term     0.0485461   -0.1253465    0.2224388
6 months    Keneba           GAMBIA                         Early term           Full or late term     0.1421909    0.0041062    0.2802756
6 months    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.3456990   -0.5690285   -0.1223695
6 months    NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1693461   -0.3828335    0.0441412
6 months    PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Preterm              Full or late term    -0.0770001   -0.2330308    0.0790305
6 months    PROBIT           BELARUS                        Early term           Full or late term    -0.0238550   -0.0615374    0.0138273
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.1605227   -0.3214837    0.0004384
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0541347   -0.1859268    0.0776575
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2632024   -0.5880422    0.0616373
24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0633520   -0.1715084    0.2982123
24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    -0.2259508   -0.4134410   -0.0384606
24 months   COHORTS          GUATEMALA                      Early term           Full or late term    -0.0694105   -0.2288463    0.0900253
24 months   COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Preterm              Full or late term    -0.0306097   -0.1713066    0.1100872
24 months   COHORTS          INDIA                          Early term           Full or late term    -0.0097220   -0.1346035    0.1151594
24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0530155   -0.1517894    0.0457583
24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0649106   -0.1480266    0.0182054
24 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Preterm              Full or late term    -0.4028064   -0.6931814   -0.1124313
24 months   IRC              INDIA                          Early term           Full or late term    -0.1027226   -0.3256501    0.1202048
24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    -0.0842983   -0.1428990   -0.0256977
24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    -0.0153307   -0.0713885    0.0407271
24 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.0343757   -0.2097019    0.1409504
24 months   Keneba           GAMBIA                         Early term           Full or late term     0.0797329   -0.0478824    0.2073483
24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.2969718   -0.5757629   -0.0181807
24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1068847   -0.3844027    0.1706333
24 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Preterm              Full or late term    -0.0802671   -0.4834236    0.3228893
24 months   PROBIT           BELARUS                        Early term           Full or late term    -0.0301670   -0.1484776    0.0881435


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0804387   -0.3120435    0.1511661
Birth       COHORTS          GUATEMALA                      Full or late term    NA                 0.0003238   -0.1056225    0.1062701
Birth       COHORTS          INDIA                          Full or late term    NA                -0.0727099   -0.1442173   -0.0012025
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.1367916   -0.1937376   -0.0798455
Birth       IRC              INDIA                          Full or late term    NA                -0.2254476   -0.3668341   -0.0840611
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0271485   -0.0422834   -0.0120135
Birth       Keneba           GAMBIA                         Full or late term    NA                 0.0243580   -0.0391260    0.0878420
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.3022229   -0.4491910   -0.1552547
Birth       PROBIT           BELARUS                        Full or late term    NA                -0.0537848   -0.1301729    0.0226033
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0144680   -0.1057164    0.1346524
6 months    COHORTS          GUATEMALA                      Full or late term    NA                -0.0017374   -0.0787907    0.0753158
6 months    COHORTS          INDIA                          Full or late term    NA                -0.0264133   -0.0972736    0.0444470
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.0315190   -0.0837765    0.0207384
6 months    IRC              INDIA                          Full or late term    NA                -0.0562152   -0.1640393    0.0516090
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0119489   -0.0285813    0.0046835
6 months    Keneba           GAMBIA                         Full or late term    NA                 0.0598202   -0.0049670    0.1246074
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.1870111   -0.3446220   -0.0294001
6 months    PROBIT           BELARUS                        Full or late term    NA                -0.0131348   -0.0319556    0.0056861
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0382785   -0.0818200    0.0052631
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0183364   -0.1014072    0.0647343
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0548106   -0.1148305    0.0052093
24 months   COHORTS          INDIA                          Full or late term    NA                -0.0110103   -0.0730098    0.0509891
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0378878   -0.0839121    0.0081364
24 months   IRC              INDIA                          Full or late term    NA                -0.0768571   -0.1473402   -0.0063741
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0223478   -0.0445248   -0.0001709
24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0269101   -0.0331241    0.0869443
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.1668227   -0.3876658    0.0540204
24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0142432   -0.0720338    0.0435474
