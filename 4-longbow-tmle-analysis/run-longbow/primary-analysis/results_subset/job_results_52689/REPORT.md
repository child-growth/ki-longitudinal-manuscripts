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
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               7326   14320
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      4693   14320
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2301   14320
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
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure               8367   16706
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      5566   16706
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2773   16706
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
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3827    8131
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2736    8131
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1568    8131
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
![](/tmp/5227ed8e-a7f0-4eac-9b67-f14dd0502c10/513c202d-6e4e-4e41-9939-65d599e146bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           optimal              observed          -0.0182738   -0.2773914    0.2408438
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.3761955   -0.9615835    0.2091926
Birth       ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -1.1887678   -1.4991393   -0.8783962
Birth       ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -1.2109503   -1.3824939   -1.0394068
Birth       ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.8411761   -1.0969585   -0.5853937
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.6780886   -0.7072024   -0.6489747
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.7482194   -0.8737220   -0.6227168
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed          -0.9826494   -1.3802447   -0.5850540
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.3786849   -0.9422200    0.1848502
6 months    ki0047075b-MAL-ED       PERU           optimal              observed           0.6858329    0.3835554    0.9881105
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.5401493    0.2573285    0.8229701
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.3694041   -0.5728470   -0.1659611
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed           0.1541268    0.0252487    0.2830049
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.6489728   -0.8469894   -0.4509561
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.5666815   -0.5951988   -0.5381642
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.3966593   -0.4907669   -0.3025518
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed          -1.3663806   -1.5979954   -1.1347659
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.2344421   -0.4430015   -0.0258827
24 months   ki0047075b-MAL-ED       PERU           optimal              observed           0.1031207   -0.1106870    0.3169285
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.5148579    0.2929750    0.7367407
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.8341913   -1.0271454   -0.6412373
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.5403697   -0.7214764   -0.3592630
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -1.0296767   -1.3246740   -0.7346794
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.2826256   -1.3174795   -1.2477717
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.2124147   -1.2569358   -1.1678936


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           observed             observed          -0.0483146   -0.2475806    0.1509514
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -0.1502299   -0.4075620    0.1071022
Birth       ki1017093-NIH-Birth     BANGLADESH     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.1165161   -1.2055683   -1.0274639
Birth       kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -0.7208547   -0.7418118   -0.6998977
Birth       kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -0.6898154   -0.7422632   -0.6373675
6 months    ki0047075b-MAL-ED       INDIA          observed             observed          -0.7227752   -0.8585532   -0.5869972
6 months    ki0047075b-MAL-ED       NEPAL          observed             observed           0.1289063   -0.0638567    0.3216692
6 months    ki0047075b-MAL-ED       PERU           observed             observed           0.9840541    0.7695460    1.1985621
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed           0.5429678    0.3813968    0.7045389
6 months    ki1017093-NIH-Birth     BANGLADESH     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093c-NIH-Crypto   BANGLADESH     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL          observed             observed          -0.6018803   -0.6892284   -0.5145323
6 months    kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -0.5927331   -0.6123184   -0.5731479
6 months    kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -0.3895527   -0.4270314   -0.3520739
24 months   ki0047075b-MAL-ED       INDIA          observed             observed          -0.9595519   -1.0781202   -0.8409836
24 months   ki0047075b-MAL-ED       NEPAL          observed             observed          -0.2757812   -0.4379560   -0.1136065
24 months   ki0047075b-MAL-ED       PERU           observed             observed           0.0990187   -0.0788709    0.2769082
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed           0.4141009    0.2892188    0.5389829
24 months   ki1017093-NIH-Birth     BANGLADESH     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.1304997   -1.2205265   -1.0404728
24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -1.3003702   -1.3240616   -1.2766787
24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.2243590   -1.2566569   -1.1920612


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           optimal              observed          -0.0300408   -0.2728332    0.2127515
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.2259656   -0.2790932    0.7310243
Birth       ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.1611540   -0.4558587    0.1335508
Birth       ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.0332010   -0.1795771    0.1131751
Birth       ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.2753400   -0.5101737   -0.0405064
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0427662   -0.0621803   -0.0233521
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed           0.0584040   -0.0528082    0.1696163
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed           0.2598742   -0.1152073    0.6349557
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed           0.5075911   -0.0207823    1.0359646
6 months    ki0047075b-MAL-ED       PERU           optimal              observed           0.2982211    0.0575910    0.5388512
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.0028185   -0.2276797    0.2333168
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.0779997   -0.2719739    0.1159744
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.1243645   -0.2241203   -0.0246088
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed           0.0470924   -0.1389984    0.2331832
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0260517   -0.0461255   -0.0059778
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed           0.0071067   -0.0745617    0.0887751
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed           0.4068287    0.1803905    0.6332670
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.0413392   -0.1499511    0.0672727
24 months   ki0047075b-MAL-ED       PERU           optimal              observed          -0.0041021   -0.2398884    0.2316843
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.1007570   -0.2778630    0.0763490
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.0773877   -0.2567029    0.1019274
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.0699805   -0.2273645    0.0874035
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.1008229   -0.3755622    0.1739163
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0177446   -0.0433820    0.0078928
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0119443   -0.0432386    0.0193500
