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
![](/tmp/4e46dd84-84ea-49aa-a83c-0a0315d9339f/956f9af7-8a2a-43f4-a9bf-afc03177fbaf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4e46dd84-84ea-49aa-a83c-0a0315d9339f/956f9af7-8a2a-43f4-a9bf-afc03177fbaf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4e46dd84-84ea-49aa-a83c-0a0315d9339f/956f9af7-8a2a-43f4-a9bf-afc03177fbaf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -1.1130406   -1.3658101   -0.8602710
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.9879146   -1.2001473   -0.7756819
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.2945427   -1.5362444   -1.0528410
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.1696987   -1.8093537   -0.5300438
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.1186064   -1.5561524   -0.6810603
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.3201538   -1.9349408   -0.7053667
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.3125000   -0.9090602    0.2840602
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.8360000   -1.2964736   -0.3755264
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -1.3533333   -1.9688465   -0.7378201
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.8931055   -1.0803656   -0.7058454
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.9697808   -1.1468855   -0.7926761
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.8201458   -0.9823348   -0.6579567
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.2079417   -1.5426745   -0.8732090
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.0473505   -1.3911899   -0.7035110
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.8138980   -1.2326321   -0.3951638
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.9392062   -1.0792756   -0.7991367
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.9392625   -1.0664792   -0.8120458
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.9229957   -1.0452539   -0.8007375
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.9200951   -1.0327669   -0.8074232
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.8864105   -0.9918499   -0.7809712
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.8724540   -0.9965735   -0.7483344
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.9097600   -1.0088473   -0.8106727
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.8809722   -1.0288511   -0.7330933
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.9287594   -1.0539282   -0.8035905
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -1.1883792   -1.4018175   -0.9749410
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0927203   -1.2692491   -0.9161916
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.3567207   -1.5883342   -1.1251073
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.2330064   -1.4674110   -0.9986017
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.1198383   -1.2789947   -0.9606820
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.4073876   -1.6623518   -1.1524235
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.5799902   -0.7787105   -0.3812699
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.4939882   -0.6946677   -0.2933086
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.5056180   -0.6941098   -0.3171261
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -1.4335652   -1.6477042   -1.2194262
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.3872661   -1.5664130   -1.2081192
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                -1.2104541   -1.3735814   -1.0473268
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -1.0562193   -1.2045965   -0.9078421
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.1532424   -1.4008073   -0.9056775
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.6637037   -1.5451618    0.2177544
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4346191   -1.6355828   -1.2336554
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3470951   -1.5421892   -1.1520009
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2347067   -1.4914125   -0.9780009
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -1.4372418   -1.6061352   -1.2683484
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -1.3322575   -1.4878718   -1.1766432
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -1.4256836   -1.5572181   -1.2941491
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.0332729   -1.1732783   -0.8932675
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.0875723   -1.2009664   -0.9741782
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.1108998   -1.2460770   -0.9757225
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.1505805   -1.2479449   -1.0532160
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.2930600   -1.4623298   -1.1237902
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.2152089   -1.3515315   -1.0788864
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -1.7027213   -1.9625577   -1.4428850
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -1.9805347   -2.2509064   -1.7101630
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -1.7385405   -1.9415452   -1.5355358
6 months    ki1114097-CONTENT       PERU                           0%                   NA                -0.3835086   -0.6288245   -0.1381926
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.3084897   -0.7215972    0.1046178
6 months    ki1114097-CONTENT       PERU                           >5%                  NA                -0.1801223   -0.4897753    0.1295307
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -2.0328107   -2.3024303   -1.7631912
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.9394049   -2.1301331   -1.7486767
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.9839731   -2.1930245   -1.7749217
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.9630947   -2.2274852   -1.6987042
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.8274163   -1.9949564   -1.6598761
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.9939820   -2.2577020   -1.7302621
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -1.3973463   -1.5889462   -1.2057464
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -1.2275252   -1.4330073   -1.0220431
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -1.3256074   -1.5522508   -1.0989640
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -1.9530833   -2.1779063   -1.7282602
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.8947748   -2.1105664   -1.6789831
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                -1.5332806   -1.7037923   -1.3627689
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -1.6087382   -1.7601786   -1.4572979
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.8343750   -2.1416970   -1.5270530
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -1.2655556   -1.9703196   -0.5607915
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -2.6495884   -2.8676827   -2.4314941
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6181486   -2.8339455   -2.4023518
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.5774325   -2.8678896   -2.2869754
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -2.2383051   -2.4319179   -2.0446922
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -2.1004546   -2.2814846   -1.9194246
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -2.2931639   -2.4496483   -2.1366795
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.5410373   -1.6970098   -1.3850649
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.6265468   -1.7559032   -1.4971904
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.6218369   -1.7647249   -1.4789489
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.3967491   -1.5027914   -1.2907069
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.5285422   -1.7353752   -1.3217092
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.4478723   -1.6225581   -1.2731866
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -2.4132754   -2.6304003   -2.1961504
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -2.6974575   -2.9825350   -2.4123801
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -2.4810405   -2.6653113   -2.2967697
24 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.7133283   -0.9649947   -0.4616620
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.5580159   -0.9325648   -0.1834670
24 months   ki1114097-CONTENT       PERU                           >5%                  NA                -0.6970968   -0.9957324   -0.3984612


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
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.1251260   -0.2051967    0.4554486
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.1815021   -0.5315993    0.1685950
Birth       ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0510924   -0.7278583    0.8300430
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.1504550   -1.0389196    0.7380095
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.5235000   -1.2771047    0.2301047
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -1.0408333   -1.8980034   -0.1836633
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0766753   -0.3164900    0.1631394
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0729597   -0.1536944    0.2996139
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1605913   -0.3213677    0.6425502
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.3940438   -0.1489703    0.9370578
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0000563   -0.1719486    0.1718360
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0162105   -0.1491628    0.1815838
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0336845   -0.1075642    0.1749333
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0476411   -0.1068655    0.2021477
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0287878   -0.1450668    0.2026424
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0189994   -0.1741339    0.1361352
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0956589   -0.1807463    0.3720640
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.1683415   -0.4848505    0.1481675
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.1131680   -0.1701361    0.3964721
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.1743813   -0.5213981    0.1726356
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0860021   -0.1961945    0.3681986
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0743723   -0.2011633    0.3499079
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0462991   -0.2299585    0.3225568
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.2231111   -0.0430398    0.4892621
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0970231   -0.3856478    0.1916015
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3925156   -0.5013436    1.2863748
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0875240   -0.1928657    0.3679138
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1999124   -0.1264948    0.5263195
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1049843   -0.1219518    0.3319204
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0115582   -0.1990683    0.2221846
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0542994   -0.2337716    0.1251728
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0776269   -0.2716353    0.1163815
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1424795   -0.3376348    0.0526758
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0646284   -0.2323588    0.1031019
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.2778134   -0.6534708    0.0978440
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0358192   -0.3655248    0.2938864
6 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0750189   -0.4056547    0.5556924
6 months    ki1114097-CONTENT       PERU                           >5%                  0%                 0.2033863   -0.1925079    0.5992805
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0934058   -0.2359103    0.4227219
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0488377   -0.2916772    0.3893525
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.1356784   -0.1761681    0.4475249
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0308874   -0.4040547    0.3422800
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1698211   -0.1114239    0.4510662
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0717389   -0.2249247    0.3684024
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0583085   -0.2510667    0.3676837
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.4198027    0.1378533    0.7017520
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2256368   -0.5682459    0.1169723
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3431827   -0.3776686    1.0640340
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0314398   -0.2758286    0.3387082
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0721559   -0.2922874    0.4365992
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1378505   -0.1232272    0.3989282
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0548588   -0.2996953    0.1899778
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0855095   -0.2856572    0.1146382
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0807996   -0.2900571    0.1284579
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1317931   -0.3631259    0.0995398
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0511232   -0.2544251    0.1521787
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.2841822   -0.6434418    0.0750774
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0677651   -0.3529119    0.2173816
24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.1553124   -0.3007770    0.6114018
24 months   ki1114097-CONTENT       PERU                           >5%                  0%                 0.0162315   -0.3670119    0.3994749


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0050547   -0.2122643    0.2021550
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0339183   -0.5868994    0.5190627
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.5408333   -1.0628947   -0.0187719
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0103158   -0.1380591    0.1586907
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0523417   -0.1785100    0.2831934
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0078012   -0.1021652    0.1177677
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0349930   -0.0557415    0.1257275
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0002655   -0.0663563    0.0668872
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0166138   -0.1976422    0.1644145
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0214809   -0.1916168    0.2345787
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0184083   -0.1425855    0.1794021
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1098991   -0.0731877    0.2929860
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0071009   -0.0803127    0.0661109
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0658741   -0.0806223    0.2123706
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0298597   -0.1176207    0.1773401
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0584186   -0.1801084    0.0632712
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0480979   -0.1227666    0.0265709
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0817162   -0.2883861    0.1249536
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 0.0695868   -0.0921656    0.2313393
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0544145   -0.1597210    0.2685500
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0769053   -0.1591567    0.3129672
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0897586   -0.0739654    0.2534825
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.2006123    0.0064024    0.3948222
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0363213   -0.1197270    0.0470845
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0040277   -0.1555600    0.1636154
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0192472   -0.1516467    0.1901411
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0613848   -0.1950364    0.0722668
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0445155   -0.1211150    0.0320841
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0976751   -0.2756081    0.0802580
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0171088   -0.1477919    0.1820095
