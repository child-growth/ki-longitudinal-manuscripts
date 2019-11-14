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

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        perdiar6    n_cell     n
----------  ----------------------  -----------------------------  ---------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              65   215
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        86   215
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             64   215
Birth       ki0047075b-MAL-ED       BRAZIL                         0%              54    62
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         6    62
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2    62
Birth       ki0047075b-MAL-ED       INDIA                          0%              11    45
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]        23    45
Birth       ki0047075b-MAL-ED       INDIA                          >5%             11    45
Birth       ki0047075b-MAL-ED       NEPAL                          0%               8    26
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        10    26
Birth       ki0047075b-MAL-ED       NEPAL                          >5%              8    26
Birth       ki0047075b-MAL-ED       PERU                           0%              67   228
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        69   228
Birth       ki0047075b-MAL-ED       PERU                           >5%             92   228
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%              85   112
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   112
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              4   112
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              51   115
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        44   115
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             20   115
Birth       ki1000109-EE            PAKISTAN                       0%             164   177
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]        11   177
Birth       ki1000109-EE            PAKISTAN                       >5%              2   177
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%             150   572
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       171   572
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%            251   572
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%             160   532
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       206   532
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%            166   532
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%             345   707
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       160   707
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%            202   707
Birth       ki1114097-CMIN          BANGLADESH                     0%              10    19
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         3    19
Birth       ki1114097-CMIN          BANGLADESH                     >5%              6    19
Birth       ki1114097-CONTENT       PERU                           0%               0     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]         1     2
Birth       ki1114097-CONTENT       PERU                           >5%              1     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%              71   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             78   241
6 months    ki0047075b-MAL-ED       BRAZIL                         0%             192   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   209
6 months    ki0047075b-MAL-ED       INDIA                          0%              50   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       127   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%             59   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%              80   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%             80   236
6 months    ki0047075b-MAL-ED       PERU                           0%              68   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        89   273
6 months    ki0047075b-MAL-ED       PERU                           >5%            116   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             190   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247
6 months    ki1000109-EE            PAKISTAN                       0%             338   375
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]        35   375
6 months    ki1000109-EE            PAKISTAN                       >5%              2   375
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       169   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             157   603
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       246   603
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            200   603
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            104   243
6 months    ki1114097-CONTENT       PERU                           0%             115   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]        43   215
6 months    ki1114097-CONTENT       PERU                           >5%             57   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212
24 months   ki0047075b-MAL-ED       BRAZIL                         0%             154   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   169
24 months   ki0047075b-MAL-ED       INDIA                          0%              48   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%             57   227
24 months   ki0047075b-MAL-ED       NEPAL                          0%              77   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   228
24 months   ki0047075b-MAL-ED       PERU                           0%              53   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        64   201
24 months   ki0047075b-MAL-ED       PERU                           >5%             84   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214
24 months   ki1000109-EE            PAKISTAN                       0%             153   168
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        14   168
24 months   ki1000109-EE            PAKISTAN                       >5%              1   168
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   428
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             153   579
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   579
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   579
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   243
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
24 months   ki1114097-CMIN          BANGLADESH                     >5%            100   243
24 months   ki1114097-CONTENT       PERU                           0%              84   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]        36   164
24 months   ki1114097-CONTENT       PERU                           >5%             44   164


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/7f99a5e1-fe52-47cd-9153-39689458c5d3/769d12ce-c128-4301-8964-1f9c71f1ce52/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7f99a5e1-fe52-47cd-9153-39689458c5d3/769d12ce-c128-4301-8964-1f9c71f1ce52/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7f99a5e1-fe52-47cd-9153-39689458c5d3/769d12ce-c128-4301-8964-1f9c71f1ce52/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.7810927   -1.0619378   -0.5002476
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.1084660   -1.3194714   -0.8974605
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.9689073   -1.2154675   -0.7223472
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.6862439   -1.4446605    0.0721727
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.1802211   -1.5063824   -0.8540599
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.4604755   -1.0984328    0.1774818
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.5662500   -1.1479485    0.0154485
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.7310000   -1.3926378   -0.0693622
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -1.0175000   -1.5408661   -0.4941339
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.1372400   -0.3536700    0.0791901
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.1453204   -0.1188031    0.4094438
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.1799224   -0.3717951    0.0119503
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 1.0201681    0.7705195    1.2698166
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5681122    0.2162973    0.9199272
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.4780367    0.0390725    0.9170008
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -1.3067626   -1.4830053   -1.1305198
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -1.2986689   -1.4752753   -1.1220624
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -1.4141809   -1.5605348   -1.2678271
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.2518552   -1.3832608   -1.1204497
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.2970987   -1.4135413   -1.1806560
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.3467001   -1.4819026   -1.2114976
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.2572986   -1.3819600   -1.1326373
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.3035866   -1.4634965   -1.1436767
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.1616833   -1.3171398   -1.0062269
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.1043697   -0.3505152    0.1417758
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.2753378   -0.4852356   -0.0654400
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0431686   -0.2685431    0.1822059
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.7676456   -1.0371871   -0.4981040
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.6879883   -0.8446427   -0.5313340
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.7029061   -1.0114073   -0.3944050
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0346099   -0.2145149    0.2837347
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0973708   -0.0900232    0.2847648
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                 0.2868804    0.0512926    0.5224683
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.9190033    0.6843364    1.1536701
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 1.0713526    0.8545782    1.2881270
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                 1.1277606    0.9397479    1.3157733
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.5946842    0.4114201    0.7779483
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3368182    0.0614584    0.6121780
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.7040741    0.0137907    1.3943574
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.4397544    0.2326508    0.6468580
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5846851    0.3676110    0.8017591
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.6821135    0.4103646    0.9538625
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.4358103   -0.6132806   -0.2583399
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.3330676   -0.5054297   -0.1607056
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.5334123   -0.6648227   -0.4020018
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.2687744   -0.4135301   -0.1240188
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.2708092   -0.4002658   -0.1413527
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0652114   -0.2186221    0.0881994
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0292531   -0.1392707    0.0807646
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0449644   -0.1181196    0.2080484
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                 0.1134541   -0.0390449    0.2659532
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.3995225   -0.6390222   -0.1600228
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.4890626   -0.8342243   -0.1439009
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.7636796   -0.9719892   -0.5553700
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 1.0488392    0.8880939    1.2095845
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 1.1358478    0.8712370    1.4004585
6 months    ki1114097-CONTENT       PERU                           >5%                  NA                 1.1017797    0.8596266    1.3439329
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.8153780   -1.0536824   -0.5770736
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.8982203   -1.0902430   -0.7061975
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.7069011   -0.9382968   -0.4755055
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.0055468   -1.2485310   -0.7625625
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.9056257   -1.0513848   -0.7598666
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.9999556   -1.2754036   -0.7245076
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.3544171   -0.5621531   -0.1466811
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.4791851   -0.6515308   -0.3068394
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.3454392   -0.5440613   -0.1468170
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0106922   -0.2236239    0.2450084
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0764268   -0.1256627    0.2785162
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                 0.2404718    0.0494143    0.4315293
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.4206497    0.2767088    0.5645906
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.4112500    0.1721822    0.6503178
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.3216667   -0.2059039    0.8492372
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0697109   -0.1120172    0.2514391
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0212492   -0.2187016    0.1762032
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.1896450   -0.1371720    0.5164620
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.9900978   -1.1986451   -0.7815505
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.8576067   -1.0427185   -0.6724950
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.9073278   -1.0465226   -0.7681330
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.9382234   -1.0882204   -0.7882264
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.9528319   -1.0773897   -0.8282740
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.7957466   -0.9459792   -0.6455140
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.5283194   -0.6619244   -0.3947143
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.7743258   -0.9706371   -0.5780145
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.5893497   -0.7560492   -0.4226503
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.8659496   -1.0749456   -0.6569537
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.7164532   -0.9399503   -0.4929560
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.9251825   -1.0923201   -0.7580448
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.5647054    0.3891369    0.7402738
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.6136104    0.2480564    0.9791645
24 months   ki1114097-CONTENT       PERU                           >5%                  NA                 0.5341737    0.2706354    0.7977120


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.9412093   -1.0864308   -0.7959878
Birth       ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -1.3525437   -1.4473932   -1.2576942
Birth       ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.7082698   -0.8347304   -0.5818092
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                 1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.5427231    0.3906363    0.6948099
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CONTENT       PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0539486   -0.0712465    0.1791437
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CONTENT       PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.3273733   -0.6712845    0.0165380
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.1878147   -0.5578542    0.1822249
Birth       ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.4939772   -1.3140741    0.3261197
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.2257684   -0.7701858    1.2217226
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.1647500   -1.0457368    0.7162368
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.4512500   -1.2337366    0.3312366
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.2825603   -0.0599234    0.6250441
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.0426824   -0.3332910    0.2479261
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.4520558   -0.8843958   -0.0197159
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.5421314   -1.0478329   -0.0364299
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0080937   -0.2413665    0.2575538
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.1074184   -0.3364564    0.1216197
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0452435   -0.2157030    0.1252161
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0948449   -0.2784616    0.0887718
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0462880   -0.2455270    0.1529510
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0956153   -0.1001062    0.2913368
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.1709681   -0.4952260    0.1532897
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0612011   -0.2731548    0.3955570
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0796572   -0.2321612    0.3914756
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0647394   -0.3452396    0.4747185
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0627609   -0.2496083    0.3751302
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.2522706   -0.0892165    0.5937577
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.1523493   -0.1671397    0.4718384
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.2087573   -0.0918899    0.5094046
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2578660   -0.5886360    0.0729039
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1093899   -0.6048068    0.8235865
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1449307   -0.1554085    0.4452698
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2423592   -0.0998358    0.5845541
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1027427   -0.1436669    0.3491523
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0976020   -0.3173043    0.1221003
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0020348   -0.1961288    0.1920592
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.2035631   -0.0070508    0.4141770
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0742175   -0.1223170    0.2707519
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.1427072   -0.0449586    0.3303730
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0895401   -0.5102124    0.3311322
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.3641571   -0.6817544   -0.0465598
6 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0870085   -0.2246232    0.3986402
6 months    ki1114097-CONTENT       PERU                           >5%                  0%                 0.0529405   -0.2380912    0.3439722
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0828423   -0.3894947    0.2238101
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.1084769   -0.2235747    0.4405284
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0999210   -0.1842411    0.3840832
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0055911   -0.3625745    0.3737568
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.1247680   -0.3930839    0.1435480
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0089779   -0.2754348    0.2933907
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0657346   -0.2426346    0.3741037
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.2297796   -0.0713603    0.5309195
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0093997   -0.2884559    0.2696565
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0989831   -0.6458374    0.4478713
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0909601   -0.3583597    0.1764395
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1199341   -0.2539589    0.4938271
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1324911   -0.1448285    0.4098106
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0827700   -0.1670633    0.3326034
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0146084   -0.2072522    0.1780353
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.1424768   -0.0678360    0.3527897
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.2460065   -0.4819936   -0.0100194
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0610304   -0.2727506    0.1506899
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.1494965   -0.1568834    0.4558764
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0592328   -0.3276987    0.2092331
24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0489051   -0.3567189    0.4545291
24 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0305317   -0.3469422    0.2858789


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.1601166   -0.3838706    0.0636374
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.2462005   -0.8971039    0.4047029
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.2022115   -0.7099692    0.3055462
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0852224   -0.1059681    0.2764129
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.2577333   -0.4681618   -0.0473047
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0457812   -0.2001893    0.1086270
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0466034   -0.1543837    0.0611769
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0131473   -0.0720036    0.0982982
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0340259   -0.2407480    0.1726963
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0593758   -0.1822540    0.3010055
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0764353   -0.1175692    0.2704399
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1378954   -0.0687573    0.3445480
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0519611   -0.1323959    0.0284737
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0964669   -0.0576170    0.2505509
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0115935   -0.1686181    0.1454311
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0696838   -0.0601102    0.1994778
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0590153   -0.0232310    0.1412617
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.1785228   -0.3801797    0.0231342
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 0.0195926   -0.0911175    0.1303026
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0048107   -0.2050337    0.1954124
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0532560   -0.1657357    0.2722477
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0220303   -0.1828200    0.1387595
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1097555   -0.0913547    0.3108658
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0057968   -0.0728277    0.0612342
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0157623   -0.1596367    0.1281120
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0785188   -0.0987628    0.2558003
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0453564   -0.0849267    0.1756395
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0820308   -0.1650323    0.0009707
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0124106   -0.1510906    0.1759117
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0021239   -0.1326827    0.1369305
