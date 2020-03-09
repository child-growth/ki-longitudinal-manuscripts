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
![](/tmp/8da45b4c-297a-4712-941b-deb362d6a227/174304b2-d070-4bcb-a18b-e631279d00aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8da45b4c-297a-4712-941b-deb362d6a227/174304b2-d070-4bcb-a18b-e631279d00aa/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8da45b4c-297a-4712-941b-deb362d6a227/174304b2-d070-4bcb-a18b-e631279d00aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -1.1040554   -1.3602328   -0.8478781
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.9929656   -1.2077709   -0.7781603
Birth       MAL-ED       BANGLADESH                     >5%                  NA                -1.3082025   -1.5486819   -1.0677232
Birth       MAL-ED       INDIA                          0%                   NA                -1.2377167   -1.8294801   -0.6459532
Birth       MAL-ED       INDIA                          (0%, 5%]             NA                -1.0386410   -1.4209007   -0.6563812
Birth       MAL-ED       INDIA                          >5%                  NA                -1.2491750   -1.7339774   -0.7643727
Birth       MAL-ED       NEPAL                          0%                   NA                -0.3125000   -0.9090602    0.2840602
Birth       MAL-ED       NEPAL                          (0%, 5%]             NA                -0.8360000   -1.2964736   -0.3755264
Birth       MAL-ED       NEPAL                          >5%                  NA                -1.3533333   -1.9688465   -0.7378201
Birth       MAL-ED       PERU                           0%                   NA                -0.8875645   -1.0738109   -0.7013181
Birth       MAL-ED       PERU                           (0%, 5%]             NA                -0.9344629   -1.1130445   -0.7558813
Birth       MAL-ED       PERU                           >5%                  NA                -0.8102312   -0.9755890   -0.6448734
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.2295938   -1.5646968   -0.8944907
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.1242679   -1.4816551   -0.7668807
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.9624401   -1.4133883   -0.5114918
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -0.9318422   -1.0738372   -0.7898472
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.9352765   -1.0620048   -0.8085483
Birth       NIH-Birth    BANGLADESH                     >5%                  NA                -0.9251993   -1.0478142   -0.8025844
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                -0.9056233   -1.0033110   -0.8079355
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.8832538   -1.0382168   -0.7282908
Birth       NIH-Crypto   BANGLADESH                     >5%                  NA                -0.9141119   -1.0406450   -0.7875789
Birth       PROVIDE      BANGLADESH                     0%                   NA                -0.9149326   -1.0280954   -0.8017699
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.8815340   -0.9870414   -0.7760266
Birth       PROVIDE      BANGLADESH                     >5%                  NA                -0.8723674   -0.9955576   -0.7491772
6 months    CMIN         BANGLADESH                     0%                   NA                -1.6326592   -1.8694709   -1.3958475
6 months    CMIN         BANGLADESH                     (0%, 5%]             NA                -1.9932232   -2.2666047   -1.7198417
6 months    CMIN         BANGLADESH                     >5%                  NA                -1.7526873   -1.9573376   -1.5480370
6 months    CONTENT      PERU                           0%                   NA                -0.3356546   -0.5149121   -0.1563972
6 months    CONTENT      PERU                           (0%, 5%]             NA                -0.0534426   -0.3676152    0.2607300
6 months    CONTENT      PERU                           >5%                  NA                -0.1068743   -0.3391744    0.1254257
6 months    MAL-ED       BANGLADESH                     0%                   NA                -1.1658231   -1.3804775   -0.9511686
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0915081   -1.2672489   -0.9157673
6 months    MAL-ED       BANGLADESH                     >5%                  NA                -1.3385325   -1.5686939   -1.1083710
6 months    MAL-ED       INDIA                          0%                   NA                -1.2440531   -1.4846975   -1.0034088
6 months    MAL-ED       INDIA                          (0%, 5%]             NA                -1.1242151   -1.2843727   -0.9640574
6 months    MAL-ED       INDIA                          >5%                  NA                -1.4070806   -1.6682251   -1.1459361
6 months    MAL-ED       NEPAL                          0%                   NA                -0.6618567   -0.8645118   -0.4592016
6 months    MAL-ED       NEPAL                          (0%, 5%]             NA                -0.5474052   -0.7487422   -0.3460682
6 months    MAL-ED       NEPAL                          >5%                  NA                -0.5485422   -0.7361475   -0.3609368
6 months    MAL-ED       PERU                           0%                   NA                -1.4386736   -1.6609543   -1.2163929
6 months    MAL-ED       PERU                           (0%, 5%]             NA                -1.3966277   -1.5835562   -1.2096992
6 months    MAL-ED       PERU                           >5%                  NA                -1.2110632   -1.3783678   -1.0437587
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -1.0562193   -1.2045965   -0.9078421
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.1532424   -1.4008073   -0.9056775
6 months    MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.6637037   -1.5451618    0.2177544
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4362172   -1.6365741   -1.2358603
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3332716   -1.5226568   -1.1438863
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2323230   -1.4616094   -1.0030365
6 months    NIH-Birth    BANGLADESH                     0%                   NA                -1.4441845   -1.6149237   -1.2734453
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -1.3567748   -1.5109285   -1.2026210
6 months    NIH-Birth    BANGLADESH                     >5%                  NA                -1.4226646   -1.5563343   -1.2889949
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                -1.1446737   -1.2421686   -1.0471788
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.2799287   -1.4542648   -1.1055925
6 months    NIH-Crypto   BANGLADESH                     >5%                  NA                -1.2294099   -1.3699060   -1.0889139
6 months    PROVIDE      BANGLADESH                     0%                   NA                -1.0600608   -1.1989778   -0.9211437
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.0970879   -1.2107662   -0.9834095
6 months    PROVIDE      BANGLADESH                     >5%                  NA                -1.1371677   -1.2732192   -1.0011162
24 months   CMIN         BANGLADESH                     0%                   NA                -2.4195950   -2.6305417   -2.2086484
24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -2.7611080   -3.0376356   -2.4845804
24 months   CMIN         BANGLADESH                     >5%                  NA                -2.5137937   -2.7064483   -2.3211391
24 months   CONTENT      PERU                           0%                   NA                -0.6917943   -0.9125798   -0.4710088
24 months   CONTENT      PERU                           (0%, 5%]             NA                -0.6140185   -0.9699313   -0.2581058
24 months   CONTENT      PERU                           >5%                  NA                -0.6568618   -0.9243081   -0.3894154
24 months   MAL-ED       BANGLADESH                     0%                   NA                -2.0151194   -2.3108126   -1.7194263
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.9462431   -2.1361122   -1.7563740
24 months   MAL-ED       BANGLADESH                     >5%                  NA                -1.9702788   -2.1851273   -1.7554302
24 months   MAL-ED       INDIA                          0%                   NA                -1.9083326   -2.1747207   -1.6419446
24 months   MAL-ED       INDIA                          (0%, 5%]             NA                -1.8278639   -1.9946876   -1.6610402
24 months   MAL-ED       INDIA                          >5%                  NA                -1.9788945   -2.2449396   -1.7128494
24 months   MAL-ED       NEPAL                          0%                   NA                -1.3533000   -1.5408283   -1.1657716
24 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -1.2072098   -1.4116677   -1.0027520
24 months   MAL-ED       NEPAL                          >5%                  NA                -1.3014056   -1.5270914   -1.0757197
24 months   MAL-ED       PERU                           0%                   NA                -1.9146263   -2.1459052   -1.6833474
24 months   MAL-ED       PERU                           (0%, 5%]             NA                -1.8857884   -2.1031290   -1.6684478
24 months   MAL-ED       PERU                           >5%                  NA                -1.5238420   -1.6959310   -1.3517530
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -1.6087382   -1.7601786   -1.4572979
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.8343750   -2.1416970   -1.5270530
24 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                -1.2655556   -1.9703196   -0.5607915
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -2.6636023   -2.8810318   -2.4461728
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6486544   -2.8615701   -2.4357387
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.5952158   -2.8956676   -2.2947639
24 months   NIH-Birth    BANGLADESH                     0%                   NA                -2.2222468   -2.3993844   -2.0451092
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -2.1017566   -2.2818609   -1.9216523
24 months   NIH-Birth    BANGLADESH                     >5%                  NA                -2.2971085   -2.4551356   -2.1390813
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -1.4031508   -1.5080815   -1.2982200
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.5486431   -1.7576620   -1.3396241
24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -1.4357264   -1.6148199   -1.2566329
24 months   PROVIDE      BANGLADESH                     0%                   NA                -1.5427698   -1.6958911   -1.3896486
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.6265427   -1.7550764   -1.4980091
24 months   PROVIDE      BANGLADESH                     >5%                  NA                -1.6167404   -1.7597374   -1.4737434


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
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.1110898   -0.2239489    0.4461285
Birth       MAL-ED       BANGLADESH                     >5%                  0%                -0.2041471   -0.5559729    0.1476787
Birth       MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          (0%, 5%]             0%                 0.1990757   -0.5210147    0.9191661
Birth       MAL-ED       INDIA                          >5%                  0%                -0.0114583   -0.7710475    0.7481309
Birth       MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          (0%, 5%]             0%                -0.5235000   -1.2771047    0.2301047
Birth       MAL-ED       NEPAL                          >5%                  0%                -1.0408333   -1.8980034   -0.1836633
Birth       MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           (0%, 5%]             0%                -0.0468984   -0.2858171    0.1920203
Birth       MAL-ED       PERU                           >5%                  0%                 0.0773333   -0.1494826    0.3041491
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1053258   -0.3867503    0.5974020
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2671537   -0.2951235    0.8294309
Birth       NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0034343   -0.1765295    0.1696608
Birth       NIH-Birth    BANGLADESH                     >5%                  0%                 0.0066428   -0.1606208    0.1739064
Birth       NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0223694   -0.1541654    0.1989042
Birth       NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0084887   -0.1609692    0.1439918
Birth       PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0333986   -0.1084654    0.1752626
Birth       PROVIDE      BANGLADESH                     >5%                  0%                 0.0425653   -0.1115489    0.1966795
6 months    CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CMIN         BANGLADESH                     (0%, 5%]             0%                -0.3605640   -0.7233794    0.0022515
6 months    CMIN         BANGLADESH                     >5%                  0%                -0.1200281   -0.4339824    0.1939261
6 months    CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           (0%, 5%]             0%                 0.2822120   -0.0808089    0.6452330
6 months    CONTENT      PERU                           >5%                  0%                 0.2287803   -0.0656823    0.5232429
6 months    MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0743150   -0.2028397    0.3514697
6 months    MAL-ED       BANGLADESH                     >5%                  0%                -0.1727094   -0.4889440    0.1435252
6 months    MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          (0%, 5%]             0%                 0.1198381   -0.1698941    0.4095703
6 months    MAL-ED       INDIA                          >5%                  0%                -0.1630275   -0.5188892    0.1928343
6 months    MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1144515   -0.1714643    0.4003672
6 months    MAL-ED       NEPAL                          >5%                  0%                 0.1133145   -0.1643729    0.3910020
6 months    MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           (0%, 5%]             0%                 0.0420459   -0.2487522    0.3328440
6 months    MAL-ED       PERU                           >5%                  0%                 0.2276104   -0.0498175    0.5050383
6 months    MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0970231   -0.3856478    0.1916015
6 months    MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3925156   -0.5013436    1.2863748
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1029456   -0.1705169    0.3764082
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2038942   -0.0999285    0.5077169
6 months    NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0874098   -0.1408090    0.3156285
6 months    NIH-Birth    BANGLADESH                     >5%                  0%                 0.0215199   -0.1926614    0.2357013
6 months    NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1352550   -0.3350229    0.0645130
6 months    NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0847362   -0.2558199    0.0863474
6 months    PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0370271   -0.2159018    0.1418476
6 months    PROVIDE      BANGLADESH                     >5%                  0%                -0.0771069   -0.2709923    0.1167784
24 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                -0.3415130   -0.6906412    0.0076152
24 months   CMIN         BANGLADESH                     >5%                  0%                -0.0941987   -0.3831966    0.1947992
24 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0777758   -0.3412491    0.4968006
24 months   CONTENT      PERU                           >5%                  0%                 0.0349325   -0.3127978    0.3826629
24 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0688763   -0.2841561    0.4219088
24 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0448407   -0.3201747    0.4098560
24 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.0804687   -0.2333309    0.3942683
24 months   MAL-ED       INDIA                          >5%                  0%                -0.0705619   -0.4469638    0.3058400
24 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1460901   -0.1318695    0.4240498
24 months   MAL-ED       NEPAL                          >5%                  0%                 0.0518944   -0.2414555    0.3452443
24 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.0288379   -0.2874554    0.3451311
24 months   MAL-ED       PERU                           >5%                  0%                 0.3907843    0.1046505    0.6769181
24 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2256368   -0.5682459    0.1169723
24 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3431827   -0.3776686    1.0640340
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0149479   -0.2898233    0.3197191
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0683865   -0.3027822    0.4395552
24 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1204902   -0.1285230    0.3695034
24 months   NIH-Birth    BANGLADESH                     >5%                  0%                -0.0748617   -0.3076895    0.1579662
24 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1454923   -0.3794244    0.0884398
24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0325756   -0.2401134    0.1749622
24 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0837729   -0.2802310    0.1126851
24 months   PROVIDE      BANGLADESH                     >5%                  0%                -0.0739706   -0.2803988    0.1324576


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.0140398   -0.2240299    0.1959503
Birth       MAL-ED       INDIA                          0%                   NA                 0.0340997   -0.4802449    0.5484442
Birth       MAL-ED       NEPAL                          0%                   NA                -0.5408333   -1.0628947   -0.0187719
Birth       MAL-ED       PERU                           0%                   NA                 0.0047748   -0.1411320    0.1506816
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0739938   -0.1556563    0.3036438
Birth       NIH-Birth    BANGLADESH                     0%                   NA                 0.0004372   -0.1116041    0.1124785
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                -0.0038713   -0.0694016    0.0616591
Birth       PROVIDE      BANGLADESH                     0%                   NA                 0.0298306   -0.0612413    0.1209025
6 months    CMIN         BANGLADESH                     0%                   NA                -0.1517784   -0.3417947    0.0382379
6 months    CONTENT      PERU                           0%                   NA                 0.0571291   -0.0683576    0.1826158
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0391700   -0.2216026    0.1432626
6 months    MAL-ED       INDIA                          0%                   NA                 0.0325277   -0.1862123    0.2512677
6 months    MAL-ED       NEPAL                          0%                   NA                 0.1002748   -0.0646240    0.2651735
6 months    MAL-ED       PERU                           0%                   NA                 0.1150076   -0.0768296    0.3068448
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0071009   -0.0803127    0.0661109
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0674723   -0.0773764    0.2123210
6 months    NIH-Birth    BANGLADESH                     0%                   NA                 0.0368025   -0.1130215    0.1866265
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0540046   -0.1298407    0.0218314
6 months    PROVIDE      BANGLADESH                     0%                   NA                -0.0316307   -0.1522885    0.0890271
24 months   CMIN         BANGLADESH                     0%                   NA                -0.0913554   -0.2660986    0.0833878
24 months   CONTENT      PERU                           0%                   NA                 0.0049345   -0.1446179    0.1544869
24 months   MAL-ED       BANGLADESH                     0%                   NA                 0.0367232   -0.2010443    0.2744907
24 months   MAL-ED       INDIA                          0%                   NA                 0.0221432   -0.2161750    0.2604614
24 months   MAL-ED       NEPAL                          0%                   NA                 0.0457123   -0.1154525    0.2068770
24 months   MAL-ED       PERU                           0%                   NA                 0.1621553   -0.0352583    0.3595689
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0363213   -0.1197270    0.0470845
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0180415   -0.1409973    0.1770804
24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0031889   -0.1533166    0.1596944
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0381138   -0.1143277    0.0381000
24 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0596523   -0.1904582    0.0711535
