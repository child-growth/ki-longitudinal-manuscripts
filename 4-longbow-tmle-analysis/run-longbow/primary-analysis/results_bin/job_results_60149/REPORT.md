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

**Outcome Variable:** stunted

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

agecat      studyid      country                        perdiar6    stunted   n_cell     n
----------  -----------  -----------------------------  ---------  --------  -------  ----
Birth       CMIN         BANGLADESH                     0%                0       10    26
Birth       CMIN         BANGLADESH                     0%                1        6    26
Birth       CMIN         BANGLADESH                     (0%, 5%]          0        2    26
Birth       CMIN         BANGLADESH                     (0%, 5%]          1        2    26
Birth       CMIN         BANGLADESH                     >5%               0        5    26
Birth       CMIN         BANGLADESH                     >5%               1        1    26
Birth       CONTENT      PERU                           0%                0        0     2
Birth       CONTENT      PERU                           0%                1        0     2
Birth       CONTENT      PERU                           (0%, 5%]          0        1     2
Birth       CONTENT      PERU                           (0%, 5%]          1        0     2
Birth       CONTENT      PERU                           >5%               0        1     2
Birth       CONTENT      PERU                           >5%               1        0     2
Birth       EE           PAKISTAN                       0%                0      132   240
Birth       EE           PAKISTAN                       0%                1       91   240
Birth       EE           PAKISTAN                       (0%, 5%]          0        7   240
Birth       EE           PAKISTAN                       (0%, 5%]          1        8   240
Birth       EE           PAKISTAN                       >5%               0        1   240
Birth       EE           PAKISTAN                       >5%               1        1   240
Birth       MAL-ED       BANGLADESH                     0%                0       58   231
Birth       MAL-ED       BANGLADESH                     0%                1       14   231
Birth       MAL-ED       BANGLADESH                     (0%, 5%]          0       78   231
Birth       MAL-ED       BANGLADESH                     (0%, 5%]          1       12   231
Birth       MAL-ED       BANGLADESH                     >5%               0       51   231
Birth       MAL-ED       BANGLADESH                     >5%               1       18   231
Birth       MAL-ED       BRAZIL                         0%                0       48    65
Birth       MAL-ED       BRAZIL                         0%                1        9    65
Birth       MAL-ED       BRAZIL                         (0%, 5%]          0        6    65
Birth       MAL-ED       BRAZIL                         (0%, 5%]          1        0    65
Birth       MAL-ED       BRAZIL                         >5%               0        2    65
Birth       MAL-ED       BRAZIL                         >5%               1        0    65
Birth       MAL-ED       INDIA                          0%                0       10    47
Birth       MAL-ED       INDIA                          0%                1        2    47
Birth       MAL-ED       INDIA                          (0%, 5%]          0       19    47
Birth       MAL-ED       INDIA                          (0%, 5%]          1        5    47
Birth       MAL-ED       INDIA                          >5%               0        8    47
Birth       MAL-ED       INDIA                          >5%               1        3    47
Birth       MAL-ED       NEPAL                          0%                0        8    27
Birth       MAL-ED       NEPAL                          0%                1        0    27
Birth       MAL-ED       NEPAL                          (0%, 5%]          0       10    27
Birth       MAL-ED       NEPAL                          (0%, 5%]          1        0    27
Birth       MAL-ED       NEPAL                          >5%               0        7    27
Birth       MAL-ED       NEPAL                          >5%               1        2    27
Birth       MAL-ED       PERU                           0%                0       58   233
Birth       MAL-ED       PERU                           0%                1        9   233
Birth       MAL-ED       PERU                           (0%, 5%]          0       64   233
Birth       MAL-ED       PERU                           (0%, 5%]          1        8   233
Birth       MAL-ED       PERU                           >5%               0       85   233
Birth       MAL-ED       PERU                           >5%               1        9   233
Birth       MAL-ED       SOUTH AFRICA                   0%                0       80   113
Birth       MAL-ED       SOUTH AFRICA                   0%                1        6   113
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       20   113
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        3   113
Birth       MAL-ED       SOUTH AFRICA                   >5%               0        4   113
Birth       MAL-ED       SOUTH AFRICA                   >5%               1        0   113
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       47   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       12   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       36   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        9   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       19   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        2   125
Birth       NIH-Birth    BANGLADESH                     0%                0      133   605
Birth       NIH-Birth    BANGLADESH                     0%                1       27   605
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]          0      150   605
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]          1       27   605
Birth       NIH-Birth    BANGLADESH                     >5%               0      226   605
Birth       NIH-Birth    BANGLADESH                     >5%               1       42   605
Birth       NIH-Crypto   BANGLADESH                     0%                0      310   732
Birth       NIH-Crypto   BANGLADESH                     0%                1       50   732
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]          0      141   732
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]          1       22   732
Birth       NIH-Crypto   BANGLADESH                     >5%               0      180   732
Birth       NIH-Crypto   BANGLADESH                     >5%               1       29   732
Birth       PROVIDE      BANGLADESH                     0%                0      148   539
Birth       PROVIDE      BANGLADESH                     0%                1       13   539
Birth       PROVIDE      BANGLADESH                     (0%, 5%]          0      190   539
Birth       PROVIDE      BANGLADESH                     (0%, 5%]          1       19   539
Birth       PROVIDE      BANGLADESH                     >5%               0      153   539
Birth       PROVIDE      BANGLADESH                     >5%               1       16   539
6 months    CMIN         BANGLADESH                     0%                0       55   243
6 months    CMIN         BANGLADESH                     0%                1       26   243
6 months    CMIN         BANGLADESH                     (0%, 5%]          0       30   243
6 months    CMIN         BANGLADESH                     (0%, 5%]          1       29   243
6 months    CMIN         BANGLADESH                     >5%               0       65   243
6 months    CMIN         BANGLADESH                     >5%               1       38   243
6 months    CONTENT      PERU                           0%                0      109   215
6 months    CONTENT      PERU                           0%                1        6   215
6 months    CONTENT      PERU                           (0%, 5%]          0       41   215
6 months    CONTENT      PERU                           (0%, 5%]          1        2   215
6 months    CONTENT      PERU                           >5%               0       56   215
6 months    CONTENT      PERU                           >5%               1        1   215
6 months    EE           PAKISTAN                       0%                0      173   373
6 months    EE           PAKISTAN                       0%                1      163   373
6 months    EE           PAKISTAN                       (0%, 5%]          0       16   373
6 months    EE           PAKISTAN                       (0%, 5%]          1       19   373
6 months    EE           PAKISTAN                       >5%               0        1   373
6 months    EE           PAKISTAN                       >5%               1        1   373
6 months    MAL-ED       BANGLADESH                     0%                0       57   241
6 months    MAL-ED       BANGLADESH                     0%                1       14   241
6 months    MAL-ED       BANGLADESH                     (0%, 5%]          0       80   241
6 months    MAL-ED       BANGLADESH                     (0%, 5%]          1       12   241
6 months    MAL-ED       BANGLADESH                     >5%               0       60   241
6 months    MAL-ED       BANGLADESH                     >5%               1       18   241
6 months    MAL-ED       BRAZIL                         0%                0      187   209
6 months    MAL-ED       BRAZIL                         0%                1        5   209
6 months    MAL-ED       BRAZIL                         (0%, 5%]          0       14   209
6 months    MAL-ED       BRAZIL                         (0%, 5%]          1        1   209
6 months    MAL-ED       BRAZIL                         >5%               0        2   209
6 months    MAL-ED       BRAZIL                         >5%               1        0   209
6 months    MAL-ED       INDIA                          0%                0       42   236
6 months    MAL-ED       INDIA                          0%                1        8   236
6 months    MAL-ED       INDIA                          (0%, 5%]          0      107   236
6 months    MAL-ED       INDIA                          (0%, 5%]          1       20   236
6 months    MAL-ED       INDIA                          >5%               0       42   236
6 months    MAL-ED       INDIA                          >5%               1       17   236
6 months    MAL-ED       NEPAL                          0%                0       75   236
6 months    MAL-ED       NEPAL                          0%                1        5   236
6 months    MAL-ED       NEPAL                          (0%, 5%]          0       71   236
6 months    MAL-ED       NEPAL                          (0%, 5%]          1        5   236
6 months    MAL-ED       NEPAL                          >5%               0       78   236
6 months    MAL-ED       NEPAL                          >5%               1        2   236
6 months    MAL-ED       PERU                           0%                0       51   273
6 months    MAL-ED       PERU                           0%                1       17   273
6 months    MAL-ED       PERU                           (0%, 5%]          0       67   273
6 months    MAL-ED       PERU                           (0%, 5%]          1       22   273
6 months    MAL-ED       PERU                           >5%               0       95   273
6 months    MAL-ED       PERU                           >5%               1       21   273
6 months    MAL-ED       SOUTH AFRICA                   0%                0      155   254
6 months    MAL-ED       SOUTH AFRICA                   0%                1       35   254
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       42   254
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]          1       13   254
6 months    MAL-ED       SOUTH AFRICA                   >5%               0        7   254
6 months    MAL-ED       SOUTH AFRICA                   >5%               1        2   254
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       72   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       33   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       77   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1       19   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       39   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        7   247
6 months    NIH-Birth    BANGLADESH                     0%                0       98   537
6 months    NIH-Birth    BANGLADESH                     0%                1       31   537
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]          0      123   537
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]          1       46   537
6 months    NIH-Birth    BANGLADESH                     >5%               0      172   537
6 months    NIH-Birth    BANGLADESH                     >5%               1       67   537
6 months    NIH-Crypto   BANGLADESH                     0%                0      279   715
6 months    NIH-Crypto   BANGLADESH                     0%                1       62   715
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]          0      119   715
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]          1       48   715
6 months    NIH-Crypto   BANGLADESH                     >5%               0      167   715
6 months    NIH-Crypto   BANGLADESH                     >5%               1       40   715
6 months    PROVIDE      BANGLADESH                     0%                0      137   604
6 months    PROVIDE      BANGLADESH                     0%                1       21   604
6 months    PROVIDE      BANGLADESH                     (0%, 5%]          0      206   604
6 months    PROVIDE      BANGLADESH                     (0%, 5%]          1       40   604
6 months    PROVIDE      BANGLADESH                     >5%               0      165   604
6 months    PROVIDE      BANGLADESH                     >5%               1       35   604
24 months   CMIN         BANGLADESH                     0%                0       35   242
24 months   CMIN         BANGLADESH                     0%                1       50   242
24 months   CMIN         BANGLADESH                     (0%, 5%]          0       14   242
24 months   CMIN         BANGLADESH                     (0%, 5%]          1       44   242
24 months   CMIN         BANGLADESH                     >5%               0       28   242
24 months   CMIN         BANGLADESH                     >5%               1       71   242
24 months   CONTENT      PERU                           0%                0       77   164
24 months   CONTENT      PERU                           0%                1        7   164
24 months   CONTENT      PERU                           (0%, 5%]          0       32   164
24 months   CONTENT      PERU                           (0%, 5%]          1        4   164
24 months   CONTENT      PERU                           >5%               0       42   164
24 months   CONTENT      PERU                           >5%               1        2   164
24 months   EE           PAKISTAN                       0%                0       45   167
24 months   EE           PAKISTAN                       0%                1      107   167
24 months   EE           PAKISTAN                       (0%, 5%]          0        4   167
24 months   EE           PAKISTAN                       (0%, 5%]          1       10   167
24 months   EE           PAKISTAN                       >5%               0        0   167
24 months   EE           PAKISTAN                       >5%               1        1   167
24 months   MAL-ED       BANGLADESH                     0%                0       33   212
24 months   MAL-ED       BANGLADESH                     0%                1       31   212
24 months   MAL-ED       BANGLADESH                     (0%, 5%]          0       47   212
24 months   MAL-ED       BANGLADESH                     (0%, 5%]          1       36   212
24 months   MAL-ED       BANGLADESH                     >5%               0       31   212
24 months   MAL-ED       BANGLADESH                     >5%               1       34   212
24 months   MAL-ED       BRAZIL                         0%                0      147   169
24 months   MAL-ED       BRAZIL                         0%                1        7   169
24 months   MAL-ED       BRAZIL                         (0%, 5%]          0       13   169
24 months   MAL-ED       BRAZIL                         (0%, 5%]          1        0   169
24 months   MAL-ED       BRAZIL                         >5%               0        2   169
24 months   MAL-ED       BRAZIL                         >5%               1        0   169
24 months   MAL-ED       INDIA                          0%                0       25   227
24 months   MAL-ED       INDIA                          0%                1       23   227
24 months   MAL-ED       INDIA                          (0%, 5%]          0       70   227
24 months   MAL-ED       INDIA                          (0%, 5%]          1       52   227
24 months   MAL-ED       INDIA                          >5%               0       35   227
24 months   MAL-ED       INDIA                          >5%               1       22   227
24 months   MAL-ED       NEPAL                          0%                0       60   228
24 months   MAL-ED       NEPAL                          0%                1       17   228
24 months   MAL-ED       NEPAL                          (0%, 5%]          0       63   228
24 months   MAL-ED       NEPAL                          (0%, 5%]          1       12   228
24 months   MAL-ED       NEPAL                          >5%               0       55   228
24 months   MAL-ED       NEPAL                          >5%               1       21   228
24 months   MAL-ED       PERU                           0%                0       29   201
24 months   MAL-ED       PERU                           0%                1       24   201
24 months   MAL-ED       PERU                           (0%, 5%]          0       36   201
24 months   MAL-ED       PERU                           (0%, 5%]          1       28   201
24 months   MAL-ED       PERU                           >5%               0       62   201
24 months   MAL-ED       PERU                           >5%               1       22   201
24 months   MAL-ED       SOUTH AFRICA                   0%                0      117   238
24 months   MAL-ED       SOUTH AFRICA                   0%                1       60   238
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       31   238
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]          1       21   238
24 months   MAL-ED       SOUTH AFRICA                   >5%               0        6   238
24 months   MAL-ED       SOUTH AFRICA                   >5%               1        3   238
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       26   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       66   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       23   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1       60   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       10   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1       29   214
24 months   NIH-Birth    BANGLADESH                     0%                0       47   429
24 months   NIH-Birth    BANGLADESH                     0%                1       60   429
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]          0       65   429
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]          1       63   429
24 months   NIH-Birth    BANGLADESH                     >5%               0       73   429
24 months   NIH-Birth    BANGLADESH                     >5%               1      121   429
24 months   NIH-Crypto   BANGLADESH                     0%                0      211   514
24 months   NIH-Crypto   BANGLADESH                     0%                1       66   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]          0       73   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]          1       33   514
24 months   NIH-Crypto   BANGLADESH                     >5%               0       98   514
24 months   NIH-Crypto   BANGLADESH                     >5%               1       33   514
24 months   PROVIDE      BANGLADESH                     0%                0      107   578
24 months   PROVIDE      BANGLADESH                     0%                1       45   578
24 months   PROVIDE      BANGLADESH                     (0%, 5%]          0      152   578
24 months   PROVIDE      BANGLADESH                     (0%, 5%]          1       80   578
24 months   PROVIDE      BANGLADESH                     >5%               0      129   578
24 months   PROVIDE      BANGLADESH                     >5%               1       65   578


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
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

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
![](/tmp/1e5335ac-5e90-48bc-b887-5361bcc1a317/2f4814d1-5931-459d-bfb3-0061b39d2602/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1e5335ac-5e90-48bc-b887-5361bcc1a317/2f4814d1-5931-459d-bfb3-0061b39d2602/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1e5335ac-5e90-48bc-b887-5361bcc1a317/2f4814d1-5931-459d-bfb3-0061b39d2602/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1e5335ac-5e90-48bc-b887-5361bcc1a317/2f4814d1-5931-459d-bfb3-0061b39d2602/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                0.1957728   0.1015849   0.2899606
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1255230   0.0578257   0.1932204
Birth       MAL-ED       BANGLADESH                     >5%                  NA                0.2714371   0.1620647   0.3808095
Birth       MAL-ED       PERU                           0%                   NA                0.1343284   0.0524998   0.2161570
Birth       MAL-ED       PERU                           (0%, 5%]             NA                0.1111111   0.0383636   0.1838586
Birth       MAL-ED       PERU                           >5%                  NA                0.0957447   0.0361344   0.1553549
Birth       NIH-Birth    BANGLADESH                     0%                   NA                0.1682449   0.1102747   0.2262151
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.1548253   0.1013280   0.2083227
Birth       NIH-Birth    BANGLADESH                     >5%                  NA                0.1552092   0.1113771   0.1990412
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                0.1383488   0.1024779   0.1742197
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1341276   0.0818336   0.1864216
Birth       NIH-Crypto   BANGLADESH                     >5%                  NA                0.1380339   0.0907006   0.1853672
Birth       PROVIDE      BANGLADESH                     0%                   NA                0.0814528   0.0385122   0.1243934
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.0903715   0.0513047   0.1294382
Birth       PROVIDE      BANGLADESH                     >5%                  NA                0.0970241   0.0528282   0.1412201
6 months    CMIN         BANGLADESH                     0%                   NA                0.3235157   0.2211970   0.4258344
6 months    CMIN         BANGLADESH                     (0%, 5%]             NA                0.5121312   0.3783381   0.6459244
6 months    CMIN         BANGLADESH                     >5%                  NA                0.3654963   0.2721973   0.4587952
6 months    MAL-ED       BANGLADESH                     0%                   NA                0.2054356   0.1123955   0.2984757
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1227359   0.0539069   0.1915649
6 months    MAL-ED       BANGLADESH                     >5%                  NA                0.2366057   0.1405855   0.3326260
6 months    MAL-ED       INDIA                          0%                   NA                0.1600000   0.0581679   0.2618321
6 months    MAL-ED       INDIA                          (0%, 5%]             NA                0.1574803   0.0939953   0.2209654
6 months    MAL-ED       INDIA                          >5%                  NA                0.2881356   0.1723269   0.4039443
6 months    MAL-ED       PERU                           0%                   NA                0.2540984   0.1483509   0.3598459
6 months    MAL-ED       PERU                           (0%, 5%]             NA                0.2475406   0.1566883   0.3383930
6 months    MAL-ED       PERU                           >5%                  NA                0.1805164   0.1098573   0.2511756
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.3142857   0.2253107   0.4032608
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1979167   0.1180539   0.2777794
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1521739   0.0481643   0.2561836
6 months    NIH-Birth    BANGLADESH                     0%                   NA                0.2507613   0.1775324   0.3239903
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.2882219   0.2219761   0.3544678
6 months    NIH-Birth    BANGLADESH                     >5%                  NA                0.2720082   0.2156857   0.3283307
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                0.1855122   0.1467009   0.2243235
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2784997   0.2156200   0.3413794
6 months    NIH-Crypto   BANGLADESH                     >5%                  NA                0.1943707   0.1438874   0.2448540
6 months    PROVIDE      BANGLADESH                     0%                   NA                0.1359824   0.0830438   0.1889210
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1646946   0.1187916   0.2105976
6 months    PROVIDE      BANGLADESH                     >5%                  NA                0.1822590   0.1291927   0.2353254
24 months   CMIN         BANGLADESH                     0%                   NA                0.5949133   0.4890047   0.7008218
24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                0.7651190   0.6529539   0.8772841
24 months   CMIN         BANGLADESH                     >5%                  NA                0.7229625   0.6323308   0.8135943
24 months   MAL-ED       BANGLADESH                     0%                   NA                0.4953091   0.3801285   0.6104897
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4470481   0.3431836   0.5509126
24 months   MAL-ED       BANGLADESH                     >5%                  NA                0.5005485   0.3771191   0.6239778
24 months   MAL-ED       INDIA                          0%                   NA                0.4647176   0.3205033   0.6089319
24 months   MAL-ED       INDIA                          (0%, 5%]             NA                0.4279680   0.3398712   0.5160647
24 months   MAL-ED       INDIA                          >5%                  NA                0.3690484   0.2399448   0.4981520
24 months   MAL-ED       NEPAL                          0%                   NA                0.2364647   0.1401705   0.3327590
24 months   MAL-ED       NEPAL                          (0%, 5%]             NA                0.1694273   0.0843571   0.2544976
24 months   MAL-ED       NEPAL                          >5%                  NA                0.2528052   0.1519857   0.3536247
24 months   MAL-ED       PERU                           0%                   NA                0.4695622   0.3375161   0.6016084
24 months   MAL-ED       PERU                           (0%, 5%]             NA                0.4488612   0.3231018   0.5746205
24 months   MAL-ED       PERU                           >5%                  NA                0.2803459   0.1873683   0.3733235
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7076023   0.6142314   0.8009733
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7391583   0.6444595   0.8338571
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7355810   0.5881807   0.8829812
24 months   NIH-Birth    BANGLADESH                     0%                   NA                0.5635177   0.4753244   0.6517110
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.5325386   0.4486963   0.6163809
24 months   NIH-Birth    BANGLADESH                     >5%                  NA                0.6010893   0.5354174   0.6667613
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                0.2488733   0.1984753   0.2992713
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2983374   0.2086162   0.3880587
24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                0.2320195   0.1583413   0.3056976
24 months   PROVIDE      BANGLADESH                     0%                   NA                0.2972138   0.2263083   0.3681193
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.3390156   0.2796808   0.3983503
24 months   PROVIDE      BANGLADESH                     >5%                  NA                0.3339948   0.2680763   0.3999133


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       MAL-ED       BANGLADESH                     NA                   NA                0.1904762   0.1397281   0.2412242
Birth       MAL-ED       PERU                           NA                   NA                0.1115880   0.0710726   0.1521034
Birth       NIH-Birth    BANGLADESH                     NA                   NA                0.1586777   0.1295391   0.1878163
Birth       NIH-Crypto   BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       PROVIDE      BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
6 months    CMIN         BANGLADESH                     NA                   NA                0.3827160   0.3214780   0.4439541
6 months    MAL-ED       BANGLADESH                     NA                   NA                0.1825726   0.1336978   0.2314474
6 months    MAL-ED       INDIA                          NA                   NA                0.1906780   0.1404524   0.2409036
6 months    MAL-ED       PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388664   0.1855834   0.2921494
6 months    NIH-Birth    BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROVIDE      BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
24 months   CMIN         BANGLADESH                     NA                   NA                0.6818182   0.6230135   0.7406228
24 months   MAL-ED       BANGLADESH                     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   MAL-ED       INDIA                          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   MAL-ED       NEPAL                          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   MAL-ED       PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7242991   0.6642873   0.7843108
24 months   NIH-Birth    BANGLADESH                     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROVIDE      BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.6411669   0.3113369   1.3204185
Birth       MAL-ED       BANGLADESH                     >5%                  0%                1.3864906   0.7402077   2.5970497
Birth       MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
Birth       MAL-ED       PERU                           (0%, 5%]             0%                0.8271605   0.3382241   2.0229029
Birth       MAL-ED       PERU                           >5%                  0%                0.7127660   0.2983038   1.7030804
Birth       NIH-Birth    BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             0%                0.9202380   0.5652023   1.4982918
Birth       NIH-Birth    BANGLADESH                     >5%                  0%                0.9225193   0.5909790   1.4400545
Birth       NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                0.9694886   0.6071954   1.5479499
Birth       NIH-Crypto   BANGLADESH                     >5%                  0%                0.9977241   0.6489363   1.5339771
Birth       PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.1094946   0.5613295   2.1929692
Birth       PROVIDE      BANGLADESH                     >5%                  0%                1.1911696   0.5926249   2.3942379
6 months    CMIN         BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    CMIN         BANGLADESH                     (0%, 5%]             0%                1.5830180   1.0494810   2.3877954
6 months    CMIN         BANGLADESH                     >5%                  0%                1.1297636   0.7517057   1.6979594
6 months    MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.5974421   0.2907564   1.2276153
6 months    MAL-ED       BANGLADESH                     >5%                  0%                1.1517268   0.6276825   2.1132893
6 months    MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
6 months    MAL-ED       INDIA                          (0%, 5%]             0%                0.9842520   0.4633583   2.0907189
6 months    MAL-ED       INDIA                          >5%                  0%                1.8008475   0.8483352   3.8228424
6 months    MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6 months    MAL-ED       PERU                           (0%, 5%]             0%                0.9741920   0.5587539   1.6985117
6 months    MAL-ED       PERU                           >5%                  0%                0.7104193   0.4009950   1.2586082
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.6297348   0.3846662   1.0309354
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                0.4841897   0.2310592   1.0146303
6 months    NIH-Birth    BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                1.1493875   0.7939608   1.6639255
6 months    NIH-Birth    BANGLADESH                     >5%                  0%                1.0847294   0.7602393   1.5477205
6 months    NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.5012476   1.1191967   2.0137160
6 months    NIH-Crypto   BANGLADESH                     >5%                  0%                1.0477517   0.7615679   1.4414783
6 months    PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.2111466   0.7505362   1.9544374
6 months    PROVIDE      BANGLADESH                     >5%                  0%                1.3403136   0.8246975   2.1783024
24 months   CMIN         BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                1.2861018   1.0216020   1.6190825
24 months   CMIN         BANGLADESH                     >5%                  0%                1.2152403   0.9769963   1.5115808
24 months   MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.9025638   0.6574173   1.2391239
24 months   MAL-ED       BANGLADESH                     >5%                  0%                1.0105780   0.7249928   1.4086595
24 months   MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
24 months   MAL-ED       INDIA                          (0%, 5%]             0%                0.9209205   0.6338545   1.3379956
24 months   MAL-ED       INDIA                          >5%                  0%                0.7941347   0.4977451   1.2670138
24 months   MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
24 months   MAL-ED       NEPAL                          (0%, 5%]             0%                0.7165014   0.3777309   1.3591007
24 months   MAL-ED       NEPAL                          >5%                  0%                1.0691031   0.6059820   1.8861641
24 months   MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
24 months   MAL-ED       PERU                           (0%, 5%]             0%                0.9559141   0.6446979   1.4173645
24 months   MAL-ED       PERU                           >5%                  0%                0.5970367   0.3890368   0.9162447
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.0445956   0.8699573   1.2542914
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.0395400   0.8173368   1.3221521
24 months   NIH-Birth    BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                0.9450255   0.7622692   1.1715980
24 months   NIH-Birth    BANGLADESH                     >5%                  0%                1.0666733   0.8872710   1.2823500
24 months   NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.1987523   0.8357937   1.7193322
24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                0.9322794   0.6417958   1.3542389
24 months   PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.1406455   0.8526225   1.5259652
24 months   PROVIDE      BANGLADESH                     >5%                  0%                1.1237526   0.8266926   1.5275569


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.0052966   -0.0835558    0.0729626
Birth       MAL-ED       PERU                           0%                   NA                -0.0227404   -0.0897220    0.0442413
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -0.0095672   -0.0588810    0.0397466
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                -0.0003706   -0.0258521    0.0251108
Birth       PROVIDE      BANGLADESH                     0%                   NA                 0.0076010   -0.0290287    0.0442306
6 months    CMIN         BANGLADESH                     0%                   NA                 0.0592003   -0.0262533    0.1446539
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0228630   -0.1005124    0.0547864
6 months    MAL-ED       INDIA                          0%                   NA                 0.0306780   -0.0615089    0.1228648
6 months    MAL-ED       PERU                           0%                   NA                -0.0343182   -0.1248682    0.0562318
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0754193   -0.1388619   -0.0119768
6 months    NIH-Birth    BANGLADESH                     0%                   NA                 0.0173951   -0.0468563    0.0816465
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                 0.0242780   -0.0033885    0.0519446
6 months    PROVIDE      BANGLADESH                     0%                   NA                 0.0229580   -0.0237794    0.0696954
24 months   CMIN         BANGLADESH                     0%                   NA                 0.0869049    0.0038792    0.1699306
24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0188940   -0.1132162    0.0754282
24 months   MAL-ED       INDIA                          0%                   NA                -0.0374048   -0.1654033    0.0905937
24 months   MAL-ED       NEPAL                          0%                   NA                -0.0171665   -0.0950649    0.0607320
24 months   MAL-ED       PERU                           0%                   NA                -0.1014030   -0.2126269    0.0098209
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0166967   -0.0534391    0.0868326
24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0052468   -0.0695331    0.0800268
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0079360   -0.0272083    0.0430803
24 months   PROVIDE      BANGLADESH                     0%                   NA                 0.0315059   -0.0294797    0.0924915


### Parameter: PAF


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.0278070   -0.5327780    0.3108022
Birth       MAL-ED       PERU                           0%                   NA                -0.2037887   -0.9767724    0.2669326
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -0.0602933   -0.4212682    0.2090008
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                -0.0026862   -0.2054597    0.1659783
Birth       PROVIDE      BANGLADESH                     0%                   NA                 0.0853527   -0.4334610    0.4163917
6 months    CMIN         BANGLADESH                     0%                   NA                 0.1546847   -0.1008536    0.3509056
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.1252270   -0.6424646    0.2291245
6 months    MAL-ED       INDIA                          0%                   NA                 0.1608889   -0.4909535    0.5277469
6 months    MAL-ED       PERU                           0%                   NA                -0.1561478   -0.6500887    0.1899358
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.3157385   -0.6080477   -0.0765649
6 months    NIH-Birth    BANGLADESH                     0%                   NA                 0.0648692   -0.2080328    0.2761210
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                 0.1157254   -0.0259393    0.2378285
6 months    PROVIDE      BANGLADESH                     0%                   NA                 0.1444442   -0.2049522    0.3925272
24 months   CMIN         BANGLADESH                     0%                   NA                 0.1274606   -0.0048991    0.2423865
24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0396587   -0.2579364    0.1407434
24 months   MAL-ED       INDIA                          0%                   NA                -0.0875350   -0.4325086    0.1743628
24 months   MAL-ED       NEPAL                          0%                   NA                -0.0782791   -0.4987404    0.2242246
24 months   MAL-ED       PERU                           0%                   NA                -0.2754325   -0.6190124   -0.0047657
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0230523   -0.0788123    0.1152985
24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0092250   -0.1313761    0.1323530
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0309024   -0.1159230    0.1584096
24 months   PROVIDE      BANGLADESH                     0%                   NA                 0.0958444   -0.1100272    0.2635339
