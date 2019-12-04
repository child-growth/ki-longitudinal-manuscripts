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

agecat      studyid                 country                        impsan    n_cell       n
----------  ----------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            179     213
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             34     213
Birth       ki0047075b-MAL-ED       BRAZIL                         1             59      60
Birth       ki0047075b-MAL-ED       BRAZIL                         0              1      60
Birth       ki0047075b-MAL-ED       INDIA                          1             15      40
Birth       ki0047075b-MAL-ED       INDIA                          0             25      40
Birth       ki0047075b-MAL-ED       NEPAL                          1             25      26
Birth       ki0047075b-MAL-ED       NEPAL                          0              1      26
Birth       ki0047075b-MAL-ED       PERU                           1             52     208
Birth       ki0047075b-MAL-ED       PERU                           0            156     208
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              0      95
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0             95      95
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            118     118
Birth       ki1017093-NIH-Birth     BANGLADESH                     1            231     608
Birth       ki1017093-NIH-Birth     BANGLADESH                     0            377     608
Birth       ki1017093b-PROVIDE      BANGLADESH                     1             43      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0              2      45
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1            632     721
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0             89     721
Birth       ki1114097-CONTENT       PERU                           1              1       2
Birth       ki1114097-CONTENT       PERU                           0              1       2
Birth       ki1135781-COHORTS       GUATEMALA                      1             45     491
Birth       ki1135781-COHORTS       GUATEMALA                      0            446     491
Birth       ki1135781-COHORTS       INDIA                          1           1767    4776
Birth       ki1135781-COHORTS       INDIA                          0           3009    4776
Birth       ki1135781-COHORTS       PHILIPPINES                    1            178    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0           1013    1191
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          15220   22431
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           7211   22431
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1           2181    2820
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            639    2820
6 months    ki0047075b-MAL-ED       BANGLADESH                     1            202     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0             38     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1            205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0              4     209
6 months    ki0047075b-MAL-ED       INDIA                          1            108     233
6 months    ki0047075b-MAL-ED       INDIA                          0            125     233
6 months    ki0047075b-MAL-ED       NEPAL                          1            235     236
6 months    ki0047075b-MAL-ED       NEPAL                          0              1     236
6 months    ki0047075b-MAL-ED       PERU                           1             65     263
6 months    ki0047075b-MAL-ED       PERU                           0            198     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            240     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1            205     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0            332     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     1             11      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     0              0      11
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            615     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             89     704
6 months    ki1114097-CONTENT       PERU                           1            201     215
6 months    ki1114097-CONTENT       PERU                           0             14     215
6 months    ki1135781-COHORTS       GUATEMALA                      1             67     658
6 months    ki1135781-COHORTS       GUATEMALA                      0            591     658
6 months    ki1135781-COHORTS       INDIA                          1           1881    4971
6 months    ki1135781-COHORTS       INDIA                          0           3090    4971
6 months    ki1135781-COHORTS       PHILIPPINES                    1            143    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0            940    1083
6 months    ki1148112-LCNI-5        MALAWI                         1              3     812
6 months    ki1148112-LCNI-5        MALAWI                         0            809     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          12038   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4762   16800
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1           3734    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0           1091    4825
24 months   ki0047075b-MAL-ED       BANGLADESH                     1            181     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0             31     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1            166     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     169
24 months   ki0047075b-MAL-ED       INDIA                          1            104     225
24 months   ki0047075b-MAL-ED       INDIA                          0            121     225
24 months   ki0047075b-MAL-ED       NEPAL                          1            227     228
24 months   ki0047075b-MAL-ED       NEPAL                          0              1     228
24 months   ki0047075b-MAL-ED       PERU                           1             47     196
24 months   ki0047075b-MAL-ED       PERU                           0            149     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            231     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1            170     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0            259     429
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              9       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       9
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     503
24 months   ki1114097-CONTENT       PERU                           1            151     164
24 months   ki1114097-CONTENT       PERU                           0             13     164
24 months   ki1135781-COHORTS       GUATEMALA                      1             77     893
24 months   ki1135781-COHORTS       GUATEMALA                      0            816     893
24 months   ki1135781-COHORTS       INDIA                          1           1471    3751
24 months   ki1135781-COHORTS       INDIA                          0           2280    3751
24 months   ki1135781-COHORTS       PHILIPPINES                    1            126     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0            864     990
24 months   ki1148112-LCNI-5        MALAWI                         1              2     572
24 months   ki1148112-LCNI-5        MALAWI                         0            570     572
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6111    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2511    8622
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           3683    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0           1064    4747


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/53e7f36e-8bdd-4b90-bbdd-840b655a050c/c688c044-e82a-4b3f-80ba-a5b65d7ecf8d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -1.2501648   -1.5164398   -0.9838899
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed          -1.1846661   -1.7567867   -0.6125454
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.6680425   -0.8637262   -0.4723589
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.8245431   -0.9703913   -0.6786950
Birth       ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.8965605   -1.0694529   -0.7236680
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.0017878   -0.2929068    0.2893312
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.5465595   -0.6025502   -0.4905688
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed           0.0477698   -0.1005993    0.1961389
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.5592028   -1.5815241   -1.5368815
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.4726214   -1.5397147   -1.4055280
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -1.4050264   -1.5867085   -1.2233442
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed          -1.2051072   -1.3642876   -1.0459268
6 months    ki0047075b-MAL-ED       PERU          optimal              observed          -1.4821195   -1.6765325   -1.2877066
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -1.2983218   -1.4404589   -1.1561847
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -1.2093788   -1.3840813   -1.0346762
6 months    ki1114097-CONTENT       PERU          optimal              observed          -0.2920423   -0.4719678   -0.1121167
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed          -1.6751324   -1.9304537   -1.4198111
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.8510832   -0.9051649   -0.7970015
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.6906667   -0.8692855   -0.5120479
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.2863127   -1.3149133   -1.2577120
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.3427077   -1.3909353   -1.2944801
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -2.0509494   -2.2653150   -1.8365837
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -1.7576867   -1.9257844   -1.5895889
24 months   ki0047075b-MAL-ED       PERU          optimal              observed          -1.8457222   -2.0762973   -1.6151472
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -2.0949886   -2.2614710   -1.9285062
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -1.3933875   -1.6059731   -1.1808019
24 months   ki1114097-CONTENT       PERU          optimal              observed          -0.6527363   -0.8320634   -0.4734091
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -2.6085854   -2.7656397   -2.4515310
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -1.9191853   -1.9825226   -1.8558479
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -1.7077418   -1.8817481   -1.5337354
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.9599277   -1.9917252   -1.9281301
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.7307019   -1.7728648   -1.6885389


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    observed             observed          -1.0530516   -1.1896058   -0.9164975
Birth       ki0047075b-MAL-ED       INDIA         observed             observed          -1.1375000   -1.4325178   -0.8424822
Birth       ki0047075b-MAL-ED       PERU          observed             observed          -0.9131731   -1.0331160   -0.7932301
Birth       ki1017093-NIH-Birth     BANGLADESH    observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -0.9131068   -0.9851939   -0.8410197
Birth       ki1135781-COHORTS       GUATEMALA     observed             observed          -0.0275356   -0.1359303    0.0808590
Birth       ki1135781-COHORTS       INDIA         observed             observed          -0.6777115   -0.7106054   -0.6448175
Birth       ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.3137364   -0.3764483   -0.2510244
Birth       kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -1.5898288   -1.6090823   -1.5705753
Birth       kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED       BANGLADESH    observed             observed          -1.2026806   -1.3203025   -1.0850586
6 months    ki0047075b-MAL-ED       INDIA         observed             observed          -1.2087268   -1.3282418   -1.0892117
6 months    ki0047075b-MAL-ED       PERU          observed             observed          -1.3196229   -1.4293681   -1.2098778
6 months    ki1017093-NIH-Birth     BANGLADESH    observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -1.2031037   -1.2749632   -1.1312442
6 months    ki1114097-CONTENT       PERU          observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS       GUATEMALA     observed             observed          -1.8789210   -1.9609921   -1.7968498
6 months    ki1135781-COHORTS       INDIA         observed             observed          -1.0414424   -1.0741113   -1.0087734
6 months    ki1135781-COHORTS       PHILIPPINES   observed             observed          -1.1942936   -1.2608624   -1.1277248
6 months    kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -1.3134804   -1.3366079   -1.2903528
6 months    kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED       BANGLADESH    observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED       INDIA         observed             observed          -1.8779556   -2.0033207   -1.7525904
24 months   ki0047075b-MAL-ED       PERU          observed             observed          -1.7535204   -1.8760973   -1.6309435
24 months   ki1017093-NIH-Birth     BANGLADESH    observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -1.4417097   -1.5263855   -1.3570340
24 months   ki1114097-CONTENT       PERU          observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS       GUATEMALA     observed             observed          -3.0050840   -3.0758338   -2.9343342
24 months   ki1135781-COHORTS       INDIA         observed             observed          -2.2126633   -2.2518337   -2.1734929
24 months   ki1135781-COHORTS       PHILIPPINES   observed             observed          -2.5937576   -2.6629996   -2.5245156
24 months   kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -2.0136975   -2.0413718   -1.9860232
24 months   kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.7803708   -1.8158650   -1.7448765


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.1971132   -0.0316422    0.4258686
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed           0.0471661   -0.3686505    0.4629827
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.2451305   -0.4193393   -0.0709218
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.1064766   -0.2178311    0.0048778
Birth       ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.0165463   -0.1683823    0.1352896
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.0257478   -0.2911667    0.2396711
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.1311519   -0.1768878   -0.0854161
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.3615061   -0.5027642   -0.2202481
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0306260   -0.0423403   -0.0189117
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0509921   -0.0985820   -0.0034023
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.2023458    0.0551528    0.3495388
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed          -0.0036196   -0.1242775    0.1170383
6 months    ki0047075b-MAL-ED       PERU          optimal              observed           0.1624966    0.0119288    0.3130644
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.1090603   -0.2206685    0.0025479
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed           0.0062751   -0.1554601    0.1680103
6 months    ki1114097-CONTENT       PERU          optimal              observed          -0.0218795   -0.0647786    0.0210197
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.2037885   -0.4479846    0.0404075
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.1903592   -0.2350681   -0.1456502
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.5036269   -0.6733549   -0.3338990
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0271677   -0.0426545   -0.0116809
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0013400   -0.0294443    0.0267643
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.0725531   -0.1134169    0.2585232
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.1202689   -0.2513341    0.0107963
24 months   ki0047075b-MAL-ED       PERU          optimal              observed           0.0922018   -0.1079683    0.2923719
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.1240693   -0.2462538   -0.0018848
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.0483222   -0.2383926    0.1417481
24 months   ki1114097-CONTENT       PERU          optimal              observed          -0.0434832   -0.0897935    0.0028270
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.3964986   -0.5517134   -0.2412839
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.2934780   -0.3459454   -0.2410106
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.8860158   -1.0549467   -0.7170849
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0537699   -0.0694692   -0.0380705
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0496689   -0.0691576   -0.0301802
