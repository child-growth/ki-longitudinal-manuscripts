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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                   country                        earlybf    swasted   n_cell       n
----------  ------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                0      147     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                1        5     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                0       85     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                1        3     240
Birth       ki0047075b-MAL-ED         BRAZIL                         1                0       79     183
Birth       ki0047075b-MAL-ED         BRAZIL                         1                1        0     183
Birth       ki0047075b-MAL-ED         BRAZIL                         0                0      104     183
Birth       ki0047075b-MAL-ED         BRAZIL                         0                1        0     183
Birth       ki0047075b-MAL-ED         INDIA                          1                0      119     202
Birth       ki0047075b-MAL-ED         INDIA                          1                1        4     202
Birth       ki0047075b-MAL-ED         INDIA                          0                0       76     202
Birth       ki0047075b-MAL-ED         INDIA                          0                1        3     202
Birth       ki0047075b-MAL-ED         NEPAL                          1                0       75     168
Birth       ki0047075b-MAL-ED         NEPAL                          1                1        2     168
Birth       ki0047075b-MAL-ED         NEPAL                          0                0       89     168
Birth       ki0047075b-MAL-ED         NEPAL                          0                1        2     168
Birth       ki0047075b-MAL-ED         PERU                           1                0      211     279
Birth       ki0047075b-MAL-ED         PERU                           1                1        0     279
Birth       ki0047075b-MAL-ED         PERU                           0                0       68     279
Birth       ki0047075b-MAL-ED         PERU                           0                1        0     279
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      153     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        1     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       90     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        1     245
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      107     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        1     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       10     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     118
Birth       ki1000109-EE              PAKISTAN                       1                0        1       1
Birth       ki1000109-EE              PAKISTAN                       1                1        0       1
Birth       ki1000109-EE              PAKISTAN                       0                0        0       1
Birth       ki1000109-EE              PAKISTAN                       0                1        0       1
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                0       13     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                1        0     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                0      141     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                1        4     158
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                0       18      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                1        1      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                0        4      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                1        0      23
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                0     5862   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                1      279   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                0     4929   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                1      443   11513
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                0       91   15648
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                1        2   15648
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                0    15303   15648
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                1      252   15648
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                0      473     683
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                1        2     683
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                0      205     683
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                1        3     683
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                0      147     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                1        0     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                0       91     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                1        2     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1                0       95     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                0      114     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                1        0     209
6 months    ki0047075b-MAL-ED         INDIA                          1                0      137     236
6 months    ki0047075b-MAL-ED         INDIA                          1                1        3     236
6 months    ki0047075b-MAL-ED         INDIA                          0                0       94     236
6 months    ki0047075b-MAL-ED         INDIA                          0                1        2     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                0       96     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                1        0     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                0      140     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                1        0     236
6 months    ki0047075b-MAL-ED         PERU                           1                0      202     273
6 months    ki0047075b-MAL-ED         PERU                           1                1        0     273
6 months    ki0047075b-MAL-ED         PERU                           0                0       71     273
6 months    ki0047075b-MAL-ED         PERU                           0                1        0     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      153     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        3     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       94     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        0     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      205     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       42     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     247
6 months    ki1000109-EE              PAKISTAN                       1                0       68     376
6 months    ki1000109-EE              PAKISTAN                       1                1        1     376
6 months    ki1000109-EE              PAKISTAN                       0                0      299     376
6 months    ki1000109-EE              PAKISTAN                       0                1        8     376
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                0       92    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                1        5    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                0     1199    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                1       38    1334
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                0      619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                1        0     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                0       96     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                1        0     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1                0      148     510
6 months    ki1113344-GMS-Nepal       NEPAL                          1                1        3     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0                0      355     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0                1        4     510
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                0     3916    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                1       35    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                0     3354    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                1       34    7339
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                0       36   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                1        0   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                0    16518   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                1      230   16784
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                0     3073    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                1       22    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                0     1727    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                1       11    4833
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                0      128     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                1        0     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                0       83     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                1        0     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1                0       79     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        1     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                0       89     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        0     169
24 months   ki0047075b-MAL-ED         INDIA                          1                0      133     227
24 months   ki0047075b-MAL-ED         INDIA                          1                1        1     227
24 months   ki0047075b-MAL-ED         INDIA                          0                0       92     227
24 months   ki0047075b-MAL-ED         INDIA                          0                1        1     227
24 months   ki0047075b-MAL-ED         NEPAL                          1                0       95     228
24 months   ki0047075b-MAL-ED         NEPAL                          1                1        0     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                0      133     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                1        0     228
24 months   ki0047075b-MAL-ED         PERU                           1                0      148     201
24 months   ki0047075b-MAL-ED         PERU                           1                1        1     201
24 months   ki0047075b-MAL-ED         PERU                           0                0       52     201
24 months   ki0047075b-MAL-ED         PERU                           0                1        0     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      144     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        0     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       91     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        0     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      180     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       34     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      439     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1        4     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       71     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        0     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1                0      134     454
24 months   ki1113344-GMS-Nepal       NEPAL                          1                1        2     454
24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      307     454
24 months   ki1113344-GMS-Nepal       NEPAL                          0                1       11     454
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0      184     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1       14     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0      158     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1       14     370
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0        1    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1        0    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0     8267    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1      335    8603
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     2957    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1       74    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     1649    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1       55    4735


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/d23d216b-2f1a-456d-8464-8a1f27070db7/f3cd9b85-68e6-4ae6-821d-ad0ddc08a551/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d23d216b-2f1a-456d-8464-8a1f27070db7/f3cd9b85-68e6-4ae6-821d-ad0ddc08a551/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d23d216b-2f1a-456d-8464-8a1f27070db7/f3cd9b85-68e6-4ae6-821d-ad0ddc08a551/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d23d216b-2f1a-456d-8464-8a1f27070db7/f3cd9b85-68e6-4ae6-821d-ad0ddc08a551/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0615828   0.0570829   0.0660827
Birth       ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0635123   0.0589224   0.0681021
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0515464   0.0256358   0.0774570
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0307195   0.0217846   0.0396544
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0089809   0.0060158   0.0119460
6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0100347   0.0066490   0.0134204
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0071881   0.0031371   0.0112392
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0062195   0.0025302   0.0099088
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0714850   0.0352423   0.1077276
24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0809806   0.0391958   0.1227654
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0244776   0.0182217   0.0307334
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0321255   0.0230418   0.0412091


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0627117   0.0582829   0.0671405
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0094018   0.0071937   0.0116099
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0068281   0.0038634   0.0097927
24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0756757   0.0486905   0.1026609
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0272439   0.0220352   0.0324527


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.031331   0.9971951   1.066635
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 0.595958   0.3210516   1.106258
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.117337   0.6969019   1.791416
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.865249   0.3864564   1.937232
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.132835   0.5491900   2.336740
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.312445   0.8995140   1.914937


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0011289   -0.0000393   0.0022971
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0193125   -0.0457136   0.0070885
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0004210   -0.0016687   0.0025106
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0003601   -0.0022924   0.0015722
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0041907   -0.0215083   0.0298897
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0027664   -0.0011776   0.0067103


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0180015   -0.0007568   0.0364082
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.5991369   -1.7539793   0.0714386
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0447733   -0.2051402   0.2428615
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0527365   -0.3683824   0.1900991
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0553773   -0.3525716   0.3402848
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.1015406   -0.0550968   0.2349240
