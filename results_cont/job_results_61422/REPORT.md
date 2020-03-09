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

agecat      studyid      country                        perdiar6    n_cell     n  outcome_variable 
----------  -----------  -----------------------------  ---------  -------  ----  -----------------
Birth       CMIN         BANGLADESH                     0%              10    19  whz              
Birth       CMIN         BANGLADESH                     (0%, 5%]         3    19  whz              
Birth       CMIN         BANGLADESH                     >5%              6    19  whz              
Birth       CONTENT      PERU                           0%               0     2  whz              
Birth       CONTENT      PERU                           (0%, 5%]         1     2  whz              
Birth       CONTENT      PERU                           >5%              1     2  whz              
Birth       EE           PAKISTAN                       0%             164   177  whz              
Birth       EE           PAKISTAN                       (0%, 5%]        11   177  whz              
Birth       EE           PAKISTAN                       >5%              2   177  whz              
Birth       MAL-ED       BANGLADESH                     0%              65   215  whz              
Birth       MAL-ED       BANGLADESH                     (0%, 5%]        86   215  whz              
Birth       MAL-ED       BANGLADESH                     >5%             64   215  whz              
Birth       MAL-ED       BRAZIL                         0%              54    62  whz              
Birth       MAL-ED       BRAZIL                         (0%, 5%]         6    62  whz              
Birth       MAL-ED       BRAZIL                         >5%              2    62  whz              
Birth       MAL-ED       INDIA                          0%              11    45  whz              
Birth       MAL-ED       INDIA                          (0%, 5%]        23    45  whz              
Birth       MAL-ED       INDIA                          >5%             11    45  whz              
Birth       MAL-ED       NEPAL                          0%               8    26  whz              
Birth       MAL-ED       NEPAL                          (0%, 5%]        10    26  whz              
Birth       MAL-ED       NEPAL                          >5%              8    26  whz              
Birth       MAL-ED       PERU                           0%              67   228  whz              
Birth       MAL-ED       PERU                           (0%, 5%]        69   228  whz              
Birth       MAL-ED       PERU                           >5%             92   228  whz              
Birth       MAL-ED       SOUTH AFRICA                   0%              85   112  whz              
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   112  whz              
Birth       MAL-ED       SOUTH AFRICA                   >5%              4   112  whz              
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              51   115  whz              
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        44   115  whz              
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             20   115  whz              
Birth       NIH-Birth    BANGLADESH                     0%             150   572  whz              
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]       171   572  whz              
Birth       NIH-Birth    BANGLADESH                     >5%            251   572  whz              
Birth       NIH-Crypto   BANGLADESH                     0%             345   707  whz              
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]       160   707  whz              
Birth       NIH-Crypto   BANGLADESH                     >5%            202   707  whz              
Birth       PROVIDE      BANGLADESH                     0%             160   532  whz              
Birth       PROVIDE      BANGLADESH                     (0%, 5%]       206   532  whz              
Birth       PROVIDE      BANGLADESH                     >5%            166   532  whz              
6 months    CMIN         BANGLADESH                     0%              81   243  whz              
6 months    CMIN         BANGLADESH                     (0%, 5%]        58   243  whz              
6 months    CMIN         BANGLADESH                     >5%            104   243  whz              
6 months    CONTENT      PERU                           0%             115   215  whz              
6 months    CONTENT      PERU                           (0%, 5%]        43   215  whz              
6 months    CONTENT      PERU                           >5%             57   215  whz              
6 months    EE           PAKISTAN                       0%             338   375  whz              
6 months    EE           PAKISTAN                       (0%, 5%]        35   375  whz              
6 months    EE           PAKISTAN                       >5%              2   375  whz              
6 months    MAL-ED       BANGLADESH                     0%              71   241  whz              
6 months    MAL-ED       BANGLADESH                     (0%, 5%]        92   241  whz              
6 months    MAL-ED       BANGLADESH                     >5%             78   241  whz              
6 months    MAL-ED       BRAZIL                         0%             192   209  whz              
6 months    MAL-ED       BRAZIL                         (0%, 5%]        15   209  whz              
6 months    MAL-ED       BRAZIL                         >5%              2   209  whz              
6 months    MAL-ED       INDIA                          0%              50   236  whz              
6 months    MAL-ED       INDIA                          (0%, 5%]       127   236  whz              
6 months    MAL-ED       INDIA                          >5%             59   236  whz              
6 months    MAL-ED       NEPAL                          0%              80   236  whz              
6 months    MAL-ED       NEPAL                          (0%, 5%]        76   236  whz              
6 months    MAL-ED       NEPAL                          >5%             80   236  whz              
6 months    MAL-ED       PERU                           0%              68   273  whz              
6 months    MAL-ED       PERU                           (0%, 5%]        89   273  whz              
6 months    MAL-ED       PERU                           >5%            116   273  whz              
6 months    MAL-ED       SOUTH AFRICA                   0%             190   254  whz              
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254  whz              
6 months    MAL-ED       SOUTH AFRICA                   >5%              9   254  whz              
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247  whz              
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247  whz              
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247  whz              
6 months    NIH-Birth    BANGLADESH                     0%             129   537  whz              
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]       169   537  whz              
6 months    NIH-Birth    BANGLADESH                     >5%            239   537  whz              
6 months    NIH-Crypto   BANGLADESH                     0%             341   715  whz              
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715  whz              
6 months    NIH-Crypto   BANGLADESH                     >5%            207   715  whz              
6 months    PROVIDE      BANGLADESH                     0%             157   603  whz              
6 months    PROVIDE      BANGLADESH                     (0%, 5%]       246   603  whz              
6 months    PROVIDE      BANGLADESH                     >5%            200   603  whz              
24 months   CMIN         BANGLADESH                     0%              85   243  whz              
24 months   CMIN         BANGLADESH                     (0%, 5%]        58   243  whz              
24 months   CMIN         BANGLADESH                     >5%            100   243  whz              
24 months   CONTENT      PERU                           0%              84   164  whz              
24 months   CONTENT      PERU                           (0%, 5%]        36   164  whz              
24 months   CONTENT      PERU                           >5%             44   164  whz              
24 months   EE           PAKISTAN                       0%             153   168  whz              
24 months   EE           PAKISTAN                       (0%, 5%]        14   168  whz              
24 months   EE           PAKISTAN                       >5%              1   168  whz              
24 months   MAL-ED       BANGLADESH                     0%              64   212  whz              
24 months   MAL-ED       BANGLADESH                     (0%, 5%]        83   212  whz              
24 months   MAL-ED       BANGLADESH                     >5%             65   212  whz              
24 months   MAL-ED       BRAZIL                         0%             154   169  whz              
24 months   MAL-ED       BRAZIL                         (0%, 5%]        13   169  whz              
24 months   MAL-ED       BRAZIL                         >5%              2   169  whz              
24 months   MAL-ED       INDIA                          0%              48   227  whz              
24 months   MAL-ED       INDIA                          (0%, 5%]       122   227  whz              
24 months   MAL-ED       INDIA                          >5%             57   227  whz              
24 months   MAL-ED       NEPAL                          0%              77   228  whz              
24 months   MAL-ED       NEPAL                          (0%, 5%]        75   228  whz              
24 months   MAL-ED       NEPAL                          >5%             76   228  whz              
24 months   MAL-ED       PERU                           0%              53   201  whz              
24 months   MAL-ED       PERU                           (0%, 5%]        64   201  whz              
24 months   MAL-ED       PERU                           >5%             84   201  whz              
24 months   MAL-ED       SOUTH AFRICA                   0%             177   238  whz              
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238  whz              
24 months   MAL-ED       SOUTH AFRICA                   >5%              9   238  whz              
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214  whz              
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214  whz              
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214  whz              
24 months   NIH-Birth    BANGLADESH                     0%             107   428  whz              
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]       127   428  whz              
24 months   NIH-Birth    BANGLADESH                     >5%            194   428  whz              
24 months   NIH-Crypto   BANGLADESH                     0%             277   514  whz              
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514  whz              
24 months   NIH-Crypto   BANGLADESH                     >5%            131   514  whz              
24 months   PROVIDE      BANGLADESH                     0%             153   579  whz              
24 months   PROVIDE      BANGLADESH                     (0%, 5%]       232   579  whz              
24 months   PROVIDE      BANGLADESH                     >5%            194   579  whz              


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
![](/tmp/4d53985a-c066-45de-808c-fa62f1efec79/c4106a7b-06e8-4376-8a85-aef7c9bdd956/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4d53985a-c066-45de-808c-fa62f1efec79/c4106a7b-06e8-4376-8a85-aef7c9bdd956/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4d53985a-c066-45de-808c-fa62f1efec79/c4106a7b-06e8-4376-8a85-aef7c9bdd956/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.7236501   -1.0255613   -0.4217388
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0732843   -1.2989556   -0.8476130
Birth       MAL-ED       BANGLADESH                     >5%                  NA                -0.9709361   -1.2446218   -0.6972504
Birth       MAL-ED       INDIA                          0%                   NA                -0.8732368   -1.8699615    0.1234878
Birth       MAL-ED       INDIA                          (0%, 5%]             NA                -1.2996820   -1.5750091   -1.0243550
Birth       MAL-ED       INDIA                          >5%                  NA                -0.3004058   -0.8862263    0.2854146
Birth       MAL-ED       NEPAL                          0%                   NA                -0.5662500   -1.1479485    0.0154485
Birth       MAL-ED       NEPAL                          (0%, 5%]             NA                -0.7310000   -1.3926378   -0.0693622
Birth       MAL-ED       NEPAL                          >5%                  NA                -1.0175000   -1.5408661   -0.4941339
Birth       MAL-ED       PERU                           0%                   NA                -0.1323679   -0.3408396    0.0761038
Birth       MAL-ED       PERU                           (0%, 5%]             NA                 0.1076355   -0.1307775    0.3460486
Birth       MAL-ED       PERU                           >5%                  NA                -0.1560488   -0.3459006    0.0338030
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 1.0552316    0.8012676    1.3091956
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.6089389    0.2482538    0.9696240
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.5561330    0.1539522    0.9583138
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -1.3154506   -1.4938405   -1.1370607
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -1.2983878   -1.4761035   -1.1206720
Birth       NIH-Birth    BANGLADESH                     >5%                  NA                -1.4112631   -1.5560295   -1.2664966
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                -1.2623747   -1.3849377   -1.1398117
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.2825860   -1.4550924   -1.1100796
Birth       NIH-Crypto   BANGLADESH                     >5%                  NA                -1.1627962   -1.3186595   -1.0069329
Birth       PROVIDE      BANGLADESH                     0%                   NA                -1.2577950   -1.3857579   -1.1298320
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.3047770   -1.4174724   -1.1920816
Birth       PROVIDE      BANGLADESH                     >5%                  NA                -1.3383110   -1.4732169   -1.2034051
6 months    CMIN         BANGLADESH                     0%                   NA                -0.4148718   -0.6527608   -0.1769828
6 months    CMIN         BANGLADESH                     (0%, 5%]             NA                -0.4888744   -0.8284257   -0.1493230
6 months    CMIN         BANGLADESH                     >5%                  NA                -0.7409548   -0.9503048   -0.5316049
6 months    CONTENT      PERU                           0%                   NA                 1.0373628    0.8795775    1.1951481
6 months    CONTENT      PERU                           (0%, 5%]             NA                 1.0908813    0.8496224    1.3321401
6 months    CONTENT      PERU                           >5%                  NA                 1.1070840    0.8436633    1.3705046
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0796825   -0.3311911    0.1718262
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.2882355   -0.5057316   -0.0707394
6 months    MAL-ED       BANGLADESH                     >5%                  NA                -0.0405016   -0.2666493    0.1856462
6 months    MAL-ED       INDIA                          0%                   NA                -0.7382589   -1.0314298   -0.4450879
6 months    MAL-ED       INDIA                          (0%, 5%]             NA                -0.6491442   -0.8132065   -0.4850818
6 months    MAL-ED       INDIA                          >5%                  NA                -0.7065080   -1.0101682   -0.4028478
6 months    MAL-ED       NEPAL                          0%                   NA                 0.0187942   -0.2305635    0.2681519
6 months    MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0948426   -0.0926014    0.2822866
6 months    MAL-ED       NEPAL                          >5%                  NA                 0.2592728    0.0218734    0.4966722
6 months    MAL-ED       PERU                           0%                   NA                 0.9114154    0.6772423    1.1455886
6 months    MAL-ED       PERU                           (0%, 5%]             NA                 1.0721078    0.8562885    1.2879271
6 months    MAL-ED       PERU                           >5%                  NA                 1.1232109    0.9336086    1.3128133
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                 0.5939825    0.4106451    0.7773198
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3367273    0.0613640    0.6120905
6 months    MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.7040741    0.0137907    1.3943574
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.4577647    0.2492793    0.6662501
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5587287    0.3414859    0.7759715
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.6482763    0.3814932    0.9150594
6 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.4260522   -0.6066604   -0.2454440
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.3153371   -0.4955373   -0.1351369
6 months    NIH-Birth    BANGLADESH                     >5%                  NA                -0.5487214   -0.6823521   -0.4150908
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0328221   -0.1458830    0.0802388
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0567364   -0.1188072    0.2322799
6 months    NIH-Crypto   BANGLADESH                     >5%                  NA                 0.1232410   -0.0426861    0.2891681
6 months    PROVIDE      BANGLADESH                     0%                   NA                -0.2607487   -0.4063456   -0.1151518
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.2667066   -0.3962094   -0.1372037
6 months    PROVIDE      BANGLADESH                     >5%                  NA                -0.0591993   -0.2150070    0.0966083
24 months   CMIN         BANGLADESH                     0%                   NA                -0.8685531   -1.0739990   -0.6631072
24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -0.7150303   -0.9257063   -0.5043544
24 months   CMIN         BANGLADESH                     >5%                  NA                -0.9217989   -1.0890333   -0.7545645
24 months   CONTENT      PERU                           0%                   NA                 0.5678288    0.4026915    0.7329661
24 months   CONTENT      PERU                           (0%, 5%]             NA                 0.5653660    0.1878231    0.9429090
24 months   CONTENT      PERU                           >5%                  NA                 0.5034725    0.2339799    0.7729650
24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.7870651   -1.0198840   -0.5542463
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.9029345   -1.0937747   -0.7120943
24 months   MAL-ED       BANGLADESH                     >5%                  NA                -0.7492115   -0.9781322   -0.5202907
24 months   MAL-ED       INDIA                          0%                   NA                -0.9728977   -1.2166673   -0.7291280
24 months   MAL-ED       INDIA                          (0%, 5%]             NA                -0.8961212   -1.0433897   -0.7488527
24 months   MAL-ED       INDIA                          >5%                  NA                -0.9871560   -1.2592572   -0.7150549
24 months   MAL-ED       NEPAL                          0%                   NA                -0.3417349   -0.5575192   -0.1259507
24 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -0.4374782   -0.6069858   -0.2679705
24 months   MAL-ED       NEPAL                          >5%                  NA                -0.2917626   -0.4976982   -0.0858271
24 months   MAL-ED       PERU                           0%                   NA                -0.0363202   -0.2802730    0.2076325
24 months   MAL-ED       PERU                           (0%, 5%]             NA                 0.0678501   -0.1352791    0.2709794
24 months   MAL-ED       PERU                           >5%                  NA                 0.2305988    0.0362990    0.4248987
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.4176648    0.2735376    0.5617920
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3947596    0.1539398    0.6355795
24 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.3216667   -0.2059039    0.8492372
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0706638   -0.1104295    0.2517572
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0206535   -0.2228111    0.1815041
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.2757628   -0.0690967    0.6206222
24 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.9411635   -1.1490159   -0.7333111
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.8391915   -1.0302081   -0.6481750
24 months   NIH-Birth    BANGLADESH                     >5%                  NA                -0.9244260   -1.0646471   -0.7842049
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.5571885   -0.6910350   -0.4233419
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.7432579   -0.9273772   -0.5591387
24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -0.6157296   -0.7820833   -0.4493759
24 months   PROVIDE      BANGLADESH                     0%                   NA                -0.9267193   -1.0766461   -0.7767925
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.9432000   -1.0685591   -0.8178409
24 months   PROVIDE      BANGLADESH                     >5%                  NA                -0.7970948   -0.9482961   -0.6458935


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
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.3496342   -0.7372769    0.0380084
Birth       MAL-ED       BANGLADESH                     >5%                  0%                -0.2472860   -0.6608218    0.1662498
Birth       MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          (0%, 5%]             0%                -0.4264452   -1.4698275    0.6169371
Birth       MAL-ED       INDIA                          >5%                  0%                 0.5728310   -0.5960660    1.7417280
Birth       MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          (0%, 5%]             0%                -0.1647500   -1.0457368    0.7162368
Birth       MAL-ED       NEPAL                          >5%                  0%                -0.4512500   -1.2337366    0.3312366
Birth       MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           (0%, 5%]             0%                 0.2400034   -0.0770662    0.5570730
Birth       MAL-ED       PERU                           >5%                  0%                -0.0236809   -0.3056848    0.2583230
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.4462927   -0.8879007   -0.0046848
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.4990986   -0.9741380   -0.0240593
Birth       NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0170629   -0.2348543    0.2689800
Birth       NIH-Birth    BANGLADESH                     >5%                  0%                -0.0958124   -0.3256035    0.1339787
Birth       NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0202113   -0.2265319    0.1861094
Birth       NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0995785   -0.0930291    0.2921861
Birth       PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0469820   -0.2109801    0.1170160
Birth       PROVIDE      BANGLADESH                     >5%                  0%                -0.0805161   -0.2601183    0.0990861
6 months    CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0740026   -0.4883130    0.3403079
6 months    CMIN         BANGLADESH                     >5%                  0%                -0.3260830   -0.6430857   -0.0090804
6 months    CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           (0%, 5%]             0%                 0.0535185   -0.2353622    0.3423991
6 months    CONTENT      PERU                           >5%                  0%                 0.0697212   -0.2378877    0.3773300
6 months    MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.2085530   -0.5424573    0.1253512
6 months    MAL-ED       BANGLADESH                     >5%                  0%                 0.0391809   -0.2974192    0.3757811
6 months    MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          (0%, 5%]             0%                 0.0891147   -0.2552730    0.4335024
6 months    MAL-ED       INDIA                          >5%                  0%                 0.0317509   -0.3914730    0.4549748
6 months    MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0760484   -0.2359482    0.3880449
6 months    MAL-ED       NEPAL                          >5%                  0%                 0.2404786   -0.1041071    0.5850643
6 months    MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           (0%, 5%]             0%                 0.1606923   -0.1572850    0.4786697
6 months    MAL-ED       PERU                           >5%                  0%                 0.2117955   -0.0899799    0.5135710
6 months    MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2572552   -0.5880686    0.0735582
6 months    MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1100916   -0.6041238    0.8243071
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1009640   -0.2006274    0.4025554
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1905116   -0.1482681    0.5292912
6 months    NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1107151   -0.1445908    0.3660211
6 months    NIH-Birth    BANGLADESH                     >5%                  0%                -0.1226692   -0.3474091    0.1020707
6 months    NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0895585   -0.1191932    0.2983101
6 months    NIH-Crypto   BANGLADESH                     >5%                  0%                 0.1560631   -0.0445641    0.3566903
6 months    PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0059579   -0.2008716    0.1889559
6 months    PROVIDE      BANGLADESH                     >5%                  0%                 0.2015494   -0.0117729    0.4148717
24 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                 0.1535227   -0.1408531    0.4478985
24 months   CMIN         BANGLADESH                     >5%                  0%                -0.0532458   -0.3183895    0.2118979
24 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           (0%, 5%]             0%                -0.0024628   -0.4170689    0.4121433
24 months   CONTENT      PERU                           >5%                  0%                -0.0643564   -0.3815215    0.2528088
24 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.1158693   -0.4192319    0.1874932
24 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0378537   -0.2894834    0.3651907
24 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.0767764   -0.2077678    0.3613206
24 months   MAL-ED       INDIA                          >5%                  0%                -0.0142584   -0.3805789    0.3520622
24 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0957432   -0.3711587    0.1796722
24 months   MAL-ED       NEPAL                          >5%                  0%                 0.0499723   -0.2479868    0.3479313
24 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.1041704   -0.2112422    0.4195829
24 months   MAL-ED       PERU                           >5%                  0%                 0.2669191   -0.0430287    0.5768668
24 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0229052   -0.3035595    0.2577492
24 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0959981   -0.6429015    0.4509053
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0913173   -0.3636027    0.1809681
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2050989   -0.1849223    0.5951202
24 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1019720   -0.1808010    0.3847450
24 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0167375   -0.2342835    0.2677585
24 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1860695   -0.4124472    0.0403082
24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0585411   -0.2697037    0.1526215
24 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0164807   -0.2105650    0.1776037
24 months   PROVIDE      BANGLADESH                     >5%                  0%                 0.1296245   -0.0819452    0.3411943


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.2182104   -0.4693723    0.0329515
Birth       MAL-ED       INDIA                          0%                   NA                -0.0592076   -0.9344450    0.8160297
Birth       MAL-ED       NEPAL                          0%                   NA                -0.2022115   -0.7099692    0.3055462
Birth       MAL-ED       PERU                           0%                   NA                 0.0803503   -0.1006029    0.2613035
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.2927968   -0.5072476   -0.0783461
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -0.0370931   -0.1934674    0.1192812
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                 0.0182234   -0.0655554    0.1020022
Birth       PROVIDE      BANGLADESH                     0%                   NA                -0.0406637   -0.1446793    0.0633519
6 months    CMIN         BANGLADESH                     0%                   NA                -0.1631735   -0.3626811    0.0363341
6 months    CONTENT      PERU                           0%                   NA                 0.0270651   -0.0839696    0.1380998
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0579939   -0.2696147    0.1536270
6 months    MAL-ED       INDIA                          0%                   NA                 0.0302610   -0.2352175    0.2957395
6 months    MAL-ED       NEPAL                          0%                   NA                 0.0916366   -0.1024396    0.2857128
6 months    MAL-ED       PERU                           0%                   NA                 0.1414661   -0.0649223    0.3478546
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0518040   -0.1322455    0.0286376
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0784566   -0.0765172    0.2334304
6 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.0213516   -0.1819545    0.1392514
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                 0.0625843   -0.0237016    0.1488702
6 months    PROVIDE      BANGLADESH                     0%                   NA                 0.0616580   -0.0690288    0.1923449
24 months   CMIN         BANGLADESH                     0%                   NA                 0.0150140   -0.1459062    0.1759341
24 months   CONTENT      PERU                           0%                   NA                 0.0224151   -0.1130148    0.1578450
24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0322273   -0.2272177    0.1627631
24 months   MAL-ED       INDIA                          0%                   NA                 0.0212457   -0.1984452    0.2409365
24 months   MAL-ED       NEPAL                          0%                   NA                -0.0331774   -0.2018196    0.1354649
24 months   MAL-ED       PERU                           0%                   NA                 0.1475184   -0.0575351    0.3525719
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0086347   -0.0759944    0.0587251
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0158663   -0.1601252    0.1283926
24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0295845   -0.1488358    0.2080047
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0531617   -0.1348780    0.0285546
24 months   PROVIDE      BANGLADESH                     0%                   NA                 0.0338523   -0.0967099    0.1644145
