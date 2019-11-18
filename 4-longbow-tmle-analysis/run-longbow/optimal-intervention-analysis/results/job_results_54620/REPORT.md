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
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                144     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure               24     172
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0      28
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         4      28
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure               24      28
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                 34      37
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1      37
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                2      37
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                 10      14
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                3      14
Birth       ki0047075b-MAL-ED       PERU           Food Secure                 24      91
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure        23      91
Birth       ki0047075b-MAL-ED       PERU           Food Insecure               44      91
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 45      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               34      88
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                 90     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       478     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure               40     608
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                439     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       209     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     732
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                477     672
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       106     672
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure               89     672
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               6951   14364
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      4877   14364
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2536   14364
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1433    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1018    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              359    2810
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
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure               8415   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      5602   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2774   16791
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2442    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1729    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              622    4793
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
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       328     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33     429
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                334     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               56     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                342     478
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67     478
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               69     478
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3875    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2761    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1578    8214
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2399    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1705    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              609    4713


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
![](/tmp/d12b50b5-de11-4a3f-a007-cfdbc7f60a1d/23d7cbc5-fa5e-4c84-be51-05e26b10addb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           optimal              observed          -0.9696081   -1.3360509   -0.6031653
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.1711804   -0.8906064    0.5482455
Birth       ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.7414717   -0.9509443   -0.5319990
Birth       ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.8933691   -1.0084310   -0.7783071
Birth       ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.9986113   -1.1005409   -0.8966818
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.5066321   -1.5401184   -1.4731459
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.4947721   -1.5811769   -1.4083674
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed          -0.6467388   -0.9495926   -0.3438851
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.6097540   -0.7977605   -0.4217476
6 months    ki0047075b-MAL-ED       PERU           optimal              observed          -1.2537350   -1.6583912   -0.8490788
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.8189788   -1.3951162   -0.2428414
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -1.1590353   -1.4151466   -0.9029240
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -1.1537950   -1.2458781   -1.0617119
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed          -1.4344811   -1.5612280   -1.3077342
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.2452898   -1.2754886   -1.2150911
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.3064281   -1.3966543   -1.2162019
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed          -1.2685219   -1.7132861   -0.8237576
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed          -1.5661339   -1.7765647   -1.3557030
24 months   ki0047075b-MAL-ED       PERU           optimal              observed          -1.8868168   -2.1809634   -1.5926701
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -1.7340527   -2.1850285   -1.2830768
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -1.6259012   -1.8995456   -1.3522568
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -1.5065296   -1.6491360   -1.3639232
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -1.8328475   -1.9410977   -1.7245973
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.9384731   -1.9776256   -1.8993206
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.7442164   -1.8319345   -1.6564983


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           observed             observed          -0.9490110   -1.1400314   -0.7579906
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -0.5503409   -0.7616444   -0.3390374
Birth       ki1017093-NIH-Birth     BANGLADESH     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.0791964   -1.1604792   -0.9979137
Birth       kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -1.5375132   -1.5596692   -1.5153573
Birth       kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.5248719   -1.5743851   -1.4753587
6 months    ki0047075b-MAL-ED       INDIA          observed             observed          -1.2019969   -1.3256948   -1.0782989
6 months    ki0047075b-MAL-ED       NEPAL          observed             observed          -0.6262760   -0.7758267   -0.4767254
6 months    ki0047075b-MAL-ED       PERU           observed             observed          -1.3783784   -1.5611768   -1.1955799
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -1.0539254   -1.1902766   -0.9175743
6 months    ki1017093-NIH-Birth     BANGLADESH     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.3421764   -1.4201083   -1.2642445
6 months    kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -1.3131326   -1.3362851   -1.2899801
6 months    kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.3446891   -1.3822219   -1.3071564
24 months   ki0047075b-MAL-ED       INDIA          observed             observed          -1.8868396   -2.0164954   -1.7571839
24 months   ki0047075b-MAL-ED       NEPAL          observed             observed          -1.4092187   -1.5701249   -1.2483126
24 months   ki0047075b-MAL-ED       PERU           observed             observed          -1.7783956   -1.9536701   -1.6031212
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -1.6331323   -1.7704624   -1.4958022
24 months   ki1017093-NIH-Birth     BANGLADESH     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.8758368   -1.9623349   -1.7893388
24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -2.0099416   -2.0377955   -1.9820876
24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.7801485   -1.8158427   -1.7444543


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           optimal              observed           0.0205971   -0.2930195    0.3342137
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.3791605   -1.0672777    0.3089567
Birth       ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.1895481   -0.3877479    0.0086517
Birth       ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.0161255   -0.1110870    0.0788360
Birth       ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.0805851   -0.1488269   -0.0123433
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0308811   -0.0572137   -0.0045485
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0300998   -0.0964765    0.0362769
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed          -0.5552580   -0.8764618   -0.2340542
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.0165220   -0.1564258    0.1233818
6 months    ki0047075b-MAL-ED       PERU           optimal              observed          -0.1246433   -0.4698615    0.2205749
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.2349466   -0.7759808    0.3060875
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.2483468   -0.4827230   -0.0139705
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.0448833   -0.1052504    0.0154838
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed           0.0923047   -0.0134417    0.1980511
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0678428   -0.0870509   -0.0486347
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0382610   -0.1231707    0.0466486
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed          -0.6183178   -1.0726087   -0.1640268
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed           0.1569151   -0.0255732    0.3394034
24 months   ki0047075b-MAL-ED       PERU           optimal              observed           0.1084211   -0.1680733    0.3849155
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.1009203   -0.3062631    0.5081038
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.5931567   -0.8430251   -0.3432883
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed           0.0652650   -0.0464429    0.1769730
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.0429893   -0.1125068    0.0265282
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0714685   -0.0983157   -0.0446212
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0359321   -0.1174260    0.0455618
