---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
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



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/ac64c172-e436-43fb-bb39-d325ffce6ea2/3415c6f8-cbe7-4527-8f10-7d05573faa3b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ac64c172-e436-43fb-bb39-d325ffce6ea2/3415c6f8-cbe7-4527-8f10-7d05573faa3b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ac64c172-e436-43fb-bb39-d325ffce6ea2/3415c6f8-cbe7-4527-8f10-7d05573faa3b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.5764474   -0.7891541   -0.3637406
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.5644444   -1.0737762   -0.0551126
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -1.3684615   -1.9425417   -0.7943814
Birth       ki0047075b-MAL-ED       PERU           Food Secure            NA                -1.0383178   -1.4236967   -0.6529389
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.9393761   -1.3200487   -0.5587035
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.8918689   -1.1237172   -0.6600206
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.7390075   -0.9366815   -0.5413336
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.3800358   -0.8427863    0.0827147
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.7747110   -1.0057856   -0.5436365
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.4973163   -1.5288865   -1.4657461
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.5358478   -1.5756730   -1.4960225
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.6132628   -1.6684803   -1.5580453
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.4571462   -1.5905718   -1.3237205
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.5574279   -1.6918424   -1.4230134
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.5120421   -1.7082022   -1.3158820
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                -1.2392193   -1.3694179   -1.1090207
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.6360000   -0.9019405   -0.3700595
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -1.0620588   -1.5420342   -0.5820835
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.5095381   -0.6689573   -0.3501189
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.5559316   -0.9958463   -0.1160168
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -1.1293978   -1.6065584   -0.6522371
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                -1.2860064   -1.7202449   -0.8517680
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -1.1303830   -1.5472345   -0.7135314
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                -1.4837531   -1.7218113   -1.2456949
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.0117173   -1.1873417   -0.8360930
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.6749248   -1.2535618   -0.0962878
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.1580205   -1.3922668   -0.9237742
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -1.1848511   -1.4427590   -0.9269431
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -1.4364988   -1.5330817   -1.3399158
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.6940554   -2.1144752   -1.2736357
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -1.1481203   -1.2405205   -1.0557202
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2606604   -1.3947222   -1.1265986
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.3102839   -1.5278175   -1.0927502
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.2850297   -1.3795486   -1.1905109
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -1.3954273   -1.6813705   -1.1094841
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.2868653   -1.5313384   -1.0423923
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.2412546   -1.2703907   -1.2121186
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.3644282   -1.3964787   -1.3323777
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.4754940   -1.5287173   -1.4222708
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.3527220   -1.4046911   -1.3007528
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.3474810   -1.4067580   -1.2882041
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.3043784   -1.3936989   -1.2150579
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -1.8536842   -1.9918894   -1.7154790
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -1.2150000   -1.5912720   -0.8387280
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -1.9661765   -2.4561419   -1.4762110
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -1.2743841   -1.4597346   -1.0890335
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -1.3708056   -1.7865772   -0.9550341
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -1.9733618   -2.4169249   -1.5297988
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -1.8904332   -2.3358879   -1.4449784
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -1.6258408   -1.9999858   -1.2516957
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                -1.8062848   -2.0274234   -1.5851462
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.5118475   -1.6944841   -1.3292109
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -1.5584466   -2.0749483   -1.0419449
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.7072471   -1.9374767   -1.4770175
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -1.5904241   -1.8589242   -1.3219239
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -2.2434955   -2.3514247   -2.1355663
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -2.9769986   -3.4056420   -2.5483552
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -1.3874920   -1.4917516   -1.2832325
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.5067381   -1.6870072   -1.3264691
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.5282594   -1.7778164   -1.2787025
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.8073683   -1.9085519   -1.7061847
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -2.0625174   -2.2979258   -1.8271089
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.9501312   -2.1807673   -1.7194952
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.9351931   -1.9743771   -1.8960092
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -2.0348566   -2.0793770   -1.9903363
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -2.1959918   -2.2551337   -2.1368498
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.7730678   -1.8221650   -1.7239706
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.7484685   -1.8036266   -1.6933103
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.7145746   -1.8015676   -1.6275817


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.6804082   -0.8755126   -0.4853037
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                -0.9387850   -1.1159974   -0.7615727
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.6647692   -0.8062103   -0.5233282
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.5280452   -1.5507110   -1.5053794
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.5000733   -1.5844715   -1.4156751
6 months    ki0047075b-MAL-ED       INDIA          NA                   NA                -1.2107862   -1.3345960   -1.0869764
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.6253125   -0.7752118   -0.4754132
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                -1.3792042   -1.5615886   -1.1968198
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -1.0539803   -1.1904887   -0.9174718
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.3236269   -1.4015413   -1.2457125
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.3131326   -1.3362851   -1.2899801
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.3446891   -1.3822219   -1.3071564
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                -1.8476415   -1.9786652   -1.7166178
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -1.3776172   -1.5402475   -1.2149868
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                -1.7760748   -1.9504595   -1.6016900
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -1.6108333   -1.7488019   -1.4728648
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.8659973   -1.9508504   -1.7811442
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -2.0089421   -2.0368231   -1.9810610
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.7576915   -1.7933270   -1.7220560


### Parameter: ATE


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0120029   -0.5399600    0.5639658
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.7920142   -1.4042332   -0.1797951
Birth       ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0989417   -0.4393951    0.6372784
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.1464489   -0.3027399    0.5956377
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.3589717   -0.1470451    0.8649886
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0357035   -0.3418472    0.2704402
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0385314   -0.0878464    0.0107835
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1159465   -0.1784483   -0.0534447
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.1002817   -0.2887852    0.0882217
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0548959   -0.2939587    0.1841669
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.6032193    0.3071180    0.8993206
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.1771605   -0.3201603    0.6744813
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0463934   -0.5145915    0.4218046
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.6198597   -1.1236159   -0.1161034
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.1556235   -0.4579561    0.7692030
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.1977466   -0.6937194    0.2982262
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.3367925   -0.2683821    0.9419672
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1463031   -0.4414678    0.1488615
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.2516477   -0.5276787    0.0243833
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.5092044   -1.0028381   -0.0155707
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1125401   -0.2749528    0.0498727
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1621635   -0.3982160    0.0738889
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.1103975   -0.4122190    0.1914240
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0018356   -0.2647543    0.2610831
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.1231736   -0.1608699   -0.0854772
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.2342394   -0.2919662   -0.1765126
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0052409   -0.0705030    0.0809848
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0483435   -0.0547365    0.1514236
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.6386842    0.2378335    1.0395349
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.1124923   -0.6215766    0.3965921
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0964215   -0.5513009    0.3584578
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.6989777   -1.1792978   -0.2186577
24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2645924   -0.3186866    0.8478715
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0841484   -0.4143806    0.5826773
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0465991   -0.5940910    0.5008927
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1953996   -0.4903552    0.0995560
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.6530715   -0.9428129   -0.3633300
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -1.3865745   -1.8934113   -0.8797378
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1192461   -0.3275101    0.0890179
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1407674   -0.4111092    0.1295744
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.2551490   -0.5113383    0.0010402
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.1427629   -0.3944721    0.1089463
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0996635   -0.1559014   -0.0434256
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.2607986   -0.3265544   -0.1950429
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0245993   -0.0461892    0.0953878
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0584931   -0.0390853    0.1560716


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.1039608   -0.2185701    0.0106485
Birth       ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0995327   -0.2254649    0.4245304
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0742383   -0.0594479    0.2079245
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0307289   -0.0536910   -0.0077668
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0429271   -0.1318916    0.0460375
6 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0284331   -0.0151039    0.0719701
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.1157744   -0.2204696   -0.0110792
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0931978   -0.4736639    0.2872684
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0422629   -0.1646470    0.0801212
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.2225310   -0.4585079    0.0134459
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0505580   -0.1097819    0.0086659
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0385972   -0.0916980    0.0145037
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0718780   -0.0901895   -0.0535665
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0080328   -0.0262458    0.0423115
24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0060427   -0.0390220    0.0511074
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.1032331   -0.2043684   -0.0020979
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.1143584   -0.2571709    0.4858877
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0989858   -0.2221173    0.0241456
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.5903704   -0.8352959   -0.3454449
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0420410   -0.1043560    0.0202739
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0586289   -0.1153139   -0.0019440
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0737489   -0.1005002   -0.0469976
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0153763   -0.0164317    0.0471842
