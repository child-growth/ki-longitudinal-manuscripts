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
![](/tmp/de1212fe-8f54-4e17-ad5c-ffd8742f427d/ba84309c-48f9-4345-b9f0-68089de7ce58/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/de1212fe-8f54-4e17-ad5c-ffd8742f427d/ba84309c-48f9-4345-b9f0-68089de7ce58/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/de1212fe-8f54-4e17-ad5c-ffd8742f427d/ba84309c-48f9-4345-b9f0-68089de7ce58/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.2004836   -0.6951074    0.2941401
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.0156827   -0.3347501    0.3033847
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.0864220   -0.1974817    0.3703257
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0800000   -0.4003913    0.2403913
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.2611111   -1.0678216    0.5455994
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.2157576   -0.6840291    0.2525139
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -1.1071066   -1.3492402   -0.8649731
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -1.4115840   -1.5183635   -1.3048045
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.0914177   -1.4749859   -0.7078494
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -1.2636074   -1.3745729   -1.1526420
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2093368   -1.3730813   -1.0455923
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.2361630   -1.4772647   -0.9950612
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.1821387   -1.2846563   -1.0796211
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.8196343   -1.0818678   -0.5574008
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.0512444   -1.3165901   -0.7858987
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.7053334   -0.7374440   -0.6732228
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.7748345   -0.8136734   -0.7359957
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.8273496   -0.8767395   -0.7779598
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.6794176   -0.7464041   -0.6124312
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.7199830   -0.8087859   -0.6311801
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.6544020   -0.8203886   -0.4884155
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.7025789   -0.8453715   -0.5597864
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -1.5420000   -2.3989104   -0.6850896
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.6978922   -1.1435259   -0.2522584
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                 0.1640078   -0.0557508    0.3837664
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.0260925   -0.7386448    0.7908298
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.4740886   -0.9463573   -0.0018199
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                 0.8475322    0.3887587    1.3063057
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.9142710    0.6524981    1.1760440
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.9780170    0.6238408    1.3321932
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.6299770    0.4133366    0.8466173
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.5683188   -0.1242112    1.2608489
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.4113313    0.1323062    0.6903564
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.4074564   -0.6135911   -0.2013217
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.4450061   -0.5498830   -0.3401292
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.6555132   -1.0082082   -0.3028181
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0774865   -0.0283867    0.1833597
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0111248   -0.1376150    0.1598646
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.1162023   -0.3280620    0.0956574
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.5862642   -0.6938736   -0.4786548
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.4815344   -0.7216033   -0.2414655
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.7992010   -1.0436629   -0.5547391
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.5620830   -0.5895492   -0.5346168
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.5990828   -0.6304477   -0.5677179
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.6728105   -0.7217332   -0.6238877
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.3862460   -0.4348317   -0.3376603
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.3968514   -0.4550393   -0.3386636
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.3822016   -0.4935963   -0.2708068
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.9256316   -1.0440690   -0.8071941
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -2.3840000   -3.4554070   -1.3125930
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.9111765   -1.3418053   -0.4805476
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.2070021   -0.4083606   -0.0056435
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.3564834   -0.8473716    0.1344048
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.6539047   -0.9437793   -0.3640300
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.0995811   -0.4865762    0.2874141
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.2390769   -0.0361780    0.5143318
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.1800703   -0.0935109    0.4536515
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.3891160    0.2214815    0.5567505
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.1202337   -0.3002673    0.5407347
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.5115451    0.2932390    0.7298512
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.8496665   -1.0873936   -0.6119393
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.9135005   -1.0272672   -0.7997339
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.0644671   -1.3821441   -0.7467901
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.5862564   -0.7136071   -0.4589057
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.6160616   -0.7985181   -0.4336050
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.7515693   -1.0526516   -0.4504870
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.1156509   -1.2202680   -1.0110337
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -1.1838738   -1.4587926   -0.9089551
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.9706542   -1.2613508   -0.6799576
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.2643831   -1.2976811   -1.2310851
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.2969380   -1.3387360   -1.2551400
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.3711578   -1.4257337   -1.3165819
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.2133565   -1.2579323   -1.1687808
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.2350204   -1.2908705   -1.1791702
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.2464628   -1.3275361   -1.1653896


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                -0.0483146   -0.2475806    0.1509514
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.1502299   -0.4075620    0.1071022
Birth       ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.1165161   -1.2055683   -1.0274639
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.7508875   -0.7730765   -0.7286985
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.6898154   -0.7422632   -0.6373675
6 months    ki0047075b-MAL-ED       INDIA          NA                   NA                -0.7220008   -0.8576809   -0.5863207
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                 0.1277734   -0.0649431    0.3204900
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                 0.9819369    0.7674415    1.1964324
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                 0.5429020    0.3813518    0.7044523
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.6018803   -0.6892284   -0.5145323
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.5932301   -0.6127836   -0.5736767
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.3895527   -0.4270314   -0.3520739
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                -0.9588679   -1.0774868   -0.8402491
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.2730469   -0.4358169   -0.1102769
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                 0.0982009   -0.0794754    0.2758773
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                 0.4080227    0.2828348    0.5332106
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.1304997   -1.2205265   -1.0404728
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.2988352   -1.3224626   -1.2752078
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.2243590   -1.2566569   -1.1920612


### Parameter: ATE


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.1848009   -0.3970348    0.7666365
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.2869056   -0.2893300    0.8631412
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1811111   -1.0491159    0.6868937
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1357576   -0.7031452    0.4316301
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.3044773   -0.5691175   -0.0398372
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0156890   -0.4382364    0.4696143
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0542707   -0.1442137    0.2527550
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0274445   -0.2387942    0.2936832
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.3625044    0.0813280    0.6436808
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.1308943   -0.1529871    0.4147758
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0695011   -0.1186796   -0.0203227
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1220162   -0.1796713   -0.0643611
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0405654   -0.1505991    0.0694683
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0250156   -0.1531504    0.2031816
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.8394211   -1.7081472    0.0293051
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0046868   -0.4632653    0.4726389
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.1379153   -0.9326161    0.6567854
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.6380964   -1.1650093   -0.1111835
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0667389   -0.4569990    0.5904767
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.1304848   -0.4534975    0.7144671
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0616582   -0.7874351    0.6641188
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2186457   -0.5728721    0.1355808
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0375497   -0.2697514    0.1946520
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.2480568   -0.6574631    0.1613496
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0663617   -0.2491822    0.1164588
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1936888   -0.4321963    0.0448187
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.1047298   -0.1584385    0.3678980
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.2129368   -0.4807736    0.0549000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0369998   -0.0781611    0.0041615
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1107275   -0.1648264   -0.0566286
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0106055   -0.0821932    0.0609822
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0040444   -0.1144852    0.1225740
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -1.4583684   -2.5363018   -0.3804350
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0144551   -0.4321640    0.4610742
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.1494813   -0.6804704    0.3815078
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.4469026   -0.8014777   -0.0923276
24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3386580   -0.1363170    0.8136329
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.2796514   -0.2024102    0.7617130
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.2688823   -0.7220407    0.1842762
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.1224291   -0.1535303    0.3983886
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0638341   -0.3274976    0.1998295
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.2148007   -0.6110814    0.1814801
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0298052   -0.2509573    0.1913470
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1653129   -0.4915139    0.1608880
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0682230   -0.3628079    0.2263620
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.1449967   -0.1643366    0.4543299
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0325549   -0.0849166    0.0198069
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1067747   -0.1682632   -0.0452862
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0216638   -0.0922993    0.0489717
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0331063   -0.1259575    0.0597449


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.1521690   -0.2575844    0.5619224
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0702299   -0.3205899    0.1801302
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.2428151   -0.4672507   -0.0183795
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0194561   -0.0502711    0.0891833
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0656226    0.0082773    0.1229679
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0455541   -0.0692335   -0.0218747
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0103977   -0.0611522    0.0403568
6 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0194218   -0.0668687    0.0280250
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0362344   -0.1587917    0.0863229
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.1344048   -0.2700136    0.5388231
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0870749   -0.2309041    0.0567542
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0399474   -0.2378590    0.1579643
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0477242   -0.1132020    0.0177535
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0156162   -0.0715290    0.0402966
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0311471   -0.0497694   -0.0125248
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0033067   -0.0357414    0.0291280
24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0332363   -0.0875904    0.0211177
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0660448   -0.1634070    0.0313174
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.1977820   -0.1350853    0.5306494
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0189067   -0.0929817    0.1307951
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0619126   -0.2823955    0.1585703
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0240938   -0.0952144    0.0470268
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0148488   -0.0755470    0.0458495
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0344520   -0.0584594   -0.0104447
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0110025   -0.0423097    0.0203047
