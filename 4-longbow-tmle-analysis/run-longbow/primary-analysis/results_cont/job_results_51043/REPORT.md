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
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              79   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             70   241
Birth       ki0047075b-MAL-ED       BRAZIL                         0%             169   183
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   183
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2   183
Birth       ki0047075b-MAL-ED       INDIA                          0%              46   203
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]       107   203
Birth       ki0047075b-MAL-ED       INDIA                          >5%             50   203
Birth       ki0047075b-MAL-ED       NEPAL                          0%              56   168
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        57   168
Birth       ki0047075b-MAL-ED       NEPAL                          >5%             55   168
Birth       ki0047075b-MAL-ED       PERU                           0%              82   279
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        84   279
Birth       ki0047075b-MAL-ED       PERU                           >5%            113   279
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%             192   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        49   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   250
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              59   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        40   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             19   118
Birth       ki1000109-ResPak        PAKISTAN                       0%               0     5
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]         2     5
Birth       ki1000109-ResPak        PAKISTAN                       >5%              3     5
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%             19    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               6    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         7    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%             10    23
Birth       ki1114097-CMIN          BANGLADESH                     0%               6     8
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0     8
Birth       ki1114097-CMIN          BANGLADESH                     >5%              2     8
Birth       ki1114097-CMIN          BRAZIL                         0%              36   111
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]        46   111
Birth       ki1114097-CMIN          BRAZIL                         >5%             29   111
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
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       168   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   536
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             157   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       242   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            183   582
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            104   243
6 months    ki1114097-CMIN          BRAZIL                         0%              38   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]        41   108
6 months    ki1114097-CMIN          BRAZIL                         >5%             29   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%             212   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]       189   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%            271   672
6 months    ki1114097-CMIN          PERU                           0%             184   634
6 months    ki1114097-CMIN          PERU                           (0%, 5%]       184   634
6 months    ki1114097-CMIN          PERU                           >5%            266   634
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
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   428
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             152   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   578
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   243
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
24 months   ki1114097-CMIN          BANGLADESH                     >5%            100   243
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
![](/tmp/e14609a0-6e80-413b-bc13-09fd3f79b20d/d91a8d55-ac97-4694-b493-1a2885a08b35/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e14609a0-6e80-413b-bc13-09fd3f79b20d/d91a8d55-ac97-4694-b493-1a2885a08b35/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e14609a0-6e80-413b-bc13-09fd3f79b20d/d91a8d55-ac97-4694-b493-1a2885a08b35/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.7782604   -1.0294856   -0.5270352
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0911413   -1.2910611   -0.8912215
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.0556300   -1.3008853   -0.8103747
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.1094221   -1.4681313   -0.7507129
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.0765863   -1.2515692   -0.9016034
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.0407510   -1.3379531   -0.7435490
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.9384011   -1.2102570   -0.6665451
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.8767102   -1.0923414   -0.6610790
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.9241571   -1.1789427   -0.6693715
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0826172   -0.2711294    0.1058951
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0208243   -0.2245248    0.2661735
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.1445075   -0.3095376    0.0205226
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0568750   -0.2178610    0.1041110
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.0457143   -0.2756394    0.3670679
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.1888889   -1.3021928    0.9244150
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 1.0822284    0.8285319    1.3359250
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.3582771   -0.0225593    0.7391136
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.9303947    0.5814392    1.2793503
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.2516667   -2.3338692   -0.1694641
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.3185714   -0.9422112    0.3050684
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.7530000   -1.4736153   -0.0323847
Birth       ki1114097-CMIN          BRAZIL                         0%                   NA                -0.2444316   -0.6073123    0.1184491
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.0845992   -0.3897447    0.2205463
Birth       ki1114097-CMIN          BRAZIL                         >5%                  NA                 0.0811850   -0.4248959    0.5872659
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0977815   -0.3516198    0.1560569
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.2679853   -0.4807511   -0.0552195
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0355279   -0.2627285    0.1916726
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.7777952   -1.0495223   -0.5060681
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.6872313   -0.8385515   -0.5359112
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.6647097   -0.9779741   -0.3514453
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0353215   -0.2159347    0.2865778
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.1398899   -0.0477968    0.3275765
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                 0.3514917    0.1168931    0.5860903
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.9136323    0.6652373    1.1620273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 1.0769990    0.8643089    1.2896892
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                 1.1105377    0.9236666    1.2974088
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.5938158    0.4104861    0.7771454
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3368182    0.0614584    0.6121780
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.7040741    0.0137907    1.3943574
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.4373966    0.2326973    0.6420959
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5695078    0.3502020    0.7888137
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.6815225    0.4128981    0.9501470
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                -0.4264885   -0.8939389    0.0409619
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -0.2658839   -0.6250169    0.0932491
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                -0.0551303   -0.3041243    0.1938638
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.4303720   -0.6027627   -0.2579814
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.3042112   -0.4714581   -0.1369642
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.5442072   -0.6739748   -0.4144396
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.2872058   -0.4301586   -0.1442530
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.2724418   -0.4013061   -0.1435775
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0668331   -0.2296421    0.0959759
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0335704   -0.1421327    0.0749919
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0431940   -0.1195682    0.2059563
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                 0.1093463   -0.0428059    0.2614984
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.4218036   -0.6681069   -0.1755004
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.4768455   -0.8257121   -0.1279790
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.7557329   -0.9610473   -0.5504185
6 months    ki1114097-CMIN          BRAZIL                         0%                   NA                 0.5834845    0.2737640    0.8932051
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                 0.5563263    0.1094564    1.0031962
6 months    ki1114097-CMIN          BRAZIL                         >5%                  NA                 0.3523006   -0.0452832    0.7498844
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0007765   -0.1563112    0.1547582
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -0.1215013   -0.2936361    0.0506334
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -0.1205071   -0.2583615    0.0173473
6 months    ki1114097-CMIN          PERU                           0%                   NA                 0.9346813    0.7753174    1.0940452
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                 0.5734874    0.4048105    0.7421642
6 months    ki1114097-CMIN          PERU                           >5%                  NA                 0.5449759    0.4073421    0.6826097
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 1.0326599    0.8719517    1.1933680
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 1.0862553    0.8417392    1.3307714
6 months    ki1114097-CONTENT       PERU                           >5%                  NA                 1.0613948    0.8219951    1.3007945
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.8313421   -1.0603716   -0.6023127
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.8893168   -1.0877251   -0.6909084
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.7235724   -0.9609598   -0.4861850
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.0061177   -1.2500945   -0.7621409
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.9106587   -1.0573397   -0.7639778
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.0109390   -1.2873451   -0.7345328
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.3205781   -0.5375331   -0.1036231
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.4552940   -0.6283087   -0.2822792
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.2987620   -0.5030257   -0.0944984
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0036750   -0.2241032    0.2314533
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0609959   -0.1336505    0.2556422
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                 0.2432148    0.0600552    0.4263744
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.4367232    0.2951611    0.5782852
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.4107692    0.1718748    0.6496636
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.3216667   -0.2059039    0.8492372
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0730228   -0.1093597    0.2554053
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0301180   -0.2282180    0.1679820
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.1867504   -0.1485098    0.5220106
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.9946692   -1.2025942   -0.7867441
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.8600557   -1.0463632   -0.6737482
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.9029062   -1.0445866   -0.7612259
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.9786213   -1.1298989   -0.8273436
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.9273780   -1.0513648   -0.8033912
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.7966634   -0.9437169   -0.6496099
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.5301591   -0.6674814   -0.3928368
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.7832336   -0.9698114   -0.5966559
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.6173435   -0.7878422   -0.4468448
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.8792855   -1.0829886   -0.6755824
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.7034160   -0.9188709   -0.4879612
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.9172840   -1.0848451   -0.7497228
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.1504007   -0.3893279    0.0885264
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -0.2891010   -0.5470711   -0.0311310
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -0.1957604   -0.3987965    0.0072757
24 months   ki1114097-CMIN          PERU                           0%                   NA                 0.9395169    0.7647775    1.1142563
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                 0.6810996    0.4897499    0.8724494
24 months   ki1114097-CMIN          PERU                           >5%                  NA                 0.7293801    0.5429844    0.9157759
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.5598456    0.3835868    0.7361043
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.5961431    0.2367010    0.9555852
24 months   ki1114097-CONTENT       PERU                           >5%                  NA                 0.5175575    0.2490475    0.7860674


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0415200   -0.1860797    0.1030397
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7932203    0.5962220    0.9902187
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.7508696   -1.2358912   -0.2658480
Birth       ki1114097-CMIN          BRAZIL                         NA                   NA                -0.1332432   -0.3441055    0.0776190
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                 1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000109-ResPak        PAKISTAN                       NA                   NA                -0.1683617   -0.3528233    0.0160999
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN          BRAZIL                         NA                   NA                 0.5889815    0.3767666    0.8011963
6 months    ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                -0.0832589   -0.1713269    0.0048090
6 months    ki1114097-CMIN          PERU                           NA                   NA                 0.6708938    0.5815040    0.7602836
6 months    ki1114097-CONTENT       PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                -0.2053345   -0.3365972   -0.0740718
24 months   ki1114097-CMIN          PERU                           NA                   NA                 0.7958060    0.6890764    0.9025356
24 months   ki1114097-CONTENT       PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.3128809   -0.6310115    0.0052498
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.2773696   -0.6284368    0.0736975
Birth       ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0328358   -0.3702541    0.4359257
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0686711   -0.3975993    0.5349414
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0616909   -0.2859999    0.4093817
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0142440   -0.3595335    0.3880215
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.1034415   -0.2067586    0.4136416
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.0618903   -0.3125466    0.1887659
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.1025893   -0.2568334    0.4620120
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.1320139   -1.2568970    0.9928693
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.7239513   -1.1828797   -0.2650229
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1518337   -0.5858652    0.2821978
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.9330952   -0.3159400    2.1821305
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.4986667   -0.8015059    1.7988393
Birth       ki1114097-CMIN          BRAZIL                         0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]             0%                 0.1598324   -0.3200416    0.6397064
Birth       ki1114097-CMIN          BRAZIL                         >5%                  0%                 0.3256166   -0.2929777    0.9442109
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.1702038   -0.5014210    0.1610133
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0622535   -0.2783103    0.4028173
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0905639   -0.2202056    0.4013334
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.1130855   -0.3026466    0.5288177
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1045683   -0.2087606    0.4178972
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.3161702   -0.0273536    0.6596939
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.1633668   -0.1627509    0.4894845
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.1969054   -0.1136982    0.5075091
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2569976   -0.5878039    0.0738086
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1102583   -0.6039552    0.8244718
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1321112   -0.1688299    0.4330524
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2441260   -0.0930217    0.5812737
6 months    ki1000109-ResPak        PAKISTAN                       0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             0%                 0.1606046   -0.4304681    0.7516773
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  0%                 0.3713582   -0.1568121    0.8995286
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1261609   -0.1137054    0.3660271
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.1138351   -0.3294545    0.1017842
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0147640   -0.1764374    0.2059655
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.2203727    0.0047685    0.4359769
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0767644   -0.1181280    0.2716569
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.1429166   -0.0425038    0.3283371
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0550419   -0.4825981    0.3725143
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.3339293   -0.6550663   -0.0127923
6 months    ki1114097-CMIN          BRAZIL                         0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             0%                -0.0271583   -0.5823261    0.5280095
6 months    ki1114097-CMIN          BRAZIL                         >5%                  0%                -0.2311840   -0.7394000    0.2770321
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                -0.1207249   -0.3528312    0.1113814
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                -0.1197306   -0.3275601    0.0880988
6 months    ki1114097-CMIN          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             0%                -0.3611939   -0.5935913   -0.1287965
6 months    ki1114097-CMIN          PERU                           >5%                  0%                -0.3897054   -0.6000723   -0.1793385
6 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0535954   -0.2387928    0.3459837
6 months    ki1114097-CONTENT       PERU                           >5%                  0%                 0.0287350   -0.2603318    0.3178017
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0579746   -0.3620856    0.2461364
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.1077697   -0.2221180    0.4376575
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0954590   -0.1900053    0.3809233
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0048213   -0.3741255    0.3644829
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.1347159   -0.4138066    0.1443748
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0218161   -0.2755739    0.3192061
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0573209   -0.2356889    0.3503306
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.2395398   -0.0475097    0.5265894
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0259539   -0.3036414    0.2517336
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.1150565   -0.6612895    0.4311765
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1031408   -0.3712445    0.1649630
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1137276   -0.2667659    0.4942212
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1346134   -0.1424318    0.4116586
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0917629   -0.1599281    0.3434539
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0512432   -0.1417402    0.2442267
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.1819578   -0.0253232    0.3892389
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.2530745   -0.4838477   -0.0223013
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0871844   -0.3053258    0.1309570
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.1758695   -0.1208826    0.4726215
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0379985   -0.3022748    0.2262778
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                -0.1387003   -0.4907193    0.2133187
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                -0.0453597   -0.3584485    0.2677292
24 months   ki1114097-CMIN          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             0%                -0.2584173   -0.5182799    0.0014454
24 months   ki1114097-CMIN          PERU                           >5%                  0%                -0.2101368   -0.4661243    0.0458508
24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0362975   -0.3644410    0.4370361
24 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0422881   -0.3632558    0.2786796


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.1848101   -0.3861484    0.0165281
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0403088   -0.2667057    0.3473233
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0339368   -0.1807180    0.2485916
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0090329   -0.1570854    0.1751512
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0153550   -0.0683484    0.0990584
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.2890081   -0.4933332   -0.0846830
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.5007971   -0.3910365    1.3926307
Birth       ki1114097-CMIN          BRAZIL                         0%                   NA                 0.1111884   -0.1936106    0.4159873
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0420145   -0.2558633    0.1718342
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0743983   -0.1688237    0.3176203
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0757237   -0.1196884    0.2711357
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1407633   -0.0769717    0.3584984
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0517423   -0.1321802    0.0286956
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0796547   -0.0732848    0.2325942
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.2581268   -0.1672542    0.6835079
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0085381   -0.1609577    0.1438814
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0788353   -0.0486209    0.2062914
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0633326   -0.0178156    0.1444808
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.1562416   -0.3628393    0.0503561
6 months    ki1114097-CMIN          BRAZIL                         0%                   NA                 0.0054969   -0.2794131    0.2904069
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0824825   -0.2130277    0.0480628
6 months    ki1114097-CMIN          PERU                           0%                   NA                -0.2637875   -0.4004662   -0.1271088
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 0.0357719   -0.0749284    0.1464722
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0105167   -0.1813048    0.2023382
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0538270   -0.1661024    0.2737563
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0558693   -0.2261693    0.1144307
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1162255   -0.0757266    0.3081775
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0100215   -0.0767124    0.0566694
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0229293   -0.1662080    0.1203494
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0830901   -0.0936296    0.2598098
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0906801   -0.0398679    0.2212280
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0801911   -0.1649526    0.0045704
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0257464   -0.1331276    0.1846205
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0549338   -0.2418953    0.1320277
24 months   ki1114097-CMIN          PERU                           0%                   NA                -0.1437109   -0.2768909   -0.0105308
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0069837   -0.1284488    0.1424162
