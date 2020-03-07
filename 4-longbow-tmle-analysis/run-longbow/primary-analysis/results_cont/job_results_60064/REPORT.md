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

agecat      studyid      country                        perdiar6    n_cell     n
----------  -----------  -----------------------------  ---------  -------  ----
Birth       CMIN         BANGLADESH                     0%              16    26
Birth       CMIN         BANGLADESH                     (0%, 5%]         4    26
Birth       CMIN         BANGLADESH                     >5%              6    26
Birth       CONTENT      PERU                           0%               0     2
Birth       CONTENT      PERU                           (0%, 5%]         1     2
Birth       CONTENT      PERU                           >5%              1     2
Birth       EE           PAKISTAN                       0%             223   240
Birth       EE           PAKISTAN                       (0%, 5%]        15   240
Birth       EE           PAKISTAN                       >5%              2   240
Birth       MAL-ED       BANGLADESH                     0%              72   231
Birth       MAL-ED       BANGLADESH                     (0%, 5%]        90   231
Birth       MAL-ED       BANGLADESH                     >5%             69   231
Birth       MAL-ED       BRAZIL                         0%              57    65
Birth       MAL-ED       BRAZIL                         (0%, 5%]         6    65
Birth       MAL-ED       BRAZIL                         >5%              2    65
Birth       MAL-ED       INDIA                          0%              12    47
Birth       MAL-ED       INDIA                          (0%, 5%]        24    47
Birth       MAL-ED       INDIA                          >5%             11    47
Birth       MAL-ED       NEPAL                          0%               8    27
Birth       MAL-ED       NEPAL                          (0%, 5%]        10    27
Birth       MAL-ED       NEPAL                          >5%              9    27
Birth       MAL-ED       PERU                           0%              67   233
Birth       MAL-ED       PERU                           (0%, 5%]        72   233
Birth       MAL-ED       PERU                           >5%             94   233
Birth       MAL-ED       SOUTH AFRICA                   0%              86   113
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   113
Birth       MAL-ED       SOUTH AFRICA                   >5%              4   113
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              59   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        45   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             21   125
Birth       NIH-Birth    BANGLADESH                     0%             160   605
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]       177   605
Birth       NIH-Birth    BANGLADESH                     >5%            268   605
Birth       NIH-Crypto   BANGLADESH                     0%             360   732
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]       163   732
Birth       NIH-Crypto   BANGLADESH                     >5%            209   732
Birth       PROVIDE      BANGLADESH                     0%             161   539
Birth       PROVIDE      BANGLADESH                     (0%, 5%]       209   539
Birth       PROVIDE      BANGLADESH                     >5%            169   539
6 months    CMIN         BANGLADESH                     0%              81   243
6 months    CMIN         BANGLADESH                     (0%, 5%]        59   243
6 months    CMIN         BANGLADESH                     >5%            103   243
6 months    CONTENT      PERU                           0%             115   215
6 months    CONTENT      PERU                           (0%, 5%]        43   215
6 months    CONTENT      PERU                           >5%             57   215
6 months    EE           PAKISTAN                       0%             336   373
6 months    EE           PAKISTAN                       (0%, 5%]        35   373
6 months    EE           PAKISTAN                       >5%              2   373
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
6 months    PROVIDE      BANGLADESH                     0%             158   604
6 months    PROVIDE      BANGLADESH                     (0%, 5%]       246   604
6 months    PROVIDE      BANGLADESH                     >5%            200   604
24 months   CMIN         BANGLADESH                     0%              85   242
24 months   CMIN         BANGLADESH                     (0%, 5%]        58   242
24 months   CMIN         BANGLADESH                     >5%             99   242
24 months   CONTENT      PERU                           0%              84   164
24 months   CONTENT      PERU                           (0%, 5%]        36   164
24 months   CONTENT      PERU                           >5%             44   164
24 months   EE           PAKISTAN                       0%             152   167
24 months   EE           PAKISTAN                       (0%, 5%]        14   167
24 months   EE           PAKISTAN                       >5%              1   167
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
24 months   NIH-Birth    BANGLADESH                     0%             107   429
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]       128   429
24 months   NIH-Birth    BANGLADESH                     >5%            194   429
24 months   NIH-Crypto   BANGLADESH                     0%             277   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   PROVIDE      BANGLADESH                     0%             152   578
24 months   PROVIDE      BANGLADESH                     (0%, 5%]       232   578
24 months   PROVIDE      BANGLADESH                     >5%            194   578


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
![](/tmp/1d4c058d-61c2-4948-86d8-09a4a728ce7c/0b640680-d425-4061-bfa1-3a2afaa4b268/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1d4c058d-61c2-4948-86d8-09a4a728ce7c/0b640680-d425-4061-bfa1-3a2afaa4b268/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1d4c058d-61c2-4948-86d8-09a4a728ce7c/0b640680-d425-4061-bfa1-3a2afaa4b268/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -1.1105554   -1.3604555   -0.8606553
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.9931905   -1.2089537   -0.7774274
Birth       MAL-ED       BANGLADESH                     >5%                  NA                -1.3071947   -1.5468991   -1.0674903
Birth       MAL-ED       INDIA                          0%                   NA                -1.2445144   -1.8328854   -0.6561435
Birth       MAL-ED       INDIA                          (0%, 5%]             NA                -1.0115618   -1.3951389   -0.6279847
Birth       MAL-ED       INDIA                          >5%                  NA                -1.2955761   -1.7966782   -0.7944739
Birth       MAL-ED       NEPAL                          0%                   NA                -0.3125000   -0.9090602    0.2840602
Birth       MAL-ED       NEPAL                          (0%, 5%]             NA                -0.8360000   -1.2964736   -0.3755264
Birth       MAL-ED       NEPAL                          >5%                  NA                -1.3533333   -1.9688465   -0.7378201
Birth       MAL-ED       PERU                           0%                   NA                -0.8800745   -1.0656875   -0.6944614
Birth       MAL-ED       PERU                           (0%, 5%]             NA                -0.9374581   -1.1160802   -0.7588360
Birth       MAL-ED       PERU                           >5%                  NA                -0.8164380   -0.9789415   -0.6539345
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.2837930   -1.6193656   -0.9482205
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.1729730   -1.5059904   -0.8399555
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.0254279   -1.4778854   -0.5729705
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -0.9329681   -1.0753590   -0.7905772
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.9428144   -1.0696460   -0.8159828
Birth       NIH-Birth    BANGLADESH                     >5%                  NA                -0.9229333   -1.0451823   -0.8006843
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                -0.9100134   -1.0064648   -0.8135619
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.8762383   -1.0288966   -0.7235800
Birth       NIH-Crypto   BANGLADESH                     >5%                  NA                -0.9189433   -1.0438101   -0.7940766
Birth       PROVIDE      BANGLADESH                     0%                   NA                -0.9195233   -1.0329625   -0.8060841
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.8766777   -0.9833102   -0.7700452
Birth       PROVIDE      BANGLADESH                     >5%                  NA                -0.8722426   -0.9945609   -0.7499242
6 months    CMIN         BANGLADESH                     0%                   NA                -1.6461742   -1.8834184   -1.4089299
6 months    CMIN         BANGLADESH                     (0%, 5%]             NA                -1.9965383   -2.2671931   -1.7258835
6 months    CMIN         BANGLADESH                     >5%                  NA                -1.7523521   -1.9534640   -1.5512402
6 months    CONTENT      PERU                           0%                   NA                -0.3535898   -0.5325176   -0.1746620
6 months    CONTENT      PERU                           (0%, 5%]             NA                -0.2210649   -0.5512276    0.1090978
6 months    CONTENT      PERU                           >5%                  NA                -0.1313354   -0.3692912    0.1066203
6 months    MAL-ED       BANGLADESH                     0%                   NA                -1.1724981   -1.3928590   -0.9521372
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0908587   -1.2722860   -0.9094315
6 months    MAL-ED       BANGLADESH                     >5%                  NA                -1.3688409   -1.5951838   -1.1424979
6 months    MAL-ED       INDIA                          0%                   NA                -1.1654856   -1.4065371   -0.9244341
6 months    MAL-ED       INDIA                          (0%, 5%]             NA                -1.1096072   -1.2698929   -0.9493215
6 months    MAL-ED       INDIA                          >5%                  NA                -1.3608687   -1.6130193   -1.1087181
6 months    MAL-ED       NEPAL                          0%                   NA                -0.6280704   -0.8268354   -0.4293054
6 months    MAL-ED       NEPAL                          (0%, 5%]             NA                -0.5228193   -0.7200004   -0.3256383
6 months    MAL-ED       NEPAL                          >5%                  NA                -0.5355517   -0.7229274   -0.3481760
6 months    MAL-ED       PERU                           0%                   NA                -1.4352091   -1.6510814   -1.2193368
6 months    MAL-ED       PERU                           (0%, 5%]             NA                -1.3927092   -1.5791330   -1.2062854
6 months    MAL-ED       PERU                           >5%                  NA                -1.2067207   -1.3704776   -1.0429639
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -1.0562193   -1.2045965   -0.9078421
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.1532424   -1.4008073   -0.9056775
6 months    MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.6637037   -1.5451618    0.2177544
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4370176   -1.6392419   -1.2347933
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3458240   -1.5378788   -1.1537693
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2520131   -1.4813851   -1.0226412
6 months    NIH-Birth    BANGLADESH                     0%                   NA                -1.4468085   -1.6151473   -1.2784697
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -1.3661008   -1.5215003   -1.2107013
6 months    NIH-Birth    BANGLADESH                     >5%                  NA                -1.4097090   -1.5411111   -1.2783069
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                -1.1547650   -1.2511602   -1.0583698
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.2860312   -1.4690168   -1.1030457
6 months    NIH-Crypto   BANGLADESH                     >5%                  NA                -1.2549728   -1.4009222   -1.1090234
6 months    PROVIDE      BANGLADESH                     0%                   NA                -1.0444237   -1.1851401   -0.9037074
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.0927376   -1.2069621   -0.9785130
6 months    PROVIDE      BANGLADESH                     >5%                  NA                -1.1207514   -1.2568381   -0.9846646
24 months   CMIN         BANGLADESH                     0%                   NA                -2.4077531   -2.6154462   -2.2000601
24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -2.7418536   -3.0179877   -2.4657195
24 months   CMIN         BANGLADESH                     >5%                  NA                -2.4841263   -2.6733651   -2.2948874
24 months   CONTENT      PERU                           0%                   NA                -0.7025528   -0.9241118   -0.4809938
24 months   CONTENT      PERU                           (0%, 5%]             NA                -0.6692645   -1.0121408   -0.3263883
24 months   CONTENT      PERU                           >5%                  NA                -0.6831489   -0.9564168   -0.4098810
24 months   MAL-ED       BANGLADESH                     0%                   NA                -2.0075324   -2.2902611   -1.7248037
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.9473785   -2.1371617   -1.7575953
24 months   MAL-ED       BANGLADESH                     >5%                  NA                -1.9774648   -2.1877683   -1.7671613
24 months   MAL-ED       INDIA                          0%                   NA                -1.9239946   -2.1911953   -1.6567940
24 months   MAL-ED       INDIA                          (0%, 5%]             NA                -1.8211260   -1.9880386   -1.6542134
24 months   MAL-ED       INDIA                          >5%                  NA                -1.9731121   -2.2335262   -1.7126980
24 months   MAL-ED       NEPAL                          0%                   NA                -1.3665652   -1.5537514   -1.1793790
24 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -1.1944394   -1.4042846   -0.9845941
24 months   MAL-ED       NEPAL                          >5%                  NA                -1.2997056   -1.5255830   -1.0738283
24 months   MAL-ED       PERU                           0%                   NA                -1.9200275   -2.1511420   -1.6889131
24 months   MAL-ED       PERU                           (0%, 5%]             NA                -1.8994592   -2.1224445   -1.6764739
24 months   MAL-ED       PERU                           >5%                  NA                -1.5424322   -1.7130618   -1.3718027
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -1.6087382   -1.7601786   -1.4572979
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.8343750   -2.1416970   -1.5270530
24 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                -1.2655556   -1.9703196   -0.5607915
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -2.6563198   -2.8744265   -2.4382132
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6203600   -2.8366279   -2.4040921
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.5749423   -2.8646947   -2.2851899
24 months   NIH-Birth    BANGLADESH                     0%                   NA                -2.2190663   -2.4031598   -2.0349729
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -2.0923705   -2.2690558   -1.9156851
24 months   NIH-Birth    BANGLADESH                     >5%                  NA                -2.2979893   -2.4583065   -2.1376720
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -1.3931560   -1.4990900   -1.2872219
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.5405427   -1.7478236   -1.3332618
24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -1.4582277   -1.6378936   -1.2785618
24 months   PROVIDE      BANGLADESH                     0%                   NA                -1.5404465   -1.6950051   -1.3858879
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.6271176   -1.7565661   -1.4976692
24 months   PROVIDE      BANGLADESH                     >5%                  NA                -1.6197996   -1.7620622   -1.4775369


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
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.1173648   -0.2129139    0.4476436
Birth       MAL-ED       BANGLADESH                     >5%                  0%                -0.1966393   -0.5432424    0.1499637
Birth       MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          (0%, 5%]             0%                 0.2329526   -0.4881848    0.9540900
Birth       MAL-ED       INDIA                          >5%                  0%                -0.0510616   -0.8206839    0.7185607
Birth       MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          (0%, 5%]             0%                -0.5235000   -1.2771047    0.2301047
Birth       MAL-ED       NEPAL                          >5%                  0%                -1.0408333   -1.8980034   -0.1836633
Birth       MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           (0%, 5%]             0%                -0.0573836   -0.2969346    0.1821674
Birth       MAL-ED       PERU                           >5%                  0%                 0.0636365   -0.1608858    0.2881588
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1108200   -0.3650298    0.5866699
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2583651   -0.3017629    0.8184931
Birth       NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0098463   -0.1837322    0.1640395
Birth       NIH-Birth    BANGLADESH                     >5%                  0%                 0.0100348   -0.1580674    0.1781371
Birth       NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0337750   -0.1401906    0.2077406
Birth       NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0089300   -0.1593944    0.1415345
Birth       PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0428456   -0.1000431    0.1857342
Birth       PROVIDE      BANGLADESH                     >5%                  0%                 0.0472807   -0.1063961    0.2009575
6 months    CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CMIN         BANGLADESH                     (0%, 5%]             0%                -0.3503641   -0.7111806    0.0104523
6 months    CMIN         BANGLADESH                     >5%                  0%                -0.1061779   -0.4180233    0.2056674
6 months    CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           (0%, 5%]             0%                 0.1325250   -0.2436721    0.5087220
6 months    CONTENT      PERU                           >5%                  0%                 0.2222544   -0.0759899    0.5204986
6 months    MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0816394   -0.2039747    0.3672535
6 months    MAL-ED       BANGLADESH                     >5%                  0%                -0.1963428   -0.5124214    0.1197359
6 months    MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          (0%, 5%]             0%                 0.0558784   -0.2350701    0.3468268
6 months    MAL-ED       INDIA                          >5%                  0%                -0.1953831   -0.5437524    0.1529861
6 months    MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1052511   -0.1733554    0.3838576
6 months    MAL-ED       NEPAL                          >5%                  0%                 0.0925187   -0.1799431    0.3649806
6 months    MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           (0%, 5%]             0%                 0.0424999   -0.2420834    0.3270833
6 months    MAL-ED       PERU                           >5%                  0%                 0.2284884   -0.0414164    0.4983932
6 months    MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0970231   -0.3856478    0.1916015
6 months    MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3925156   -0.5013436    1.2863748
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0911936   -0.1882721    0.3706592
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1850045   -0.1210860    0.4910949
6 months    NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0807077   -0.1451944    0.3066097
6 months    NIH-Birth    BANGLADESH                     >5%                  0%                 0.0370995   -0.1718966    0.2460956
6 months    NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1312663   -0.3380301    0.0754976
6 months    NIH-Crypto   BANGLADESH                     >5%                  0%                -0.1002078   -0.2752539    0.0748383
6 months    PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0483138   -0.2295358    0.1329081
6 months    PROVIDE      BANGLADESH                     >5%                  0%                -0.0763276   -0.2721545    0.1194993
24 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                -0.3341004   -0.6801797    0.0119789
24 months   CMIN         BANGLADESH                     >5%                  0%                -0.0763731   -0.3580904    0.2053441
24 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0332883   -0.3753442    0.4419207
24 months   CONTENT      PERU                           >5%                  0%                 0.0194039   -0.3330209    0.3718287
24 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0601539   -0.2806505    0.4009583
24 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0300675   -0.3213194    0.3814545
24 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.1028686   -0.2107703    0.4165075
24 months   MAL-ED       INDIA                          >5%                  0%                -0.0491175   -0.4211775    0.3229425
24 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1721259   -0.1094835    0.4537353
24 months   MAL-ED       NEPAL                          >5%                  0%                 0.0668596   -0.2270945    0.3608137
24 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.0205683   -0.2996365    0.3407731
24 months   MAL-ED       PERU                           >5%                  0%                 0.3775953    0.0935496    0.6616410
24 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2256368   -0.5682459    0.1169723
24 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3431827   -0.3776686    1.0640340
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0359598   -0.2722289    0.3441485
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0813775   -0.2825667    0.4453217
24 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1266959   -0.1254434    0.3788351
24 months   NIH-Birth    BANGLADESH                     >5%                  0%                -0.0789229   -0.3190015    0.1611556
24 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1473868   -0.3802817    0.0855082
24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0650717   -0.2735378    0.1433944
24 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0866712   -0.2853558    0.1120135
24 months   PROVIDE      BANGLADESH                     >5%                  0%                -0.0793531   -0.2868107    0.1281046


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.0075399   -0.2120888    0.1970091
Birth       MAL-ED       INDIA                          0%                   NA                 0.0408974   -0.4735654    0.5553602
Birth       MAL-ED       NEPAL                          0%                   NA                -0.5408333   -1.0628947   -0.0187719
Birth       MAL-ED       PERU                           0%                   NA                -0.0027152   -0.1491211    0.1436907
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1281930   -0.1023974    0.3587835
Birth       NIH-Birth    BANGLADESH                     0%                   NA                 0.0015631   -0.1112015    0.1143277
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                 0.0005188   -0.0640665    0.0651041
Birth       PROVIDE      BANGLADESH                     0%                   NA                 0.0344212   -0.0568397    0.1256822
6 months    CMIN         BANGLADESH                     0%                   NA                -0.1382634   -0.3281325    0.0516057
6 months    CONTENT      PERU                           0%                   NA                 0.0750642   -0.0487540    0.1988824
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0324950   -0.2191440    0.1541541
6 months    MAL-ED       INDIA                          0%                   NA                -0.0460398   -0.2655669    0.1734873
6 months    MAL-ED       NEPAL                          0%                   NA                 0.0664885   -0.0924831    0.2254600
6 months    MAL-ED       PERU                           0%                   NA                 0.1115431   -0.0743715    0.2974576
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0071009   -0.0803127    0.0661109
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0682727   -0.0797755    0.2163208
6 months    NIH-Birth    BANGLADESH                     0%                   NA                 0.0394264   -0.1073737    0.1862265
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0439133   -0.1190315    0.0312048
6 months    PROVIDE      BANGLADESH                     0%                   NA                -0.0472678   -0.1698127    0.0752772
24 months   CMIN         BANGLADESH                     0%                   NA                -0.1031973   -0.2732782    0.0668837
24 months   CONTENT      PERU                           0%                   NA                 0.0156930   -0.1341183    0.1655044
24 months   MAL-ED       BANGLADESH                     0%                   NA                 0.0291361   -0.1965327    0.2548050
24 months   MAL-ED       INDIA                          0%                   NA                 0.0378052   -0.2005363    0.2761467
24 months   MAL-ED       NEPAL                          0%                   NA                 0.0589775   -0.1017668    0.2197218
24 months   MAL-ED       PERU                           0%                   NA                 0.1675566   -0.0305706    0.3656837
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0363213   -0.1197270    0.0470845
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0107591   -0.1492931    0.1708113
24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0000085   -0.1626623    0.1626792
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0481086   -0.1251376    0.0289204
24 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0619757   -0.1942594    0.0703081
