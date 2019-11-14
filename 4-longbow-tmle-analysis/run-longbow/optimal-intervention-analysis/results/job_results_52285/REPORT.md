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
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               8512   16994
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      5660   16994
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2822   16994
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
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure               8386   16733
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      5578   16733
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2769   16733
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
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3843    8153
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2744    8153
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1566    8153
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
![](/tmp/236c8a39-de35-4a20-9fa0-ffe9fedcd7e7/8aabb3c4-d82b-4bc7-8ba3-658a739be161/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           optimal              observed          -1.1997483   -1.4904256   -0.9090710
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.0859561   -0.7723171    0.6004049
Birth       ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.4525211   -0.7053991   -0.1996430
Birth       ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.8691486   -0.9617724   -0.7765247
Birth       ki1113344-GMS-Nepal     NEPAL          optimal              observed          -1.0279648   -1.1230772   -0.9328524
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.1569684   -1.2012549   -1.1126818
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.4943743   -1.5792117   -1.4095369
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed          -0.6677943   -0.9864704   -0.3491182
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.6929799   -0.8738795   -0.5120802
6 months    ki0047075b-MAL-ED       PERU           optimal              observed          -1.1179546   -1.5098937   -0.7260155
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.7676319   -1.3354067   -0.1998571
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -1.2212565   -1.5125334   -0.9299796
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -1.1502317   -1.2435600   -1.0569034
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed          -1.4048596   -1.5280848   -1.2816344
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.3312202   -1.3644985   -1.2979419
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.3065709   -1.3949617   -1.2181802
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed          -1.2413568   -1.6617804   -0.8209331
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed          -1.6645754   -1.8341385   -1.4950124
24 months   ki0047075b-MAL-ED       PERU           optimal              observed          -1.5435008   -1.8884998   -1.1985017
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -1.7889550   -2.2077929   -1.3701170
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -1.7268517   -2.0053012   -1.4484022
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -1.3871513   -1.5105767   -1.2637259
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -1.8180698   -1.9221345   -1.7140051
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.9868549   -2.0270183   -1.9466915
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.7641130   -1.8444635   -1.6837624


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           observed             observed          -0.9490110   -1.1400314   -0.7579906
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -0.5503409   -0.7616444   -0.3390374
Birth       ki1017093-NIH-Birth     BANGLADESH     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.0791964   -1.1604792   -0.9979137
Birth       kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -1.1360574   -1.1678848   -1.1042300
Birth       kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.5248719   -1.5743851   -1.4753587
6 months    ki0047075b-MAL-ED       INDIA          observed             observed          -1.2015016   -1.3253455   -1.0776576
6 months    ki0047075b-MAL-ED       NEPAL          observed             observed          -0.6253125   -0.7752118   -0.4754132
6 months    ki0047075b-MAL-ED       PERU           observed             observed          -1.3818168   -1.5640383   -1.1995953
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -1.0545833   -1.1910433   -0.9181233
6 months    ki1017093-NIH-Birth     BANGLADESH     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.3421764   -1.4201083   -1.2642445
6 months    kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -1.3356272   -1.3587266   -1.3125278
6 months    kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.3446891   -1.3822219   -1.3071564
24 months   ki0047075b-MAL-ED       INDIA          observed             observed          -1.8854009   -2.0150978   -1.7557041
24 months   ki0047075b-MAL-ED       NEPAL          observed             observed          -1.4168359   -1.5779846   -1.2556873
24 months   ki0047075b-MAL-ED       PERU           observed             observed          -1.7813084   -1.9560358   -1.6065810
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -1.6374342   -1.7752443   -1.4996241
24 months   ki1017093-NIH-Birth     BANGLADESH     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.8758368   -1.9623349   -1.7893388
24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -2.0156127   -2.0434367   -1.9877886
24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.7801485   -1.8158427   -1.7444543


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           optimal              observed           0.2507373   -0.0210633    0.5225380
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.4643848   -1.1215514    0.1927817
Birth       ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.4784987   -0.7163975   -0.2405998
Birth       ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.0403460   -0.1069045    0.0262126
Birth       ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.0512316   -0.1075903    0.0051271
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed           0.0209109   -0.0109964    0.0528182
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0304976   -0.0951697    0.0341745
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed          -0.5337072   -0.8695325   -0.1978820
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed           0.0676674   -0.0708175    0.2061522
6 months    ki0047075b-MAL-ED       PERU           optimal              observed          -0.2638622   -0.5976361    0.0699118
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.2869514   -0.8259561    0.2520533
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.1861256   -0.4527966    0.0805455
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.0484466   -0.1086138    0.0117206
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed           0.0626832   -0.0397384    0.1651047
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0044070   -0.0295860    0.0207720
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0381182   -0.1212267    0.0449903
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed          -0.6440442   -1.0749992   -0.2130892
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed           0.2477395    0.0906476    0.4048314
24 months   ki0047075b-MAL-ED       PERU           optimal              observed          -0.2378076   -0.5434597    0.0678444
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.1515207   -0.2309689    0.5340104
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.4922062   -0.7463882   -0.2380242
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.0541132   -0.1401835    0.0319570
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.0577670   -0.1167298    0.0011957
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0287577   -0.0578256    0.0003101
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0160355   -0.0882854    0.0562144
