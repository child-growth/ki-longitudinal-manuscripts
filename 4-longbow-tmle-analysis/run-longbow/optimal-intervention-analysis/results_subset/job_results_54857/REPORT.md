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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country        hfoodsec                n_cell       n
----------  ----------------------  -------------  ---------------------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                138     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         3     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure               21     162
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0      26
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         4      26
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure               22      26
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                 32      35
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1      35
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                2      35
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                 10      14
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                3      14
Birth       ki0047075b-MAL-ED       PERU           Food Secure                 23      89
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure        22      89
Birth       ki0047075b-MAL-ED       PERU           Food Insecure               44      89
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 45      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               33      87
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                 86     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       453     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure               36     575
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                429     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       199     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               79     707
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                442     620
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       100     620
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure               78     620
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               5797   11763
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      3947   11763
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2019   11763
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1205    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       870    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              308    2383
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                160     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                190     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure               17     212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                 27     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure               56     111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 80     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       417     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               40     537
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                427     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                396     546
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        76     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               74     546
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure               8396   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      5590   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2778   16764
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2445    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1728    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              622    4795
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                161     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                190     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        27     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure               54     107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       327     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33     428
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                334     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               56     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                341     477
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67     477
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               69     477
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3857    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2753    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1580    8190
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2389    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1699    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              608    4696


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0ce27ea1-f8a8-4aa4-85b4-bde7d502641b/23fcc8b9-b44a-48b8-b0fc-a20b232ae0af/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           optimal              observed           0.2573269    0.0303950    0.4842588
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.4338991   -0.9417616    0.0739633
Birth       ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -1.1809972   -1.5256821   -0.8363123
Birth       ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -1.3063457   -1.4820091   -1.1306824
Birth       ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.8177268   -1.0845556   -0.5508979
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.7066364   -0.7378289   -0.6754438
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.6878130   -0.8544629   -0.5211631
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed          -0.9187807   -1.3431639   -0.4943975
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.0561594   -0.8388603    0.7265415
6 months    ki0047075b-MAL-ED       PERU           optimal              observed           1.1410710    0.7497712    1.5323707
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.4613381    0.0497725    0.8729038
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.3973944   -0.5898397   -0.2049491
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed           0.0701822   -0.0529069    0.1932712
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.4808046   -0.7055228   -0.2560864
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.5858576   -0.6150032   -0.5567121
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.3844545   -0.4622752   -0.3066338
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed          -1.2827787   -1.5732722   -0.9922853
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.2102220   -0.4105087   -0.0099353
24 months   ki0047075b-MAL-ED       PERU           optimal              observed           0.0645376   -0.1585227    0.2875978
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.5002853    0.2826268    0.7179438
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.8398917   -1.0550728   -0.6247105
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.5296220   -0.7015843   -0.3576598
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.9495871   -1.2211896   -0.6779846
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.2828860   -1.3177556   -1.2480164
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.2121161   -1.2566992   -1.1675331


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           observed             observed          -0.0483146   -0.2475806    0.1509514
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -0.1502299   -0.4075620    0.1071022
Birth       ki1017093-NIH-Birth     BANGLADESH     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.1165161   -1.2055683   -1.0274639
Birth       kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -0.7508875   -0.7730765   -0.7286985
Birth       kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -0.6898154   -0.7422632   -0.6373675
6 months    ki0047075b-MAL-ED       INDIA          observed             observed          -0.7220008   -0.8576809   -0.5863207
6 months    ki0047075b-MAL-ED       NEPAL          observed             observed           0.1277734   -0.0649431    0.3204900
6 months    ki0047075b-MAL-ED       PERU           observed             observed           0.9819369    0.7674415    1.1964324
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed           0.5429020    0.3813518    0.7044523
6 months    ki1017093-NIH-Birth     BANGLADESH     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093c-NIH-Crypto   BANGLADESH     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL          observed             observed          -0.6018803   -0.6892284   -0.5145323
6 months    kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -0.5932301   -0.6127836   -0.5736767
6 months    kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -0.3895527   -0.4270314   -0.3520739
24 months   ki0047075b-MAL-ED       INDIA          observed             observed          -0.9588679   -1.0774868   -0.8402491
24 months   ki0047075b-MAL-ED       NEPAL          observed             observed          -0.2730469   -0.4358169   -0.1102769
24 months   ki0047075b-MAL-ED       PERU           observed             observed           0.0982009   -0.0794754    0.2758773
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed           0.4080227    0.2828348    0.5332106
24 months   ki1017093-NIH-Birth     BANGLADESH     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.1304997   -1.2205265   -1.0404728
24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -1.2988352   -1.3224626   -1.2752078
24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.2243590   -1.2566569   -1.1920612


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           optimal              observed          -0.3056415   -0.5265212   -0.0847618
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.2836693   -0.1053202    0.6726587
Birth       ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.1689246   -0.4952319    0.1573827
Birth       ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed           0.0621944   -0.0864974    0.2108861
Birth       ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.2987894   -0.5452350   -0.0523437
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0442512   -0.0666840   -0.0218184
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0020024   -0.1521918    0.1481870
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed           0.1967799   -0.1980856    0.5916455
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed           0.1839328   -0.5402848    0.9081505
6 months    ki0047075b-MAL-ED       PERU           optimal              observed          -0.1591341   -0.4646429    0.1463748
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.0815639   -0.2783454    0.4414733
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.0500094   -0.2267214    0.1267026
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.0404199   -0.1336237    0.0527838
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.1210758   -0.3349978    0.0928463
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0073725   -0.0279849    0.0132399
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0050982   -0.0733300    0.0631336
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed           0.3239108    0.0504070    0.5974146
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.0628249   -0.1577309    0.0320812
24 months   ki0047075b-MAL-ED       PERU           optimal              observed           0.0336634   -0.1872256    0.2545524
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.0922627   -0.2658882    0.0813629
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.0716874   -0.2705752    0.1272005
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.0807282   -0.2265482    0.0650919
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.1809126   -0.4320266    0.0702014
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0159491   -0.0408158    0.0089175
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0122429   -0.0435792    0.0190934
