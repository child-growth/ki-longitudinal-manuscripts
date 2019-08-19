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
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                157     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure               27     188
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0     105
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure               94     105
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                154     170
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         2     170
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure               14     170
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                 76      98
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         9      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure               13      98
Birth       ki0047075b-MAL-ED       PERU           Food Secure                 27     107
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure        25     107
Birth       ki0047075b-MAL-ED       PERU           Food Insecure               55     107
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                107     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               71     195
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                  3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure        21      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                4      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                 14      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         9      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                4      27
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               5997   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      4335   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2273   12605
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                396     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       309     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              114     819
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
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                395     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        76     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               74     545
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
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                349     488
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        69     488
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               70     488
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
![](/tmp/1e506d4c-84b8-45ab-8938-c921014fddd8/c222a06a-54d2-473e-aec8-0d6846a325fd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.9078115   -1.1180688   -0.6975541
Birth       ki0047075b-MAL-ED       PERU           optimal              observed          -0.8426299   -1.1517101   -0.5335497
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.1435643   -0.6007226    0.3135940
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.4934006   -1.5254621   -1.4613392
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.5866002   -1.7422365   -1.4309639
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed          -0.6318283   -0.9395167   -0.3241398
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.6124510   -0.8216989   -0.4032031
6 months    ki0047075b-MAL-ED       PERU           optimal              observed          -1.3377807   -1.7300361   -0.9455254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.8335794   -1.4029246   -0.2642342
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -1.1643593   -1.4236753   -0.9050433
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -1.2616777   -1.3816230   -1.1417323
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed          -1.0552555   -1.1856855   -0.9248254
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.2416211   -1.2708480   -1.2123943
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.3038967   -1.3939922   -1.2138011
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed          -1.2244218   -1.6512057   -0.7976379
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed          -1.3699036   -1.6457302   -1.0940769
24 months   ki0047075b-MAL-ED       PERU           optimal              observed          -1.7193439   -2.0548013   -1.3838865
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -1.5512466   -2.0180155   -1.0844777
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -1.5423497   -1.8248923   -1.2598071
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -1.4363369   -1.5555332   -1.3171406
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -1.8059671   -1.9081419   -1.7037924
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.9369767   -1.9765822   -1.8973713
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.7556666   -1.8421034   -1.6692297


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          observed             observed          -0.6804082   -0.8755126   -0.4853037
Birth       ki0047075b-MAL-ED       PERU           observed             observed          -0.9387850   -1.1159974   -0.7615727
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -0.6647692   -0.8062103   -0.5233282
Birth       kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -1.5280452   -1.5507110   -1.5053794
Birth       kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.5000733   -1.5844715   -1.4156751
6 months    ki0047075b-MAL-ED       INDIA          observed             observed          -1.2107862   -1.3345960   -1.0869764
6 months    ki0047075b-MAL-ED       NEPAL          observed             observed          -0.6253125   -0.7752118   -0.4754132
6 months    ki0047075b-MAL-ED       PERU           observed             observed          -1.3792042   -1.5615886   -1.1968198
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -1.0539803   -1.1904887   -0.9174718
6 months    ki1017093-NIH-Birth     BANGLADESH     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.3236269   -1.4015413   -1.2457125
6 months    kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -1.3131326   -1.3362851   -1.2899801
6 months    kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.3446891   -1.3822219   -1.3071564
24 months   ki0047075b-MAL-ED       INDIA          observed             observed          -1.8476415   -1.9786652   -1.7166178
24 months   ki0047075b-MAL-ED       NEPAL          observed             observed          -1.3776172   -1.5402475   -1.2149868
24 months   ki0047075b-MAL-ED       PERU           observed             observed          -1.7760748   -1.9504595   -1.6016900
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -1.6108333   -1.7488019   -1.4728648
24 months   ki1017093-NIH-Birth     BANGLADESH     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.8659973   -1.9508504   -1.7811442
24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -2.0089421   -2.0368231   -1.9810610
24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.7576915   -1.7933270   -1.7220560


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          optimal              observed           0.2274033    0.0217625    0.4330441
Birth       ki0047075b-MAL-ED       PERU           optimal              observed          -0.0961551   -0.3614607    0.1691505
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.5212049   -0.9638122   -0.0785977
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0346446   -0.0578340   -0.0114552
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed           0.0865269   -0.0364673    0.2095211
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed          -0.5789579   -0.9044172   -0.2534986
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.0128615   -0.1752348    0.1495118
6 months    ki0047075b-MAL-ED       PERU           optimal              observed          -0.0414235   -0.3682728    0.2854259
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.2204009   -0.7613191    0.3205174
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.2430227   -0.4799261   -0.0061193
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed           0.0629993   -0.0362029    0.1622016
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.2683714   -0.3896287   -0.1471141
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0715115   -0.0896304   -0.0533926
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0407924   -0.1258562    0.0442713
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed          -0.6232197   -1.0607582   -0.1856812
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.0077136   -0.2671249    0.2516977
24 months   ki0047075b-MAL-ED       PERU           optimal              observed          -0.0567309   -0.3559184    0.2424567
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.0595867   -0.4876123    0.3684389
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.6384448   -0.8959358   -0.3809539
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed           0.0068038   -0.0835236    0.0971313
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.0600301   -0.1181173   -0.0019430
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0719653   -0.0992241   -0.0447065
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0020249   -0.0809226    0.0768728
