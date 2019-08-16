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
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              86   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        96   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             75   257
Birth       ki0047075b-MAL-ED       BRAZIL                         0%             176   191
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   191
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2   191
Birth       ki0047075b-MAL-ED       INDIA                          0%              47   206
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]       109   206
Birth       ki0047075b-MAL-ED       INDIA                          >5%             50   206
Birth       ki0047075b-MAL-ED       NEPAL                          0%              60   173
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        57   173
Birth       ki0047075b-MAL-ED       NEPAL                          >5%             56   173
Birth       ki0047075b-MAL-ED       PERU                           0%              83   287
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        88   287
Birth       ki0047075b-MAL-ED       PERU                           >5%            116   287
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%             193   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   252
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              60   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        42   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             21   123
Birth       ki1000109-ResPak        PAKISTAN                       0%               1     6
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]         2     6
Birth       ki1000109-ResPak        PAKISTAN                       >5%              3     6
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%             19    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               8    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         7    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%             12    27
Birth       ki1114097-CMIN          BANGLADESH                     0%              11    13
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0    13
Birth       ki1114097-CMIN          BANGLADESH                     >5%              2    13
Birth       ki1114097-CMIN          BRAZIL                         0%              38   115
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]        47   115
Birth       ki1114097-CMIN          BRAZIL                         >5%             30   115
Birth       ki1114097-CMIN          PERU                           0%               4    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]         5    10
Birth       ki1114097-CMIN          PERU                           >5%              1    10
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
6 months    ki1000109-ResPak        PAKISTAN                       0%              41   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]        64   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%            130   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       169   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             158   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       242   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            183   583
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        59   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            103   243
6 months    ki1114097-CMIN          BRAZIL                         0%              38   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]        41   108
6 months    ki1114097-CMIN          BRAZIL                         >5%             29   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%             212   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]       190   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%            270   672
6 months    ki1114097-CMIN          PERU                           0%             184   635
6 months    ki1114097-CMIN          PERU                           (0%, 5%]       184   635
6 months    ki1114097-CMIN          PERU                           >5%            267   635
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
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       128   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   429
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             151   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   242
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%             99   242
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              99   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        77   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%            103   279
24 months   ki1114097-CMIN          PERU                           0%              97   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]        79   244
24 months   ki1114097-CMIN          PERU                           >5%             68   244
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
![](/tmp/d5fdd274-2548-46dc-bc8e-55f4c19e5ad4/c00abbf3-2812-4d9e-a114-5ce875e225c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d5fdd274-2548-46dc-bc8e-55f4c19e5ad4/c00abbf3-2812-4d9e-a114-5ce875e225c4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d5fdd274-2548-46dc-bc8e-55f4c19e5ad4/c00abbf3-2812-4d9e-a114-5ce875e225c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -1.0687988   -1.2834337   -0.8541640
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.9949425   -1.2075540   -0.7823311
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.2193699   -1.4576710   -0.9810688
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.1370452   -1.4318092   -0.8422813
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.9836376   -1.1688855   -0.7983897
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.9455314   -1.1834454   -0.7076174
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.7204499   -1.0077541   -0.4331456
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.7392813   -0.9850437   -0.4935189
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.7299068   -1.0146718   -0.4451418
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.9420259   -1.1534918   -0.7305599
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.0283018   -1.2445805   -0.8120231
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.8733546   -1.0445394   -0.7021699
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.6932642   -0.8381158   -0.5484127
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.8254000   -1.0726550   -0.5781450
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.3400000   -1.1836353    0.5036353
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.0073067   -1.2858243   -0.7287892
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.9123902   -1.3438978   -0.4808826
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.1766634   -1.6552325   -0.6980944
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.4237500   -2.1656043   -0.6818957
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.1171429   -1.5897509   -0.6445348
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.8966667   -1.5653535   -0.2279798
Birth       ki1114097-CMIN          BRAZIL                         0%                   NA                 0.1121794   -0.1668386    0.3911974
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.0395563   -0.3059563    0.2268437
Birth       ki1114097-CMIN          BRAZIL                         >5%                  NA                -0.0232425   -0.3730544    0.3265695
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -1.1868457   -1.4026770   -0.9710144
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0930327   -1.2721681   -0.9138973
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.3617042   -1.6017421   -1.1216663
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.3124049   -1.5581647   -1.0666452
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.1376495   -1.2962597   -0.9790394
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.4567593   -1.7074030   -1.2061155
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.6342468   -0.8331573   -0.4353364
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.5392078   -0.7391207   -0.3392949
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.5357379   -0.7246485   -0.3468274
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -1.4350841   -1.6584502   -1.2117181
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.4004225   -1.5870642   -1.2137808
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                -1.2127226   -1.3807978   -1.0446474
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -1.0555833   -1.2041502   -0.9070165
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.1556970   -1.4033215   -0.9080724
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.6637037   -1.5451618    0.2177544
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4053005   -1.6008844   -1.2097165
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3449549   -1.5334175   -1.1564922
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2487752   -1.4944928   -1.0030577
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                -1.1883000   -1.6984294   -0.6781705
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -1.4292033   -1.8048709   -1.0535357
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                -1.4928520   -1.7805554   -1.2051487
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -1.4599844   -1.6315669   -1.2884018
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -1.3498520   -1.5104761   -1.1892280
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -1.4171711   -1.5507300   -1.2836122
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.0548472   -1.1959370   -0.9137574
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.0941562   -1.2104993   -0.9778131
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.1135354   -1.2596254   -0.9674454
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.1465896   -1.2436071   -1.0495721
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.3029332   -1.4672657   -1.1386006
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.1993556   -1.3356375   -1.0630738
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -1.6836306   -1.9389833   -1.4282779
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -2.0101996   -2.2786754   -1.7417239
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -1.7453683   -1.9514683   -1.5392683
6 months    ki1114097-CMIN          BRAZIL                         0%                   NA                -0.4768745   -0.7452741   -0.2084748
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.7167102   -1.0380357   -0.3953847
6 months    ki1114097-CMIN          BRAZIL                         >5%                  NA                -0.9879463   -1.5035330   -0.4723596
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.5434339   -0.6942671   -0.3926006
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -0.5644592   -0.7105805   -0.4183379
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -0.7303850   -0.8672530   -0.5935171
6 months    ki1114097-CMIN          PERU                           0%                   NA                -0.4410323   -0.5815414   -0.3005232
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.5141630   -0.6833527   -0.3449734
6 months    ki1114097-CMIN          PERU                           >5%                  NA                -0.5766334   -0.6912932   -0.4619735
6 months    ki1114097-CONTENT       PERU                           0%                   NA                -0.3791185   -0.6272436   -0.1309933
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.3205219   -0.7389165    0.0978727
6 months    ki1114097-CONTENT       PERU                           >5%                  NA                -0.1956030   -0.5046045    0.1133984
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -2.0094476   -2.2831275   -1.7357678
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.9209259   -2.1123881   -1.7294638
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.9365061   -2.1394225   -1.7335897
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.9225528   -2.1889656   -1.6561400
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.7796982   -1.9509590   -1.6084373
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.9668606   -2.2322364   -1.7014849
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -1.3519033   -1.5429165   -1.1608902
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -1.1710547   -1.3800844   -0.9620249
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -1.2703017   -1.5000510   -1.0405524
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -1.9280542   -2.1580610   -1.6980474
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.8945227   -2.1163512   -1.6726942
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                -1.5362567   -1.7069956   -1.3655178
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -1.5899153   -1.7422064   -1.4376241
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.8030769   -2.1130160   -1.4931379
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -1.2288889   -1.9106554   -0.5471224
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -2.6323487   -2.8482778   -2.4164195
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.5746554   -2.7906081   -2.3587028
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.5390198   -2.8333265   -2.2447130
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -2.1873693   -2.3878907   -1.9868479
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -2.0830073   -2.2676916   -1.8983231
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -2.2510289   -2.4150212   -2.0870366
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.5258526   -1.6817012   -1.3700040
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.6180890   -1.7483189   -1.4878592
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.6173157   -1.7608508   -1.4737807
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.3823748   -1.4910548   -1.2736947
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.5305531   -1.7399995   -1.3211067
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.4253572   -1.6017804   -1.2489340
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -2.3924465   -2.6025217   -2.1823714
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -2.7283824   -3.0078299   -2.4489349
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -2.4815831   -2.6685216   -2.2946445
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -1.5022356   -1.7439678   -1.2605034
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -1.2875783   -1.5121365   -1.0630201
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -1.8678591   -2.0937255   -1.6419927
24 months   ki1114097-CMIN          PERU                           0%                   NA                -1.3739849   -1.5520813   -1.1958886
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                -1.4879031   -1.7369151   -1.2388911
24 months   ki1114097-CMIN          PERU                           >5%                  NA                -1.5886277   -1.8127070   -1.3645483
24 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.6621501   -0.9152139   -0.4090862
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.5861814   -0.9480543   -0.2243084
24 months   ki1114097-CONTENT       PERU                           >5%                  NA                -0.6456510   -0.9454106   -0.3458913


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
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0738563   -0.2284506    0.3761632
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.1505710   -0.4711359    0.1699938
Birth       ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.1534076   -0.1785431    0.4853584
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.1915138   -0.1745867    0.5576144
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0188314   -0.3964832    0.3588204
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0094570   -0.4150379    0.3961240
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0862759   -0.3878757    0.2153239
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0686712   -0.2022389    0.3395814
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.1321358   -0.4186964    0.1544249
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3532642   -0.5027161    1.2092446
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0949166   -0.4191665    0.6089996
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1693567   -0.7290246    0.3903112
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.3066071   -0.5729985    1.1862128
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.5270833   -0.4716608    1.5258275
Birth       ki1114097-CMIN          BRAZIL                         0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]             0%                -0.1517357   -0.4774538    0.1739824
Birth       ki1114097-CMIN          BRAZIL                         >5%                  0%                -0.1354219   -0.5284902    0.2576465
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0938130   -0.1864570    0.3740830
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.1748585   -0.4982214    0.1485044
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.1747554   -0.1182200    0.4677307
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.1443544   -0.4977663    0.2090576
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0950390   -0.1873450    0.3774230
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0985089   -0.1764138    0.3734317
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0346617   -0.2592906    0.3286140
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.2223615   -0.0566113    0.5013344
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.1001136   -0.3888869    0.1886597
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3918796   -0.5020111    1.2857703
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0603456   -0.2088188    0.3295100
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1565252   -0.1568857    0.4699361
6 months    ki1000109-ResPak        PAKISTAN                       0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             0%                -0.2409033   -0.8732763    0.3914697
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  0%                -0.3045520   -0.8898358    0.2807317
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1101323   -0.1235240    0.3437886
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0428133   -0.1729030    0.2585295
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0393090   -0.2224517    0.1438336
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0586883   -0.2620016    0.1446251
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1563436   -0.3472374    0.0345503
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0527660   -0.2201064    0.1145744
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.3265690   -0.6967349    0.0435968
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0617377   -0.3896153    0.2661398
6 months    ki1114097-CMIN          BRAZIL                         0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             0%                -0.2398357   -0.6543340    0.1746626
6 months    ki1114097-CMIN          BRAZIL                         >5%                  0%                -0.5110718   -1.0920333    0.0698897
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                -0.0210253   -0.2306312    0.1885805
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                -0.1869512   -0.3900724    0.0161701
6 months    ki1114097-CMIN          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             0%                -0.0731307   -0.2926792    0.1464178
6 months    ki1114097-CMIN          PERU                           >5%                  0%                -0.1356011   -0.3169481    0.0457459
6 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0585966   -0.4285065    0.5456996
6 months    ki1114097-CONTENT       PERU                           >5%                  0%                 0.1835155   -0.2134889    0.5805198
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0885217   -0.2469960    0.4240394
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0729415   -0.2683134    0.4141964
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.1428546   -0.1730081    0.4587174
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0443078   -0.4195411    0.3309254
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1808487   -0.1022217    0.4639191
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0816016   -0.2173246    0.3805278
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0335315   -0.2873375    0.3544005
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.3917975    0.1066786    0.6769164
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2131617   -0.5584946    0.1321712
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3610264   -0.3375423    1.0595950
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0576933   -0.2482333    0.3636199
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0933289   -0.2725570    0.4592148
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1043620   -0.1659936    0.3747175
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0636596   -0.3198427    0.1925235
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0922364   -0.2936625    0.1091896
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0914631   -0.3021558    0.1192295
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1481783   -0.3842387    0.0878821
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0429824   -0.2503670    0.1644022
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.3359359   -0.6859399    0.0140681
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0891366   -0.3708310    0.1925578
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                 0.2146573   -0.1144482    0.5437627
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                -0.3656235   -0.6960680   -0.0351790
24 months   ki1114097-CMIN          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             0%                -0.1139181   -0.4206941    0.1928579
24 months   ki1114097-CMIN          PERU                           >5%                  0%                -0.2146427   -0.5013780    0.0720926
24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0759687   -0.3670743    0.5190117
24 months   ki1114097-CONTENT       PERU                           >5%                  0%                 0.0164991   -0.3789158    0.4119140


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0155981   -0.1913652   0.1601691
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.1264142   -0.1218584   0.3746867
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0115481   -0.2128592   0.2359555
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0097959   -0.1671150   0.1867068
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0136008   -0.0812993   0.0540976
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0734856   -0.1492555   0.2962267
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.3137500   -0.3052564   0.9327564
Birth       ki1114097-CMIN          BRAZIL                         0%                   NA                -0.0545272   -0.2542760   0.1452216
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0188321   -0.2020739   0.1644098
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0920377   -0.1324974   0.3165727
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0731875   -0.0868317   0.2332067
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1082832   -0.0856245   0.3021909
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0077927   -0.0810491   0.0654638
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0451790   -0.0960940   0.1864520
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                -0.2146220   -0.6809443   0.2517002
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0526023   -0.0984150   0.2036196
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0322569   -0.1549708   0.0904570
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0520887   -0.1264665   0.0222890
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.1008070   -0.3035392   0.1019252
6 months    ki1114097-CMIN          BRAZIL                         0%                   NA                -0.2072922   -0.4585135   0.0439291
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0808370   -0.2051904   0.0435165
6 months    ki1114097-CMIN          PERU                           0%                   NA                -0.0723430   -0.1931239   0.0484378
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 0.0651968   -0.0987651   0.2291586
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0663344   -0.1514747   0.2841435
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0767378   -0.1614781   0.3149538
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0766840   -0.0872576   0.2406257
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1779547   -0.0204323   0.3763416
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0329209   -0.1165698   0.0507280
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0264608   -0.1307866   0.1837083
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0065748   -0.1708204   0.1839700
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0602653   -0.1943858   0.0738553
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0471583   -0.1261329   0.0318162
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.1185039   -0.2905310   0.0535232
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0747358   -0.2645558   0.1150843
24 months   ki1114097-CMIN          PERU                           0%                   NA                -0.0969440   -0.2451701   0.0512821
24 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0340694   -0.2016045   0.1334656
