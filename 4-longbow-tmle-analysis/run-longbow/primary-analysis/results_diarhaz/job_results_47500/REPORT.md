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

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
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
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        96   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              86   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             75   257
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   191
Birth       ki0047075b-MAL-ED       BRAZIL                         0%             176   191
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2   191
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]       109   206
Birth       ki0047075b-MAL-ED       INDIA                          0%              47   206
Birth       ki0047075b-MAL-ED       INDIA                          >5%             50   206
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        57   173
Birth       ki0047075b-MAL-ED       NEPAL                          0%              60   173
Birth       ki0047075b-MAL-ED       NEPAL                          >5%             56   173
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        88   287
Birth       ki0047075b-MAL-ED       PERU                           0%              83   287
Birth       ki0047075b-MAL-ED       PERU                           >5%            116   287
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%             193   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   252
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        42   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              60   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             21   123
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]         2     6
Birth       ki1000109-ResPak        PAKISTAN                       0%               1     6
Birth       ki1000109-ResPak        PAKISTAN                       >5%              3     6
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%             19    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         7    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               8    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%             12    27
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0    13
Birth       ki1114097-CMIN          BANGLADESH                     0%              11    13
Birth       ki1114097-CMIN          BANGLADESH                     >5%              2    13
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]        47   115
Birth       ki1114097-CMIN          BRAZIL                         0%              38   115
Birth       ki1114097-CMIN          BRAZIL                         >5%             30   115
Birth       ki1114097-CMIN          PERU                           (0%, 5%]         5    10
Birth       ki1114097-CMIN          PERU                           0%               4    10
Birth       ki1114097-CMIN          PERU                           >5%              1    10
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]         1     2
Birth       ki1114097-CONTENT       PERU                           0%               0     2
Birth       ki1114097-CONTENT       PERU                           >5%              1     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%              71   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             78   241
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   209
6 months    ki0047075b-MAL-ED       BRAZIL                         0%             192   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   209
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       127   236
6 months    ki0047075b-MAL-ED       INDIA                          0%              50   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%             59   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%              80   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%             80   236
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        89   273
6 months    ki0047075b-MAL-ED       PERU                           0%              68   273
6 months    ki0047075b-MAL-ED       PERU                           >5%            116   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             190   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]        64   235
6 months    ki1000109-ResPak        PAKISTAN                       0%              41   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%            130   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       169   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       242   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             158   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            183   583
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        59   243
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            103   243
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]        41   108
6 months    ki1114097-CMIN          BRAZIL                         0%              38   108
6 months    ki1114097-CMIN          BRAZIL                         >5%             29   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]       190   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%             212   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%            270   672
6 months    ki1114097-CMIN          PERU                           (0%, 5%]       184   635
6 months    ki1114097-CMIN          PERU                           0%             184   635
6 months    ki1114097-CMIN          PERU                           >5%            267   635
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]        43   215
6 months    ki1114097-CONTENT       PERU                           0%             115   215
6 months    ki1114097-CONTENT       PERU                           >5%             57   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         0%             154   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   169
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   227
24 months   ki0047075b-MAL-ED       INDIA                          0%              48   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%             57   227
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   228
24 months   ki0047075b-MAL-ED       NEPAL                          0%              77   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   228
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        64   201
24 months   ki0047075b-MAL-ED       PERU                           0%              53   201
24 months   ki0047075b-MAL-ED       PERU                           >5%             84   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       128   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   429
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             151   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   242
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%             99   242
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        77   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              99   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%            103   279
24 months   ki1114097-CMIN          PERU                           (0%, 5%]        79   244
24 months   ki1114097-CMIN          PERU                           0%              97   244
24 months   ki1114097-CMIN          PERU                           >5%             68   244
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]        36   164
24 months   ki1114097-CONTENT       PERU                           0%              84   164
24 months   ki1114097-CONTENT       PERU                           >5%             44   164


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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
![](/tmp/a56734cf-b364-4d0c-adfc-4934059c50e8/ccc971a4-cdfd-4471-b0f5-ea0b9ab776c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a56734cf-b364-4d0c-adfc-4934059c50e8/ccc971a4-cdfd-4471-b0f5-ea0b9ab776c6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a56734cf-b364-4d0c-adfc-4934059c50e8/ccc971a4-cdfd-4471-b0f5-ea0b9ab776c6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.9840949   -1.1919258   -0.7762641
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -1.0696618   -1.2903339   -0.8489897
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.2203422   -1.4604764   -0.9802079
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.9892759   -1.1784620   -0.8000898
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.1234541   -1.4185434   -0.8283647
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.9568414   -1.1818761   -0.7318067
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.6964953   -0.9500496   -0.4429410
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.6900784   -0.9766063   -0.4035504
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.6718111   -0.9557044   -0.3879179
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.0114263   -1.2190380   -0.8038145
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.9441085   -1.1483845   -0.7398325
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.8712310   -1.0437517   -0.6987103
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.8254000   -1.0726550   -0.5781450
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.6932642   -0.8381158   -0.5484127
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.3400000   -1.1836353    0.5036353
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.8382253   -1.2867219   -0.3897286
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.9632014   -1.2408073   -0.6855954
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.9808117   -1.4490816   -0.5125417
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.1171429   -1.5897509   -0.6445348
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.4237500   -2.1656043   -0.6818957
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.8966667   -1.5653535   -0.2279798
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                 0.0265520   -0.2361309    0.2892350
Birth       ki1114097-CMIN          BRAZIL                         0%                   NA                 0.2356977   -0.0454311    0.5168264
Birth       ki1114097-CMIN          BRAZIL                         >5%                  NA                 0.0480706   -0.2854482    0.3815895
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0953075   -1.2763293   -0.9142857
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -1.1844233   -1.4071385   -0.9617080
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.3474612   -1.5671068   -1.1278155
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.1244095   -1.2844518   -0.9643672
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.2299469   -1.4714150   -0.9884788
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.3653348   -1.6257604   -1.1049092
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.5221039   -0.7234157   -0.3207921
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.6259012   -0.8278121   -0.4239904
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.5288170   -0.7191797   -0.3384543
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.3827368   -1.5683332   -1.1971405
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -1.4475798   -1.6667218   -1.2284379
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                -1.2290333   -1.3883112   -1.0697554
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.1556970   -1.4033215   -0.9080724
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -1.0555833   -1.2041502   -0.9070165
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.6637037   -1.5451618    0.2177544
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3328162   -1.5262773   -1.1393552
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4159745   -1.6151743   -1.2167746
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2644039   -1.5039453   -1.0248624
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -1.3915356   -1.7810145   -1.0020568
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                -1.0235208   -1.5208212   -0.5262204
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                -1.4650006   -1.7540500   -1.1759512
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -1.3534619   -1.5145300   -1.1923939
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -1.4490124   -1.6266990   -1.2713258
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -1.4166639   -1.5518404   -1.2814875
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.0948682   -1.2114675   -0.9782689
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.0584047   -1.2001233   -0.9166861
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.1131395   -1.2589309   -0.9673482
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.3152718   -1.4788300   -1.1517136
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.1454386   -1.2432056   -1.0476717
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.1939842   -1.3300960   -1.0578724
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -1.9918159   -2.2549320   -1.7286998
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -1.6883507   -1.9500113   -1.4266901
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -1.7377424   -1.9428976   -1.5325871
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.7652148   -1.0794466   -0.4509830
6 months    ki1114097-CMIN          BRAZIL                         0%                   NA                -0.5053508   -0.7822338   -0.2284677
6 months    ki1114097-CMIN          BRAZIL                         >5%                  NA                -0.9895336   -1.4804305   -0.4986367
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -0.5532355   -0.6999841   -0.4064870
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.5434039   -0.6947048   -0.3921030
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -0.7331420   -0.8702589   -0.5960250
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.5208358   -0.6900683   -0.3516032
6 months    ki1114097-CMIN          PERU                           0%                   NA                -0.4424632   -0.5842771   -0.3006492
6 months    ki1114097-CMIN          PERU                           >5%                  NA                -0.5696367   -0.6835890   -0.4556844
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.3146467   -0.7281760    0.0988825
6 months    ki1114097-CONTENT       PERU                           0%                   NA                -0.3797324   -0.6248695   -0.1345954
6 months    ki1114097-CONTENT       PERU                           >5%                  NA                -0.1779007   -0.4889982    0.1331967
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.9048409   -2.0960888   -1.7135929
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -2.0222428   -2.2995188   -1.7449669
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.9088742   -2.1212434   -1.6965050
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.7870873   -1.9536098   -1.6205647
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.9322190   -2.2022545   -1.6621836
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.9141541   -2.1725859   -1.6557223
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -1.1846410   -1.3947784   -0.9745036
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -1.3692029   -1.5611618   -1.1772441
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -1.2768152   -1.5051416   -1.0484887
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.9034851   -2.1202760   -1.6866943
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -1.9059986   -2.1362398   -1.6757573
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                -1.5347489   -1.6996923   -1.3698056
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.8030769   -2.1130160   -1.4931379
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -1.5899153   -1.7422064   -1.4376241
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -1.2288889   -1.9106554   -0.5471224
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6199178   -2.8271860   -2.4126495
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -2.6361408   -2.8544501   -2.4178315
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.6142787   -2.9094959   -2.3190615
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -2.0794302   -2.2642920   -1.8945683
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -2.1698980   -2.3705073   -1.9692887
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -2.2559184   -2.4143344   -2.0975024
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.6115877   -1.7408160   -1.4823594
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.5281431   -1.6843472   -1.3719389
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.6032456   -1.7454343   -1.4610568
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.5250891   -1.7312814   -1.3188968
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.3880871   -1.4960495   -1.2801247
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.4351325   -1.6122443   -1.2580206
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -2.7283606   -3.0030380   -2.4536833
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -2.3980980   -2.6086014   -2.1875946
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -2.4776144   -2.6628065   -2.2924224
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -1.2860048   -1.5085644   -1.0634451
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -1.5011361   -1.7422840   -1.2599882
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -1.8700328   -2.0945413   -1.6455243
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                -1.4893446   -1.7390937   -1.2395955
24 months   ki1114097-CMIN          PERU                           0%                   NA                -1.3666677   -1.5486078   -1.1847277
24 months   ki1114097-CMIN          PERU                           >5%                  NA                -1.5671292   -1.7908769   -1.3433814
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.6705198   -1.0331284   -0.3079113
24 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.6918104   -0.9514673   -0.4321536
24 months   ki1114097-CONTENT       PERU                           >5%                  NA                -0.7240154   -1.0282021   -0.4198287


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.7068651   -0.8323249   -0.5814053
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9338211   -1.1465079   -0.7211344
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       ki1114097-CMIN          BRAZIL                         NA                   NA                 0.0576522   -0.1471825    0.2624869
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000109-ResPak        PAKISTAN                       NA                   NA                -1.4029220   -1.6085859   -1.1972581
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CMIN          BRAZIL                         NA                   NA                -0.6841667   -0.8870073   -0.4813261
6 months    ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                -0.6242708   -0.7083402   -0.5402014
6 months    ki1114097-CMIN          PERU                           NA                   NA                -0.5133753   -0.5929878   -0.4337629
6 months    ki1114097-CONTENT       PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                -1.5769713   -1.7148941   -1.4390486
24 months   ki1114097-CMIN          PERU                           NA                   NA                -1.4709290   -1.5934208   -1.3484372
24 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          -0.0855669   -0.3889555    0.2178218
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          -0.2362472   -0.5541920    0.0816976
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          -0.1341782   -0.4693584    0.2010020
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]           0.0324345   -0.2460891    0.3109581
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]           0.0064169   -0.3761996    0.3890335
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]           0.0246842   -0.3559375    0.4053058
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]           0.0673178   -0.2230275    0.3576630
Birth       ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.1401953   -0.1287248    0.4091153
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.1321358   -0.1544249    0.4186964
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.4854000   -0.3937220    1.3645220
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.1249761   -0.6508667    0.4009145
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.1425864   -0.7851451    0.4999724
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          -0.3066071   -1.1862128    0.5729985
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]           0.2204762   -0.5983648    1.0393171
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]           0.2091456   -0.1173119    0.5356031
Birth       ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]           0.0215186   -0.3510656    0.3941028
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          -0.0891158   -0.3769721    0.1987405
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          -0.2521537   -0.5371831    0.0328758
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          -0.1055374   -0.3951481    0.1840733
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          -0.2409253   -0.5472097    0.0653591
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.1037973   -0.3893008    0.1817061
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0067131   -0.2840480    0.2706218
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          -0.0648430   -0.3497158    0.2200298
6 months    ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.1537035   -0.0874159    0.3948229
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.1001136   -0.1886597    0.3888869
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.4919933   -0.4235865    1.4075731
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0831582   -0.3598083    0.1934918
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0684124   -0.2376689    0.3744936
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]           0.3680148   -0.2630420    0.9990716
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          -0.0734650   -0.5595534    0.4126234
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          -0.0955505   -0.3346317    0.1435307
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0632020   -0.2721086    0.1457046
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]           0.0364635   -0.1471926    0.2201196
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          -0.0182713   -0.2050671    0.1685245
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]           0.1698331   -0.0206814    0.3603476
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]           0.1212876   -0.0916593    0.3342345
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]           0.3034651   -0.0672419    0.6741722
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]           0.2540735   -0.0784710    0.5866180
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]           0.2598640   -0.1545547    0.6742827
6 months    ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]          -0.2243188   -0.8034179    0.3547802
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]           0.0098316   -0.2004836    0.2201468
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]          -0.1799064   -0.3805382    0.0207253
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          PERU                           0%                   (0%, 5%]           0.0783726   -0.1422764    0.2990215
6 months    ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.0488009   -0.2525353    0.1549334
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          -0.0650857   -0.5462262    0.4160549
6 months    ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]           0.1367460   -0.3813989    0.6548910
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          -0.1174020   -0.4544227    0.2196187
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          -0.0040334   -0.2898622    0.2817955
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          -0.1451318   -0.4617878    0.1715243
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          -0.1270668   -0.4304208    0.1762873
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.1845619   -0.4697058    0.1005819
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0921742   -0.4029123    0.2185640
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          -0.0025134   -0.3174069    0.3123800
24 months   ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.3687362    0.0993450    0.6381274
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.2131617   -0.1321712    0.5584946
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.5741880   -0.1747230    1.3230991
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0162230   -0.3163266    0.2838806
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0056391   -0.3525765    0.3638546
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          -0.0904679   -0.3603436    0.1794078
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.1764882   -0.4169172    0.0639408
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]           0.0834447   -0.1167882    0.2836775
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]           0.0083422   -0.1813423    0.1980266
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]           0.1370020   -0.0958240    0.3698280
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]           0.0899566   -0.1818219    0.3617351
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]           0.3302627   -0.0156463    0.6761716
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]           0.2507462   -0.0803759    0.5818683
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]          -0.2151313   -0.5419434    0.1116808
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]          -0.5840280   -0.8999507   -0.2681053
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          PERU                           0%                   (0%, 5%]           0.1226768   -0.1863754    0.4317291
24 months   ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.0777846   -0.4128869    0.2573178
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          -0.0212906   -0.4676966    0.4251154
24 months   ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          -0.0534956   -0.5274072    0.4204160


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.1003019   -0.2662650    0.0656611
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0213552   -0.1375634    0.0948531
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0124064   -0.2311845    0.2063716
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0791963   -0.0925144    0.2509070
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.1185349   -0.1108452    0.3479151
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0955959   -0.4328948    0.2417030
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0071429   -0.5090898    0.5233755
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                 0.0311001   -0.1439914    0.2061917
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.1103702   -0.2613976    0.0406571
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0959577   -0.2073246    0.0154092
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0389554   -0.2048304    0.1269196
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0559359   -0.0983299    0.2102016
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.0923210   -0.1336847    0.3183267
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0273052   -0.1801651    0.1255547
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -0.0113864   -0.3510595    0.3282867
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0539201   -0.1865409    0.0787006
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                 0.0077642   -0.0830389    0.0985672
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.1165934   -0.0237382    0.2569251
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                 0.2073783   -0.0271184    0.4418750
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                 0.0810481   -0.1719362    0.3340325
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -0.0710353   -0.1994873    0.0574166
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                 0.0074604   -0.1285947    0.1435155
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.0007250   -0.3673197    0.3687698
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0382724   -0.1945292    0.1179845
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0587277   -0.1725086    0.0550532
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0905783   -0.2638969    0.0827403
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.1533856   -0.0230890    0.3298603
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.1802408   -0.0888067    0.4492883
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0140299   -0.1514663    0.1795261
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.1013643   -0.2561491    0.0534204
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                 0.0254699   -0.0728843    0.1238240
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0955560   -0.0873982    0.2785102
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                 0.2174102   -0.0176356    0.4524560
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -0.2909665   -0.4930720   -0.0888611
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                 0.0184156   -0.1785518    0.2153830
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.0256997   -0.3500713    0.2986720
