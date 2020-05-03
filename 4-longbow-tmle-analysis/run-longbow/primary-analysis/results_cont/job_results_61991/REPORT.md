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
![](/tmp/f311231e-ebf1-4576-be97-7aa8edb71166/08791ae9-5eeb-4744-9707-970385d3e9ed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f311231e-ebf1-4576-be97-7aa8edb71166/08791ae9-5eeb-4744-9707-970385d3e9ed/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f311231e-ebf1-4576-be97-7aa8edb71166/08791ae9-5eeb-4744-9707-970385d3e9ed/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.7575202   -1.0700512   -0.4449891
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0785758   -1.3126597   -0.8444918
Birth       MAL-ED       BANGLADESH                     >5%                  NA                -0.9427497   -1.2202156   -0.6652839
Birth       MAL-ED       INDIA                          0%                   NA                -0.8758277   -1.7670276    0.0153722
Birth       MAL-ED       INDIA                          (0%, 5%]             NA                -1.2680491   -1.5453288   -0.9907693
Birth       MAL-ED       INDIA                          >5%                  NA                -0.3680797   -0.8654397    0.1292803
Birth       MAL-ED       NEPAL                          0%                   NA                -0.5662500   -1.1479485    0.0154485
Birth       MAL-ED       NEPAL                          (0%, 5%]             NA                -0.7310000   -1.3926378   -0.0693622
Birth       MAL-ED       NEPAL                          >5%                  NA                -1.0175000   -1.5408661   -0.4941339
Birth       MAL-ED       PERU                           0%                   NA                -0.1345323   -0.3449746    0.0759101
Birth       MAL-ED       PERU                           (0%, 5%]             NA                 0.1368922   -0.0952427    0.3690272
Birth       MAL-ED       PERU                           >5%                  NA                -0.1491637   -0.3379175    0.0395901
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 1.0276169    0.7773777    1.2778562
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.6555569    0.3059033    1.0052104
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.6000629    0.1753553    1.0247706
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -1.3158143   -1.4918849   -1.1397437
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -1.2982849   -1.4763219   -1.1202479
Birth       NIH-Birth    BANGLADESH                     >5%                  NA                -1.4118453   -1.5578317   -1.2658589
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                -1.2546152   -1.3771952   -1.1320351
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.2920472   -1.4573689   -1.1267255
Birth       NIH-Crypto   BANGLADESH                     >5%                  NA                -1.1421017   -1.2905345   -0.9936690
Birth       PROVIDE      BANGLADESH                     0%                   NA                -1.2545031   -1.3860918   -1.1229145
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.3024172   -1.4190030   -1.1858314
Birth       PROVIDE      BANGLADESH                     >5%                  NA                -1.3370157   -1.4754550   -1.1985763
6 months    CMIN         BANGLADESH                     0%                   NA                -0.4074359   -0.6430796   -0.1717922
6 months    CMIN         BANGLADESH                     (0%, 5%]             NA                -0.4756891   -0.8127351   -0.1386431
6 months    CMIN         BANGLADESH                     >5%                  NA                -0.7503554   -0.9606419   -0.5400689
6 months    CONTENT      PERU                           0%                   NA                 1.0630473    0.9067809    1.2193138
6 months    CONTENT      PERU                           (0%, 5%]             NA                 1.1447296    0.9157980    1.3736612
6 months    CONTENT      PERU                           >5%                  NA                 1.1762318    0.9131904    1.4392731
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0884362   -0.3455286    0.1686563
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.2912142   -0.5018971   -0.0805312
6 months    MAL-ED       BANGLADESH                     >5%                  NA                -0.0215179   -0.2625536    0.2195179
6 months    MAL-ED       INDIA                          0%                   NA                -0.8758201   -1.1570561   -0.5945841
6 months    MAL-ED       INDIA                          (0%, 5%]             NA                -0.6667113   -0.8305388   -0.5028838
6 months    MAL-ED       INDIA                          >5%                  NA                -0.7449733   -1.0526010   -0.4373456
6 months    MAL-ED       NEPAL                          0%                   NA                 0.0099801   -0.2366174    0.2565777
6 months    MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0740161   -0.1135815    0.2616137
6 months    MAL-ED       NEPAL                          >5%                  NA                 0.2505604    0.0146834    0.4864374
6 months    MAL-ED       PERU                           0%                   NA                 0.9175513    0.6799112    1.1551913
6 months    MAL-ED       PERU                           (0%, 5%]             NA                 1.0662174    0.8511856    1.2812492
6 months    MAL-ED       PERU                           >5%                  NA                 1.1199518    0.9299249    1.3099786
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                 0.5939825    0.4106451    0.7773198
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3367273    0.0613640    0.6120905
6 months    MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.7040741    0.0137907    1.3943574
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.4929584    0.2759507    0.7099661
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5348330    0.3131449    0.7565212
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.6204649    0.3449468    0.8959830
6 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.4390069   -0.6083207   -0.2696930
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.3308232   -0.5096715   -0.1519750
6 months    NIH-Birth    BANGLADESH                     >5%                  NA                -0.5280959   -0.6590757   -0.3971161
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0320073   -0.1406496    0.0766349
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0580700   -0.1158295    0.2319694
6 months    NIH-Crypto   BANGLADESH                     >5%                  NA                 0.1170694   -0.0442936    0.2784323
6 months    PROVIDE      BANGLADESH                     0%                   NA                -0.2813708   -0.4240616   -0.1386800
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.2604389   -0.3888961   -0.1319818
6 months    PROVIDE      BANGLADESH                     >5%                  NA                -0.0709526   -0.2238965    0.0819914
24 months   CMIN         BANGLADESH                     0%                   NA                -0.8731317   -1.0780104   -0.6682530
24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -0.6987932   -0.9094520   -0.4881344
24 months   CMIN         BANGLADESH                     >5%                  NA                -0.9235845   -1.0941095   -0.7530594
24 months   CONTENT      PERU                           0%                   NA                 0.5822128    0.4172650    0.7471606
24 months   CONTENT      PERU                           (0%, 5%]             NA                 0.6140121    0.2421437    0.9858806
24 months   CONTENT      PERU                           >5%                  NA                 0.5226683    0.2516894    0.7936472
24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.7922595   -1.0262084   -0.5583106
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.8931349   -1.0825002   -0.7037695
24 months   MAL-ED       BANGLADESH                     >5%                  NA                -0.7504807   -0.9811628   -0.5197986
24 months   MAL-ED       INDIA                          0%                   NA                -0.9987537   -1.2499772   -0.7475302
24 months   MAL-ED       INDIA                          (0%, 5%]             NA                -0.9074152   -1.0534795   -0.7613508
24 months   MAL-ED       INDIA                          >5%                  NA                -1.0037063   -1.2760731   -0.7313394
24 months   MAL-ED       NEPAL                          0%                   NA                -0.3640846   -0.5793826   -0.1487866
24 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -0.4662239   -0.6391998   -0.2932480
24 months   MAL-ED       NEPAL                          >5%                  NA                -0.3257169   -0.5307225   -0.1207112
24 months   MAL-ED       PERU                           0%                   NA                -0.0462349   -0.2939989    0.2015290
24 months   MAL-ED       PERU                           (0%, 5%]             NA                 0.0933825   -0.1071474    0.2939125
24 months   MAL-ED       PERU                           >5%                  NA                 0.2292085    0.0355904    0.4228265
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.4176648    0.2735376    0.5617920
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3947596    0.1539398    0.6355795
24 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.3216667   -0.2059039    0.8492372
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0557748   -0.1221327    0.2336822
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0309431   -0.2347185    0.1728323
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.2363720   -0.0995686    0.5723127
24 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.9620257   -1.1653424   -0.7587090
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.8187602   -1.0038124   -0.6337079
24 months   NIH-Birth    BANGLADESH                     >5%                  NA                -0.9198787   -1.0590266   -0.7807307
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.5472941   -0.6815465   -0.4130416
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.7655352   -0.9541167   -0.5769538
24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -0.6325056   -0.8013584   -0.4636528
24 months   PROVIDE      BANGLADESH                     0%                   NA                -0.9249350   -1.0765967   -0.7732734
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.9575041   -1.0842275   -0.8307808
24 months   PROVIDE      BANGLADESH                     >5%                  NA                -0.8014446   -0.9547692   -0.6481199


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
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.3210556   -0.7239641    0.0818529
Birth       MAL-ED       BANGLADESH                     >5%                  0%                -0.1852296   -0.6168539    0.2463948
Birth       MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          (0%, 5%]             0%                -0.3922214   -1.3383269    0.5538842
Birth       MAL-ED       INDIA                          >5%                  0%                 0.5077480   -0.5203014    1.5357974
Birth       MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          (0%, 5%]             0%                -0.1647500   -1.0457368    0.7162368
Birth       MAL-ED       NEPAL                          >5%                  0%                -0.4512500   -1.2337366    0.3312366
Birth       MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           (0%, 5%]             0%                 0.2714245   -0.0418408    0.5846899
Birth       MAL-ED       PERU                           >5%                  0%                -0.0146314   -0.2976389    0.2683761
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.3720601   -0.8036384    0.0595182
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.4275540   -0.9197261    0.0646181
Birth       NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0175294   -0.2328324    0.2678912
Birth       NIH-Birth    BANGLADESH                     >5%                  0%                -0.0960310   -0.3250503    0.1329884
Birth       NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0374320   -0.2374110    0.1625470
Birth       NIH-Crypto   BANGLADESH                     >5%                  0%                 0.1125135   -0.0742798    0.2993067
Birth       PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0479140   -0.2198627    0.1240346
Birth       PROVIDE      BANGLADESH                     >5%                  0%                -0.0825125   -0.2695591    0.1045341
6 months    CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0682532   -0.4783062    0.3417997
6 months    CMIN         BANGLADESH                     >5%                  0%                -0.3429195   -0.6608350   -0.0250040
6 months    CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           (0%, 5%]             0%                 0.0816822   -0.1983154    0.3616798
6 months    CONTENT      PERU                           >5%                  0%                 0.1131844   -0.1933330    0.4197019
6 months    MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.2027780   -0.5385054    0.1329494
6 months    MAL-ED       BANGLADESH                     >5%                  0%                 0.0669183   -0.2868457    0.4206823
6 months    MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          (0%, 5%]             0%                 0.2091088   -0.1248216    0.5430392
6 months    MAL-ED       INDIA                          >5%                  0%                 0.1308468   -0.2885007    0.5501942
6 months    MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0640360   -0.2448262    0.3728981
6 months    MAL-ED       NEPAL                          >5%                  0%                 0.2405803   -0.0988330    0.5799936
6 months    MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           (0%, 5%]             0%                 0.1486661   -0.1722783    0.4696105
6 months    MAL-ED       PERU                           >5%                  0%                 0.2024005   -0.1023548    0.5071557
6 months    MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2572552   -0.5880686    0.0735582
6 months    MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1100916   -0.6041238    0.8243071
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0418747   -0.2749707    0.3587200
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1275065   -0.2271533    0.4821663
6 months    NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1081836   -0.1365544    0.3529217
6 months    NIH-Birth    BANGLADESH                     >5%                  0%                -0.0890891   -0.3014631    0.1232849
6 months    NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0900773   -0.1145820    0.2947366
6 months    NIH-Crypto   BANGLADESH                     >5%                  0%                 0.1490767   -0.0447903    0.3429437
6 months    PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0209319   -0.1699900    0.2118538
6 months    PROVIDE      BANGLADESH                     >5%                  0%                 0.2104182    0.0025318    0.4183047
24 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                 0.1743385   -0.1196324    0.4683094
24 months   CMIN         BANGLADESH                     >5%                  0%                -0.0504528   -0.3173650    0.2164595
24 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0317994   -0.3782671    0.4418659
24 months   CONTENT      PERU                           >5%                  0%                -0.0595445   -0.3769413    0.2578523
24 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.1008753   -0.4035542    0.2018035
24 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0417788   -0.2876452    0.3712028
24 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.0913385   -0.1994586    0.3821356
24 months   MAL-ED       INDIA                          >5%                  0%                -0.0049526   -0.3755819    0.3656767
24 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          (0%, 5%]             0%                -0.1021393   -0.3797353    0.1754566
24 months   MAL-ED       NEPAL                          >5%                  0%                 0.0383677   -0.2583601    0.3350955
24 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.1396175   -0.1756812    0.4549161
24 months   MAL-ED       PERU                           >5%                  0%                 0.2754434   -0.0366822    0.5875690
24 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0229052   -0.3035595    0.2577492
24 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0959981   -0.6429015    0.4509053
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0867179   -0.3555912    0.1821555
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1805973   -0.1973491    0.5585437
24 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1432655   -0.1310959    0.4176270
24 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0421471   -0.2034969    0.2877910
24 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.2182412   -0.4492061    0.0127237
24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0852115   -0.2997171    0.1292940
24 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0325691   -0.2298478    0.1647096
24 months   PROVIDE      BANGLADESH                     >5%                  0%                 0.1234905   -0.0917493    0.3387303


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.1843403   -0.4472006    0.0785200
Birth       MAL-ED       INDIA                          0%                   NA                -0.0566167   -0.8266458    0.7134123
Birth       MAL-ED       NEPAL                          0%                   NA                -0.2022115   -0.7099692    0.3055462
Birth       MAL-ED       PERU                           0%                   NA                 0.0825147   -0.1002064    0.2652358
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.2651822   -0.4778371   -0.0525272
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -0.0367294   -0.1911051    0.1176463
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                 0.0104638   -0.0726942    0.0936219
Birth       PROVIDE      BANGLADESH                     0%                   NA                -0.0439555   -0.1525178    0.0646068
6 months    CMIN         BANGLADESH                     0%                   NA                -0.1706094   -0.3691014    0.0278826
6 months    CONTENT      PERU                           0%                   NA                 0.0013806   -0.1105905    0.1133516
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0492402   -0.2669855    0.1685051
6 months    MAL-ED       INDIA                          0%                   NA                 0.1678222   -0.0887867    0.4244311
6 months    MAL-ED       NEPAL                          0%                   NA                 0.1004507   -0.0905411    0.2914424
6 months    MAL-ED       PERU                           0%                   NA                 0.1353303   -0.0743156    0.3449762
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0518040   -0.1322455    0.0286376
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0432629   -0.1214283    0.2079542
6 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.0083969   -0.1588531    0.1420592
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                 0.0617696   -0.0207167    0.1442559
6 months    PROVIDE      BANGLADESH                     0%                   NA                 0.0822802   -0.0453184    0.2098787
24 months   CMIN         BANGLADESH                     0%                   NA                 0.0195926   -0.1405746    0.1797597
24 months   CONTENT      PERU                           0%                   NA                 0.0080311   -0.1268148    0.1428771
24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0270329   -0.2227634    0.1686975
24 months   MAL-ED       INDIA                          0%                   NA                 0.0471017   -0.1794113    0.2736147
24 months   MAL-ED       NEPAL                          0%                   NA                -0.0108277   -0.1787935    0.1571381
24 months   MAL-ED       PERU                           0%                   NA                 0.1574331   -0.0507052    0.3655714
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0086347   -0.0759944    0.0587251
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0009772   -0.1417494    0.1397949
24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0504467   -0.1230517    0.2239450
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0630561   -0.1457641    0.0196518
24 months   PROVIDE      BANGLADESH                     0%                   NA                 0.0320680   -0.1006330    0.1647690
