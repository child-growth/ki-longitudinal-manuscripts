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
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              72   231  haz              
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        90   231  haz              
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             69   231  haz              
Birth       ki0047075b-MAL-ED       BRAZIL                         0%              57    65  haz              
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         6    65  haz              
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2    65  haz              
Birth       ki0047075b-MAL-ED       INDIA                          0%              12    47  haz              
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]        24    47  haz              
Birth       ki0047075b-MAL-ED       INDIA                          >5%             11    47  haz              
Birth       ki0047075b-MAL-ED       NEPAL                          0%               8    27  haz              
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        10    27  haz              
Birth       ki0047075b-MAL-ED       NEPAL                          >5%              9    27  haz              
Birth       ki0047075b-MAL-ED       PERU                           0%              67   233  haz              
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        72   233  haz              
Birth       ki0047075b-MAL-ED       PERU                           >5%             94   233  haz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%              86   113  haz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   113  haz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              4   113  haz              
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              59   125  haz              
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        45   125  haz              
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             21   125  haz              
Birth       ki1000109-EE            PAKISTAN                       0%             223   240  haz              
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]        15   240  haz              
Birth       ki1000109-EE            PAKISTAN                       >5%              2   240  haz              
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%             160   605  haz              
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       177   605  haz              
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%            268   605  haz              
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%             161   539  haz              
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       209   539  haz              
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%            169   539  haz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%             360   732  haz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       163   732  haz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%            209   732  haz              
Birth       ki1114097-CMIN          BANGLADESH                     0%              16    26  haz              
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         4    26  haz              
Birth       ki1114097-CMIN          BANGLADESH                     >5%              6    26  haz              
Birth       ki1114097-CONTENT       PERU                           0%               0     2  haz              
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]         1     2  haz              
Birth       ki1114097-CONTENT       PERU                           >5%              1     2  haz              
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%              71   241  haz              
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241  haz              
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             78   241  haz              
6 months    ki0047075b-MAL-ED       BRAZIL                         0%             192   209  haz              
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   209  haz              
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   209  haz              
6 months    ki0047075b-MAL-ED       INDIA                          0%              50   236  haz              
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       127   236  haz              
6 months    ki0047075b-MAL-ED       INDIA                          >5%             59   236  haz              
6 months    ki0047075b-MAL-ED       NEPAL                          0%              80   236  haz              
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   236  haz              
6 months    ki0047075b-MAL-ED       NEPAL                          >5%             80   236  haz              
6 months    ki0047075b-MAL-ED       PERU                           0%              68   273  haz              
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        89   273  haz              
6 months    ki0047075b-MAL-ED       PERU                           >5%            116   273  haz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             190   254  haz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254  haz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   254  haz              
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247  haz              
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247  haz              
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247  haz              
6 months    ki1000109-EE            PAKISTAN                       0%             336   373  haz              
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]        35   373  haz              
6 months    ki1000109-EE            PAKISTAN                       >5%              2   373  haz              
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   537  haz              
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       169   537  haz              
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   537  haz              
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             158   604  haz              
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       246   604  haz              
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            200   604  haz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715  haz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715  haz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715  haz              
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243  haz              
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        59   243  haz              
6 months    ki1114097-CMIN          BANGLADESH                     >5%            103   243  haz              
6 months    ki1114097-CONTENT       PERU                           0%             115   215  haz              
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]        43   215  haz              
6 months    ki1114097-CONTENT       PERU                           >5%             57   215  haz              
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   212  haz              
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   212  haz              
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212  haz              
24 months   ki0047075b-MAL-ED       BRAZIL                         0%             154   169  haz              
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   169  haz              
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   169  haz              
24 months   ki0047075b-MAL-ED       INDIA                          0%              48   227  haz              
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   227  haz              
24 months   ki0047075b-MAL-ED       INDIA                          >5%             57   227  haz              
24 months   ki0047075b-MAL-ED       NEPAL                          0%              77   228  haz              
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   228  haz              
24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   228  haz              
24 months   ki0047075b-MAL-ED       PERU                           0%              53   201  haz              
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        64   201  haz              
24 months   ki0047075b-MAL-ED       PERU                           >5%             84   201  haz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   238  haz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238  haz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   238  haz              
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214  haz              
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214  haz              
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214  haz              
24 months   ki1000109-EE            PAKISTAN                       0%             152   167  haz              
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        14   167  haz              
24 months   ki1000109-EE            PAKISTAN                       >5%              1   167  haz              
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   429  haz              
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       128   429  haz              
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   429  haz              
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             152   578  haz              
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   578  haz              
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   578  haz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514  haz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514  haz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514  haz              
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   242  haz              
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   242  haz              
24 months   ki1114097-CMIN          BANGLADESH                     >5%             99   242  haz              
24 months   ki1114097-CONTENT       PERU                           0%              84   164  haz              
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]        36   164  haz              
24 months   ki1114097-CONTENT       PERU                           >5%             44   164  haz              


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
![](/tmp/032adeab-f65a-4d21-8679-dcd27dbcfc91/2e1bb5d8-820e-4a4a-b3e6-52aa9568137c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/032adeab-f65a-4d21-8679-dcd27dbcfc91/2e1bb5d8-820e-4a4a-b3e6-52aa9568137c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/032adeab-f65a-4d21-8679-dcd27dbcfc91/2e1bb5d8-820e-4a4a-b3e6-52aa9568137c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -1.0716562   -1.3112953   -0.8320171
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0344276   -1.2698084   -0.7990467
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.2819799   -1.5309786   -1.0329812
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.2290809   -1.8967551   -0.5614067
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.0988275   -1.5542916   -0.6433634
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.3449229   -1.9437861   -0.7460597
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.3125000   -0.9090602    0.2840602
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.8360000   -1.2964736   -0.3755264
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -1.3533333   -1.9688465   -0.7378201
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.8805623   -1.0708249   -0.6902998
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.9506200   -1.1372451   -0.7639949
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.8242947   -0.9887690   -0.6598203
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.2440425   -1.5766953   -0.9113897
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.1226023   -1.4546836   -0.7905209
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.9505062   -1.4106421   -0.4903703
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.9276306   -1.0689947   -0.7862666
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.9387949   -1.0667714   -0.8108185
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.9192288   -1.0426314   -0.7958262
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.9206565   -1.0327028   -0.8086102
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.8771319   -0.9830317   -0.7712322
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.8789526   -1.0016486   -0.7562565
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.9175575   -1.0165258   -0.8185892
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.8862987   -1.0342636   -0.7383337
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.9150656   -1.0456109   -0.7845202
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -1.1966826   -1.4114074   -0.9819579
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.1008727   -1.2829318   -0.9188137
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.3574778   -1.5926193   -1.1223363
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.2387184   -1.4798340   -0.9976027
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.1253023   -1.2861370   -0.9644675
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.3818303   -1.6395966   -1.1240641
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.6318844   -0.8306905   -0.4330783
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.5463920   -0.7475146   -0.3452693
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.5407155   -0.7274920   -0.3539390
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -1.4321201   -1.6478821   -1.2163581
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.3883279   -1.5696002   -1.2070555
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                -1.2082520   -1.3733502   -1.0431539
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -1.0562193   -1.2045965   -0.9078421
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.1532424   -1.4008073   -0.9056775
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.6637037   -1.5451618    0.2177544
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4287827   -1.6279581   -1.2296073
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3337568   -1.5277273   -1.1397863
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2316530   -1.4777952   -0.9855109
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -1.4521473   -1.6227696   -1.2815251
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -1.3483261   -1.5039278   -1.1927243
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -1.4242464   -1.5558018   -1.2926910
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.0435001   -1.1850282   -0.9019721
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.0908112   -1.2052659   -0.9763566
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.1152531   -1.2515693   -0.9789369
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.1470783   -1.2430751   -1.0510815
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.3050991   -1.4710991   -1.1390992
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.2001574   -1.3399849   -1.0603299
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -1.6997924   -1.9603383   -1.4392466
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -1.9859483   -2.2550897   -1.7168069
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -1.7328643   -1.9349843   -1.5307443
6 months    ki1114097-CONTENT       PERU                           0%                   NA                -0.4032513   -0.6472405   -0.1592621
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.3680642   -0.7602146    0.0240862
6 months    ki1114097-CONTENT       PERU                           >5%                  NA                -0.2834969   -0.5951147    0.0281210
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -2.0276277   -2.3083770   -1.7468785
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.9402786   -2.1354309   -1.7451264
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.9390867   -2.1407476   -1.7374257
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.9618877   -2.2283848   -1.6953906
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.8270787   -1.9945451   -1.6596123
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -2.0051997   -2.2660423   -1.7443570
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -1.3971856   -1.5855213   -1.2088500
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -1.2378032   -1.4447495   -1.0308570
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -1.3359031   -1.5611206   -1.1106857
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -1.8716589   -2.1124723   -1.6308455
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.8865993   -2.1047620   -1.6684366
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                -1.5247331   -1.6944590   -1.3550072
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -1.6087382   -1.7601786   -1.4572979
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.8343750   -2.1416970   -1.5270530
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -1.2655556   -1.9703196   -0.5607915
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -2.6612857   -2.8805428   -2.4420286
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6298184   -2.8456529   -2.4139840
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.5655888   -2.8769736   -2.2542039
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -2.2390718   -2.4306413   -2.0475023
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -2.1004871   -2.2863476   -1.9146266
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -2.2943827   -2.4567572   -2.1320082
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.5408622   -1.6978256   -1.3838988
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.6314025   -1.7622488   -1.5005562
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.6208390   -1.7646634   -1.4770147
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.3922727   -1.4974685   -1.2870769
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.5526622   -1.7605309   -1.3447935
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.4241025   -1.5989335   -1.2492715
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -2.4151459   -2.6360940   -2.1941977
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -2.6810006   -2.9629965   -2.3990047
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -2.4835515   -2.6681616   -2.2989414
24 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.7034414   -0.9583166   -0.4485661
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.5794914   -0.9556132   -0.2033696
24 months   ki1114097-CONTENT       PERU                           >5%                  NA                -0.7267068   -1.0230311   -0.4303826


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.9314050   -1.0202164   -0.8425936
Birth       ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CONTENT       PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0372286   -0.2995622    0.3740194
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.2103238   -0.5565276    0.1358801
Birth       ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.1302534   -0.6875660    0.9480727
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.1158420   -1.0180392    0.7863553
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.5235000   -1.2771047    0.2301047
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -1.0408333   -1.8980034   -0.1836633
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0700577   -0.3181248    0.1780095
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0562677   -0.1736856    0.2862209
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1214402   -0.3492327    0.5921132
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2935363   -0.2756939    0.8627666
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0111643   -0.1850705    0.1627419
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0084018   -0.1593376    0.1761412
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0435246   -0.0978616    0.1849108
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0417039   -0.1114906    0.1948985
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0312589   -0.1419109    0.2044287
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0024920   -0.1561415    0.1611255
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0958099   -0.1848440    0.3764638
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.1607952   -0.4815908    0.1600004
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.1134161   -0.1766759    0.4035081
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.1431120   -0.4962950    0.2100710
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0854925   -0.1977431    0.3687281
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0911689   -0.1821813    0.3645191
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0437922   -0.2365737    0.3241581
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.2238680   -0.0465099    0.4942460
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0970231   -0.3856478    0.1916015
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3925156   -0.5013436    1.2863748
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0950259   -0.1829114    0.3729632
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1971297   -0.1179839    0.5122432
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1038213   -0.1250862    0.3327287
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0279009   -0.1847244    0.2405262
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0473111   -0.2294052    0.1347829
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0717530   -0.2684680    0.1249620
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1580208   -0.3498858    0.0338441
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0530791   -0.2228087    0.1166504
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.2861559   -0.6606822    0.0883705
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0330718   -0.3624397    0.2962961
6 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0351871   -0.4273955    0.4977697
6 months    ki1114097-CONTENT       PERU                           >5%                  0%                 0.1197544   -0.2807019    0.5202108
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0873491   -0.2540246    0.4287228
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0885411   -0.2567343    0.4338164
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.1348090   -0.1785609    0.4481789
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0433120   -0.4153487    0.3287247
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1593824   -0.1207934    0.4395582
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0612825   -0.2311157    0.3536807
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0149404   -0.3378716    0.3079908
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.3469258    0.0527774    0.6410743
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2256368   -0.5682459    0.1169723
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3431827   -0.3776686    1.0640340
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0314672   -0.2768314    0.3397658
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0956969   -0.2853685    0.4767623
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1385847   -0.1260716    0.4032410
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0553110   -0.3039558    0.1933339
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0905403   -0.2934516    0.1123709
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0799769   -0.2915111    0.1315573
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1603895   -0.3923949    0.0716159
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0318298   -0.2350274    0.1713678
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.2658547   -0.6255547    0.0938453
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0684056   -0.3577494    0.2209382
24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.1239500   -0.3360388    0.5839388
24 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0232655   -0.4061404    0.3596095


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0464391   -0.2456116    0.1527335
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0254639   -0.5610139    0.6119416
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.5408333   -1.0628947   -0.0187719
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0022274   -0.1529645    0.1485098
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0884425   -0.1387736    0.3156586
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0037743   -0.1154735    0.1079248
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0355545   -0.0548007    0.1259096
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0080630   -0.0579909    0.0741169
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0083104   -0.1909540    0.1743331
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0271929   -0.1916680    0.2460539
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0703025   -0.0899866    0.2305916
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1084540   -0.0765147    0.2934228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0071009   -0.0803127    0.0661109
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0600378   -0.0846582    0.2047337
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0447653   -0.1046062    0.1941368
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0481914   -0.1715426    0.0751599
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0516000   -0.1253441    0.0221441
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0846451   -0.2917295    0.1224392
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 0.0893296   -0.0731790    0.2518382
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0492315   -0.1748915    0.2733545
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0756982   -0.1620603    0.3134568
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0895979   -0.0715482    0.2507440
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1191879   -0.0863450    0.3247209
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0363213   -0.1197270    0.0470845
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0157249   -0.1444676    0.1759175
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0200139   -0.1499434    0.1899711
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0615600   -0.1966140    0.0734941
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0489919   -0.1249352    0.0269514
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0958045   -0.2773390    0.0857299
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0072219   -0.1603616    0.1748053
