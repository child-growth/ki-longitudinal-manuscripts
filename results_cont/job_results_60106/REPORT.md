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

agecat      studyid      country                        perdiar6    n_cell     n
----------  -----------  -----------------------------  ---------  -------  ----
Birth       CMIN         BANGLADESH                     0%              10    19
Birth       CMIN         BANGLADESH                     (0%, 5%]         3    19
Birth       CMIN         BANGLADESH                     >5%              6    19
Birth       CONTENT      PERU                           0%               0     2
Birth       CONTENT      PERU                           (0%, 5%]         1     2
Birth       CONTENT      PERU                           >5%              1     2
Birth       EE           PAKISTAN                       0%             164   177
Birth       EE           PAKISTAN                       (0%, 5%]        11   177
Birth       EE           PAKISTAN                       >5%              2   177
Birth       MAL-ED       BANGLADESH                     0%              65   215
Birth       MAL-ED       BANGLADESH                     (0%, 5%]        86   215
Birth       MAL-ED       BANGLADESH                     >5%             64   215
Birth       MAL-ED       BRAZIL                         0%              54    62
Birth       MAL-ED       BRAZIL                         (0%, 5%]         6    62
Birth       MAL-ED       BRAZIL                         >5%              2    62
Birth       MAL-ED       INDIA                          0%              11    45
Birth       MAL-ED       INDIA                          (0%, 5%]        23    45
Birth       MAL-ED       INDIA                          >5%             11    45
Birth       MAL-ED       NEPAL                          0%               8    26
Birth       MAL-ED       NEPAL                          (0%, 5%]        10    26
Birth       MAL-ED       NEPAL                          >5%              8    26
Birth       MAL-ED       PERU                           0%              67   228
Birth       MAL-ED       PERU                           (0%, 5%]        69   228
Birth       MAL-ED       PERU                           >5%             92   228
Birth       MAL-ED       SOUTH AFRICA                   0%              85   112
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   112
Birth       MAL-ED       SOUTH AFRICA                   >5%              4   112
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              51   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        44   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             20   115
Birth       NIH-Birth    BANGLADESH                     0%             150   572
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]       171   572
Birth       NIH-Birth    BANGLADESH                     >5%            251   572
Birth       NIH-Crypto   BANGLADESH                     0%             345   707
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]       160   707
Birth       NIH-Crypto   BANGLADESH                     >5%            202   707
Birth       PROVIDE      BANGLADESH                     0%             160   532
Birth       PROVIDE      BANGLADESH                     (0%, 5%]       206   532
Birth       PROVIDE      BANGLADESH                     >5%            166   532
6 months    CMIN         BANGLADESH                     0%              81   243
6 months    CMIN         BANGLADESH                     (0%, 5%]        58   243
6 months    CMIN         BANGLADESH                     >5%            104   243
6 months    CONTENT      PERU                           0%             115   215
6 months    CONTENT      PERU                           (0%, 5%]        43   215
6 months    CONTENT      PERU                           >5%             57   215
6 months    EE           PAKISTAN                       0%             338   375
6 months    EE           PAKISTAN                       (0%, 5%]        35   375
6 months    EE           PAKISTAN                       >5%              2   375
6 months    MAL-ED       BANGLADESH                     0%              71   241
6 months    MAL-ED       BANGLADESH                     (0%, 5%]        92   241
6 months    MAL-ED       BANGLADESH                     >5%             78   241
6 months    MAL-ED       BRAZIL                         0%             192   209
6 months    MAL-ED       BRAZIL                         (0%, 5%]        15   209
6 months    MAL-ED       BRAZIL                         >5%              2   209
6 months    MAL-ED       INDIA                          0%              50   236
6 months    MAL-ED       INDIA                          (0%, 5%]       127   236
6 months    MAL-ED       INDIA                          >5%             59   236
6 months    MAL-ED       NEPAL                          0%              80   236
6 months    MAL-ED       NEPAL                          (0%, 5%]        76   236
6 months    MAL-ED       NEPAL                          >5%             80   236
6 months    MAL-ED       PERU                           0%              68   273
6 months    MAL-ED       PERU                           (0%, 5%]        89   273
6 months    MAL-ED       PERU                           >5%            116   273
6 months    MAL-ED       SOUTH AFRICA                   0%             190   254
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254
6 months    MAL-ED       SOUTH AFRICA                   >5%              9   254
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247
6 months    NIH-Birth    BANGLADESH                     0%             129   537
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]       169   537
6 months    NIH-Birth    BANGLADESH                     >5%            239   537
6 months    NIH-Crypto   BANGLADESH                     0%             341   715
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    PROVIDE      BANGLADESH                     0%             157   603
6 months    PROVIDE      BANGLADESH                     (0%, 5%]       246   603
6 months    PROVIDE      BANGLADESH                     >5%            200   603
24 months   CMIN         BANGLADESH                     0%              85   243
24 months   CMIN         BANGLADESH                     (0%, 5%]        58   243
24 months   CMIN         BANGLADESH                     >5%            100   243
24 months   CONTENT      PERU                           0%              84   164
24 months   CONTENT      PERU                           (0%, 5%]        36   164
24 months   CONTENT      PERU                           >5%             44   164
24 months   EE           PAKISTAN                       0%             153   168
24 months   EE           PAKISTAN                       (0%, 5%]        14   168
24 months   EE           PAKISTAN                       >5%              1   168
24 months   MAL-ED       BANGLADESH                     0%              64   212
24 months   MAL-ED       BANGLADESH                     (0%, 5%]        83   212
24 months   MAL-ED       BANGLADESH                     >5%             65   212
24 months   MAL-ED       BRAZIL                         0%             154   169
24 months   MAL-ED       BRAZIL                         (0%, 5%]        13   169
24 months   MAL-ED       BRAZIL                         >5%              2   169
24 months   MAL-ED       INDIA                          0%              48   227
24 months   MAL-ED       INDIA                          (0%, 5%]       122   227
24 months   MAL-ED       INDIA                          >5%             57   227
24 months   MAL-ED       NEPAL                          0%              77   228
24 months   MAL-ED       NEPAL                          (0%, 5%]        75   228
24 months   MAL-ED       NEPAL                          >5%             76   228
24 months   MAL-ED       PERU                           0%              53   201
24 months   MAL-ED       PERU                           (0%, 5%]        64   201
24 months   MAL-ED       PERU                           >5%             84   201
24 months   MAL-ED       SOUTH AFRICA                   0%             177   238
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238
24 months   MAL-ED       SOUTH AFRICA                   >5%              9   238
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214
24 months   NIH-Birth    BANGLADESH                     0%             107   428
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]       127   428
24 months   NIH-Birth    BANGLADESH                     >5%            194   428
24 months   NIH-Crypto   BANGLADESH                     0%             277   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   PROVIDE      BANGLADESH                     0%             153   579
24 months   PROVIDE      BANGLADESH                     (0%, 5%]       232   579
24 months   PROVIDE      BANGLADESH                     >5%            194   579


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/c968c1ee-3515-41ed-8064-5170ce569c20/037aa1ea-8501-45f2-b45d-3eda50f67f9d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c968c1ee-3515-41ed-8064-5170ce569c20/037aa1ea-8501-45f2-b45d-3eda50f67f9d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c968c1ee-3515-41ed-8064-5170ce569c20/037aa1ea-8501-45f2-b45d-3eda50f67f9d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.7337844   -1.0504225   -0.4171464
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0461239   -1.2767010   -0.8155469
Birth       MAL-ED       BANGLADESH                     >5%                  NA                -0.9921020   -1.2556309   -0.7285732
Birth       MAL-ED       INDIA                          0%                   NA                -0.8173212   -1.8879958    0.2533535
Birth       MAL-ED       INDIA                          (0%, 5%]             NA                -1.2420022   -1.5353445   -0.9486600
Birth       MAL-ED       INDIA                          >5%                  NA                -0.4627391   -1.1281185    0.2026404
Birth       MAL-ED       NEPAL                          0%                   NA                -0.5662500   -1.1479485    0.0154485
Birth       MAL-ED       NEPAL                          (0%, 5%]             NA                -0.7310000   -1.3926378   -0.0693622
Birth       MAL-ED       NEPAL                          >5%                  NA                -1.0175000   -1.5408661   -0.4941339
Birth       MAL-ED       PERU                           0%                   NA                -0.0943534   -0.3040050    0.1152982
Birth       MAL-ED       PERU                           (0%, 5%]             NA                 0.1401236   -0.0935514    0.3737987
Birth       MAL-ED       PERU                           >5%                  NA                -0.1319614   -0.3204632    0.0565404
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.9840087    0.7308741    1.2371432
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.6383624    0.2802576    0.9964673
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.2834350   -0.1395156    0.7063856
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -1.3206371   -1.4996817   -1.1415924
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -1.3074428   -1.4829924   -1.1318932
Birth       NIH-Birth    BANGLADESH                     >5%                  NA                -1.4075665   -1.5532159   -1.2619172
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                -1.2659296   -1.3890054   -1.1428539
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.2969965   -1.4591167   -1.1348762
Birth       NIH-Crypto   BANGLADESH                     >5%                  NA                -1.1748583   -1.3256336   -1.0240830
Birth       PROVIDE      BANGLADESH                     0%                   NA                -1.2631997   -1.3921448   -1.1342546
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.2935349   -1.4071085   -1.1799613
Birth       PROVIDE      BANGLADESH                     >5%                  NA                -1.3461648   -1.4822358   -1.2100938
6 months    CMIN         BANGLADESH                     0%                   NA                -0.4167748   -0.6523450   -0.1812047
6 months    CMIN         BANGLADESH                     (0%, 5%]             NA                -0.4727760   -0.8203838   -0.1251683
6 months    CMIN         BANGLADESH                     >5%                  NA                -0.7542335   -0.9643238   -0.5441432
6 months    CONTENT      PERU                           0%                   NA                 1.0430836    0.8854327    1.2007344
6 months    CONTENT      PERU                           (0%, 5%]             NA                 1.1077645    0.8726990    1.3428300
6 months    CONTENT      PERU                           >5%                  NA                 1.1067303    0.8373167    1.3761438
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.1177920   -0.3643343    0.1287503
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.2807921   -0.4959255   -0.0656588
6 months    MAL-ED       BANGLADESH                     >5%                  NA                -0.0367750   -0.2669863    0.1934362
6 months    MAL-ED       INDIA                          0%                   NA                -0.7489134   -1.0167557   -0.4810712
6 months    MAL-ED       INDIA                          (0%, 5%]             NA                -0.6983951   -0.8559102   -0.5408799
6 months    MAL-ED       INDIA                          >5%                  NA                -0.6933343   -0.9985724   -0.3880961
6 months    MAL-ED       NEPAL                          0%                   NA                 0.0155675   -0.2344757    0.2656106
6 months    MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0691951   -0.1167317    0.2551219
6 months    MAL-ED       NEPAL                          >5%                  NA                 0.2690907    0.0311650    0.5070163
6 months    MAL-ED       PERU                           0%                   NA                 0.9092498    0.6615813    1.1569183
6 months    MAL-ED       PERU                           (0%, 5%]             NA                 1.0958780    0.8798512    1.3119048
6 months    MAL-ED       PERU                           >5%                  NA                 1.1124115    0.9237051    1.3011179
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                 0.5939825    0.4106451    0.7773198
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3367273    0.0613640    0.6120905
6 months    MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.7040741    0.0137907    1.3943574
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.4626233    0.2516390    0.6736076
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5212237    0.3018679    0.7405796
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.6362716    0.3733740    0.8991693
6 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.4507523   -0.6246065   -0.2768982
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.3117906   -0.4837768   -0.1398044
6 months    NIH-Birth    BANGLADESH                     >5%                  NA                -0.5263102   -0.6591588   -0.3934615
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0234962   -0.1356307    0.0886383
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0533791   -0.1255922    0.2323503
6 months    NIH-Crypto   BANGLADESH                     >5%                  NA                 0.0977889   -0.0645351    0.2601128
6 months    PROVIDE      BANGLADESH                     0%                   NA                -0.2759627   -0.4193143   -0.1326110
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.2647596   -0.3934136   -0.1361055
6 months    PROVIDE      BANGLADESH                     >5%                  NA                -0.0765906   -0.2278336    0.0746523
24 months   CMIN         BANGLADESH                     0%                   NA                -0.8764979   -1.0805944   -0.6724015
24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -0.7123959   -0.9289561   -0.4958357
24 months   CMIN         BANGLADESH                     >5%                  NA                -0.9215279   -1.0928109   -0.7502449
24 months   CONTENT      PERU                           0%                   NA                 0.5817635    0.4174928    0.7460341
24 months   CONTENT      PERU                           (0%, 5%]             NA                 0.6291054    0.2651355    0.9930753
24 months   CONTENT      PERU                           >5%                  NA                 0.5296650    0.2653758    0.7939542
24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.8010395   -1.0368145   -0.5652644
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.8777089   -1.0680845   -0.6873333
24 months   MAL-ED       BANGLADESH                     >5%                  NA                -0.7538928   -0.9851402   -0.5226454
24 months   MAL-ED       INDIA                          0%                   NA                -0.9438251   -1.1899876   -0.6976626
24 months   MAL-ED       INDIA                          (0%, 5%]             NA                -0.9072468   -1.0531724   -0.7613212
24 months   MAL-ED       INDIA                          >5%                  NA                -0.9824467   -1.2608201   -0.7040733
24 months   MAL-ED       NEPAL                          0%                   NA                -0.3561981   -0.5718486   -0.1405476
24 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -0.4527071   -0.6248541   -0.2805601
24 months   MAL-ED       NEPAL                          >5%                  NA                -0.3067707   -0.5094570   -0.1040844
24 months   MAL-ED       PERU                           0%                   NA                -0.0423607   -0.2883408    0.2036194
24 months   MAL-ED       PERU                           (0%, 5%]             NA                 0.0729337   -0.1321448    0.2780121
24 months   MAL-ED       PERU                           >5%                  NA                 0.2358000    0.0424094    0.4291906
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.4176648    0.2735376    0.5617920
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3947596    0.1539398    0.6355795
24 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.3216667   -0.2059039    0.8492372
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0679846   -0.1128706    0.2488399
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0634026   -0.2761409    0.1493358
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.2663150   -0.0887933    0.6214234
24 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.9690752   -1.1760207   -0.7621297
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.8360522   -1.0233970   -0.6487074
24 months   NIH-Birth    BANGLADESH                     >5%                  NA                -0.9136141   -1.0538891   -0.7733391
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.5333970   -0.6691934   -0.3976005
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.7640151   -0.9505970   -0.5774332
24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -0.6416588   -0.8170870   -0.4662306
24 months   PROVIDE      BANGLADESH                     0%                   NA                -0.9449053   -1.0943512   -0.7954595
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.9620072   -1.0866030   -0.8374114
24 months   PROVIDE      BANGLADESH                     >5%                  NA                -0.8205772   -0.9717654   -0.6693891


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED       INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED       NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       MAL-ED       PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       NIH-Birth    BANGLADESH                     NA                   NA                -1.3525437   -1.4473932   -1.2576942
Birth       NIH-Crypto   BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE      BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
6 months    CMIN         BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    CONTENT      PERU                           NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    MAL-ED       BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED       INDIA                          NA                   NA                -0.7079979   -0.8344175   -0.5815783
6 months    MAL-ED       NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED       PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    MAL-ED       SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth    BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE      BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
24 months   CMIN         BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   CONTENT      PERU                           NA                   NA                 0.5902439    0.4560143    0.7244735
24 months   MAL-ED       BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED       INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED       NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED       PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth    BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE      BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.3123395   -0.7194970    0.0948179
Birth       MAL-ED       BANGLADESH                     >5%                  0%                -0.2583176   -0.6778308    0.1611955
Birth       MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          (0%, 5%]             0%                -0.4246811   -1.5525356    0.7031735
Birth       MAL-ED       INDIA                          >5%                  0%                 0.3545821   -0.9168212    1.6259854
Birth       MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          (0%, 5%]             0%                -0.1647500   -1.0457368    0.7162368
Birth       MAL-ED       NEPAL                          >5%                  0%                -0.4512500   -1.2337366    0.3312366
Birth       MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           (0%, 5%]             0%                 0.2344770   -0.0799372    0.5488912
Birth       MAL-ED       PERU                           >5%                  0%                -0.0376080   -0.3199682    0.2447522
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.3456462   -0.7802104    0.0889180
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.7005736   -1.1955194   -0.2056279
Birth       NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0131943   -0.2373013    0.2636898
Birth       NIH-Birth    BANGLADESH                     >5%                  0%                -0.0869295   -0.3181765    0.1443175
Birth       NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0310668   -0.2299565    0.1678228
Birth       NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0910714   -0.0983720    0.2805147
Birth       PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0303352   -0.1961795    0.1355090
Birth       PROVIDE      BANGLADESH                     >5%                  0%                -0.0829651   -0.2648997    0.0989694
6 months    CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0560012   -0.4750686    0.3630662
6 months    CMIN         BANGLADESH                     >5%                  0%                -0.3374587   -0.6536620   -0.0212554
6 months    CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           (0%, 5%]             0%                 0.0646809   -0.2192452    0.3486071
6 months    CONTENT      PERU                           >5%                  0%                 0.0636467   -0.2498605    0.3771539
6 months    MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.1630001   -0.4917310    0.1657308
6 months    MAL-ED       BANGLADESH                     >5%                  0%                 0.0810170   -0.2548494    0.4168834
6 months    MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          (0%, 5%]             0%                 0.0505184   -0.2606105    0.3616472
6 months    MAL-ED       INDIA                          >5%                  0%                 0.0555792   -0.3508852    0.4620436
6 months    MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0536276   -0.2574548    0.3647101
6 months    MAL-ED       NEPAL                          >5%                  0%                 0.2535232   -0.0902627    0.5973091
6 months    MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           (0%, 5%]             0%                 0.1866282   -0.1447838    0.5180402
6 months    MAL-ED       PERU                           >5%                  0%                 0.2031617   -0.1087640    0.5150874
6 months    MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2572552   -0.5880686    0.0735582
6 months    MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1100916   -0.6041238    0.8243071
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0586005   -0.2479424    0.3651433
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1736484   -0.1647890    0.5120857
6 months    NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1389618   -0.1040855    0.3820091
6 months    NIH-Birth    BANGLADESH                     >5%                  0%                -0.0755578   -0.2933991    0.1422835
6 months    NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0768753   -0.1339284    0.2876789
6 months    NIH-Crypto   BANGLADESH                     >5%                  0%                 0.1212850   -0.0752736    0.3178437
6 months    PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0112031   -0.1806414    0.2030476
6 months    PROVIDE      BANGLADESH                     >5%                  0%                 0.1993720   -0.0077858    0.4065299
24 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                 0.1641020   -0.1334770    0.4616810
24 months   CMIN         BANGLADESH                     >5%                  0%                -0.0450300   -0.3119049    0.2218450
24 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0473419   -0.3535008    0.4481846
24 months   CONTENT      PERU                           >5%                  0%                -0.0520985   -0.3647548    0.2605578
24 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0766694   -0.3814596    0.2281208
24 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0471467   -0.2853559    0.3796492
24 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.0365782   -0.2498150    0.3229715
24 months   MAL-ED       INDIA                          >5%                  0%                -0.0386216   -0.4107750    0.3335317
24 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0965090   -0.3726188    0.1796007
24 months   MAL-ED       NEPAL                          >5%                  0%                 0.0494274   -0.2464050    0.3452597
24 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.1152944   -0.2048185    0.4354073
24 months   MAL-ED       PERU                           >5%                  0%                 0.2781607   -0.0345781    0.5908995
24 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0229052   -0.3035595    0.2577492
24 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0959981   -0.6429015    0.4509053
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1313872   -0.4109321    0.1481578
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1983304   -0.1976283    0.5942891
24 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1330230   -0.1453491    0.4113952
24 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0554611   -0.1940167    0.3049388
24 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.2306182   -0.4608882   -0.0003481
24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.1082619   -0.3295116    0.1129879
24 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0171018   -0.2103973    0.1761936
24 months   PROVIDE      BANGLADESH                     >5%                  0%                 0.1243281   -0.0869226    0.3355788


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.2080760   -0.4728887    0.0567366
Birth       MAL-ED       INDIA                          0%                   NA                -0.1151233   -1.0607102    0.8304637
Birth       MAL-ED       NEPAL                          0%                   NA                -0.2022115   -0.7099692    0.3055462
Birth       MAL-ED       PERU                           0%                   NA                 0.0423358   -0.1400603    0.2247320
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.2215739   -0.4344069   -0.0087408
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -0.0319067   -0.1890714    0.1252580
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                 0.0217783   -0.0619546    0.1055112
Birth       PROVIDE      BANGLADESH                     0%                   NA                -0.0352590   -0.1405968    0.0700788
6 months    CMIN         BANGLADESH                     0%                   NA                -0.1612705   -0.3597403    0.0371994
6 months    CONTENT      PERU                           0%                   NA                 0.0213443   -0.0905552    0.1332438
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0198843   -0.2279630    0.1881943
6 months    MAL-ED       INDIA                          0%                   NA                 0.0409156   -0.1998031    0.2816342
6 months    MAL-ED       NEPAL                          0%                   NA                 0.0948633   -0.0988841    0.2886107
6 months    MAL-ED       PERU                           0%                   NA                 0.1436318   -0.0746527    0.3619162
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0518040   -0.1322455    0.0286376
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0735980   -0.0835554    0.2307515
6 months    NIH-Birth    BANGLADESH                     0%                   NA                 0.0033486   -0.1506956    0.1573927
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                 0.0532584   -0.0317992    0.1383161
6 months    PROVIDE      BANGLADESH                     0%                   NA                 0.0768720   -0.0511713    0.2049153
24 months   CMIN         BANGLADESH                     0%                   NA                 0.0229588   -0.1369461    0.1828638
24 months   CONTENT      PERU                           0%                   NA                 0.0084804   -0.1253225    0.1422833
24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0182530   -0.2155207    0.1790148
24 months   MAL-ED       INDIA                          0%                   NA                -0.0078269   -0.2309013    0.2152475
24 months   MAL-ED       NEPAL                          0%                   NA                -0.0187142   -0.1869274    0.1494990
24 months   MAL-ED       PERU                           0%                   NA                 0.1535589   -0.0540787    0.3611965
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0086347   -0.0759944    0.0587251
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0131871   -0.1570292    0.1306550
24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0574962   -0.1190013    0.2339936
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0769532   -0.1604959    0.0065894
24 months   PROVIDE      BANGLADESH                     0%                   NA                 0.0520383   -0.0785730    0.1826496
