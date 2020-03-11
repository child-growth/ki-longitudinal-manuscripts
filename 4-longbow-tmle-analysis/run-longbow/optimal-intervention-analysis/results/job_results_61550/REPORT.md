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

agecat      studyid      country        hfoodsec                n_cell       n
----------  -----------  -------------  ---------------------  -------  ------
Birth       GMS-Nepal    NEPAL          Food Secure                477     672
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure       106     672
Birth       GMS-Nepal    NEPAL          Food Insecure               89     672
Birth       JiVitA-3     BANGLADESH     Food Secure               6951   14364
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure      4877   14364
Birth       JiVitA-3     BANGLADESH     Food Insecure             2536   14364
Birth       JiVitA-4     BANGLADESH     Food Secure               1433    2810
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure      1018    2810
Birth       JiVitA-4     BANGLADESH     Food Insecure              359    2810
Birth       MAL-ED       BANGLADESH     Food Secure                144     172
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure         4     172
Birth       MAL-ED       BANGLADESH     Food Insecure               24     172
Birth       MAL-ED       BRAZIL         Food Secure                  0      28
Birth       MAL-ED       BRAZIL         Mildly Food Insecure         4      28
Birth       MAL-ED       BRAZIL         Food Insecure               24      28
Birth       MAL-ED       INDIA          Food Secure                 34      37
Birth       MAL-ED       INDIA          Mildly Food Insecure         1      37
Birth       MAL-ED       INDIA          Food Insecure                2      37
Birth       MAL-ED       NEPAL          Food Secure                 10      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure         1      14
Birth       MAL-ED       NEPAL          Food Insecure                3      14
Birth       MAL-ED       PERU           Food Secure                 24      91
Birth       MAL-ED       PERU           Mildly Food Insecure        23      91
Birth       MAL-ED       PERU           Food Insecure               44      91
Birth       MAL-ED       SOUTH AFRICA   Food Secure                 45      88
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      88
Birth       MAL-ED       SOUTH AFRICA   Food Insecure               34      88
Birth       NIH-Birth    BANGLADESH     Food Secure                 90     608
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure       478     608
Birth       NIH-Birth    BANGLADESH     Food Insecure               40     608
Birth       NIH-Crypto   BANGLADESH     Food Secure                439     732
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure       209     732
Birth       NIH-Crypto   BANGLADESH     Food Insecure               84     732
6 months    GMS-Nepal    NEPAL          Food Secure                396     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure        76     546
6 months    GMS-Nepal    NEPAL          Food Insecure               74     546
6 months    JiVitA-3     BANGLADESH     Food Secure               8415   16791
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure      5602   16791
6 months    JiVitA-3     BANGLADESH     Food Insecure             2774   16791
6 months    JiVitA-4     BANGLADESH     Food Secure               2442    4793
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure      1729    4793
6 months    JiVitA-4     BANGLADESH     Food Insecure              622    4793
6 months    MAL-ED       BANGLADESH     Food Secure                160     193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure         4     193
6 months    MAL-ED       BANGLADESH     Food Insecure               29     193
6 months    MAL-ED       BRAZIL         Food Secure                  3     129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure        11     129
6 months    MAL-ED       BRAZIL         Food Insecure              115     129
6 months    MAL-ED       INDIA          Food Secure                190     212
6 months    MAL-ED       INDIA          Mildly Food Insecure         5     212
6 months    MAL-ED       INDIA          Food Insecure               17     212
6 months    MAL-ED       NEPAL          Food Secure                 94     128
6 months    MAL-ED       NEPAL          Mildly Food Insecure        15     128
6 months    MAL-ED       NEPAL          Food Insecure               19     128
6 months    MAL-ED       PERU           Food Secure                 27     111
6 months    MAL-ED       PERU           Mildly Food Insecure        28     111
6 months    MAL-ED       PERU           Food Insecure               56     111
6 months    MAL-ED       SOUTH AFRICA   Food Secure                129     228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure               81     228
6 months    NIH-Birth    BANGLADESH     Food Secure                 80     537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure       417     537
6 months    NIH-Birth    BANGLADESH     Food Insecure               40     537
6 months    NIH-Crypto   BANGLADESH     Food Secure                427     715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715
6 months    NIH-Crypto   BANGLADESH     Food Insecure               84     715
24 months   GMS-Nepal    NEPAL          Food Secure                342     478
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67     478
24 months   GMS-Nepal    NEPAL          Food Insecure               69     478
24 months   JiVitA-3     BANGLADESH     Food Secure               3875    8214
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure      2761    8214
24 months   JiVitA-3     BANGLADESH     Food Insecure             1578    8214
24 months   JiVitA-4     BANGLADESH     Food Secure               2399    4713
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1705    4713
24 months   JiVitA-4     BANGLADESH     Food Insecure              609    4713
24 months   MAL-ED       BANGLADESH     Food Secure                161     194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     194
24 months   MAL-ED       BANGLADESH     Food Insecure               29     194
24 months   MAL-ED       BRAZIL         Food Secure                  3     129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure        11     129
24 months   MAL-ED       BRAZIL         Food Insecure              115     129
24 months   MAL-ED       INDIA          Food Secure                190     212
24 months   MAL-ED       INDIA          Mildly Food Insecure         5     212
24 months   MAL-ED       INDIA          Food Insecure               17     212
24 months   MAL-ED       NEPAL          Food Secure                 94     128
24 months   MAL-ED       NEPAL          Mildly Food Insecure        15     128
24 months   MAL-ED       NEPAL          Food Insecure               19     128
24 months   MAL-ED       PERU           Food Secure                 26     107
24 months   MAL-ED       PERU           Mildly Food Insecure        27     107
24 months   MAL-ED       PERU           Food Insecure               54     107
24 months   MAL-ED       SOUTH AFRICA   Food Secure                129     228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure               81     228
24 months   NIH-Birth    BANGLADESH     Food Secure                 68     429
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       328     429
24 months   NIH-Birth    BANGLADESH     Food Insecure               33     429
24 months   NIH-Crypto   BANGLADESH     Food Secure                334     514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514
24 months   NIH-Crypto   BANGLADESH     Food Insecure               56     514


The following strata were considered:

* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/84b7372d-980d-440c-9864-02edeb93404a/ec44b7a8-241d-4ccf-84f1-0fdd1e5ce39d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          optimal              observed          -1.0244831   -1.1210434   -0.9279228
Birth       JiVitA-3     BANGLADESH     optimal              observed          -1.5293736   -1.5718822   -1.4868650
Birth       JiVitA-4     BANGLADESH     optimal              observed          -1.5706446   -1.6708294   -1.4704599
Birth       MAL-ED       PERU           optimal              observed          -1.1519720   -1.5462242   -0.7577197
Birth       MAL-ED       SOUTH AFRICA   optimal              observed          -0.1404073   -0.8922192    0.6114045
Birth       NIH-Birth    BANGLADESH     optimal              observed          -0.4914304   -0.8886552   -0.0942056
Birth       NIH-Crypto   BANGLADESH     optimal              observed          -0.8870332   -0.9877173   -0.7863491
6 months    GMS-Nepal    NEPAL          optimal              observed          -1.3527388   -1.4537709   -1.2517066
6 months    JiVitA-3     BANGLADESH     optimal              observed          -1.3173203   -1.3507576   -1.2838829
6 months    JiVitA-4     BANGLADESH     optimal              observed          -1.3248090   -1.4105150   -1.2391031
6 months    MAL-ED       INDIA          optimal              observed          -0.6378582   -0.9399057   -0.3358107
6 months    MAL-ED       NEPAL          optimal              observed          -0.5168153   -0.6765613   -0.3570694
6 months    MAL-ED       PERU           optimal              observed          -1.1005919   -1.4912745   -0.7099093
6 months    MAL-ED       SOUTH AFRICA   optimal              observed          -0.7844561   -1.4056460   -0.1632662
6 months    NIH-Birth    BANGLADESH     optimal              observed          -1.3027283   -1.5595474   -1.0459093
6 months    NIH-Crypto   BANGLADESH     optimal              observed          -1.1535187   -1.2459995   -1.0610380
24 months   GMS-Nepal    NEPAL          optimal              observed          -1.8125780   -1.9196060   -1.7055500
24 months   JiVitA-3     BANGLADESH     optimal              observed          -1.9810443   -2.0218649   -1.9402238
24 months   JiVitA-4     BANGLADESH     optimal              observed          -1.7088095   -1.7829784   -1.6346406
24 months   MAL-ED       INDIA          optimal              observed          -1.2249168   -1.6458165   -0.8040170
24 months   MAL-ED       NEPAL          optimal              observed          -1.5219404   -1.7849192   -1.2589615
24 months   MAL-ED       PERU           optimal              observed          -1.6489285   -2.0057164   -1.2921407
24 months   MAL-ED       SOUTH AFRICA   optimal              observed          -1.7494206   -2.1689036   -1.3299376
24 months   NIH-Birth    BANGLADESH     optimal              observed          -1.7127032   -2.0002865   -1.4251200
24 months   NIH-Crypto   BANGLADESH     optimal              observed          -1.4561726   -1.5884279   -1.3239173


### Parameter: E(Y)


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          observed             observed          -1.0791964   -1.1604792   -0.9979137
Birth       JiVitA-3     BANGLADESH     observed             observed          -1.5375132   -1.5596692   -1.5153573
Birth       JiVitA-4     BANGLADESH     observed             observed          -1.5248719   -1.5743851   -1.4753587
Birth       MAL-ED       PERU           observed             observed          -0.9490110   -1.1400314   -0.7579906
Birth       MAL-ED       SOUTH AFRICA   observed             observed          -0.5503409   -0.7616444   -0.3390374
Birth       NIH-Birth    BANGLADESH     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto   BANGLADESH     observed             observed          -0.9094945   -0.9809370   -0.8380521
6 months    GMS-Nepal    NEPAL          observed             observed          -1.3421764   -1.4201083   -1.2642445
6 months    JiVitA-3     BANGLADESH     observed             observed          -1.3131326   -1.3362851   -1.2899801
6 months    JiVitA-4     BANGLADESH     observed             observed          -1.3446891   -1.3822219   -1.3071564
6 months    MAL-ED       INDIA          observed             observed          -1.2019969   -1.3256948   -1.0782989
6 months    MAL-ED       NEPAL          observed             observed          -0.6262760   -0.7758267   -0.4767254
6 months    MAL-ED       PERU           observed             observed          -1.3783784   -1.5611768   -1.1955799
6 months    MAL-ED       SOUTH AFRICA   observed             observed          -1.0539254   -1.1902766   -0.9175743
6 months    NIH-Birth    BANGLADESH     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto   BANGLADESH     observed             observed          -1.1986783   -1.2700937   -1.1272630
24 months   GMS-Nepal    NEPAL          observed             observed          -1.8758368   -1.9623349   -1.7893388
24 months   JiVitA-3     BANGLADESH     observed             observed          -2.0099416   -2.0377955   -1.9820876
24 months   JiVitA-4     BANGLADESH     observed             observed          -1.7801485   -1.8158427   -1.7444543
24 months   MAL-ED       INDIA          observed             observed          -1.8868396   -2.0164954   -1.7571839
24 months   MAL-ED       NEPAL          observed             observed          -1.4092187   -1.5701249   -1.2483126
24 months   MAL-ED       PERU           observed             observed          -1.7783956   -1.9536701   -1.6031212
24 months   MAL-ED       SOUTH AFRICA   observed             observed          -1.6331323   -1.7704624   -1.4958022
24 months   NIH-Birth    BANGLADESH     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto   BANGLADESH     observed             observed          -1.4412646   -1.5249156   -1.3576135


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          optimal              observed          -0.0547133   -0.1120236    0.0025970
Birth       JiVitA-3     BANGLADESH     optimal              observed          -0.0081396   -0.0437115    0.0274323
Birth       JiVitA-4     BANGLADESH     optimal              observed           0.0457728   -0.0393341    0.1308796
Birth       MAL-ED       PERU           optimal              observed           0.2029610   -0.1326336    0.5385556
Birth       MAL-ED       SOUTH AFRICA   optimal              observed          -0.4099336   -1.1294462    0.3095791
Birth       NIH-Birth    BANGLADESH     optimal              observed          -0.4395893   -0.8177632   -0.0614155
Birth       NIH-Crypto   BANGLADESH     optimal              observed          -0.0224613   -0.0941981    0.0492755
6 months    GMS-Nepal    NEPAL          optimal              observed           0.0105623   -0.0643866    0.0855113
6 months    JiVitA-3     BANGLADESH     optimal              observed           0.0041876   -0.0204802    0.0288555
6 months    JiVitA-4     BANGLADESH     optimal              observed          -0.0198801   -0.1003320    0.0605718
6 months    MAL-ED       INDIA          optimal              observed          -0.5641386   -0.8844645   -0.2438127
6 months    MAL-ED       NEPAL          optimal              observed          -0.1094607   -0.2123796   -0.0065418
6 months    MAL-ED       PERU           optimal              observed          -0.2777865   -0.6115031    0.0559301
6 months    MAL-ED       SOUTH AFRICA   optimal              observed          -0.2694693   -0.8606885    0.3217498
6 months    NIH-Birth    BANGLADESH     optimal              observed          -0.1046537   -0.3402826    0.1309751
6 months    NIH-Crypto   BANGLADESH     optimal              observed          -0.0451596   -0.1047278    0.0144087
24 months   GMS-Nepal    NEPAL          optimal              observed          -0.0632588   -0.1251667   -0.0013509
24 months   JiVitA-3     BANGLADESH     optimal              observed          -0.0288972   -0.0584101    0.0006156
24 months   JiVitA-4     BANGLADESH     optimal              observed          -0.0713390   -0.1362365   -0.0064416
24 months   MAL-ED       INDIA          optimal              observed          -0.6619228   -1.0932177   -0.2306280
24 months   MAL-ED       NEPAL          optimal              observed           0.1127216   -0.1242918    0.3497350
24 months   MAL-ED       PERU           optimal              observed          -0.1294671   -0.4463243    0.1873901
24 months   MAL-ED       SOUTH AFRICA   optimal              observed           0.1162883   -0.2604438    0.4930204
24 months   NIH-Birth    BANGLADESH     optimal              observed          -0.5063546   -0.7705209   -0.2421884
24 months   NIH-Crypto   BANGLADESH     optimal              observed           0.0149080   -0.0830273    0.1128433
