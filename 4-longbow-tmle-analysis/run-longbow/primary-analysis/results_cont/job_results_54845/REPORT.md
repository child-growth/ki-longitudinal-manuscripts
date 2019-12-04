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

agecat      studyid                 country                        perdiar6    n_cell     n  outcome_variable 
----------  ----------------------  -----------------------------  ---------  -------  ----  -----------------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              65   215  whz              
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        86   215  whz              
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             64   215  whz              
Birth       ki0047075b-MAL-ED       BRAZIL                         0%              54    62  whz              
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         6    62  whz              
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2    62  whz              
Birth       ki0047075b-MAL-ED       INDIA                          0%              11    45  whz              
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]        23    45  whz              
Birth       ki0047075b-MAL-ED       INDIA                          >5%             11    45  whz              
Birth       ki0047075b-MAL-ED       NEPAL                          0%               8    26  whz              
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        10    26  whz              
Birth       ki0047075b-MAL-ED       NEPAL                          >5%              8    26  whz              
Birth       ki0047075b-MAL-ED       PERU                           0%              67   228  whz              
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        69   228  whz              
Birth       ki0047075b-MAL-ED       PERU                           >5%             92   228  whz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%              85   112  whz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   112  whz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              4   112  whz              
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              51   115  whz              
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        44   115  whz              
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             20   115  whz              
Birth       ki1000109-EE            PAKISTAN                       0%             164   177  whz              
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]        11   177  whz              
Birth       ki1000109-EE            PAKISTAN                       >5%              2   177  whz              
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%             150   572  whz              
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       171   572  whz              
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%            251   572  whz              
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%             160   532  whz              
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       206   532  whz              
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%            166   532  whz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%             345   707  whz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       160   707  whz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%            202   707  whz              
Birth       ki1114097-CMIN          BANGLADESH                     0%              10    19  whz              
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         3    19  whz              
Birth       ki1114097-CMIN          BANGLADESH                     >5%              6    19  whz              
Birth       ki1114097-CONTENT       PERU                           0%               0     2  whz              
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]         1     2  whz              
Birth       ki1114097-CONTENT       PERU                           >5%              1     2  whz              
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%              71   241  whz              
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241  whz              
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             78   241  whz              
6 months    ki0047075b-MAL-ED       BRAZIL                         0%             192   209  whz              
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   209  whz              
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   209  whz              
6 months    ki0047075b-MAL-ED       INDIA                          0%              50   236  whz              
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       127   236  whz              
6 months    ki0047075b-MAL-ED       INDIA                          >5%             59   236  whz              
6 months    ki0047075b-MAL-ED       NEPAL                          0%              80   236  whz              
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   236  whz              
6 months    ki0047075b-MAL-ED       NEPAL                          >5%             80   236  whz              
6 months    ki0047075b-MAL-ED       PERU                           0%              68   273  whz              
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        89   273  whz              
6 months    ki0047075b-MAL-ED       PERU                           >5%            116   273  whz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             190   254  whz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254  whz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   254  whz              
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247  whz              
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247  whz              
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247  whz              
6 months    ki1000109-EE            PAKISTAN                       0%             338   375  whz              
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]        35   375  whz              
6 months    ki1000109-EE            PAKISTAN                       >5%              2   375  whz              
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   537  whz              
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       169   537  whz              
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   537  whz              
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             157   603  whz              
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       246   603  whz              
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            200   603  whz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715  whz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715  whz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715  whz              
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243  whz              
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243  whz              
6 months    ki1114097-CMIN          BANGLADESH                     >5%            104   243  whz              
6 months    ki1114097-CONTENT       PERU                           0%             115   215  whz              
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]        43   215  whz              
6 months    ki1114097-CONTENT       PERU                           >5%             57   215  whz              
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   212  whz              
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   212  whz              
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212  whz              
24 months   ki0047075b-MAL-ED       BRAZIL                         0%             154   169  whz              
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   169  whz              
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   169  whz              
24 months   ki0047075b-MAL-ED       INDIA                          0%              48   227  whz              
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   227  whz              
24 months   ki0047075b-MAL-ED       INDIA                          >5%             57   227  whz              
24 months   ki0047075b-MAL-ED       NEPAL                          0%              77   228  whz              
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   228  whz              
24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   228  whz              
24 months   ki0047075b-MAL-ED       PERU                           0%              53   201  whz              
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        64   201  whz              
24 months   ki0047075b-MAL-ED       PERU                           >5%             84   201  whz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   238  whz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238  whz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   238  whz              
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214  whz              
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214  whz              
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214  whz              
24 months   ki1000109-EE            PAKISTAN                       0%             153   168  whz              
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        14   168  whz              
24 months   ki1000109-EE            PAKISTAN                       >5%              1   168  whz              
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   428  whz              
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   428  whz              
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   428  whz              
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             153   579  whz              
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   579  whz              
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   579  whz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514  whz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514  whz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514  whz              
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   243  whz              
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243  whz              
24 months   ki1114097-CMIN          BANGLADESH                     >5%            100   243  whz              
24 months   ki1114097-CONTENT       PERU                           0%              84   164  whz              
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]        36   164  whz              
24 months   ki1114097-CONTENT       PERU                           >5%             44   164  whz              


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
![](/tmp/c30490eb-0643-46aa-8224-53dc6c39921f/8bb10894-e4d8-4c92-b59e-4c7336ae40ba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c30490eb-0643-46aa-8224-53dc6c39921f/8bb10894-e4d8-4c92-b59e-4c7336ae40ba/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c30490eb-0643-46aa-8224-53dc6c39921f/8bb10894-e4d8-4c92-b59e-4c7336ae40ba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.7866785   -1.0744710   -0.4988860
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0610116   -1.2774809   -0.8445423
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.9342625   -1.1909754   -0.6775496
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.7950757   -1.5829191   -0.0072322
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.2203660   -1.5340616   -0.9066704
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.4994857   -1.1828249    0.1838535
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.5662500   -1.1479485    0.0154485
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.7310000   -1.3926378   -0.0693622
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -1.0175000   -1.5408661   -0.4941339
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.1200860   -0.3337393    0.0935673
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.1503342   -0.1119910    0.4126593
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.1746074   -0.3620324    0.0128176
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 1.0267237    0.7746651    1.2787824
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5809318    0.2241245    0.9377391
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.4568605    0.0197288    0.8939922
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -1.3135546   -1.4893949   -1.1377142
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -1.3006262   -1.4785166   -1.1227358
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -1.4123893   -1.5594813   -1.2652973
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.2535746   -1.3865465   -1.1206026
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.2952008   -1.4094016   -1.1809999
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.3461183   -1.4814015   -1.2108352
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.2626685   -1.3842728   -1.1410642
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.2892985   -1.4407310   -1.1378660
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.1742866   -1.3274078   -1.0211654
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0819686   -0.3264566    0.1625194
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.2581959   -0.4664699   -0.0499220
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0529090   -0.2745511    0.1687332
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.8526963   -1.1225776   -0.5828151
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.7195562   -0.8757863   -0.5633260
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.6866818   -0.9916997   -0.3816640
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0109571   -0.2326846    0.2545989
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0201426   -0.1678968    0.2081820
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                 0.2194795   -0.0114395    0.4503985
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.9172528    0.6745728    1.1599327
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 1.0758499    0.8613014    1.2903985
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                 1.1187818    0.9293647    1.3081989
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.5939825    0.4106451    0.7773198
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3367273    0.0613640    0.6120905
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.7040741    0.0137907    1.3943574
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.4622991    0.2520533    0.6725450
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5829447    0.3624707    0.8034187
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.6563641    0.3946696    0.9180585
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.4305761   -0.6057283   -0.2554239
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.3510679   -0.5232513   -0.1788845
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.5267260   -0.6578302   -0.3956219
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.2547441   -0.3989148   -0.1105733
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.2619513   -0.3893606   -0.1345419
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0487240   -0.2006961    0.1032480
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0226153   -0.1320814    0.0868509
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0651467   -0.1005888    0.2308821
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                 0.1003296   -0.0539389    0.2545981
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.4209562   -0.6626137   -0.1792987
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.5006170   -0.8636743   -0.1375596
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.7569891   -0.9641882   -0.5497900
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 1.0485149    0.8873709    1.2096589
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 1.0952004    0.8421705    1.3482303
6 months    ki1114097-CONTENT       PERU                           >5%                  NA                 1.0918815    0.8479772    1.3357858
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.8321393   -1.0618202   -0.6024585
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.8981770   -1.0856767   -0.7106773
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.7467620   -0.9739598   -0.5195641
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.9834760   -1.2266873   -0.7402646
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.9055213   -1.0518831   -0.7591595
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.9821765   -1.2627379   -0.7016152
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.3588164   -0.5737052   -0.1439275
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.4564379   -0.6267086   -0.2861672
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.3039570   -0.5084815   -0.0994325
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0633956   -0.3190682    0.1922770
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0905473   -0.1042517    0.2853463
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                 0.2316968    0.0379765    0.4254170
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.4176648    0.2735376    0.5617920
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3947596    0.1539398    0.6355795
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.3216667   -0.2059039    0.8492372
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0683821   -0.1145175    0.2512817
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0086650   -0.2104746    0.1931445
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.1926463   -0.1245512    0.5098438
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.9728421   -1.1907485   -0.7549357
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.8527075   -1.0361668   -0.6692483
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.9134287   -1.0528742   -0.7739831
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.9362104   -1.0870899   -0.7853308
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.9595270   -1.0849512   -0.8341029
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.8085727   -0.9604404   -0.6567050
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.5303974   -0.6661269   -0.3946680
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.7571073   -0.9430618   -0.5711528
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.6388309   -0.8117214   -0.4659405
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.8731315   -1.0823273   -0.6639357
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.7070547   -0.9231821   -0.4909272
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.9253640   -1.0959214   -0.7548066
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.5551146    0.3791357    0.7310934
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.6386041    0.2667007    1.0105075
24 months   ki1114097-CONTENT       PERU                           >5%                  NA                 0.5308614    0.2666095    0.7951134


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
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.2743330   -0.6310407    0.0823746
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.1475840   -0.5299582    0.2347903
Birth       ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.4252903   -1.2697844    0.4192038
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.2955900   -0.7602110    1.3513909
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.1647500   -1.0457368    0.7162368
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.4512500   -1.2337366    0.3312366
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.2704202   -0.0699960    0.6108363
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.0545214   -0.3391752    0.2301324
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.4457919   -0.8840593   -0.0075245
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.5698632   -1.0752086   -0.0645178
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0129284   -0.2373165    0.2631732
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0988347   -0.3287031    0.1310336
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0416262   -0.2112453    0.1279929
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0925438   -0.2768355    0.0917480
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0266300   -0.2152270    0.1619669
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0883819   -0.1012996    0.2780635
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.1762273   -0.4972259    0.1447713
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0290596   -0.2992227    0.3573420
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.1331402   -0.1788344    0.4451147
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.1660145   -0.2429939    0.5750229
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0091855   -0.2976062    0.3159772
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.2085224   -0.1229856    0.5400305
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.1585971   -0.1658061    0.4830004
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.2015290   -0.1069278    0.5099858
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2572552   -0.5880686    0.0735582
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1100916   -0.6041238    0.8243071
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1206456   -0.1845045    0.4257957
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1940649   -0.1421148    0.5302446
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0795082   -0.1653482    0.3243645
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0961500   -0.3143669    0.1220670
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0072072   -0.1987031    0.1842887
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.2060200   -0.0021502    0.4141902
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0877619   -0.1104658    0.2859896
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.1229448   -0.0655946    0.3114842
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0796607   -0.5154081    0.3560866
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.3360329   -0.6538585   -0.0182073
6 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0466855   -0.2540321    0.3474031
6 months    ki1114097-CONTENT       PERU                           >5%                  0%                 0.0433666   -0.2488779    0.3356110
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0660377   -0.3616002    0.2295249
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0853774   -0.2367001    0.4074548
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0779547   -0.2066689    0.3625782
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0012994   -0.3709727    0.3735715
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0976215   -0.3718033    0.1765603
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0548594   -0.2416638    0.3513825
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.1539429   -0.1627138    0.4705995
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.2950924   -0.0210087    0.6111934
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0229052   -0.3035595    0.2577492
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0959981   -0.6429015    0.4509053
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0770471   -0.3502579    0.1961636
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1242642   -0.2432899    0.4918183
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1201346   -0.1642398    0.4045090
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0594134   -0.1988356    0.3176624
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0233167   -0.2182289    0.1715955
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.1276377   -0.0852215    0.3404969
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.2267098   -0.4557959    0.0023762
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.1084335   -0.3263955    0.1095285
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.1660768   -0.1340503    0.4662040
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0522325   -0.3225806    0.2181156
24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0834895   -0.3286189    0.4955979
24 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0242531   -0.3422120    0.2937058


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.1551819   -0.3867974    0.0764335
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.1373688   -0.8191609    0.5444233
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.2022115   -0.7099692    0.3055462
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0680684   -0.1195933    0.2557302
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.2642890   -0.4773036   -0.0512743
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0389891   -0.1934123    0.1154340
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0448841   -0.1538596    0.0640914
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0185171   -0.0627561    0.0997904
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0557077   -0.2601245    0.1487091
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.1446985   -0.0984473    0.3878443
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0994737   -0.0876123    0.2865596
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1356288   -0.0779753    0.3492329
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0518040   -0.1322455    0.0286376
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0739222   -0.0825384    0.2303827
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0168277   -0.1721767    0.1385213
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0556534   -0.0732458    0.1845526
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0523775   -0.0294953    0.1342503
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.1570890   -0.3595054    0.0453274
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 0.0199169   -0.0906616    0.1304953
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0128469   -0.1793806    0.2050744
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0318240   -0.1878380    0.2514859
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0160959   -0.1835498    0.1513580
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1745937   -0.0384882    0.3876757
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0086347   -0.0759944    0.0587251
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0135846   -0.1595589    0.1323897
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0612630   -0.1251252    0.2476512
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0433433   -0.0881220    0.1748087
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0799527   -0.1635958    0.0036903
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0195924   -0.1439681    0.1831529
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0117147   -0.1237682    0.1471977
