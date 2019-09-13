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
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            197     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             37     234
Birth       ki0047075b-MAL-ED       BRAZIL                         1            170     174
Birth       ki0047075b-MAL-ED       BRAZIL                         0              4     174
Birth       ki0047075b-MAL-ED       INDIA                          1             92     190
Birth       ki0047075b-MAL-ED       INDIA                          0             98     190
Birth       ki0047075b-MAL-ED       NEPAL                          1            170     171
Birth       ki0047075b-MAL-ED       NEPAL                          0              1     171
Birth       ki0047075b-MAL-ED       PERU                           1             62     250
Birth       ki0047075b-MAL-ED       PERU                           0            188     250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              2     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0            211     213
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            113     113
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              9      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0             19      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1             25      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              2      27
Birth       ki1114097-CONTENT       PERU                           1              1       2
Birth       ki1114097-CONTENT       PERU                           0              1       2
Birth       ki1135781-COHORTS       GUATEMALA                      1             45     491
Birth       ki1135781-COHORTS       GUATEMALA                      0            446     491
Birth       ki1135781-COHORTS       INDIA                          1           1767    4776
Birth       ki1135781-COHORTS       INDIA                          0           3009    4776
Birth       ki1135781-COHORTS       PHILIPPINES                    1            178    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0           1013    1191
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          13187   19592
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           6405   19592
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1            606     822
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            216     822
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
6 months    ki1017093b-PROVIDE      BANGLADESH                     1            555     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     0             26     581
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
24 months   ki1017093b-PROVIDE      BANGLADESH                     1            552     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     0             24     576
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     503
24 months   ki1114097-CONTENT       PERU                           1            151     164
24 months   ki1114097-CONTENT       PERU                           0             13     164
24 months   ki1135781-COHORTS       GUATEMALA                      1             77     896
24 months   ki1135781-COHORTS       GUATEMALA                      0            819     896
24 months   ki1135781-COHORTS       INDIA                          1           1471    3754
24 months   ki1135781-COHORTS       INDIA                          0           2283    3754
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f26aed84-0ed5-437f-b9e4-6673d2419d00/ca801a23-fa2b-494a-8e23-48af59c3eed1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -1.1447295   -1.4298218   -0.8596371
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed          -0.8622474   -1.0549111   -0.6695837
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.7910055   -0.9697402   -0.6122709
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.3313504   -0.9534248    0.2907239
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed           0.0720449   -0.2214964    0.3655862
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.5471106   -0.6029170   -0.4913043
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed           0.0450765   -0.1013910    0.1915440
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.5534943   -1.5788770   -1.5281117
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.4961407   -1.5933319   -1.3989496
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -1.2951509   -1.4988054   -1.0914964
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed          -1.3397787   -1.5065938   -1.1729637
6 months    ki0047075b-MAL-ED       PERU          optimal              observed          -1.3499215   -1.5066636   -1.1931795
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -1.3089286   -1.4443908   -1.1734663
6 months    ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -1.0816868   -1.1596637   -1.0037100
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -1.1685830   -1.3715059   -0.9656600
6 months    ki1114097-CONTENT       PERU          optimal              observed          -0.4951009   -0.7592217   -0.2309800
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed          -1.7080791   -1.9513394   -1.4648187
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.8577059   -0.9115796   -0.8038322
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.6900992   -0.8741314   -0.5060670
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.2834758   -1.3089889   -1.2579627
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.3361769   -1.3845628   -1.2877910
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -1.8179041   -2.0680062   -1.5678020
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -1.7083409   -1.8759883   -1.5406934
24 months   ki0047075b-MAL-ED       PERU          optimal              observed          -1.9097502   -2.1131016   -1.7063989
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -1.9987231   -2.1594414   -1.8380048
24 months   ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -1.5636245   -1.6478342   -1.4794148
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -1.4829525   -1.7088589   -1.2570460
24 months   ki1114097-CONTENT       PERU          optimal              observed          -0.6530093   -0.8327846   -0.4732340
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -2.4476202   -2.5953602   -2.2998803
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -1.6932457   -1.7560351   -1.6304563
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -1.6887186   -1.8637760   -1.5136613
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.9630443   -1.9947587   -1.9313299
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.7277856   -1.7688224   -1.6867489


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    observed             observed          -1.0229487   -1.1509575   -0.8949400
Birth       ki0047075b-MAL-ED       INDIA         observed             observed          -0.9912632   -1.1342711   -0.8482552
Birth       ki0047075b-MAL-ED       PERU          observed             observed          -0.9430000   -1.0581275   -0.8278725
Birth       ki1017093-NIH-Birth     BANGLADESH    observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1135781-COHORTS       GUATEMALA     observed             observed          -0.0275356   -0.1359303    0.0808590
Birth       ki1135781-COHORTS       INDIA         observed             observed          -0.6777115   -0.7106054   -0.6448175
Birth       ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.3137364   -0.3764483   -0.2510244
Birth       kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -1.5751797   -1.5949356   -1.5554237
Birth       kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED       BANGLADESH    observed             observed          -1.2033681   -1.3212429   -1.0854932
6 months    ki0047075b-MAL-ED       INDIA         observed             observed          -1.2137196   -1.3330761   -1.0943631
6 months    ki0047075b-MAL-ED       PERU          observed             observed          -1.3210330   -1.4311040   -1.2109619
6 months    ki1017093-NIH-Birth     BANGLADESH    observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE      BANGLADESH    observed             observed          -1.0925674   -1.1686395   -1.0164954
6 months    ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -1.2031037   -1.2749632   -1.1312442
6 months    ki1114097-CONTENT       PERU          observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS       GUATEMALA     observed             observed          -1.8789210   -1.9609921   -1.7968498
6 months    ki1135781-COHORTS       INDIA         observed             observed          -1.0414424   -1.0741113   -1.0087734
6 months    ki1135781-COHORTS       PHILIPPINES   observed             observed          -1.1942936   -1.2608624   -1.1277248
6 months    kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -1.3134804   -1.3366079   -1.2903528
6 months    kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED       BANGLADESH    observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED       INDIA         observed             observed          -1.8372222   -1.9638017   -1.7106427
24 months   ki0047075b-MAL-ED       PERU          observed             observed          -1.7514286   -1.8732727   -1.6295845
24 months   ki1017093-NIH-Birth     BANGLADESH    observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE      BANGLADESH    observed             observed          -1.5853993   -1.6687810   -1.5020176
24 months   ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -1.4297217   -1.5139732   -1.3454701
24 months   ki1114097-CONTENT       PERU          observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS       GUATEMALA     observed             observed          -2.8674777   -2.9383136   -2.7966417
24 months   ki1135781-COHORTS       INDIA         observed             observed          -2.0003783   -2.0396528   -1.9611037
24 months   ki1135781-COHORTS       PHILIPPINES   observed             observed          -2.5681010   -2.6370882   -2.4991138
24 months   kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -2.0126943   -2.0403978   -1.9849907
24 months   kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.7578934   -1.7933205   -1.7224663


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.1217807   -0.1459468    0.3895083
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed          -0.1290158   -0.2791203    0.0210888
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.1519945   -0.3124781    0.0084892
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.1979353   -0.7449377    0.3490671
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.0995805   -0.3731483    0.1739872
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.1306008   -0.1761899   -0.0850117
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.3588129   -0.4985480   -0.2190778
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0216853   -0.0363975   -0.0069732
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0015235   -0.0580138    0.0549668
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.0917829   -0.0727471    0.2563128
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed           0.1260591   -0.0006940    0.2528122
6 months    ki0047075b-MAL-ED       PERU          optimal              observed           0.0288886   -0.0729726    0.1307497
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.0984535   -0.2061484    0.0092414
6 months    ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -0.0108806   -0.0251416    0.0033805
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.0345207   -0.2182997    0.1492582
6 months    ki1114097-CONTENT       PERU          optimal              observed           0.1811792    0.0068542    0.3555041
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.1708419   -0.4044136    0.0627298
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.1837364   -0.2282592   -0.1392136
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.5041944   -0.6789650   -0.3294239
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0300046   -0.0409752   -0.0190339
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0078708   -0.0378208    0.0220793
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.1252091   -0.3512594    0.1008412
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.1288813   -0.2602496    0.0024869
24 months   ki0047075b-MAL-ED       PERU          optimal              observed           0.1583216   -0.0269856    0.3436289
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.1820714   -0.3047196   -0.0594232
24 months   ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -0.0217748   -0.0429327   -0.0006169
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed           0.0532308   -0.1519637    0.2584253
24 months   ki1114097-CONTENT       PERU          optimal              observed          -0.0432102   -0.0900391    0.0036187
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.4198574   -0.5674365   -0.2722784
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.3071326   -0.3591220   -0.2551431
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.8793824   -1.0491508   -0.7096140
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0496500   -0.0652495   -0.0340504
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0301078   -0.0481698   -0.0120457
