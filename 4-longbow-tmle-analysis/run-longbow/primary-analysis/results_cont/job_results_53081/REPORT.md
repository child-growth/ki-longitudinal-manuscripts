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

agecat      studyid                 country                        perdiar6    n_cell     n
----------  ----------------------  -----------------------------  ---------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              72   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        90   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             69   231
Birth       ki0047075b-MAL-ED       BRAZIL                         0%              57    65
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         6    65
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2    65
Birth       ki0047075b-MAL-ED       INDIA                          0%              12    47
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]        24    47
Birth       ki0047075b-MAL-ED       INDIA                          >5%             11    47
Birth       ki0047075b-MAL-ED       NEPAL                          0%               8    27
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        10    27
Birth       ki0047075b-MAL-ED       NEPAL                          >5%              9    27
Birth       ki0047075b-MAL-ED       PERU                           0%              67   233
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        72   233
Birth       ki0047075b-MAL-ED       PERU                           >5%             94   233
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%              86   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              4   113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              59   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        45   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             21   125
Birth       ki1000109-EE            PAKISTAN                       0%             223   240
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]        15   240
Birth       ki1000109-EE            PAKISTAN                       >5%              2   240
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%             160   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       177   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%            268   605
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%             161   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       209   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%            169   539
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%             360   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       163   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%            209   732
Birth       ki1114097-CMIN          BANGLADESH                     0%              16    26
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         4    26
Birth       ki1114097-CMIN          BANGLADESH                     >5%              6    26
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
6 months    ki1000109-EE            PAKISTAN                       0%             336   373
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]        35   373
6 months    ki1000109-EE            PAKISTAN                       >5%              2   373
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       169   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             158   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       246   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            200   604
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        59   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            103   243
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
24 months   ki1000109-EE            PAKISTAN                       0%             152   167
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        14   167
24 months   ki1000109-EE            PAKISTAN                       >5%              1   167
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       128   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   429
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             152   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   578
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   242
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%             99   242
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
![](/tmp/70d55cec-1e95-4f2c-974a-c764357c9918/979e6815-e741-42bb-b431-3771978dd09b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/70d55cec-1e95-4f2c-974a-c764357c9918/979e6815-e741-42bb-b431-3771978dd09b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/70d55cec-1e95-4f2c-974a-c764357c9918/979e6815-e741-42bb-b431-3771978dd09b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -1.0729301   -1.3234309   -0.8224293
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0115861   -1.2321822   -0.7909901
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.3186526   -1.5614089   -1.0758963
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.1229716   -1.7583918   -0.4875514
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.1062110   -1.5510285   -0.6613935
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.3561196   -1.9411248   -0.7711143
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.3125000   -0.9090602    0.2840602
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.8360000   -1.2964736   -0.3755264
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -1.3533333   -1.9688465   -0.7378201
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.8624951   -1.0530564   -0.6719337
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.9500152   -1.1302602   -0.7697702
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.8434995   -1.0056829   -0.6813161
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.2559596   -1.5901976   -0.9217216
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.1371311   -1.4748146   -0.7994475
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.9502922   -1.3853014   -0.5152831
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.9329164   -1.0731848   -0.7926480
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.9355280   -1.0635703   -0.8074858
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.9236628   -1.0460694   -0.8012561
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.9236042   -1.0343541   -0.8128544
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.8791213   -0.9842208   -0.7740218
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.8656752   -0.9894343   -0.7419162
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.9093093   -1.0079871   -0.8106315
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.8887960   -1.0329901   -0.7446019
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.9263399   -1.0524200   -0.8002597
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -1.1897504   -1.4127377   -0.9667631
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.1086554   -1.2937176   -0.9235932
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.3609908   -1.6066266   -1.1153549
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.1754787   -1.4251318   -0.9258256
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.1194354   -1.2783908   -0.9604800
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.3796759   -1.6336192   -1.1257326
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.6069577   -0.8090064   -0.4049090
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.5102748   -0.7093003   -0.3112492
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.5175855   -0.7062756   -0.3288954
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -1.4370497   -1.6589701   -1.2151294
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.3917432   -1.5810706   -1.2024158
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                -1.2186973   -1.3838253   -1.0535693
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -1.0563070   -1.2048096   -0.9078044
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.1556970   -1.4033215   -0.9080724
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.6637037   -1.5451618    0.2177544
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4435782   -1.6415036   -1.2456529
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3424635   -1.5305177   -1.1544092
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2841731   -1.5336196   -1.0347266
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -1.4492200   -1.6231639   -1.2752762
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -1.3453893   -1.5029430   -1.1878357
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -1.4274761   -1.5609199   -1.2940322
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.0447433   -1.1845827   -0.9049040
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.0914872   -1.2052293   -0.9777452
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.1211131   -1.2563173   -0.9859090
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.1470298   -1.2436812   -1.0503785
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.3119779   -1.4781045   -1.1458512
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.1999849   -1.3380604   -1.0619093
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -1.6843552   -1.9422856   -1.4264249
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -1.9796476   -2.2493949   -1.7099004
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -1.7393832   -1.9418027   -1.5369637
6 months    ki1114097-CONTENT       PERU                           0%                   NA                -0.3683664   -0.6142699   -0.1224629
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.2792259   -0.6864455    0.1279936
6 months    ki1114097-CONTENT       PERU                           >5%                  NA                -0.1486253   -0.4491637    0.1519132
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -2.0461299   -2.3091939   -1.7830660
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.9472096   -2.1340162   -1.7604030
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.9559157   -2.1578378   -1.7539936
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.8966721   -2.1640902   -1.6292540
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.8250880   -1.9925671   -1.6576089
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.9809229   -2.2376573   -1.7241885
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -1.4200258   -1.6047894   -1.2352621
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -1.2993517   -1.5112472   -1.0874562
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -1.3649142   -1.5896757   -1.1401528
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -1.9199706   -2.1556442   -1.6842971
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.8990684   -2.1182948   -1.6798419
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                -1.4888373   -1.6652063   -1.3124683
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -1.6115819   -1.7634853   -1.4596785
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.8435577   -2.1519671   -1.5351483
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -1.2655556   -1.9703196   -0.5607915
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -2.6721196   -2.8905965   -2.4536428
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6529906   -2.8660975   -2.4398837
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.6134819   -2.9150633   -2.3119004
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -2.2259584   -2.4111272   -2.0407895
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -2.0903629   -2.2770842   -1.9036415
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -2.2884161   -2.4482723   -2.1285599
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.5478741   -1.7041213   -1.3916270
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.6270726   -1.7573761   -1.4967690
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.6185053   -1.7616240   -1.4753865
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.3992549   -1.5068624   -1.2916474
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.5327060   -1.7301682   -1.3352438
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.4339562   -1.6100200   -1.2578923
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -2.4021941   -2.6144288   -2.1899593
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -2.7185341   -2.9964189   -2.4406494
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -2.4882014   -2.6759193   -2.3004836
24 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.7086820   -0.9601987   -0.4571653
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.5291850   -0.9165704   -0.1417997
24 months   ki1114097-CONTENT       PERU                           >5%                  NA                -0.7177734   -1.0058076   -0.4297393


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
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.0639173   -1.1916078   -0.9362269
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CONTENT       PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0613440   -0.2717467    0.3944346
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.2457225   -0.5949701    0.1035251
Birth       ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0167606   -0.7671605    0.8006817
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.2331480   -1.0953656    0.6290697
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.5235000   -1.2771047    0.2301047
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -1.0408333   -1.8980034   -0.1836633
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0875201   -0.3301766    0.1551364
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0189956   -0.2087812    0.2467724
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1188285   -0.3576299    0.5952869
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.3056673   -0.2446519    0.8559866
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0026116   -0.1755130    0.1702898
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0092537   -0.1570238    0.1755311
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0444829   -0.0951309    0.1840967
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0579290   -0.0949706    0.2108286
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0205133   -0.1494903    0.1905169
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0170306   -0.1721600    0.1380989
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0810950   -0.2086176    0.3708076
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.1712404   -0.5044006    0.1619198
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0560434   -0.2406010    0.3526877
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.2041971   -0.5604830    0.1520887
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0966829   -0.1877704    0.3811362
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0893722   -0.1880038    0.3667481
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0453065   -0.2476472    0.3382602
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.2183525   -0.0587834    0.4954884
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0993900   -0.3881302    0.1893503
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3926033   -0.5012767    1.2864833
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1011148   -0.1702325    0.3724621
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1594052   -0.1574188    0.4762291
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1038307   -0.1291868    0.3368483
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0217440   -0.1955230    0.2390109
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0467439   -0.2265534    0.1330656
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0763698   -0.2703155    0.1175759
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1649481   -0.3570270    0.0271308
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0529551   -0.2216009    0.1156907
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.2952924   -0.6679750    0.0773901
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0550280   -0.3826687    0.2726127
6 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0891405   -0.3896188    0.5678998
6 months    ki1114097-CONTENT       PERU                           >5%                  0%                 0.2197411   -0.1681285    0.6076107
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0989203   -0.2200945    0.4179352
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0902143   -0.2368881    0.4173166
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0715841   -0.2422702    0.3854383
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0842508   -0.4537673    0.2852656
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1206740   -0.1584395    0.3997876
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0551115   -0.2357779    0.3460010
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0209023   -0.3023765    0.3441810
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.4311333    0.1355726    0.7266939
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2319758   -0.5757649    0.1118134
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3460264   -0.3749224    1.0669751
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0191291   -0.2862152    0.3244733
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0586378   -0.3139840    0.4312596
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1355955   -0.1251942    0.3963853
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0624577   -0.3034842    0.1785689
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0791984   -0.2806565    0.1222597
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0706311   -0.2808224    0.1395602
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1334510   -0.3568504    0.0899483
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0347012   -0.2399021    0.1704996
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.3163401   -0.6676605    0.0349804
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0860074   -0.3701958    0.1981811
24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.1794970   -0.2876079    0.6466018
24 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0090914   -0.3842559    0.3660731


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0451651   -0.2512245    0.1608942
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0806454   -0.6360124    0.4747216
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.5408333   -1.0628947   -0.0187719
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0202946   -0.1709625    0.1303732
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1003596   -0.1287910    0.3295101
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0015115   -0.1091977    0.1122207
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0385022   -0.0503575    0.1273619
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0001852   -0.0661304    0.0657599
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0157406   -0.2062434    0.1747621
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0358913   -0.2630386    0.1912559
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0458984   -0.1176443    0.2094410
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1089545   -0.0829530    0.3008620
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0076103   -0.0808576    0.0656370
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0748333   -0.0675590    0.2172256
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0418380   -0.1109804    0.1946563
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0469482   -0.1683890    0.0744926
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0516485   -0.1257333    0.0224362
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.1000824   -0.3050422    0.1048774
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 0.0544447   -0.1084097    0.2172991
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0672148   -0.1384982    0.2729279
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0118263   -0.2263937    0.2500462
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.1081617   -0.0492582    0.2655817
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1654930   -0.0393850    0.3703710
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0375988   -0.1213105    0.0461130
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0269561   -0.1324512    0.1863634
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0069005   -0.1573298    0.1711308
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0545480   -0.1887424    0.0796464
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0420097   -0.1189980    0.0349787
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.1087563   -0.2824807    0.0649680
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0124625   -0.1525116    0.1774366
