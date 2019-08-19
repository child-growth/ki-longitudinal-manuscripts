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
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                151     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         3     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure               24     178
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0     102
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     102
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure               91     102
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                151     167
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         2     167
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure               14     167
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                 75      96
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         9      96
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure               12      96
Birth       ki0047075b-MAL-ED       PERU           Food Secure                 26     105
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure        24     105
Birth       ki0047075b-MAL-ED       PERU           Food Insecure               55     105
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                106     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               70     193
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                  3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure        21      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                4      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                 14      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         6      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                3      23
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               4974   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      3502   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1813   10289
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                334     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       250     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure               96     680
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
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 80     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       416     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               40     536
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                427     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                395     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        76     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               74     545
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
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                348     487
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        69     487
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               70     487
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
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/201c72a7-33ef-4fd7-adb9-cfcdbf81b6c8/0ac292c4-402d-4ea5-b86e-01f0c2b9e6fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          optimal              observed          -1.0288667   -1.5832093   -0.4745241
Birth       ki0047075b-MAL-ED       PERU           optimal              observed           0.0581260   -0.1826918    0.2989438
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.0964205   -0.4089810    0.2161400
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.6426878   -0.6768007   -0.6085750
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.2060474   -0.4667304    0.0546357
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed          -1.0945751   -1.3421335   -0.8470166
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.2025655   -0.8496375    0.4445065
6 months    ki0047075b-MAL-ED       PERU           optimal              observed           0.9939724    0.5917037    1.3962411
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.3660482    0.0546528    0.6774435
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.4081437   -0.6122067   -0.2040806
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed           0.1315783    0.0016063    0.2615503
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.4682737   -0.6932917   -0.2432556
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.5702650   -0.5982616   -0.5422683
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.3921571   -0.4880671   -0.2962470
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed          -1.3721930   -1.6392886   -1.1050974
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.2112458   -0.4083919   -0.0140997
24 months   ki0047075b-MAL-ED       PERU           optimal              observed           0.1200975   -0.1177799    0.3579750
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.5493325    0.3339324    0.7647326
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.8029586   -1.0449274   -0.5609899
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.6324859   -0.7939163   -0.4710556
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -1.0922517   -1.3573724   -0.8271309
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.2807718   -1.3159102   -1.2456334
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.2122963   -1.2567975   -1.1677952


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          observed             observed          -0.9503125   -1.1412124   -0.7594126
Birth       ki0047075b-MAL-ED       PERU           observed             observed          -0.0395238   -0.2249300    0.1458824
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed           0.0036788   -0.1626160    0.1699735
Birth       kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -0.6992565   -0.7232731   -0.6752399
Birth       kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -0.3680294   -0.4489214   -0.2871374
6 months    ki0047075b-MAL-ED       INDIA          observed             observed          -0.7155110   -0.8495147   -0.5815073
6 months    ki0047075b-MAL-ED       NEPAL          observed             observed           0.1289063   -0.0638567    0.3216692
6 months    ki0047075b-MAL-ED       PERU           observed             observed           0.9790991    0.7644567    1.1937415
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed           0.5422442    0.3806254    0.7038629
6 months    ki1017093-NIH-Birth     BANGLADESH     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093c-NIH-Crypto   BANGLADESH     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL          observed             observed          -0.6028654   -0.6902793   -0.5154516
6 months    kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -0.5932301   -0.6127836   -0.5736767
6 months    kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -0.3895527   -0.4270314   -0.3520739
24 months   ki0047075b-MAL-ED       INDIA          observed             observed          -0.9595519   -1.0781202   -0.8409836
24 months   ki0047075b-MAL-ED       NEPAL          observed             observed          -0.2757812   -0.4379560   -0.1136065
24 months   ki0047075b-MAL-ED       PERU           observed             observed           0.0979907   -0.0798724    0.2758537
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed           0.4264693    0.3032402    0.5496984
24 months   ki1017093-NIH-Birth     BANGLADESH     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.1257803   -1.2146168   -1.0369438
24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -1.2988352   -1.3224626   -1.2752078
24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.2243590   -1.2566569   -1.1920612


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          optimal              observed           0.0785542   -0.4590636    0.6161719
Birth       ki0047075b-MAL-ED       PERU           optimal              observed          -0.0976499   -0.3082712    0.1129715
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.1000993   -0.2013328    0.4015313
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0565687   -0.0804163   -0.0327211
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.1619821   -0.4022911    0.0783270
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed           0.3790641    0.1577640    0.6003641
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed           0.3314717   -0.2734153    0.9363588
6 months    ki0047075b-MAL-ED       PERU           optimal              observed          -0.0148733   -0.3457399    0.3159933
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.1761960   -0.0909855    0.4433775
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.0307665   -0.2188600    0.1573271
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.1018161   -0.2015511   -0.0020811
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.1345918   -0.3492600    0.0800765
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0229651   -0.0424494   -0.0034809
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed           0.0026044   -0.0825146    0.0877233
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed           0.4126411    0.1525853    0.6726970
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.0645354   -0.1661102    0.0370394
24 months   ki0047075b-MAL-ED       PERU           optimal              observed          -0.0221069   -0.2703554    0.2261416
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.1228632   -0.2973603    0.0516340
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.1086204   -0.3274142    0.1101734
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed           0.0221357   -0.1129109    0.1571824
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.0335286   -0.2772060    0.2101487
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0180634   -0.0433427    0.0072160
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0120627   -0.0432790    0.0191536
