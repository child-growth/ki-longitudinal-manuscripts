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
![](/tmp/7d8aafd5-8fc5-4ef1-9f9e-148eac774816/cd0c7217-17c2-47a5-b19b-26f19e40707d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7d8aafd5-8fc5-4ef1-9f9e-148eac774816/cd0c7217-17c2-47a5-b19b-26f19e40707d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7d8aafd5-8fc5-4ef1-9f9e-148eac774816/cd0c7217-17c2-47a5-b19b-26f19e40707d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure            NA                -1.0040648   -1.3971000   -0.6110297
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.9281548   -1.3040326   -0.5522770
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.9426302   -1.2050200   -0.6802403
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.4535556   -0.7370575   -0.1700536
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0888889   -0.6955550    0.5177773
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.8005882   -1.1433809   -0.4577955
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.7297070   -0.9374553   -0.5219587
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.9556976   -1.0548517   -0.8565435
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.0469640   -1.5745056   -0.5194224
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.8473350   -0.9369559   -0.7577140
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.0065088   -1.1474710   -0.8655465
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.9550922   -1.2059293   -0.7042551
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.0269247   -1.1243660   -0.9294834
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -1.2478902   -1.4474770   -1.0483034
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.2504129   -1.5262451   -0.9745808
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.5001745   -1.5310201   -1.4693289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.5592800   -1.5988069   -1.5197530
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.6272882   -1.6789635   -1.5756130
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.5431940   -1.6113450   -1.4750430
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.4971624   -1.5829255   -1.4113993
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.5304659   -1.6501366   -1.4107951
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                -1.2287544   -1.3589893   -1.0985195
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.6360000   -0.9019405   -0.3700595
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -1.0694118   -1.5456747   -0.5931488
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.5155629   -0.6754236   -0.3557021
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.6740228   -1.1213446   -0.2267009
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -1.0700538   -1.5643944   -0.5757132
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                -1.4819680   -1.9142633   -1.0496728
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -1.1703731   -1.5635845   -0.7771617
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                -1.4421231   -1.6786736   -1.2055726
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.0132571   -1.1886505   -0.8378637
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.6024465   -1.1831317   -0.0217614
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.1798707   -1.4087744   -0.9509670
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -1.1214311   -1.3698708   -0.8729914
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -1.4350248   -1.5311671   -1.3388825
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.5904160   -1.9955055   -1.1853266
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -1.1481280   -1.2408690   -1.0553869
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2571809   -1.3939342   -1.1204276
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.2978174   -1.5167197   -1.0789150
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.3135291   -1.4111680   -1.2158902
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -1.4057534   -1.6647530   -1.1467538
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.3418829   -1.5898116   -1.0939542
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.2413630   -1.2703849   -1.2123412
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.3627677   -1.3947463   -1.3307891
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.4718066   -1.5244183   -1.4191950
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.3517482   -1.4038099   -1.2996864
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.3482130   -1.4077691   -1.2886568
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.3037194   -1.3930733   -1.2143654
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -1.8935000   -2.0301943   -1.7568057
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -1.2370000   -1.6132318   -0.8607682
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -2.0035294   -2.4884028   -1.5186561
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -1.3149995   -1.4999837   -1.1300153
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -1.4498556   -1.8315372   -1.0681740
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -2.0373448   -2.4859526   -1.5887369
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -1.8702521   -2.3281832   -1.4123210
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -1.5548441   -1.9463497   -1.1633386
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                -1.8142188   -2.0348637   -1.5935739
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.5500520   -1.7331166   -1.3669875
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -1.6873747   -2.2824822   -1.0922672
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.7792173   -2.0054297   -1.5530049
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -1.5794684   -1.8472348   -1.3117019
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -2.2763963   -2.3845248   -2.1682677
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -2.8580583   -3.2782085   -2.4379081
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -1.3956741   -1.5023568   -1.2889915
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.5384668   -1.7172252   -1.3597085
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.5407556   -1.7986178   -1.2828934
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.8143900   -1.9171679   -1.7116121
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -2.1158689   -2.3717388   -1.8599991
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.9179336   -2.1630431   -1.6728240
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.9377553   -1.9767010   -1.8988095
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -2.0312279   -2.0755195   -1.9869363
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -2.2018494   -2.2618780   -2.1418209
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.7947435   -1.8440124   -1.7454746
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.7688510   -1.8238803   -1.7138217
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.7464780   -1.8330940   -1.6598620


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                -0.9490110   -1.1400314   -0.7579906
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.5503409   -0.7616444   -0.3390374
Birth       ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.0791964   -1.1604792   -0.9979137
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.5375132   -1.5596692   -1.5153573
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.5248719   -1.5743851   -1.4753587
6 months    ki0047075b-MAL-ED       INDIA          NA                   NA                -1.2019969   -1.3256948   -1.0782989
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.6262760   -0.7758267   -0.4767254
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                -1.3783784   -1.5611768   -1.1955799
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -1.0539254   -1.1902766   -0.9175743
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.3421764   -1.4201083   -1.2642445
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.3131326   -1.3362851   -1.2899801
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.3446891   -1.3822219   -1.3071564
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                -1.8868396   -2.0164954   -1.7571839
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -1.4092187   -1.5701249   -1.2483126
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                -1.7783956   -1.9536701   -1.6031212
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -1.6331323   -1.7704624   -1.4958022
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.8758368   -1.9623349   -1.7893388
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -2.0099416   -2.0377955   -1.9820876
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.7801485   -1.8158427   -1.7444543


### Parameter: ATE


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0759101   -0.4647632    0.6165834
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0614347   -0.4088841    0.5317535
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.3646667   -0.3049729    1.0343063
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.3470327   -0.7918699    0.0978046
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.2259906   -0.4565860    0.0046049
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.3172570   -0.8857423    0.2512283
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1591738   -0.3265739    0.0082262
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1077572   -0.3743823    0.1588678
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.2209655   -0.4427624    0.0008314
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.2234882   -0.5154099    0.0684334
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0591054   -0.1071469   -0.0110640
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1271137   -0.1859428   -0.0682846
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0460316   -0.0628438    0.1549070
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0127281   -0.1255038    0.1509600
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.5927544    0.2966371    0.8888717
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.1593426   -0.3344058    0.6530910
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.1584599   -0.6340995    0.3171797
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.5544909   -1.0739894   -0.0349924
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3115949   -0.2747933    0.8979831
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0398450   -0.4527110    0.5324009
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.4108106   -0.1955936    1.0172147
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1666136   -0.4562286    0.1230014
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.3135937   -0.5801712   -0.0470163
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.4689849   -0.9445106    0.0065408
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1090530   -0.2743272    0.0562213
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1496894   -0.3876025    0.0882237
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0922243   -0.3690994    0.1846508
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0283539   -0.2951038    0.2383961
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.1214046   -0.1588627   -0.0839466
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.2304436   -0.2875788   -0.1733084
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0035352   -0.0727692    0.0798396
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0480288   -0.0548450    0.1509026
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.6565000    0.2562055    1.0567945
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.1100294   -0.6138027    0.3937438
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.1348561   -0.5590892    0.2893770
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.7223452   -1.2072740   -0.2374165
24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3154080   -0.2941456    0.9249615
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0560332   -0.4501844    0.5622508
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1373226   -0.7601755    0.4855302
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2291653   -0.5202150    0.0618844
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.6969279   -0.9860543   -0.4078016
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -1.2785899   -1.7771560   -0.7800238
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1427927   -0.3513136    0.0657282
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1450815   -0.4242693    0.1341064
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.3014789   -0.5772888   -0.0256690
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.1035436   -0.3695276    0.1624405
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0934727   -0.1494922   -0.0374532
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.2640942   -0.3308354   -0.1973529
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0258925   -0.0447527    0.0965377
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0482655   -0.0490307    0.1455617


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0550539   -0.2732542    0.3833619
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0967854   -0.3037214    0.1101506
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.2013127   -0.3982778   -0.0043476
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0621596   -0.1237870   -0.0005322
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0522717   -0.1087524    0.0042089
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0373387   -0.0597452   -0.0149321
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0183221   -0.0299860    0.0666302
6 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0267575   -0.0163737    0.0698887
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.1107132   -0.2140467   -0.0073797
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.1035897   -0.2637481    0.4709274
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0406684   -0.1621926    0.0808559
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.2859510   -0.5126265   -0.0592754
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0505503   -0.1102705    0.0091698
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0286474   -0.0827610    0.0254663
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0717696   -0.0899537   -0.0535855
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0070590   -0.0275892    0.0417072
24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0066604   -0.0380987    0.0514195
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0942192   -0.1945993    0.0061608
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0918564   -0.2923089    0.4760218
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0830803   -0.2041086    0.0379481
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.6395895   -0.8835772   -0.3956018
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0455905   -0.1101570    0.0189761
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0614468   -0.1199444   -0.0029493
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0721863   -0.0989416   -0.0454310
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0145950   -0.0172692    0.0464592
