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
![](/tmp/f739eee2-84bc-4791-a38f-cbcb98ed379e/b7007738-7eb8-4406-8347-9424c38124b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f739eee2-84bc-4791-a38f-cbcb98ed379e/b7007738-7eb8-4406-8347-9424c38124b2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f739eee2-84bc-4791-a38f-cbcb98ed379e/b7007738-7eb8-4406-8347-9424c38124b2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.9589333   -1.1679562   -0.7499105
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.6700000   -1.5216911    0.1816911
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -1.1066667   -1.5431611   -0.6701723
Birth       ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.4317144   -0.8940453    0.0306164
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.0101275   -0.3051451    0.2848901
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.0916349   -0.1648330    0.3481029
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0027100   -0.2230672    0.2176472
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0569473   -0.5795027    0.4656081
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0068436   -0.3034525    0.2897652
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.6441151   -0.6782752   -0.6099549
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.7356569   -0.7764289   -0.6948848
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.7612834   -0.8148938   -0.7076730
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.3630428   -0.4812001   -0.2448855
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.3901900   -0.5222566   -0.2581234
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.2561227   -0.5087204   -0.0035250
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.6943421   -0.8349961   -0.5536881
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -1.5420000   -2.3989104   -0.6850896
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.7090196   -1.1598311   -0.2582081
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                 0.1800148   -0.0400316    0.4000612
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.3634609   -0.3806507    1.1075725
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0755474   -0.5803467    0.4292520
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                 1.0056490    0.5347627    1.4765353
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.9099913    0.6187122    1.2012704
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                 1.0634303    0.7055180    1.4213425
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.6288186    0.4110653    0.8465718
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.6080683   -0.0515682    1.2677047
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.3952422    0.1206209    0.6698635
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.3726330   -0.5763196   -0.1689465
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.4338160   -0.5370088   -0.3306233
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.6635482   -1.0212572   -0.3058392
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0753717   -0.0301853    0.1809288
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0379707   -0.1152239    0.1911653
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.1440226   -0.3525806    0.0645353
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.5838262   -0.6909040   -0.4767483
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.5150526   -0.7467500   -0.2833552
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.7883022   -1.0430890   -0.5335154
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.5619708   -0.5895240   -0.5344175
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.6001989   -0.6312139   -0.5691840
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.6691219   -0.7152832   -0.6229606
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.3879657   -0.4365264   -0.3394050
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.3964581   -0.4549438   -0.3379725
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.3762040   -0.4881226   -0.2642854
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.9263947   -1.0447734   -0.8080160
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -2.3840000   -3.4554070   -1.3125930
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.9111765   -1.3418053   -0.4805476
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.1997124   -0.4006718    0.0012470
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.3713771   -0.8531796    0.1104254
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.6290947   -0.9413586   -0.3168307
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.0722314   -0.4957112    0.3512485
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.2692144    0.0108887    0.5275401
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.1300456   -0.1386501    0.3987413
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.4086658    0.2414726    0.5758591
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.0713570   -0.3286967    0.4714106
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.5287343    0.3145203    0.7429483
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.7905070   -1.0305199   -0.5504941
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.9173960   -1.0317697   -0.8030223
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.1083554   -1.4301202   -0.7865907
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.5820316   -0.7078172   -0.4562461
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.6056403   -0.7848491   -0.4264315
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.7316909   -1.0435888   -0.4197930
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.1274645   -1.2318006   -1.0231284
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -1.1345466   -1.3994094   -0.8696839
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.9987555   -1.3109699   -0.6865410
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.2620490   -1.2951899   -1.2289081
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.2968303   -1.3387550   -1.2549055
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.3718003   -1.4254016   -1.3181989
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.2116752   -1.2561949   -1.1671555
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.2336187   -1.2894162   -1.1778212
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.2455860   -1.3275298   -1.1636422


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.9503125   -1.1412124   -0.7594126
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                -0.0395238   -0.2249300    0.1458824
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                 0.0036788   -0.1626160    0.1699735
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.6992565   -0.7232731   -0.6752399
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.3680294   -0.4489214   -0.2871374
6 months    ki0047075b-MAL-ED       INDIA          NA                   NA                -0.7155110   -0.8495147   -0.5815073
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                 0.1289063   -0.0638567    0.3216692
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                 0.9790991    0.7644567    1.1937415
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                 0.5422442    0.3806254    0.7038629
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.6028654   -0.6902793   -0.5154516
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.5932301   -0.6127836   -0.5736767
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.3895527   -0.4270314   -0.3520739
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                -0.9595519   -1.0781202   -0.8409836
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.2757812   -0.4379560   -0.1136065
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                 0.0979907   -0.0798724    0.2758537
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                 0.4264693    0.3032402    0.5496984
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.1257803   -1.2146168   -1.0369438
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.2988352   -1.3224626   -1.2752078
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.2243590   -1.2566569   -1.1920612


### Parameter: ATE


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.2889333   -0.5880320    1.1658987
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.1477333   -0.6316940    0.3362273
Birth       ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.4215869   -0.1320955    0.9752693
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.5233494   -0.0083742    1.0550730
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0542373   -0.6236420    0.5151673
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0041337   -0.3726007    0.3643334
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0915418   -0.1427296   -0.0403541
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1171684   -0.1788296   -0.0555072
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0271472   -0.2064461    0.1521518
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.1069201   -0.1722051    0.3860453
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.8476579   -1.7160351    0.0207193
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0146775   -0.4869217    0.4575667
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.1834461   -0.5923465    0.9592386
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.2555622   -0.8095646    0.2984402
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0956577   -0.6567153    0.4654000
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0577813   -0.5404054    0.6559679
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0207503   -0.7151486    0.6736480
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2335764   -0.5852534    0.1181007
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0611830   -0.2898899    0.1675239
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.2909151   -0.7037905    0.1219602
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0374010   -0.2236128    0.1488107
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.2193944   -0.4532774    0.0144886
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0687736   -0.1863115    0.3238586
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.2044760   -0.4815523    0.0726003
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0382282   -0.0789201    0.0024638
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1071511   -0.1587879   -0.0555144
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0084925   -0.0804781    0.0634932
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0117617   -0.1071258    0.1306492
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -1.4576053   -2.5355322   -0.3796783
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0152183   -0.4313853    0.4618218
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.1716647   -0.6934526    0.3501232
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.4293823   -0.7991295   -0.0596350
24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3414458   -0.1487447    0.8316363
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.2022770   -0.3051129    0.7096669
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.3373089   -0.7715845    0.0969667
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.1200685   -0.1525852    0.3927222
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.1268891   -0.3926582    0.1388801
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.3178485   -0.7193443    0.0836474
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0236087   -0.2410910    0.1938737
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1496593   -0.4851971    0.1858785
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0070822   -0.2929779    0.2788136
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.1287090   -0.2035852    0.4610032
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0347813   -0.0872114    0.0176489
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1097513   -0.1709304   -0.0485721
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0219435   -0.0926156    0.0487286
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0339108   -0.1273382    0.0595166


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0086208   -0.1003141    0.1175558
Birth       ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.3921906   -0.0002850    0.7846662
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0063887   -0.1445333    0.1573108
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0551414   -0.0789658   -0.0313170
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0049866   -0.0902940    0.0803208
6 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0211689   -0.0689128    0.0265750
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0511086   -0.1744845    0.0722674
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0265499   -0.4435222    0.3904224
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0865744   -0.2312627    0.0581139
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0662771   -0.2607837    0.1282295
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0456095   -0.1110145    0.0197956
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0190393   -0.0741198    0.0360412
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0312594   -0.0498146   -0.0127042
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0015870   -0.0340033    0.0308293
24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0331571   -0.0875022    0.0211879
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0760688   -0.1709543    0.0188166
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.1702220   -0.1914838    0.5319278
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0178035   -0.0934388    0.1290458
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.1210721   -0.3435120    0.1013678
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0283186   -0.0977801    0.0411430
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0016842   -0.0596895    0.0630579
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0367862   -0.0608237   -0.0127486
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0126838   -0.0439198    0.0185522
