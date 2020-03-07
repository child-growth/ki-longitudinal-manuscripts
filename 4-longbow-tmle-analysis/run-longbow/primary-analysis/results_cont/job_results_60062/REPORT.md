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

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid      country                        impsan    n_cell       n
----------  -----------  -----------------------------  -------  -------  ------
Birth       COHORTS      GUATEMALA                      1             45     491
Birth       COHORTS      GUATEMALA                      0            446     491
Birth       COHORTS      INDIA                          1           1767    4776
Birth       COHORTS      INDIA                          0           3009    4776
Birth       COHORTS      PHILIPPINES                    1            178    1191
Birth       COHORTS      PHILIPPINES                    0           1013    1191
Birth       CONTENT      PERU                           1              1       2
Birth       CONTENT      PERU                           0              1       2
Birth       JiVitA-3     BANGLADESH                     1          15220   22431
Birth       JiVitA-3     BANGLADESH                     0           7211   22431
Birth       JiVitA-4     BANGLADESH                     1           2181    2820
Birth       JiVitA-4     BANGLADESH                     0            639    2820
Birth       MAL-ED       BANGLADESH                     1            179     213
Birth       MAL-ED       BANGLADESH                     0             34     213
Birth       MAL-ED       BRAZIL                         1             59      60
Birth       MAL-ED       BRAZIL                         0              1      60
Birth       MAL-ED       INDIA                          1             15      40
Birth       MAL-ED       INDIA                          0             25      40
Birth       MAL-ED       NEPAL                          1             25      26
Birth       MAL-ED       NEPAL                          0              1      26
Birth       MAL-ED       PERU                           1             52     208
Birth       MAL-ED       PERU                           0            156     208
Birth       MAL-ED       SOUTH AFRICA                   1              0      95
Birth       MAL-ED       SOUTH AFRICA                   0             95      95
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     118
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            118     118
Birth       NIH-Birth    BANGLADESH                     1            231     608
Birth       NIH-Birth    BANGLADESH                     0            377     608
Birth       NIH-Crypto   BANGLADESH                     1            632     721
Birth       NIH-Crypto   BANGLADESH                     0             89     721
Birth       PROVIDE      BANGLADESH                     1             43      45
Birth       PROVIDE      BANGLADESH                     0              2      45
6 months    COHORTS      GUATEMALA                      1             67     658
6 months    COHORTS      GUATEMALA                      0            591     658
6 months    COHORTS      INDIA                          1           1881    4971
6 months    COHORTS      INDIA                          0           3090    4971
6 months    COHORTS      PHILIPPINES                    1            143    1083
6 months    COHORTS      PHILIPPINES                    0            940    1083
6 months    CONTENT      PERU                           1            201     215
6 months    CONTENT      PERU                           0             14     215
6 months    JiVitA-3     BANGLADESH                     1          12038   16800
6 months    JiVitA-3     BANGLADESH                     0           4762   16800
6 months    JiVitA-4     BANGLADESH                     1           3734    4825
6 months    JiVitA-4     BANGLADESH                     0           1091    4825
6 months    LCNI-5       MALAWI                         1              3     812
6 months    LCNI-5       MALAWI                         0            809     812
6 months    MAL-ED       BANGLADESH                     1            202     240
6 months    MAL-ED       BANGLADESH                     0             38     240
6 months    MAL-ED       BRAZIL                         1            205     209
6 months    MAL-ED       BRAZIL                         0              4     209
6 months    MAL-ED       INDIA                          1            108     233
6 months    MAL-ED       INDIA                          0            125     233
6 months    MAL-ED       NEPAL                          1            235     236
6 months    MAL-ED       NEPAL                          0              1     236
6 months    MAL-ED       PERU                           1             65     263
6 months    MAL-ED       PERU                           0            198     263
6 months    MAL-ED       SOUTH AFRICA                   1              4     244
6 months    MAL-ED       SOUTH AFRICA                   0            240     244
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238
6 months    NIH-Birth    BANGLADESH                     1            205     537
6 months    NIH-Birth    BANGLADESH                     0            332     537
6 months    NIH-Crypto   BANGLADESH                     1            615     704
6 months    NIH-Crypto   BANGLADESH                     0             89     704
6 months    PROVIDE      BANGLADESH                     1             11      11
6 months    PROVIDE      BANGLADESH                     0              0      11
24 months   COHORTS      GUATEMALA                      1             77     893
24 months   COHORTS      GUATEMALA                      0            816     893
24 months   COHORTS      INDIA                          1           1471    3751
24 months   COHORTS      INDIA                          0           2280    3751
24 months   COHORTS      PHILIPPINES                    1            126     990
24 months   COHORTS      PHILIPPINES                    0            864     990
24 months   CONTENT      PERU                           1            151     164
24 months   CONTENT      PERU                           0             13     164
24 months   JiVitA-3     BANGLADESH                     1           6111    8622
24 months   JiVitA-3     BANGLADESH                     0           2511    8622
24 months   JiVitA-4     BANGLADESH                     1           3683    4747
24 months   JiVitA-4     BANGLADESH                     0           1064    4747
24 months   LCNI-5       MALAWI                         1              2     572
24 months   LCNI-5       MALAWI                         0            570     572
24 months   MAL-ED       BANGLADESH                     1            181     212
24 months   MAL-ED       BANGLADESH                     0             31     212
24 months   MAL-ED       BRAZIL                         1            166     169
24 months   MAL-ED       BRAZIL                         0              3     169
24 months   MAL-ED       INDIA                          1            104     225
24 months   MAL-ED       INDIA                          0            121     225
24 months   MAL-ED       NEPAL                          1            227     228
24 months   MAL-ED       NEPAL                          0              1     228
24 months   MAL-ED       PERU                           1             47     196
24 months   MAL-ED       PERU                           0            149     196
24 months   MAL-ED       SOUTH AFRICA                   1              4     235
24 months   MAL-ED       SOUTH AFRICA                   0            231     235
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207
24 months   NIH-Birth    BANGLADESH                     1            170     429
24 months   NIH-Birth    BANGLADESH                     0            259     429
24 months   NIH-Crypto   BANGLADESH                     1            433     503
24 months   NIH-Crypto   BANGLADESH                     0             70     503
24 months   PROVIDE      BANGLADESH                     1              9       9
24 months   PROVIDE      BANGLADESH                     0              0       9


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d0d92bd7-92db-45eb-97bb-3eea18bde5a9/38df67a6-b7cc-41b5-94ee-256d4ee7023d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d0d92bd7-92db-45eb-97bb-3eea18bde5a9/38df67a6-b7cc-41b5-94ee-256d4ee7023d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d0d92bd7-92db-45eb-97bb-3eea18bde5a9/38df67a6-b7cc-41b5-94ee-256d4ee7023d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                 0.2600548   -0.0542507    0.5743603
Birth       COHORTS      GUATEMALA     0                    NA                -0.0242294   -0.1390558    0.0905970
Birth       COHORTS      INDIA         1                    NA                -0.5642788   -0.6245426   -0.5040150
Birth       COHORTS      INDIA         0                    NA                -0.7459623   -0.7884467   -0.7034779
Birth       COHORTS      PHILIPPINES   1                    NA                -0.1337440   -0.3628647    0.0953767
Birth       COHORTS      PHILIPPINES   0                    NA                -0.3717944   -0.4418612   -0.3017276
Birth       JiVitA-3     BANGLADESH    1                    NA                -1.5787292   -1.6021728   -1.5552856
Birth       JiVitA-3     BANGLADESH    0                    NA                -1.6095000   -1.6495024   -1.5694976
Birth       JiVitA-4     BANGLADESH    1                    NA                -1.5186175   -1.5758534   -1.4613816
Birth       JiVitA-4     BANGLADESH    0                    NA                -1.5986410   -1.7184923   -1.4787896
Birth       MAL-ED       BANGLADESH    1                    NA                -1.0495547   -1.1994044   -0.8997051
Birth       MAL-ED       BANGLADESH    0                    NA                -1.0614710   -1.4041800   -0.7187621
Birth       MAL-ED       INDIA         1                    NA                -0.9227733   -1.4330942   -0.4124524
Birth       MAL-ED       INDIA         0                    NA                -1.2815145   -1.6083536   -0.9546755
Birth       MAL-ED       PERU          1                    NA                -0.8341461   -1.0963390   -0.5719532
Birth       MAL-ED       PERU          0                    NA                -0.9247904   -1.0601504   -0.7894303
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.8463348   -0.9982333   -0.6944364
Birth       NIH-Birth    BANGLADESH    0                    NA                -0.9797391   -1.0875013   -0.8719769
Birth       NIH-Crypto   BANGLADESH    1                    NA                -0.9171520   -0.9918554   -0.8424486
Birth       NIH-Crypto   BANGLADESH    0                    NA                -0.8888976   -1.1332983   -0.6444970
6 months    COHORTS      GUATEMALA     1                    NA                -1.5590298   -1.8204609   -1.2975987
6 months    COHORTS      GUATEMALA     0                    NA                -1.8903896   -1.9790729   -1.8017063
6 months    COHORTS      INDIA         1                    NA                -0.8995534   -0.9558870   -0.8432198
6 months    COHORTS      INDIA         0                    NA                -1.1468504   -1.1891379   -1.1045629
6 months    COHORTS      PHILIPPINES   1                    NA                -0.8955039   -1.1322803   -0.6587275
6 months    COHORTS      PHILIPPINES   0                    NA                -1.2629391   -1.3373717   -1.1885064
6 months    CONTENT      PERU          1                    NA                -0.2519948   -0.3866442   -0.1173454
6 months    CONTENT      PERU          0                    NA                -0.6440652   -1.2910064    0.0028760
6 months    JiVitA-3     BANGLADESH    1                    NA                -1.3022210   -1.3280589   -1.2763831
6 months    JiVitA-3     BANGLADESH    0                    NA                -1.3431627   -1.3899875   -1.2963379
6 months    JiVitA-4     BANGLADESH    1                    NA                -1.3384565   -1.3803632   -1.2965499
6 months    JiVitA-4     BANGLADESH    0                    NA                -1.4082583   -1.4915353   -1.3249813
6 months    MAL-ED       BANGLADESH    1                    NA                -1.2059424   -1.3384234   -1.0734614
6 months    MAL-ED       BANGLADESH    0                    NA                -1.1907599   -1.4575384   -0.9239815
6 months    MAL-ED       INDIA         1                    NA                -1.1828452   -1.3505769   -1.0151135
6 months    MAL-ED       INDIA         0                    NA                -1.2059328   -1.3760307   -1.0358349
6 months    MAL-ED       PERU          1                    NA                -1.2514178   -1.5000928   -1.0027429
6 months    MAL-ED       PERU          0                    NA                -1.2992222   -1.4209154   -1.1775290
6 months    NIH-Birth    BANGLADESH    1                    NA                -1.3281106   -1.4699887   -1.1862325
6 months    NIH-Birth    BANGLADESH    0                    NA                -1.4637098   -1.5804677   -1.3469520
6 months    NIH-Crypto   BANGLADESH    1                    NA                -1.2207783   -1.2968155   -1.1447411
6 months    NIH-Crypto   BANGLADESH    0                    NA                -1.0951240   -1.3179128   -0.8723351
24 months   COHORTS      GUATEMALA     1                    NA                -2.6478464   -2.9545136   -2.3411792
24 months   COHORTS      GUATEMALA     0                    NA                -3.0196223   -3.0939499   -2.9452947
24 months   COHORTS      INDIA         1                    NA                -1.9763386   -2.0412360   -1.9114412
24 months   COHORTS      INDIA         0                    NA                -2.3933025   -2.4467220   -2.3398831
24 months   COHORTS      PHILIPPINES   1                    NA                -1.9698148   -2.1709377   -1.7686919
24 months   COHORTS      PHILIPPINES   0                    NA                -2.7036940   -2.7854728   -2.6219151
24 months   CONTENT      PERU          1                    NA                -0.6420430   -0.8017458   -0.4823402
24 months   CONTENT      PERU          0                    NA                -1.1727195   -1.7256672   -0.6197718
24 months   JiVitA-3     BANGLADESH    1                    NA                -1.9824911   -2.0155324   -1.9494498
24 months   JiVitA-3     BANGLADESH    0                    NA                -2.1163440   -2.1761119   -2.0565761
24 months   JiVitA-4     BANGLADESH    1                    NA                -1.7634972   -1.8051268   -1.7218676
24 months   JiVitA-4     BANGLADESH    0                    NA                -1.8574254   -1.9325043   -1.7823465
24 months   MAL-ED       BANGLADESH    1                    NA                -1.9780852   -2.1178302   -1.8383401
24 months   MAL-ED       BANGLADESH    0                    NA                -1.9798569   -2.2909902   -1.6687236
24 months   MAL-ED       INDIA         1                    NA                -1.7599952   -1.9290822   -1.5909083
24 months   MAL-ED       INDIA         0                    NA                -1.9749902   -2.1527670   -1.7972133
24 months   MAL-ED       PERU          1                    NA                -1.7217919   -1.9611932   -1.4823906
24 months   MAL-ED       PERU          0                    NA                -1.7650050   -1.9083625   -1.6216474
24 months   NIH-Birth    BANGLADESH    1                    NA                -2.1136400   -2.2782248   -1.9490553
24 months   NIH-Birth    BANGLADESH    0                    NA                -2.2877917   -2.4125958   -2.1629876
24 months   NIH-Crypto   BANGLADESH    1                    NA                -1.4507729   -1.5426591   -1.3588867
24 months   NIH-Crypto   BANGLADESH    0                    NA                -1.4110307   -1.6283887   -1.1936726


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     NA                   NA                -0.0275356   -0.1359303    0.0808590
Birth       COHORTS      INDIA         NA                   NA                -0.6777115   -0.7106054   -0.6448175
Birth       COHORTS      PHILIPPINES   NA                   NA                -0.3137364   -0.3764483   -0.2510244
Birth       JiVitA-3     BANGLADESH    NA                   NA                -1.5898288   -1.6090823   -1.5705753
Birth       JiVitA-4     BANGLADESH    NA                   NA                -1.5236135   -1.5727559   -1.4744711
Birth       MAL-ED       BANGLADESH    NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       MAL-ED       INDIA         NA                   NA                -1.1375000   -1.4325178   -0.8424822
Birth       MAL-ED       PERU          NA                   NA                -0.9131731   -1.0331160   -0.7932301
Birth       NIH-Birth    BANGLADESH    NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto   BANGLADESH    NA                   NA                -0.9131068   -0.9851939   -0.8410197
6 months    COHORTS      GUATEMALA     NA                   NA                -1.8789210   -1.9609921   -1.7968498
6 months    COHORTS      INDIA         NA                   NA                -1.0414424   -1.0741113   -1.0087734
6 months    COHORTS      PHILIPPINES   NA                   NA                -1.1942936   -1.2608624   -1.1277248
6 months    CONTENT      PERU          NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    JiVitA-3     BANGLADESH    NA                   NA                -1.3134804   -1.3366079   -1.2903528
6 months    JiVitA-4     BANGLADESH    NA                   NA                -1.3440477   -1.3813060   -1.3067894
6 months    MAL-ED       BANGLADESH    NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    MAL-ED       INDIA         NA                   NA                -1.2087268   -1.3282418   -1.0892117
6 months    MAL-ED       PERU          NA                   NA                -1.3196229   -1.4293681   -1.2098778
6 months    NIH-Birth    BANGLADESH    NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto   BANGLADESH    NA                   NA                -1.2031037   -1.2749632   -1.1312442
24 months   COHORTS      GUATEMALA     NA                   NA                -3.0050840   -3.0758338   -2.9343342
24 months   COHORTS      INDIA         NA                   NA                -2.2126633   -2.2518337   -2.1734929
24 months   COHORTS      PHILIPPINES   NA                   NA                -2.5937576   -2.6629996   -2.5245156
24 months   CONTENT      PERU          NA                   NA                -0.6868598   -0.8388476   -0.5348719
24 months   JiVitA-3     BANGLADESH    NA                   NA                -2.0136975   -2.0413718   -1.9860232
24 months   JiVitA-4     BANGLADESH    NA                   NA                -1.7803708   -1.8158650   -1.7448765
24 months   MAL-ED       BANGLADESH    NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED       INDIA         NA                   NA                -1.8779556   -2.0033207   -1.7525904
24 months   MAL-ED       PERU          NA                   NA                -1.7535204   -1.8760973   -1.6309435
24 months   NIH-Birth    BANGLADESH    NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto   BANGLADESH    NA                   NA                -1.4417097   -1.5263855   -1.3570340


### Parameter: ATE


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      GUATEMALA     0                    1                 -0.2842842   -0.6190062    0.0504377
Birth       COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      INDIA         0                    1                 -0.1816835   -0.2550238   -0.1083431
Birth       COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      PHILIPPINES   0                    1                 -0.2380504   -0.4774992    0.0013984
Birth       JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH    0                    1                 -0.0307708   -0.0747612    0.0132196
Birth       JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH    0                    1                 -0.0800235   -0.2111427    0.0510958
Birth       MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH    0                    1                 -0.0119163   -0.3865604    0.3627278
Birth       MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA         0                    1                 -0.3587413   -0.9618128    0.2443303
Birth       MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU          0                    1                 -0.0906443   -0.3849647    0.2036761
Birth       NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH    0                    1                 -0.1334043   -0.3185903    0.0517818
Birth       NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH    0                    1                  0.0282544   -0.2268875    0.2833962
6 months    COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      GUATEMALA     0                    1                 -0.3313598   -0.6076724   -0.0550472
6 months    COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      INDIA         0                    1                 -0.2472970   -0.3167046   -0.1778895
6 months    COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      PHILIPPINES   0                    1                 -0.3674351   -0.6160619   -0.1188084
6 months    CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU          0                    1                 -0.3920704   -1.0530538    0.2689129
6 months    JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH    0                    1                 -0.0409417   -0.0878215    0.0059381
6 months    JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH    0                    1                 -0.0698017   -0.1632772    0.0236738
6 months    MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH    0                    1                  0.0151825   -0.2828851    0.3132500
6 months    MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA         0                    1                 -0.0230876   -0.2611941    0.2150188
6 months    MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU          0                    1                 -0.0478044   -0.3244771    0.2288683
6 months    NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH    0                    1                 -0.1355993   -0.3177968    0.0465983
6 months    NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH    0                    1                  0.1256544   -0.1098589    0.3611676
24 months   COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      GUATEMALA     0                    1                 -0.3717759   -0.6874262   -0.0561256
24 months   COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      INDIA         0                    1                 -0.4169640   -0.5011450   -0.3327830
24 months   COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      PHILIPPINES   0                    1                 -0.7338792   -0.9519791   -0.5157793
24 months   CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU          0                    1                 -0.5306765   -1.1052782    0.0439252
24 months   JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH    0                    1                 -0.1338529   -0.1967749   -0.0709310
24 months   JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH    0                    1                 -0.0939282   -0.1770500   -0.0108064
24 months   MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH    0                    1                 -0.0017717   -0.3431207    0.3395773
24 months   MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA         0                    1                 -0.2149949   -0.4571161    0.0271262
24 months   MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU          0                    1                 -0.0432131   -0.3211393    0.2347131
24 months   NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH    0                    1                 -0.1741516   -0.3754659    0.0271626
24 months   NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH    0                    1                  0.0397422   -0.1958999    0.2753843


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                -0.2875905   -0.5949378    0.0197569
Birth       COHORTS      INDIA         1                    NA                -0.1134326   -0.1636450   -0.0632202
Birth       COHORTS      PHILIPPINES   1                    NA                -0.1799924   -0.4043644    0.0443797
Birth       JiVitA-3     BANGLADESH    1                    NA                -0.0110996   -0.0250050    0.0028058
Birth       JiVitA-4     BANGLADESH    1                    NA                -0.0049960   -0.0329505    0.0229586
Birth       MAL-ED       BANGLADESH    1                    NA                -0.0034969   -0.0614877    0.0544939
Birth       MAL-ED       INDIA         1                    NA                -0.2147267   -0.5835218    0.1540684
Birth       MAL-ED       PERU          1                    NA                -0.0790270   -0.3047567    0.1467027
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.0846849   -0.2004935    0.0311237
Birth       NIH-Crypto   BANGLADESH    1                    NA                 0.0040452   -0.0265528    0.0346432
6 months    COHORTS      GUATEMALA     1                    NA                -0.3198912   -0.5782060   -0.0615764
6 months    COHORTS      INDIA         1                    NA                -0.1418890   -0.1889407   -0.0948372
6 months    COHORTS      PHILIPPINES   1                    NA                -0.2987897   -0.5311113   -0.0664681
6 months    CONTENT      PERU          1                    NA                -0.0265308   -0.0660676    0.0130059
6 months    JiVitA-3     BANGLADESH    1                    NA                -0.0112594   -0.0228852    0.0003665
6 months    JiVitA-4     BANGLADESH    1                    NA                -0.0055911   -0.0258487    0.0146665
6 months    MAL-ED       BANGLADESH    1                    NA                 0.0032618   -0.0423575    0.0488812
6 months    MAL-ED       INDIA         1                    NA                -0.0258816   -0.1545062    0.1027431
6 months    MAL-ED       PERU          1                    NA                -0.0682051   -0.2891379    0.1527277
6 months    NIH-Birth    BANGLADESH    1                    NA                -0.0792715   -0.1921452    0.0336022
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.0176746   -0.0118646    0.0472139
24 months   COHORTS      GUATEMALA     1                    NA                -0.3572376   -0.6570214   -0.0574537
24 months   COHORTS      INDIA         1                    NA                -0.2363247   -0.2901819   -0.1824676
24 months   COHORTS      PHILIPPINES   1                    NA                -0.6239428   -0.8244970   -0.4233885
24 months   CONTENT      PERU          1                    NA                -0.0448167   -0.0868280   -0.0028055
24 months   JiVitA-3     BANGLADESH    1                    NA                -0.0312064   -0.0487566   -0.0136562
24 months   JiVitA-4     BANGLADESH    1                    NA                -0.0168736   -0.0347419    0.0009948
24 months   MAL-ED       BANGLADESH    1                    NA                -0.0003110   -0.0483065    0.0476845
24 months   MAL-ED       INDIA         1                    NA                -0.1179603   -0.2493673    0.0134466
24 months   MAL-ED       PERU          1                    NA                -0.0317285   -0.2435795    0.1801224
24 months   NIH-Birth    BANGLADESH    1                    NA                -0.1054178   -0.2272227    0.0163870
24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0090632   -0.0228493    0.0409756
