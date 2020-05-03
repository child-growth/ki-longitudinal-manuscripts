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

agecat      studyid      country                        perdiar6    n_cell     n  outcome_variable 
----------  -----------  -----------------------------  ---------  -------  ----  -----------------
Birth       CMIN         BANGLADESH                     0%              16    26  haz              
Birth       CMIN         BANGLADESH                     (0%, 5%]         4    26  haz              
Birth       CMIN         BANGLADESH                     >5%              6    26  haz              
Birth       CONTENT      PERU                           0%               0     2  haz              
Birth       CONTENT      PERU                           (0%, 5%]         1     2  haz              
Birth       CONTENT      PERU                           >5%              1     2  haz              
Birth       EE           PAKISTAN                       0%             223   240  haz              
Birth       EE           PAKISTAN                       (0%, 5%]        15   240  haz              
Birth       EE           PAKISTAN                       >5%              2   240  haz              
Birth       MAL-ED       BANGLADESH                     0%              72   231  haz              
Birth       MAL-ED       BANGLADESH                     (0%, 5%]        90   231  haz              
Birth       MAL-ED       BANGLADESH                     >5%             69   231  haz              
Birth       MAL-ED       BRAZIL                         0%              57    65  haz              
Birth       MAL-ED       BRAZIL                         (0%, 5%]         6    65  haz              
Birth       MAL-ED       BRAZIL                         >5%              2    65  haz              
Birth       MAL-ED       INDIA                          0%              12    47  haz              
Birth       MAL-ED       INDIA                          (0%, 5%]        24    47  haz              
Birth       MAL-ED       INDIA                          >5%             11    47  haz              
Birth       MAL-ED       NEPAL                          0%               8    27  haz              
Birth       MAL-ED       NEPAL                          (0%, 5%]        10    27  haz              
Birth       MAL-ED       NEPAL                          >5%              9    27  haz              
Birth       MAL-ED       PERU                           0%              67   233  haz              
Birth       MAL-ED       PERU                           (0%, 5%]        72   233  haz              
Birth       MAL-ED       PERU                           >5%             94   233  haz              
Birth       MAL-ED       SOUTH AFRICA                   0%              86   113  haz              
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   113  haz              
Birth       MAL-ED       SOUTH AFRICA                   >5%              4   113  haz              
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              59   125  haz              
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        45   125  haz              
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             21   125  haz              
Birth       NIH-Birth    BANGLADESH                     0%             160   605  haz              
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]       177   605  haz              
Birth       NIH-Birth    BANGLADESH                     >5%            268   605  haz              
Birth       NIH-Crypto   BANGLADESH                     0%             360   732  haz              
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]       163   732  haz              
Birth       NIH-Crypto   BANGLADESH                     >5%            209   732  haz              
Birth       PROVIDE      BANGLADESH                     0%             161   539  haz              
Birth       PROVIDE      BANGLADESH                     (0%, 5%]       209   539  haz              
Birth       PROVIDE      BANGLADESH                     >5%            169   539  haz              
6 months    CMIN         BANGLADESH                     0%              81   243  haz              
6 months    CMIN         BANGLADESH                     (0%, 5%]        59   243  haz              
6 months    CMIN         BANGLADESH                     >5%            103   243  haz              
6 months    CONTENT      PERU                           0%             115   215  haz              
6 months    CONTENT      PERU                           (0%, 5%]        43   215  haz              
6 months    CONTENT      PERU                           >5%             57   215  haz              
6 months    EE           PAKISTAN                       0%             336   373  haz              
6 months    EE           PAKISTAN                       (0%, 5%]        35   373  haz              
6 months    EE           PAKISTAN                       >5%              2   373  haz              
6 months    MAL-ED       BANGLADESH                     0%              71   241  haz              
6 months    MAL-ED       BANGLADESH                     (0%, 5%]        92   241  haz              
6 months    MAL-ED       BANGLADESH                     >5%             78   241  haz              
6 months    MAL-ED       BRAZIL                         0%             192   209  haz              
6 months    MAL-ED       BRAZIL                         (0%, 5%]        15   209  haz              
6 months    MAL-ED       BRAZIL                         >5%              2   209  haz              
6 months    MAL-ED       INDIA                          0%              50   236  haz              
6 months    MAL-ED       INDIA                          (0%, 5%]       127   236  haz              
6 months    MAL-ED       INDIA                          >5%             59   236  haz              
6 months    MAL-ED       NEPAL                          0%              80   236  haz              
6 months    MAL-ED       NEPAL                          (0%, 5%]        76   236  haz              
6 months    MAL-ED       NEPAL                          >5%             80   236  haz              
6 months    MAL-ED       PERU                           0%              68   273  haz              
6 months    MAL-ED       PERU                           (0%, 5%]        89   273  haz              
6 months    MAL-ED       PERU                           >5%            116   273  haz              
6 months    MAL-ED       SOUTH AFRICA                   0%             190   254  haz              
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254  haz              
6 months    MAL-ED       SOUTH AFRICA                   >5%              9   254  haz              
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247  haz              
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247  haz              
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247  haz              
6 months    NIH-Birth    BANGLADESH                     0%             129   537  haz              
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]       169   537  haz              
6 months    NIH-Birth    BANGLADESH                     >5%            239   537  haz              
6 months    NIH-Crypto   BANGLADESH                     0%             341   715  haz              
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715  haz              
6 months    NIH-Crypto   BANGLADESH                     >5%            207   715  haz              
6 months    PROVIDE      BANGLADESH                     0%             158   604  haz              
6 months    PROVIDE      BANGLADESH                     (0%, 5%]       246   604  haz              
6 months    PROVIDE      BANGLADESH                     >5%            200   604  haz              
24 months   CMIN         BANGLADESH                     0%              85   242  haz              
24 months   CMIN         BANGLADESH                     (0%, 5%]        58   242  haz              
24 months   CMIN         BANGLADESH                     >5%             99   242  haz              
24 months   CONTENT      PERU                           0%              84   164  haz              
24 months   CONTENT      PERU                           (0%, 5%]        36   164  haz              
24 months   CONTENT      PERU                           >5%             44   164  haz              
24 months   EE           PAKISTAN                       0%             152   167  haz              
24 months   EE           PAKISTAN                       (0%, 5%]        14   167  haz              
24 months   EE           PAKISTAN                       >5%              1   167  haz              
24 months   MAL-ED       BANGLADESH                     0%              64   212  haz              
24 months   MAL-ED       BANGLADESH                     (0%, 5%]        83   212  haz              
24 months   MAL-ED       BANGLADESH                     >5%             65   212  haz              
24 months   MAL-ED       BRAZIL                         0%             154   169  haz              
24 months   MAL-ED       BRAZIL                         (0%, 5%]        13   169  haz              
24 months   MAL-ED       BRAZIL                         >5%              2   169  haz              
24 months   MAL-ED       INDIA                          0%              48   227  haz              
24 months   MAL-ED       INDIA                          (0%, 5%]       122   227  haz              
24 months   MAL-ED       INDIA                          >5%             57   227  haz              
24 months   MAL-ED       NEPAL                          0%              77   228  haz              
24 months   MAL-ED       NEPAL                          (0%, 5%]        75   228  haz              
24 months   MAL-ED       NEPAL                          >5%             76   228  haz              
24 months   MAL-ED       PERU                           0%              53   201  haz              
24 months   MAL-ED       PERU                           (0%, 5%]        64   201  haz              
24 months   MAL-ED       PERU                           >5%             84   201  haz              
24 months   MAL-ED       SOUTH AFRICA                   0%             177   238  haz              
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238  haz              
24 months   MAL-ED       SOUTH AFRICA                   >5%              9   238  haz              
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214  haz              
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214  haz              
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214  haz              
24 months   NIH-Birth    BANGLADESH                     0%             107   429  haz              
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]       128   429  haz              
24 months   NIH-Birth    BANGLADESH                     >5%            194   429  haz              
24 months   NIH-Crypto   BANGLADESH                     0%             277   514  haz              
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514  haz              
24 months   NIH-Crypto   BANGLADESH                     >5%            131   514  haz              
24 months   PROVIDE      BANGLADESH                     0%             152   578  haz              
24 months   PROVIDE      BANGLADESH                     (0%, 5%]       232   578  haz              
24 months   PROVIDE      BANGLADESH                     >5%            194   578  haz              


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
![](/tmp/198d713d-7419-461b-87d8-8628355d96b0/ed1d624e-edb9-480e-994a-8fc9dd0ab135/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/198d713d-7419-461b-87d8-8628355d96b0/ed1d624e-edb9-480e-994a-8fc9dd0ab135/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/198d713d-7419-461b-87d8-8628355d96b0/ed1d624e-edb9-480e-994a-8fc9dd0ab135/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -1.0803457   -1.3309739   -0.8297176
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.9786430   -1.1918533   -0.7654327
Birth       MAL-ED       BANGLADESH                     >5%                  NA                -1.2777805   -1.5146842   -1.0408767
Birth       MAL-ED       INDIA                          0%                   NA                -1.2355453   -1.8516612   -0.6194294
Birth       MAL-ED       INDIA                          (0%, 5%]             NA                -1.0370741   -1.4223542   -0.6517940
Birth       MAL-ED       INDIA                          >5%                  NA                -1.3735194   -1.9175092   -0.8295295
Birth       MAL-ED       NEPAL                          0%                   NA                -0.3125000   -0.9090602    0.2840602
Birth       MAL-ED       NEPAL                          (0%, 5%]             NA                -0.8360000   -1.2964736   -0.3755264
Birth       MAL-ED       NEPAL                          >5%                  NA                -1.3533333   -1.9688465   -0.7378201
Birth       MAL-ED       PERU                           0%                   NA                -0.8946909   -1.0851442   -0.7042377
Birth       MAL-ED       PERU                           (0%, 5%]             NA                -0.9615719   -1.1448248   -0.7783191
Birth       MAL-ED       PERU                           >5%                  NA                -0.8228854   -0.9868438   -0.6589271
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.2267388   -1.5643171   -0.8891604
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.1239817   -1.4610090   -0.7869545
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.9038231   -1.3635476   -0.4440986
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -0.9319673   -1.0731761   -0.7907585
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.9417920   -1.0699080   -0.8136760
Birth       NIH-Birth    BANGLADESH                     >5%                  NA                -0.9219678   -1.0452620   -0.7986736
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                -0.9004312   -0.9978534   -0.8030090
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.8808835   -1.0276235   -0.7341434
Birth       NIH-Crypto   BANGLADESH                     >5%                  NA                -0.9305870   -1.0540450   -0.8071290
Birth       PROVIDE      BANGLADESH                     0%                   NA                -0.9163648   -1.0308148   -0.8019147
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.8837464   -0.9897872   -0.7777057
Birth       PROVIDE      BANGLADESH                     >5%                  NA                -0.8726242   -0.9974109   -0.7478375
6 months    CMIN         BANGLADESH                     0%                   NA                -1.7112792   -1.9542887   -1.4682697
6 months    CMIN         BANGLADESH                     (0%, 5%]             NA                -2.0109112   -2.2773694   -1.7444530
6 months    CMIN         BANGLADESH                     >5%                  NA                -1.7294314   -1.9346618   -1.5242010
6 months    CONTENT      PERU                           0%                   NA                -0.3419782   -0.5213987   -0.1625578
6 months    CONTENT      PERU                           (0%, 5%]             NA                -0.1889536   -0.5102388    0.1323317
6 months    CONTENT      PERU                           >5%                  NA                -0.1135517   -0.3468145    0.1197112
6 months    MAL-ED       BANGLADESH                     0%                   NA                -1.1816419   -1.3972846   -0.9659992
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.1079210   -1.2856493   -0.9301926
6 months    MAL-ED       BANGLADESH                     >5%                  NA                -1.3742913   -1.5962237   -1.1523590
6 months    MAL-ED       INDIA                          0%                   NA                -1.2631657   -1.5014676   -1.0248639
6 months    MAL-ED       INDIA                          (0%, 5%]             NA                -1.1378827   -1.2983317   -0.9774336
6 months    MAL-ED       INDIA                          >5%                  NA                -1.4404291   -1.6920754   -1.1887828
6 months    MAL-ED       NEPAL                          0%                   NA                -0.6770189   -0.8746071   -0.4794307
6 months    MAL-ED       NEPAL                          (0%, 5%]             NA                -0.5398672   -0.7398536   -0.3398808
6 months    MAL-ED       NEPAL                          >5%                  NA                -0.5828968   -0.7726001   -0.3931936
6 months    MAL-ED       PERU                           0%                   NA                -1.4194836   -1.6434643   -1.1955028
6 months    MAL-ED       PERU                           (0%, 5%]             NA                -1.3933839   -1.5774476   -1.2093202
6 months    MAL-ED       PERU                           >5%                  NA                -1.2040964   -1.3706365   -1.0375563
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -1.0562193   -1.2045965   -0.9078421
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.1532424   -1.4008073   -0.9056775
6 months    MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.6637037   -1.5451618    0.2177544
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4407386   -1.6408657   -1.2406115
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3448002   -1.5387215   -1.1508790
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2364741   -1.4833032   -0.9896451
6 months    NIH-Birth    BANGLADESH                     0%                   NA                -1.4478802   -1.6105096   -1.2852509
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -1.3549354   -1.5096670   -1.2002039
6 months    NIH-Birth    BANGLADESH                     >5%                  NA                -1.4088468   -1.5391916   -1.2785021
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                -1.1513139   -1.2494173   -1.0532105
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.2977160   -1.4746189   -1.1208130
6 months    NIH-Crypto   BANGLADESH                     >5%                  NA                -1.2637318   -1.4080026   -1.1194611
6 months    PROVIDE      BANGLADESH                     0%                   NA                -1.0499465   -1.1912374   -0.9086556
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.0957876   -1.2098955   -0.9816796
6 months    PROVIDE      BANGLADESH                     >5%                  NA                -1.1203840   -1.2563435   -0.9844245
24 months   CMIN         BANGLADESH                     0%                   NA                -2.4202175   -2.6247976   -2.2156374
24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -2.7818522   -3.0605621   -2.5031422
24 months   CMIN         BANGLADESH                     >5%                  NA                -2.4854239   -2.6786522   -2.2921957
24 months   CONTENT      PERU                           0%                   NA                -0.7134522   -0.9356480   -0.4912564
24 months   CONTENT      PERU                           (0%, 5%]             NA                -0.6784319   -1.0202538   -0.3366099
24 months   CONTENT      PERU                           >5%                  NA                -0.7024481   -0.9671448   -0.4377514
24 months   MAL-ED       BANGLADESH                     0%                   NA                -2.0372855   -2.3193386   -1.7552324
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.9498393   -2.1453933   -1.7542853
24 months   MAL-ED       BANGLADESH                     >5%                  NA                -1.9590179   -2.1693551   -1.7486808
24 months   MAL-ED       INDIA                          0%                   NA                -1.9832938   -2.2412025   -1.7253852
24 months   MAL-ED       INDIA                          (0%, 5%]             NA                -1.8348995   -2.0011828   -1.6686161
24 months   MAL-ED       INDIA                          >5%                  NA                -2.0537324   -2.3116241   -1.7958406
24 months   MAL-ED       NEPAL                          0%                   NA                -1.3884278   -1.5749295   -1.2019262
24 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -1.2329642   -1.4392857   -1.0266427
24 months   MAL-ED       NEPAL                          >5%                  NA                -1.3290818   -1.5531449   -1.1050188
24 months   MAL-ED       PERU                           0%                   NA                -1.8929555   -2.1106304   -1.6752806
24 months   MAL-ED       PERU                           (0%, 5%]             NA                -1.9167256   -2.1295103   -1.7039410
24 months   MAL-ED       PERU                           >5%                  NA                -1.5636409   -1.7262723   -1.4010095
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -1.6087382   -1.7601786   -1.4572979
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.8343750   -2.1416970   -1.5270530
24 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                -1.2655556   -1.9703196   -0.5607915
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -2.6523165   -2.8682448   -2.4363882
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6521566   -2.8664054   -2.4379078
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.6434245   -2.9280062   -2.3588429
24 months   NIH-Birth    BANGLADESH                     0%                   NA                -2.2316158   -2.4130293   -2.0502023
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -2.0925747   -2.2751721   -1.9099774
24 months   NIH-Birth    BANGLADESH                     >5%                  NA                -2.2947830   -2.4543255   -2.1352405
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -1.4109270   -1.5163996   -1.3054544
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.5235811   -1.7323922   -1.3147701
24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -1.4575484   -1.6343739   -1.2807229
24 months   PROVIDE      BANGLADESH                     0%                   NA                -1.5391597   -1.6956194   -1.3827001
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.6323546   -1.7629216   -1.5017875
24 months   PROVIDE      BANGLADESH                     >5%                  NA                -1.6246708   -1.7686326   -1.4807090


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED       INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED       NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED       PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth    BANGLADESH                     NA                   NA                -0.9314050   -1.0202164   -0.8425936
Birth       NIH-Crypto   BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE      BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    CMIN         BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    CONTENT      PERU                           NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    MAL-ED       BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED       INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED       NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED       PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED       SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth    BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE      BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
24 months   CMIN         BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   CONTENT      PERU                           NA                   NA                -0.6868598   -0.8388476   -0.5348719
24 months   MAL-ED       BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED       INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED       NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED       PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth    BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE      BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.1017027   -0.2280447    0.4314501
Birth       MAL-ED       BANGLADESH                     >5%                  0%                -0.1974347   -0.5417221    0.1468526
Birth       MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          (0%, 5%]             0%                 0.1984712   -0.5462220    0.9431644
Birth       MAL-ED       INDIA                          >5%                  0%                -0.1379741   -0.9538800    0.6779319
Birth       MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          (0%, 5%]             0%                -0.5235000   -1.2771047    0.2301047
Birth       MAL-ED       NEPAL                          >5%                  0%                -1.0408333   -1.8980034   -0.1836633
Birth       MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           (0%, 5%]             0%                -0.0668810   -0.3129270    0.1791650
Birth       MAL-ED       PERU                           >5%                  0%                 0.0718055   -0.1588566    0.3024676
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1027570   -0.3759355    0.5814496
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.3229157   -0.2485945    0.8944259
Birth       NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0098247   -0.1837911    0.1641417
Birth       NIH-Birth    BANGLADESH                     >5%                  0%                 0.0099995   -0.1578237    0.1778227
Birth       NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0195477   -0.1498685    0.1889639
Birth       NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0301558   -0.1801319    0.1198203
Birth       PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0326183   -0.1104814    0.1757181
Birth       PROVIDE      BANGLADESH                     >5%                  0%                 0.0437406   -0.1123419    0.1998231
6 months    CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CMIN         BANGLADESH                     (0%, 5%]             0%                -0.2996320   -0.6622087    0.0629447
6 months    CMIN         BANGLADESH                     >5%                  0%                -0.0181522   -0.3380451    0.3017407
6 months    CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           (0%, 5%]             0%                 0.1530247   -0.2150338    0.5210832
6 months    CONTENT      PERU                           >5%                  0%                 0.2284265   -0.0656793    0.5225324
6 months    MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0737209   -0.2066701    0.3541119
6 months    MAL-ED       BANGLADESH                     >5%                  0%                -0.1926495   -0.5028121    0.1175132
6 months    MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          (0%, 5%]             0%                 0.1252831   -0.1624265    0.4129926
6 months    MAL-ED       INDIA                          >5%                  0%                -0.1772634   -0.5240499    0.1695232
6 months    MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1371517   -0.1439785    0.4182819
6 months    MAL-ED       NEPAL                          >5%                  0%                 0.0941221   -0.1820370    0.3702812
6 months    MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           (0%, 5%]             0%                 0.0260996   -0.2643140    0.3165133
6 months    MAL-ED       PERU                           >5%                  0%                 0.2153872   -0.0638086    0.4945829
6 months    MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0970231   -0.3856478    0.1916015
6 months    MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3925156   -0.5013436    1.2863748
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0959384   -0.1834093    0.3752861
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2042645   -0.1143615    0.5228905
6 months    NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0929448   -0.1281605    0.3140502
6 months    NIH-Birth    BANGLADESH                     >5%                  0%                 0.0390334   -0.1644104    0.2424772
6 months    NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1464021   -0.3484593    0.0556552
6 months    NIH-Crypto   BANGLADESH                     >5%                  0%                -0.1124179   -0.2871343    0.0622984
6 months    PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0458411   -0.2270336    0.1353514
6 months    PROVIDE      BANGLADESH                     >5%                  0%                -0.0704375   -0.2660429    0.1251678
24 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                -0.3616346   -0.7086777   -0.0145916
24 months   CMIN         BANGLADESH                     >5%                  0%                -0.0652064   -0.3508769    0.2204641
24 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0350203   -0.3739406    0.4439812
24 months   CONTENT      PERU                           >5%                  0%                 0.0110041   -0.3351098    0.3571179
24 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0874462   -0.2559864    0.4308787
24 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0782676   -0.2732589    0.4297940
24 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.1483944   -0.1564160    0.4532047
24 months   MAL-ED       INDIA                          >5%                  0%                -0.0704385   -0.4336844    0.2928074
24 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1554636   -0.1218751    0.4328023
24 months   MAL-ED       NEPAL                          >5%                  0%                 0.0593460   -0.2308978    0.3495898
24 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           (0%, 5%]             0%                -0.0237701   -0.3233802    0.2758399
24 months   MAL-ED       PERU                           >5%                  0%                 0.3293146    0.0692114    0.5894179
24 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2256368   -0.5682459    0.1169723
24 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3431827   -0.3776686    1.0640340
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0001599   -0.3058040    0.3061238
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0088920   -0.3489820    0.3667659
24 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1390411   -0.1162738    0.3943560
24 months   NIH-Birth    BANGLADESH                     >5%                  0%                -0.0631672   -0.3017186    0.1753842
24 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1126541   -0.3445292    0.1192209
24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0466214   -0.2509465    0.1577037
24 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0931948   -0.2947373    0.1083477
24 months   PROVIDE      BANGLADESH                     >5%                  0%                -0.0855111   -0.2961113    0.1250892


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.0377495   -0.2436058    0.1681067
Birth       MAL-ED       INDIA                          0%                   NA                 0.0319283   -0.5056549    0.5695114
Birth       MAL-ED       NEPAL                          0%                   NA                -0.5408333   -1.0628947   -0.0187719
Birth       MAL-ED       PERU                           0%                   NA                 0.0119012   -0.1387947    0.1625971
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0711388   -0.1603281    0.3026056
Birth       NIH-Birth    BANGLADESH                     0%                   NA                 0.0005624   -0.1112100    0.1123348
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                -0.0090633   -0.0739980    0.0558713
Birth       PROVIDE      BANGLADESH                     0%                   NA                 0.0312627   -0.0609201    0.1234456
6 months    CMIN         BANGLADESH                     0%                   NA                -0.0731584   -0.2682457    0.1219289
6 months    CONTENT      PERU                           0%                   NA                 0.0634527   -0.0607820    0.1876873
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0233512   -0.2063838    0.1596814
6 months    MAL-ED       INDIA                          0%                   NA                 0.0516403   -0.1655985    0.2688790
6 months    MAL-ED       NEPAL                          0%                   NA                 0.1154370   -0.0452478    0.2761218
6 months    MAL-ED       PERU                           0%                   NA                 0.0958175   -0.0974912    0.2891262
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0071009   -0.0803127    0.0661109
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0719937   -0.0739525    0.2179398
6 months    NIH-Birth    BANGLADESH                     0%                   NA                 0.0404982   -0.1015469    0.1825432
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0473644   -0.1242377    0.0295088
6 months    PROVIDE      BANGLADESH                     0%                   NA                -0.0417450   -0.1644531    0.0809630
24 months   CMIN         BANGLADESH                     0%                   NA                -0.0907329   -0.2608043    0.0793386
24 months   CONTENT      PERU                           0%                   NA                 0.0265924   -0.1241573    0.1773422
24 months   MAL-ED       BANGLADESH                     0%                   NA                 0.0588893   -0.1661590    0.2839375
24 months   MAL-ED       INDIA                          0%                   NA                 0.0971044   -0.1330568    0.3272657
24 months   MAL-ED       NEPAL                          0%                   NA                 0.0808401   -0.0783348    0.2400151
24 months   MAL-ED       PERU                           0%                   NA                 0.1404845   -0.0440150    0.3249840
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0363213   -0.1197270    0.0470845
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0067558   -0.1532308    0.1667423
24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0125579   -0.1486550    0.1737709
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0303376   -0.1056117    0.0449365
24 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0632624   -0.1974768    0.0709520
