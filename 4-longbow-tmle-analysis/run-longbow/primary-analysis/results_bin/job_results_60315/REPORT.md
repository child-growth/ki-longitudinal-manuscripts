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

**Outcome Variable:** wasted

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

agecat      studyid      country                        perdiar6    wasted   n_cell     n
----------  -----------  -----------------------------  ---------  -------  -------  ----
Birth       CMIN         BANGLADESH                     0%               0        7    19
Birth       CMIN         BANGLADESH                     0%               1        3    19
Birth       CMIN         BANGLADESH                     (0%, 5%]         0        3    19
Birth       CMIN         BANGLADESH                     (0%, 5%]         1        0    19
Birth       CMIN         BANGLADESH                     >5%              0        5    19
Birth       CMIN         BANGLADESH                     >5%              1        1    19
Birth       CONTENT      PERU                           0%               0        0     2
Birth       CONTENT      PERU                           0%               1        0     2
Birth       CONTENT      PERU                           (0%, 5%]         0        1     2
Birth       CONTENT      PERU                           (0%, 5%]         1        0     2
Birth       CONTENT      PERU                           >5%              0        1     2
Birth       CONTENT      PERU                           >5%              1        0     2
Birth       EE           PAKISTAN                       0%               0      143   177
Birth       EE           PAKISTAN                       0%               1       21   177
Birth       EE           PAKISTAN                       (0%, 5%]         0       10   177
Birth       EE           PAKISTAN                       (0%, 5%]         1        1   177
Birth       EE           PAKISTAN                       >5%              0        2   177
Birth       EE           PAKISTAN                       >5%              1        0   177
Birth       MAL-ED       BANGLADESH                     0%               0       55   215
Birth       MAL-ED       BANGLADESH                     0%               1       10   215
Birth       MAL-ED       BANGLADESH                     (0%, 5%]         0       69   215
Birth       MAL-ED       BANGLADESH                     (0%, 5%]         1       17   215
Birth       MAL-ED       BANGLADESH                     >5%              0       55   215
Birth       MAL-ED       BANGLADESH                     >5%              1        9   215
Birth       MAL-ED       BRAZIL                         0%               0       53    62
Birth       MAL-ED       BRAZIL                         0%               1        1    62
Birth       MAL-ED       BRAZIL                         (0%, 5%]         0        5    62
Birth       MAL-ED       BRAZIL                         (0%, 5%]         1        1    62
Birth       MAL-ED       BRAZIL                         >5%              0        2    62
Birth       MAL-ED       BRAZIL                         >5%              1        0    62
Birth       MAL-ED       INDIA                          0%               0       10    45
Birth       MAL-ED       INDIA                          0%               1        1    45
Birth       MAL-ED       INDIA                          (0%, 5%]         0       20    45
Birth       MAL-ED       INDIA                          (0%, 5%]         1        3    45
Birth       MAL-ED       INDIA                          >5%              0       10    45
Birth       MAL-ED       INDIA                          >5%              1        1    45
Birth       MAL-ED       NEPAL                          0%               0        8    26
Birth       MAL-ED       NEPAL                          0%               1        0    26
Birth       MAL-ED       NEPAL                          (0%, 5%]         0        9    26
Birth       MAL-ED       NEPAL                          (0%, 5%]         1        1    26
Birth       MAL-ED       NEPAL                          >5%              0        7    26
Birth       MAL-ED       NEPAL                          >5%              1        1    26
Birth       MAL-ED       PERU                           0%               0       67   228
Birth       MAL-ED       PERU                           0%               1        0   228
Birth       MAL-ED       PERU                           (0%, 5%]         0       69   228
Birth       MAL-ED       PERU                           (0%, 5%]         1        0   228
Birth       MAL-ED       PERU                           >5%              0       87   228
Birth       MAL-ED       PERU                           >5%              1        5   228
Birth       MAL-ED       SOUTH AFRICA                   0%               0       77   112
Birth       MAL-ED       SOUTH AFRICA                   0%               1        8   112
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]         0       22   112
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]         1        1   112
Birth       MAL-ED       SOUTH AFRICA                   >5%              0        3   112
Birth       MAL-ED       SOUTH AFRICA                   >5%              1        1   112
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               0       51   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               1        0   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         0       43   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         1        1   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              0       20   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              1        0   115
Birth       NIH-Birth    BANGLADESH                     0%               0      107   572
Birth       NIH-Birth    BANGLADESH                     0%               1       43   572
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]         0      127   572
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]         1       44   572
Birth       NIH-Birth    BANGLADESH                     >5%              0      170   572
Birth       NIH-Birth    BANGLADESH                     >5%              1       81   572
Birth       NIH-Crypto   BANGLADESH                     0%               0      255   707
Birth       NIH-Crypto   BANGLADESH                     0%               1       90   707
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]         0      120   707
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]         1       40   707
Birth       NIH-Crypto   BANGLADESH                     >5%              0      160   707
Birth       NIH-Crypto   BANGLADESH                     >5%              1       42   707
Birth       PROVIDE      BANGLADESH                     0%               0      126   532
Birth       PROVIDE      BANGLADESH                     0%               1       34   532
Birth       PROVIDE      BANGLADESH                     (0%, 5%]         0      162   532
Birth       PROVIDE      BANGLADESH                     (0%, 5%]         1       44   532
Birth       PROVIDE      BANGLADESH                     >5%              0      127   532
Birth       PROVIDE      BANGLADESH                     >5%              1       39   532
6 months    CMIN         BANGLADESH                     0%               0       77   243
6 months    CMIN         BANGLADESH                     0%               1        4   243
6 months    CMIN         BANGLADESH                     (0%, 5%]         0       52   243
6 months    CMIN         BANGLADESH                     (0%, 5%]         1        6   243
6 months    CMIN         BANGLADESH                     >5%              0       93   243
6 months    CMIN         BANGLADESH                     >5%              1       11   243
6 months    CONTENT      PERU                           0%               0      115   215
6 months    CONTENT      PERU                           0%               1        0   215
6 months    CONTENT      PERU                           (0%, 5%]         0       43   215
6 months    CONTENT      PERU                           (0%, 5%]         1        0   215
6 months    CONTENT      PERU                           >5%              0       57   215
6 months    CONTENT      PERU                           >5%              1        0   215
6 months    EE           PAKISTAN                       0%               0      293   375
6 months    EE           PAKISTAN                       0%               1       45   375
6 months    EE           PAKISTAN                       (0%, 5%]         0       33   375
6 months    EE           PAKISTAN                       (0%, 5%]         1        2   375
6 months    EE           PAKISTAN                       >5%              0        2   375
6 months    EE           PAKISTAN                       >5%              1        0   375
6 months    MAL-ED       BANGLADESH                     0%               0       69   241
6 months    MAL-ED       BANGLADESH                     0%               1        2   241
6 months    MAL-ED       BANGLADESH                     (0%, 5%]         0       88   241
6 months    MAL-ED       BANGLADESH                     (0%, 5%]         1        4   241
6 months    MAL-ED       BANGLADESH                     >5%              0       76   241
6 months    MAL-ED       BANGLADESH                     >5%              1        2   241
6 months    MAL-ED       BRAZIL                         0%               0      191   209
6 months    MAL-ED       BRAZIL                         0%               1        1   209
6 months    MAL-ED       BRAZIL                         (0%, 5%]         0       15   209
6 months    MAL-ED       BRAZIL                         (0%, 5%]         1        0   209
6 months    MAL-ED       BRAZIL                         >5%              0        2   209
6 months    MAL-ED       BRAZIL                         >5%              1        0   209
6 months    MAL-ED       INDIA                          0%               0       46   236
6 months    MAL-ED       INDIA                          0%               1        4   236
6 months    MAL-ED       INDIA                          (0%, 5%]         0      117   236
6 months    MAL-ED       INDIA                          (0%, 5%]         1       10   236
6 months    MAL-ED       INDIA                          >5%              0       54   236
6 months    MAL-ED       INDIA                          >5%              1        5   236
6 months    MAL-ED       NEPAL                          0%               0       76   236
6 months    MAL-ED       NEPAL                          0%               1        4   236
6 months    MAL-ED       NEPAL                          (0%, 5%]         0       76   236
6 months    MAL-ED       NEPAL                          (0%, 5%]         1        0   236
6 months    MAL-ED       NEPAL                          >5%              0       80   236
6 months    MAL-ED       NEPAL                          >5%              1        0   236
6 months    MAL-ED       PERU                           0%               0       68   273
6 months    MAL-ED       PERU                           0%               1        0   273
6 months    MAL-ED       PERU                           (0%, 5%]         0       89   273
6 months    MAL-ED       PERU                           (0%, 5%]         1        0   273
6 months    MAL-ED       PERU                           >5%              0      116   273
6 months    MAL-ED       PERU                           >5%              1        0   273
6 months    MAL-ED       SOUTH AFRICA                   0%               0      185   254
6 months    MAL-ED       SOUTH AFRICA                   0%               1        5   254
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]         0       53   254
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]         1        2   254
6 months    MAL-ED       SOUTH AFRICA                   >5%              0        9   254
6 months    MAL-ED       SOUTH AFRICA                   >5%              1        0   254
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               0      104   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               1        1   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         0       96   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         1        0   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              0       46   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              1        0   247
6 months    NIH-Birth    BANGLADESH                     0%               0      124   537
6 months    NIH-Birth    BANGLADESH                     0%               1        5   537
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]         0      159   537
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]         1       10   537
6 months    NIH-Birth    BANGLADESH                     >5%              0      219   537
6 months    NIH-Birth    BANGLADESH                     >5%              1       20   537
6 months    NIH-Crypto   BANGLADESH                     0%               0      333   715
6 months    NIH-Crypto   BANGLADESH                     0%               1        8   715
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]         0      163   715
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]         1        4   715
6 months    NIH-Crypto   BANGLADESH                     >5%              0      198   715
6 months    NIH-Crypto   BANGLADESH                     >5%              1        9   715
6 months    PROVIDE      BANGLADESH                     0%               0      151   603
6 months    PROVIDE      BANGLADESH                     0%               1        6   603
6 months    PROVIDE      BANGLADESH                     (0%, 5%]         0      236   603
6 months    PROVIDE      BANGLADESH                     (0%, 5%]         1       10   603
6 months    PROVIDE      BANGLADESH                     >5%              0      191   603
6 months    PROVIDE      BANGLADESH                     >5%              1        9   603
24 months   CMIN         BANGLADESH                     0%               0       75   243
24 months   CMIN         BANGLADESH                     0%               1       10   243
24 months   CMIN         BANGLADESH                     (0%, 5%]         0       54   243
24 months   CMIN         BANGLADESH                     (0%, 5%]         1        4   243
24 months   CMIN         BANGLADESH                     >5%              0       89   243
24 months   CMIN         BANGLADESH                     >5%              1       11   243
24 months   CONTENT      PERU                           0%               0       84   164
24 months   CONTENT      PERU                           0%               1        0   164
24 months   CONTENT      PERU                           (0%, 5%]         0       36   164
24 months   CONTENT      PERU                           (0%, 5%]         1        0   164
24 months   CONTENT      PERU                           >5%              0       43   164
24 months   CONTENT      PERU                           >5%              1        1   164
24 months   EE           PAKISTAN                       0%               0      127   168
24 months   EE           PAKISTAN                       0%               1       26   168
24 months   EE           PAKISTAN                       (0%, 5%]         0       10   168
24 months   EE           PAKISTAN                       (0%, 5%]         1        4   168
24 months   EE           PAKISTAN                       >5%              0        1   168
24 months   EE           PAKISTAN                       >5%              1        0   168
24 months   MAL-ED       BANGLADESH                     0%               0       57   212
24 months   MAL-ED       BANGLADESH                     0%               1        7   212
24 months   MAL-ED       BANGLADESH                     (0%, 5%]         0       74   212
24 months   MAL-ED       BANGLADESH                     (0%, 5%]         1        9   212
24 months   MAL-ED       BANGLADESH                     >5%              0       60   212
24 months   MAL-ED       BANGLADESH                     >5%              1        5   212
24 months   MAL-ED       BRAZIL                         0%               0      151   169
24 months   MAL-ED       BRAZIL                         0%               1        3   169
24 months   MAL-ED       BRAZIL                         (0%, 5%]         0       13   169
24 months   MAL-ED       BRAZIL                         (0%, 5%]         1        0   169
24 months   MAL-ED       BRAZIL                         >5%              0        2   169
24 months   MAL-ED       BRAZIL                         >5%              1        0   169
24 months   MAL-ED       INDIA                          0%               0       43   227
24 months   MAL-ED       INDIA                          0%               1        5   227
24 months   MAL-ED       INDIA                          (0%, 5%]         0      109   227
24 months   MAL-ED       INDIA                          (0%, 5%]         1       13   227
24 months   MAL-ED       INDIA                          >5%              0       48   227
24 months   MAL-ED       INDIA                          >5%              1        9   227
24 months   MAL-ED       NEPAL                          0%               0       74   228
24 months   MAL-ED       NEPAL                          0%               1        3   228
24 months   MAL-ED       NEPAL                          (0%, 5%]         0       73   228
24 months   MAL-ED       NEPAL                          (0%, 5%]         1        2   228
24 months   MAL-ED       NEPAL                          >5%              0       76   228
24 months   MAL-ED       NEPAL                          >5%              1        0   228
24 months   MAL-ED       PERU                           0%               0       50   201
24 months   MAL-ED       PERU                           0%               1        3   201
24 months   MAL-ED       PERU                           (0%, 5%]         0       64   201
24 months   MAL-ED       PERU                           (0%, 5%]         1        0   201
24 months   MAL-ED       PERU                           >5%              0       83   201
24 months   MAL-ED       PERU                           >5%              1        1   201
24 months   MAL-ED       SOUTH AFRICA                   0%               0      176   238
24 months   MAL-ED       SOUTH AFRICA                   0%               1        1   238
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]         0       52   238
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]         1        0   238
24 months   MAL-ED       SOUTH AFRICA                   >5%              0        9   238
24 months   MAL-ED       SOUTH AFRICA                   >5%              1        0   238
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               0       90   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               1        2   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         0       82   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         1        1   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              0       38   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              1        1   214
24 months   NIH-Birth    BANGLADESH                     0%               0       93   428
24 months   NIH-Birth    BANGLADESH                     0%               1       14   428
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]         0      114   428
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]         1       13   428
24 months   NIH-Birth    BANGLADESH                     >5%              0      168   428
24 months   NIH-Birth    BANGLADESH                     >5%              1       26   428
24 months   NIH-Crypto   BANGLADESH                     0%               0      254   514
24 months   NIH-Crypto   BANGLADESH                     0%               1       23   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]         0       94   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]         1       12   514
24 months   NIH-Crypto   BANGLADESH                     >5%              0      121   514
24 months   NIH-Crypto   BANGLADESH                     >5%              1       10   514
24 months   PROVIDE      BANGLADESH                     0%               0      139   579
24 months   PROVIDE      BANGLADESH                     0%               1       14   579
24 months   PROVIDE      BANGLADESH                     (0%, 5%]         0      204   579
24 months   PROVIDE      BANGLADESH                     (0%, 5%]         1       28   579
24 months   PROVIDE      BANGLADESH                     >5%              0      174   579
24 months   PROVIDE      BANGLADESH                     >5%              1       20   579


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
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/bc867888-05d8-41a4-8875-bce25cce3701/c12cf822-27fe-4ef5-a3f5-c15863915a8a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bc867888-05d8-41a4-8875-bce25cce3701/c12cf822-27fe-4ef5-a3f5-c15863915a8a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bc867888-05d8-41a4-8875-bce25cce3701/c12cf822-27fe-4ef5-a3f5-c15863915a8a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bc867888-05d8-41a4-8875-bce25cce3701/c12cf822-27fe-4ef5-a3f5-c15863915a8a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       MAL-ED       BANGLADESH   0%                   NA                0.1538462   0.0659294   0.2417629
Birth       MAL-ED       BANGLADESH   (0%, 5%]             NA                0.1976744   0.1133095   0.2820393
Birth       MAL-ED       BANGLADESH   >5%                  NA                0.1406250   0.0552574   0.2259926
Birth       NIH-Birth    BANGLADESH   0%                   NA                0.2878893   0.2157507   0.3600278
Birth       NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.2643611   0.1976754   0.3310467
Birth       NIH-Birth    BANGLADESH   >5%                  NA                0.3104865   0.2535981   0.3673749
Birth       NIH-Crypto   BANGLADESH   0%                   NA                0.2616245   0.2153176   0.3079314
Birth       NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.2431095   0.1756337   0.3105853
Birth       NIH-Crypto   BANGLADESH   >5%                  NA                0.2114995   0.1549320   0.2680669
Birth       PROVIDE      BANGLADESH   0%                   NA                0.2110016   0.1470029   0.2750002
Birth       PROVIDE      BANGLADESH   (0%, 5%]             NA                0.2145514   0.1585110   0.2705918
Birth       PROVIDE      BANGLADESH   >5%                  NA                0.2365602   0.1737842   0.2993363
6 months    NIH-Birth    BANGLADESH   0%                   NA                0.0387597   0.0054198   0.0720996
6 months    NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.0591716   0.0235657   0.0947774
6 months    NIH-Birth    BANGLADESH   >5%                  NA                0.0836820   0.0485427   0.1188213
6 months    PROVIDE      BANGLADESH   0%                   NA                0.0382166   0.0082026   0.0682305
6 months    PROVIDE      BANGLADESH   (0%, 5%]             NA                0.0406504   0.0159524   0.0653484
6 months    PROVIDE      BANGLADESH   >5%                  NA                0.0450000   0.0162458   0.0737542
24 months   MAL-ED       BANGLADESH   0%                   NA                0.1093750   0.0327287   0.1860213
24 months   MAL-ED       BANGLADESH   (0%, 5%]             NA                0.1084337   0.0413844   0.1754831
24 months   MAL-ED       BANGLADESH   >5%                  NA                0.0769231   0.0119901   0.1418561
24 months   MAL-ED       INDIA        0%                   NA                0.1041667   0.0175574   0.1907759
24 months   MAL-ED       INDIA        (0%, 5%]             NA                0.1065574   0.0516852   0.1614295
24 months   MAL-ED       INDIA        >5%                  NA                0.1578947   0.0630231   0.2527664
24 months   NIH-Birth    BANGLADESH   0%                   NA                0.1300844   0.0660969   0.1940718
24 months   NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.1045116   0.0503248   0.1586983
24 months   NIH-Birth    BANGLADESH   >5%                  NA                0.1324367   0.0848156   0.1800577
24 months   NIH-Crypto   BANGLADESH   0%                   NA                0.0831030   0.0503554   0.1158505
24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.1059985   0.0444830   0.1675140
24 months   NIH-Crypto   BANGLADESH   >5%                  NA                0.0752211   0.0295584   0.1208837
24 months   PROVIDE      BANGLADESH   0%                   NA                0.0919483   0.0465968   0.1372999
24 months   PROVIDE      BANGLADESH   (0%, 5%]             NA                0.1208880   0.0783582   0.1634177
24 months   PROVIDE      BANGLADESH   >5%                  NA                0.1050087   0.0624816   0.1475359


### Parameter: E(Y)


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       MAL-ED       BANGLADESH   NA                   NA                0.1674419   0.1174176   0.2174661
Birth       NIH-Birth    BANGLADESH   NA                   NA                0.2937063   0.2563487   0.3310639
Birth       NIH-Crypto   BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROVIDE      BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
6 months    NIH-Birth    BANGLADESH   NA                   NA                0.0651769   0.0442802   0.0860736
6 months    PROVIDE      BANGLADESH   NA                   NA                0.0414594   0.0255348   0.0573839
24 months   MAL-ED       BANGLADESH   NA                   NA                0.0990566   0.0587480   0.1393652
24 months   MAL-ED       INDIA        NA                   NA                0.1189427   0.0767376   0.1611478
24 months   NIH-Birth    BANGLADESH   NA                   NA                0.1238318   0.0925894   0.1550741
24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE      BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       MAL-ED       BANGLADESH   (0%, 5%]             0%                1.2848837   0.6296616   2.621926
Birth       MAL-ED       BANGLADESH   >5%                  0%                0.9140625   0.3970972   2.104045
Birth       NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       NIH-Birth    BANGLADESH   (0%, 5%]             0%                0.9182735   0.6436023   1.310167
Birth       NIH-Birth    BANGLADESH   >5%                  0%                1.0784928   0.7924483   1.467789
Birth       NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.9292307   0.6694555   1.289809
Birth       NIH-Crypto   BANGLADESH   >5%                  0%                0.8084083   0.5871495   1.113045
Birth       PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       PROVIDE      BANGLADESH   (0%, 5%]             0%                1.0168236   0.6825710   1.514758
Birth       PROVIDE      BANGLADESH   >5%                  0%                1.1211302   0.7513543   1.672890
6 months    NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    NIH-Birth    BANGLADESH   (0%, 5%]             0%                1.5266272   0.5343567   4.361489
6 months    NIH-Birth    BANGLADESH   >5%                  0%                2.1589958   0.8289876   5.622838
6 months    PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    PROVIDE      BANGLADESH   (0%, 5%]             0%                1.0636856   0.3940784   2.871071
6 months    PROVIDE      BANGLADESH   >5%                  0%                1.1775000   0.4278096   3.240942
24 months   MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   MAL-ED       BANGLADESH   (0%, 5%]             0%                0.9913941   0.3893743   2.524210
24 months   MAL-ED       BANGLADESH   >5%                  0%                0.7032967   0.2347872   2.106700
24 months   MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.000000
24 months   MAL-ED       INDIA        (0%, 5%]             0%                1.0229508   0.3846933   2.720162
24 months   MAL-ED       INDIA        >5%                  0%                1.5157895   0.5434074   4.228168
24 months   NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   NIH-Birth    BANGLADESH   (0%, 5%]             0%                0.8034137   0.3926893   1.643726
24 months   NIH-Birth    BANGLADESH   >5%                  0%                1.0180831   0.5533607   1.873088
24 months   NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.2755075   0.6318269   2.574945
24 months   NIH-Crypto   BANGLADESH   >5%                  0%                0.9051550   0.4387387   1.867412
24 months   PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   PROVIDE      BANGLADESH   (0%, 5%]             0%                1.3147379   0.7169670   2.410900
24 months   PROVIDE      BANGLADESH   >5%                  0%                1.1420406   0.6034612   2.161294


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       MAL-ED       BANGLADESH   0%                   NA                 0.0135957   -0.0609577   0.0881492
Birth       NIH-Birth    BANGLADESH   0%                   NA                 0.0058170   -0.0563369   0.0679710
Birth       NIH-Crypto   BANGLADESH   0%                   NA                -0.0183431   -0.0506853   0.0139992
Birth       PROVIDE      BANGLADESH   0%                   NA                 0.0089232   -0.0445388   0.0623853
6 months    NIH-Birth    BANGLADESH   0%                   NA                 0.0264172   -0.0054290   0.0582634
6 months    PROVIDE      BANGLADESH   0%                   NA                 0.0032428   -0.0229361   0.0294217
24 months   MAL-ED       BANGLADESH   0%                   NA                -0.0103184   -0.0731871   0.0525503
24 months   MAL-ED       INDIA        0%                   NA                 0.0147761   -0.0633913   0.0929434
24 months   NIH-Birth    BANGLADESH   0%                   NA                -0.0062526   -0.0614464   0.0489413
24 months   NIH-Crypto   BANGLADESH   0%                   NA                 0.0044457   -0.0184274   0.0273187
24 months   PROVIDE      BANGLADESH   0%                   NA                 0.0151328   -0.0248608   0.0551265


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       MAL-ED       BANGLADESH   0%                   NA                 0.0811966   -0.4910205   0.4338108
Birth       NIH-Birth    BANGLADESH   0%                   NA                 0.0198056   -0.2163760   0.2101283
Birth       NIH-Crypto   BANGLADESH   0%                   NA                -0.0753985   -0.2167921   0.0495649
Birth       PROVIDE      BANGLADESH   0%                   NA                 0.0405740   -0.2361935   0.2553770
6 months    NIH-Birth    BANGLADESH   0%                   NA                 0.4053156   -0.3162824   0.7313270
6 months    PROVIDE      BANGLADESH   0%                   NA                 0.0782166   -0.8273298   0.5350129
24 months   MAL-ED       BANGLADESH   0%                   NA                -0.1041667   -0.9599502   0.3779515
24 months   MAL-ED       INDIA        0%                   NA                 0.1242284   -0.8523711   0.5859491
24 months   NIH-Birth    BANGLADESH   0%                   NA                -0.0504925   -0.6055596   0.3126792
24 months   NIH-Crypto   BANGLADESH   0%                   NA                 0.0507793   -0.2496640   0.2789903
24 months   PROVIDE      BANGLADESH   0%                   NA                 0.1413211   -0.3243156   0.4432374
