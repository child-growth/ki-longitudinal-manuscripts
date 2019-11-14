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
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          18507   26641
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           8134   26641
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
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          11998   16742
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4744   16742
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
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6064    8555
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2491    8555
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



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/ee3d9b02-7706-41a2-a532-0fe02573df87/6b74979d-c1de-4f20-b9e5-e9bbcf1d2659/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -1.1780869   -1.4014318   -0.9547419
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed          -1.0069018   -1.5663969   -0.4474067
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.8257898   -1.1119750   -0.5396046
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.8364663   -0.9756893   -0.6972433
Birth       ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.9039291   -1.0716151   -0.7362431
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed           0.2367426   -0.0538334    0.5273186
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.5667375   -0.6261503   -0.5073247
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.2012984   -0.3930288   -0.0095680
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.1538940   -1.1878510   -1.1199370
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.5361798   -1.6091582   -1.4632015
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -1.3211294   -1.5462934   -1.0959654
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed          -1.1330452   -1.2988355   -0.9672549
6 months    ki0047075b-MAL-ED       PERU          optimal              observed          -1.4442960   -1.5986215   -1.2899706
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -1.3170917   -1.4604009   -1.1737826
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -1.1275106   -1.3292075   -0.9258137
6 months    ki1114097-CONTENT       PERU          optimal              observed          -0.4092373   -0.7955556   -0.0229190
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed          -1.6411229   -1.8500127   -1.4322332
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.8978754   -0.9540606   -0.8416902
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.8526126   -1.0974757   -0.6077495
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.3317470   -1.3568022   -1.3066917
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.3376755   -1.3888292   -1.2865219
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -1.9848735   -2.2333008   -1.7364463
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -1.7127465   -1.8855744   -1.5399187
24 months   ki0047075b-MAL-ED       PERU          optimal              observed          -1.7994628   -2.0284926   -1.5704330
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -2.1553730   -2.3244908   -1.9862552
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -1.3755302   -1.5668229   -1.1842376
24 months   ki1114097-CONTENT       PERU          optimal              observed          -0.6532244   -0.8325173   -0.4739316
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -2.6730750   -2.8749995   -2.4711504
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -1.9867256   -2.0542682   -1.9191829
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -1.9915679   -2.2264681   -1.7566677
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.9931172   -2.0264362   -1.9597983
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.7678149   -1.8217464   -1.7138834


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
Birth       kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -1.1730603   -1.2011221   -1.1449986
Birth       kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED       BANGLADESH    observed             observed          -1.2031806   -1.3209873   -1.0853738
6 months    ki0047075b-MAL-ED       INDIA         observed             observed          -1.2085694   -1.3282177   -1.0889210
6 months    ki0047075b-MAL-ED       PERU          observed             observed          -1.3223764   -1.4323641   -1.2123887
6 months    ki1017093-NIH-Birth     BANGLADESH    observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -1.2031037   -1.2749632   -1.1312442
6 months    ki1114097-CONTENT       PERU          observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS       GUATEMALA     observed             observed          -1.8789210   -1.9609921   -1.7968498
6 months    ki1135781-COHORTS       INDIA         observed             observed          -1.0414424   -1.0741113   -1.0087734
6 months    ki1135781-COHORTS       PHILIPPINES   observed             observed          -1.1942936   -1.2608624   -1.1277248
6 months    kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -1.3359778   -1.3590491   -1.3129065
6 months    kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED       BANGLADESH    observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED       INDIA         observed             observed          -1.8766000   -2.0020012   -1.7511988
24 months   ki0047075b-MAL-ED       PERU          observed             observed          -1.7559184   -1.8781773   -1.6336595
24 months   ki1017093-NIH-Birth     BANGLADESH    observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -1.4417097   -1.5263855   -1.3570340
24 months   ki1114097-CONTENT       PERU          observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS       GUATEMALA     observed             observed          -3.0050840   -3.0758338   -2.9343342
24 months   ki1135781-COHORTS       INDIA         observed             observed          -2.2126633   -2.2518337   -2.1734929
24 months   ki1135781-COHORTS       PHILIPPINES   observed             observed          -2.5937576   -2.6629996   -2.5245156
24 months   kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -2.0196341   -2.0472667   -1.9920015
24 months   kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.7803708   -1.8158650   -1.7448765


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.1250352   -0.0595165    0.3095870
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed          -0.1305982   -0.5371548    0.2759585
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.0873833   -0.3345261    0.1597595
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.0945535   -0.2011737    0.0120667
Birth       ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.0091777   -0.1603304    0.1419750
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.2642783   -0.5470261    0.0184695
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.1109740   -0.1601306   -0.0618173
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.1124380   -0.3012150    0.0763390
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0191663   -0.0388311    0.0004985
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed           0.0125664   -0.0436791    0.0688118
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.1179489   -0.0846772    0.3205750
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed          -0.0755242   -0.1976640    0.0466155
6 months    ki0047075b-MAL-ED       PERU          optimal              observed           0.1219196    0.0080720    0.2357672
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.0902904   -0.2041484    0.0235677
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.0755931   -0.2589513    0.1077652
6 months    ki1114097-CONTENT       PERU          optimal              observed           0.0953156   -0.2341059    0.4247371
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.2377980   -0.4385357   -0.0370604
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.1435670   -0.1903570   -0.0967770
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.3416810   -0.5828395   -0.1005226
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0042308   -0.0168083    0.0083467
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0063722   -0.0413161    0.0285718
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.0059584   -0.2160274    0.2279442
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.1638535   -0.2982066   -0.0295003
24 months   ki0047075b-MAL-ED       PERU          optimal              observed           0.0435444   -0.1441143    0.2312032
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.0636849   -0.1868322    0.0594624
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.0661795   -0.2354066    0.1030477
24 months   ki1114097-CONTENT       PERU          optimal              observed          -0.0429951   -0.0894742    0.0034841
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.3320090   -0.5294093   -0.1346088
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.2259377   -0.2824470   -0.1694284
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.6021897   -0.8359876   -0.3683917
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0265169   -0.0440953   -0.0089385
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0125559   -0.0493384    0.0242267
