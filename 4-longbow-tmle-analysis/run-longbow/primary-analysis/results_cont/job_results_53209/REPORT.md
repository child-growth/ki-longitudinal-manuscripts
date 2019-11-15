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
![](/tmp/836ef87d-4527-4f09-9773-23fee0666d56/978adf49-24ba-4151-8a88-c0e98d4d6ce3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/836ef87d-4527-4f09-9773-23fee0666d56/978adf49-24ba-4151-8a88-c0e98d4d6ce3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/836ef87d-4527-4f09-9773-23fee0666d56/978adf49-24ba-4151-8a88-c0e98d4d6ce3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.7709561   -1.0604259   -0.4814864
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0778591   -1.2950556   -0.8606626
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.9259944   -1.1875330   -0.6644558
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.7451053   -1.4638668   -0.0263438
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.2014394   -1.5343441   -0.8685346
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.4480964   -1.0477425    0.1515498
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.5662500   -1.1479485    0.0154485
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.7310000   -1.3926378   -0.0693622
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -1.0175000   -1.5408661   -0.4941339
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.1356856   -0.3499610    0.0785897
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.1474797   -0.1177366    0.4126960
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.1745693   -0.3660265    0.0168879
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 1.0081285    0.7570867    1.2591704
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5455010    0.1922240    0.8987780
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.4763572    0.0856268    0.8670875
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -1.3136010   -1.4886459   -1.1385560
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -1.3103409   -1.4870607   -1.1336211
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -1.4062843   -1.5523455   -1.2602231
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.2574998   -1.3879192   -1.1270805
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.3007879   -1.4133606   -1.1882151
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.3330019   -1.4683544   -1.1976495
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.2705946   -1.3929406   -1.1482485
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.2979893   -1.4530479   -1.1429307
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.1535663   -1.3062015   -1.0009310
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0873342   -0.3314982    0.1568298
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.2683675   -0.4777805   -0.0589545
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0379611   -0.2565936    0.1806714
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.7783968   -1.0422311   -0.5145626
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.7046933   -0.8622976   -0.5470889
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.6976425   -1.0072155   -0.3880694
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0041519   -0.2500710    0.2417671
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0140168   -0.1736375    0.2016711
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                 0.2275720   -0.0003203    0.4554642
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.9158006    0.6718935    1.1597076
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 1.0804253    0.8659625    1.2948881
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                 1.1107624    0.9230138    1.2985111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.5939825    0.4106451    0.7773198
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3367273    0.0613640    0.6120905
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.7040741    0.0137907    1.3943574
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.4670761    0.2583061    0.6758462
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5790543    0.3588868    0.7992219
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.6566103    0.3918796    0.9213410
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.4505338   -0.6277550   -0.2733125
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.3410053   -0.5131160   -0.1688946
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.5212054   -0.6539432   -0.3884675
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.2786724   -0.4244235   -0.1329213
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.2698143   -0.3991326   -0.1404960
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0693244   -0.2232008    0.0845520
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0231832   -0.1307636    0.0843972
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0614389   -0.1000130    0.2228907
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                 0.1066613   -0.0472255    0.2605480
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.4064555   -0.6506453   -0.1622656
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.5028273   -0.8530812   -0.1525735
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.7627602   -0.9685333   -0.5569871
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 1.0501277    0.8893983    1.2108572
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 1.0874781    0.8356321    1.3393240
6 months    ki1114097-CONTENT       PERU                           >5%                  NA                 1.1027172    0.8572108    1.3482237
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.8214583   -1.0542789   -0.5886378
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.8690626   -1.0602068   -0.6779185
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.7394569   -0.9716314   -0.5072823
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.0340532   -1.2816061   -0.7865003
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.9112866   -1.0565801   -0.7659931
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.0128330   -1.2841078   -0.7415582
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.3513978   -0.5662731   -0.1365225
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.4600874   -0.6302389   -0.2899359
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.3072009   -0.5086926   -0.1057092
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0524997   -0.3097598    0.2047604
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0923720   -0.1107394    0.2954833
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                 0.2083972    0.0198008    0.3969935
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.4176648    0.2735376    0.5617920
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3947596    0.1539398    0.6355795
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.3216667   -0.2059039    0.8492372
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0761484   -0.1047468    0.2570436
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0079644   -0.2087801    0.1928513
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.2054221   -0.1145229    0.5253671
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.9579940   -1.1689874   -0.7470006
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.8508648   -1.0333012   -0.6684284
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.9267596   -1.0663440   -0.7871752
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.9397704   -1.0890567   -0.7904841
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.9525440   -1.0772015   -0.8278866
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.8023363   -0.9525389   -0.6521336
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.5370614   -0.6721306   -0.4019922
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.7626963   -0.9569685   -0.5684240
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.6339058   -0.8080942   -0.4597174
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.8662436   -1.0739036   -0.6585835
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.7180825   -0.9383519   -0.4978130
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.9250519   -1.0929448   -0.7571591
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.5573182    0.3818850    0.7327513
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.5954653    0.2224952    0.9684355
24 months   ki1114097-CONTENT       PERU                           >5%                  NA                 0.4996539    0.2280614    0.7712464


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -1.3525437   -1.4473932   -1.2576942
Birth       ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.7079979   -0.8344175   -0.5815783
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CONTENT       PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CONTENT       PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.3069030   -0.6696904    0.0558844
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.1550383   -0.5464213    0.2363447
Birth       ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.4563341   -1.2468140    0.3341459
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.2970089   -0.6422950    1.2363129
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.1647500   -1.0457368    0.7162368
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.4512500   -1.2337366    0.3312366
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.2831653   -0.0584836    0.6248142
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.0388837   -0.3270206    0.2492532
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.4626275   -0.8964353   -0.0288197
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.5317714   -0.9972197   -0.0663230
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0032601   -0.2452502    0.2517703
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0926833   -0.3207006    0.1353339
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0432880   -0.2090534    0.1224774
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0755021   -0.2572269    0.1062228
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0273947   -0.2205521    0.1657626
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.1170283   -0.0743445    0.3084012
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.1810333   -0.5028193    0.1407527
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0493731   -0.2790037    0.3777499
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0737035   -0.2339813    0.3813884
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0807544   -0.3268116    0.4883203
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0181688   -0.2882242    0.3245617
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.2317239   -0.0991392    0.5625871
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.1646248   -0.1600914    0.4893410
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.1949619   -0.1130632    0.5029870
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2572552   -0.5880686    0.0735582
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1100916   -0.6041238    0.8243071
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1119782   -0.1922415    0.4161979
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1895342   -0.1476767    0.5267450
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1095285   -0.1375661    0.3566231
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0706716   -0.2923214    0.1509782
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0088581   -0.1859127    0.2036290
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.2093480   -0.0024972    0.4211932
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0846221   -0.1086468    0.2778909
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.1298445   -0.0566661    0.3163550
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0963719   -0.5231841    0.3304404
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.3563048   -0.6753194   -0.0372901
6 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0373504   -0.2627635    0.3374642
6 months    ki1114097-CONTENT       PERU                           >5%                  0%                 0.0525895   -0.2410794    0.3462584
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0476043   -0.3485251    0.2533165
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0820015   -0.2465104    0.4105134
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.1227666   -0.1647914    0.4103245
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0212202   -0.3466015    0.3890419
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.1086896   -0.3824559    0.1650768
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0441969   -0.2489110    0.3373048
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.1448716   -0.1785819    0.4683252
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.2608968   -0.0588452    0.5806389
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0229052   -0.3035595    0.2577492
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0959981   -0.6429015    0.4509053
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0841127   -0.3547232    0.1864977
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1292737   -0.2389569    0.4975044
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1071292   -0.1716288    0.3858872
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0312344   -0.2218065    0.2842752
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0127736   -0.2054224    0.1798751
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.1374342   -0.0722740    0.3471423
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.2256348   -0.4615599    0.0102902
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0968444   -0.3157332    0.1220444
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.1481611   -0.1544789    0.4508011
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0588084   -0.3267455    0.2091288
24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0381472   -0.3741479    0.4504423
24 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0576643   -0.3818736    0.2665450


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.1709043   -0.4061626    0.0643540
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.1873392   -0.8012421    0.4265638
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.2022115   -0.7099692    0.3055462
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0836681   -0.1055734    0.2729096
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.2456938   -0.4573646   -0.0340229
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0389427   -0.1925987    0.1147132
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0409588   -0.1473404    0.0654228
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0264432   -0.0563527    0.1092392
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0503422   -0.2549537    0.1542693
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0703989   -0.1672316    0.3080295
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.1145827   -0.0747448    0.3039102
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1370810   -0.0772036    0.3513656
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0518040   -0.1322455    0.0286376
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0691452   -0.0863858    0.2246762
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0031300   -0.1539542    0.1602142
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0795818   -0.0511317    0.2102952
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0529454   -0.0271445    0.1330354
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.1715898   -0.3762195    0.0330399
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 0.0183041   -0.0922632    0.1288714
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0021659   -0.1927902    0.1971220
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0824012   -0.1412651    0.3060675
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0235145   -0.1904684    0.1434394
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1636979   -0.0549377    0.3823334
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0086347   -0.0759944    0.0587251
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0213509   -0.1656327    0.1229310
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0464150   -0.1332977    0.2261276
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0469034   -0.0828725    0.1766793
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0732888   -0.1568286    0.0102510
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0127045   -0.1495608    0.1749698
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0095111   -0.1255853    0.1446075
