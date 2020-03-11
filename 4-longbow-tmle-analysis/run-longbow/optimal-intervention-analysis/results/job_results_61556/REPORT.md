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
![](/tmp/bdb18538-4a91-4542-b3f9-3fc7fef39336/79d4a41e-fa84-43f2-b61c-041568d36927/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     optimal              observed           0.3211365    0.0799171    0.5623559
Birth       COHORTS      INDIA         optimal              observed          -0.5652031   -0.6254425   -0.5049638
Birth       COHORTS      PHILIPPINES   optimal              observed          -0.1180706   -0.3370793    0.1009380
Birth       JiVitA-3     BANGLADESH    optimal              observed          -1.5793943   -1.6040114   -1.5547772
Birth       JiVitA-4     BANGLADESH    optimal              observed          -1.5143039   -1.5945306   -1.4340773
Birth       MAL-ED       BANGLADESH    optimal              observed          -1.1892822   -1.4372829   -0.9412816
Birth       MAL-ED       INDIA         optimal              observed          -1.0114837   -1.5770763   -0.4458911
Birth       MAL-ED       PERU          optimal              observed          -0.7383541   -0.9950284   -0.4816799
Birth       NIH-Birth    BANGLADESH    optimal              observed          -0.8302050   -0.9793531   -0.6810569
Birth       NIH-Crypto   BANGLADESH    optimal              observed          -0.8682314   -1.0458007   -0.6906621
6 months    COHORTS      GUATEMALA     optimal              observed          -1.6035116   -1.8169576   -1.3900656
6 months    COHORTS      INDIA         optimal              observed          -0.9040955   -0.9611326   -0.8470584
6 months    COHORTS      PHILIPPINES   optimal              observed          -0.8472453   -1.0866946   -0.6077960
6 months    CONTENT      PERU          optimal              observed          -0.2523139   -0.3869154   -0.1177125
6 months    JiVitA-3     BANGLADESH    optimal              observed          -1.3088885   -1.3354257   -1.2823514
6 months    JiVitA-4     BANGLADESH    optimal              observed          -1.3359907   -1.3777621   -1.2942192
6 months    MAL-ED       BANGLADESH    optimal              observed          -1.3851021   -1.6094009   -1.1608033
6 months    MAL-ED       INDIA         optimal              observed          -1.2373906   -1.4006974   -1.0740839
6 months    MAL-ED       PERU          optimal              observed          -1.4471401   -1.5809148   -1.3133655
6 months    NIH-Birth    BANGLADESH    optimal              observed          -1.3004918   -1.4450064   -1.1559773
6 months    NIH-Crypto   BANGLADESH    optimal              observed          -1.0982612   -1.2919511   -0.9045713
24 months   COHORTS      GUATEMALA     optimal              observed          -2.7096984   -2.9805519   -2.4388449
24 months   COHORTS      INDIA         optimal              observed          -1.9860436   -2.0536008   -1.9184864
24 months   COHORTS      PHILIPPINES   optimal              observed          -2.0209891   -2.2208378   -1.8211404
24 months   CONTENT      PERU          optimal              observed          -0.6431504   -0.8028427   -0.4834580
24 months   JiVitA-3     BANGLADESH    optimal              observed          -1.9818441   -2.0151606   -1.9485275
24 months   JiVitA-4     BANGLADESH    optimal              observed          -1.7828729   -1.8390576   -1.7266882
24 months   MAL-ED       BANGLADESH    optimal              observed          -2.0095055   -2.2611919   -1.7578192
24 months   MAL-ED       INDIA         optimal              observed          -1.7465958   -1.9146576   -1.5785340
24 months   MAL-ED       PERU          optimal              observed          -1.7783997   -1.9955911   -1.5612082
24 months   NIH-Birth    BANGLADESH    optimal              observed          -2.1078033   -2.2709906   -1.9446159
24 months   NIH-Crypto   BANGLADESH    optimal              observed          -1.3292782   -1.5254555   -1.1331009


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     observed             observed          -0.0275356   -0.1359303    0.0808590
Birth       COHORTS      INDIA         observed             observed          -0.6777115   -0.7106054   -0.6448175
Birth       COHORTS      PHILIPPINES   observed             observed          -0.3137364   -0.3764483   -0.2510244
Birth       JiVitA-3     BANGLADESH    observed             observed          -1.5898288   -1.6090823   -1.5705753
Birth       JiVitA-4     BANGLADESH    observed             observed          -1.5236135   -1.5727559   -1.4744711
Birth       MAL-ED       BANGLADESH    observed             observed          -1.0530516   -1.1896058   -0.9164975
Birth       MAL-ED       INDIA         observed             observed          -1.1375000   -1.4325178   -0.8424822
Birth       MAL-ED       PERU          observed             observed          -0.9131731   -1.0331160   -0.7932301
Birth       NIH-Birth    BANGLADESH    observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto   BANGLADESH    observed             observed          -0.9131068   -0.9851939   -0.8410197
6 months    COHORTS      GUATEMALA     observed             observed          -1.8789210   -1.9609921   -1.7968498
6 months    COHORTS      INDIA         observed             observed          -1.0414424   -1.0741113   -1.0087734
6 months    COHORTS      PHILIPPINES   observed             observed          -1.1942936   -1.2608624   -1.1277248
6 months    CONTENT      PERU          observed             observed          -0.2785256   -0.4098735   -0.1471776
6 months    JiVitA-3     BANGLADESH    observed             observed          -1.3134804   -1.3366079   -1.2903528
6 months    JiVitA-4     BANGLADESH    observed             observed          -1.3440477   -1.3813060   -1.3067894
6 months    MAL-ED       BANGLADESH    observed             observed          -1.2026806   -1.3203025   -1.0850586
6 months    MAL-ED       INDIA         observed             observed          -1.2087268   -1.3282418   -1.0892117
6 months    MAL-ED       PERU          observed             observed          -1.3196229   -1.4293681   -1.2098778
6 months    NIH-Birth    BANGLADESH    observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto   BANGLADESH    observed             observed          -1.2031037   -1.2749632   -1.1312442
24 months   COHORTS      GUATEMALA     observed             observed          -3.0050840   -3.0758338   -2.9343342
24 months   COHORTS      INDIA         observed             observed          -2.2126633   -2.2518337   -2.1734929
24 months   COHORTS      PHILIPPINES   observed             observed          -2.5937576   -2.6629996   -2.5245156
24 months   CONTENT      PERU          observed             observed          -0.6868598   -0.8388476   -0.5348719
24 months   JiVitA-3     BANGLADESH    observed             observed          -2.0136975   -2.0413718   -1.9860232
24 months   JiVitA-4     BANGLADESH    observed             observed          -1.7803708   -1.8158650   -1.7448765
24 months   MAL-ED       BANGLADESH    observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED       INDIA         observed             observed          -1.8779556   -2.0033207   -1.7525904
24 months   MAL-ED       PERU          observed             observed          -1.7535204   -1.8760973   -1.6309435
24 months   NIH-Birth    BANGLADESH    observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto   BANGLADESH    observed             observed          -1.4417097   -1.5263855   -1.3570340


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     optimal              observed          -0.3486722   -0.5815553   -0.1157891
Birth       COHORTS      INDIA         optimal              observed          -0.1125083   -0.1625703   -0.0624464
Birth       COHORTS      PHILIPPINES   optimal              observed          -0.1956657   -0.4101602    0.0188287
Birth       JiVitA-3     BANGLADESH    optimal              observed          -0.0104345   -0.0270608    0.0061918
Birth       JiVitA-4     BANGLADESH    optimal              observed          -0.0093095   -0.0730292    0.0544102
Birth       MAL-ED       BANGLADESH    optimal              observed           0.1362306   -0.0801613    0.3526224
Birth       MAL-ED       INDIA         optimal              observed          -0.1260163   -0.5349621    0.2829294
Birth       MAL-ED       PERU          optimal              observed          -0.1748190   -0.3978811    0.0482432
Birth       NIH-Birth    BANGLADESH    optimal              observed          -0.1008147   -0.2174229    0.0157935
Birth       NIH-Crypto   BANGLADESH    optimal              observed          -0.0448754   -0.2030400    0.1132892
6 months    COHORTS      GUATEMALA     optimal              observed          -0.2754094   -0.4812186   -0.0696002
6 months    COHORTS      INDIA         optimal              observed          -0.1373468   -0.1850325   -0.0896611
6 months    COHORTS      PHILIPPINES   optimal              observed          -0.3470483   -0.5828059   -0.1112907
6 months    CONTENT      PERU          optimal              observed          -0.0262117   -0.0650870    0.0126637
6 months    JiVitA-3     BANGLADESH    optimal              observed          -0.0045918   -0.0177274    0.0085438
6 months    JiVitA-4     BANGLADESH    optimal              observed          -0.0080570   -0.0282832    0.0121691
6 months    MAL-ED       BANGLADESH    optimal              observed           0.1824216   -0.0013234    0.3661665
6 months    MAL-ED       INDIA         optimal              observed           0.0286639   -0.0920447    0.1493725
6 months    MAL-ED       PERU          optimal              observed           0.1275172    0.0335317    0.2215026
6 months    NIH-Birth    BANGLADESH    optimal              observed          -0.1068902   -0.2211189    0.0073385
6 months    NIH-Crypto   BANGLADESH    optimal              observed          -0.1048425   -0.2808699    0.0711850
24 months   COHORTS      GUATEMALA     optimal              observed          -0.2953856   -0.5618071   -0.0289640
24 months   COHORTS      INDIA         optimal              observed          -0.2266197   -0.2832265   -0.1700128
24 months   COHORTS      PHILIPPINES   optimal              observed          -0.5727685   -0.7736293   -0.3719077
24 months   CONTENT      PERU          optimal              observed          -0.0437094   -0.0850700   -0.0023488
24 months   JiVitA-3     BANGLADESH    optimal              observed          -0.0318535   -0.0496062   -0.0141007
24 months   JiVitA-4     BANGLADESH    optimal              observed           0.0025022   -0.0389528    0.0439571
24 months   MAL-ED       BANGLADESH    optimal              observed           0.0311093   -0.1861828    0.2484015
24 months   MAL-ED       INDIA         optimal              observed          -0.1313598   -0.2639536    0.0012340
24 months   MAL-ED       PERU          optimal              observed           0.0248793   -0.1477150    0.1974736
24 months   NIH-Birth    BANGLADESH    optimal              observed          -0.1112546   -0.2320815    0.0095723
24 months   NIH-Crypto   BANGLADESH    optimal              observed          -0.1124316   -0.2846029    0.0597397
