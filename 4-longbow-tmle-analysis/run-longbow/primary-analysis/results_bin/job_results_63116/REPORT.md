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

**Intervention Variable:** anywast06

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        anywast06    stunted   n_cell      n  outcome_variable 
----------  ---------------  -----------------------------  ----------  --------  -------  -----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0                  0       30     92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0                  1        7     92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1                  0       45     92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1                  1       10     92  stunted          
Birth       CMIN             BANGLADESH                     0                  0       13     20  stunted          
Birth       CMIN             BANGLADESH                     0                  1        2     20  stunted          
Birth       CMIN             BANGLADESH                     1                  0        4     20  stunted          
Birth       CMIN             BANGLADESH                     1                  1        1     20  stunted          
Birth       CONTENT          PERU                           0                  0        2      2  stunted          
Birth       CONTENT          PERU                           0                  1        0      2  stunted          
Birth       CONTENT          PERU                           1                  0        0      2  stunted          
Birth       CONTENT          PERU                           1                  1        0      2  stunted          
Birth       EE               PAKISTAN                       0                  0       86    240  stunted          
Birth       EE               PAKISTAN                       0                  1       70    240  stunted          
Birth       EE               PAKISTAN                       1                  0       54    240  stunted          
Birth       EE               PAKISTAN                       1                  1       30    240  stunted          
Birth       GMS-Nepal        NEPAL                          0                  0      340    684  stunted          
Birth       GMS-Nepal        NEPAL                          0                  1       82    684  stunted          
Birth       GMS-Nepal        NEPAL                          1                  0      234    684  stunted          
Birth       GMS-Nepal        NEPAL                          1                  1       28    684  stunted          
Birth       IRC              INDIA                          0                  0      137    388  stunted          
Birth       IRC              INDIA                          0                  1       27    388  stunted          
Birth       IRC              INDIA                          1                  0      206    388  stunted          
Birth       IRC              INDIA                          1                  1       18    388  stunted          
Birth       Keneba           GAMBIA                         0                  0      934   1542  stunted          
Birth       Keneba           GAMBIA                         0                  1       60   1542  stunted          
Birth       Keneba           GAMBIA                         1                  0      526   1542  stunted          
Birth       Keneba           GAMBIA                         1                  1       22   1542  stunted          
Birth       MAL-ED           BANGLADESH                     0                  0      146    229  stunted          
Birth       MAL-ED           BANGLADESH                     0                  1       31    229  stunted          
Birth       MAL-ED           BANGLADESH                     1                  0       41    229  stunted          
Birth       MAL-ED           BANGLADESH                     1                  1       11    229  stunted          
Birth       MAL-ED           BRAZIL                         0                  0       53     65  stunted          
Birth       MAL-ED           BRAZIL                         0                  1        9     65  stunted          
Birth       MAL-ED           BRAZIL                         1                  0        3     65  stunted          
Birth       MAL-ED           BRAZIL                         1                  1        0     65  stunted          
Birth       MAL-ED           INDIA                          0                  0       25     47  stunted          
Birth       MAL-ED           INDIA                          0                  1        8     47  stunted          
Birth       MAL-ED           INDIA                          1                  0       12     47  stunted          
Birth       MAL-ED           INDIA                          1                  1        2     47  stunted          
Birth       MAL-ED           NEPAL                          0                  0       22     27  stunted          
Birth       MAL-ED           NEPAL                          0                  1        1     27  stunted          
Birth       MAL-ED           NEPAL                          1                  0        3     27  stunted          
Birth       MAL-ED           NEPAL                          1                  1        1     27  stunted          
Birth       MAL-ED           PERU                           0                  0      199    233  stunted          
Birth       MAL-ED           PERU                           0                  1       24    233  stunted          
Birth       MAL-ED           PERU                           1                  0        8    233  stunted          
Birth       MAL-ED           PERU                           1                  1        2    233  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                  0       93    122  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                  1        8    122  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                  0       20    122  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                  1        1    122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       99    124  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       20    124  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        3    124  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        2    124  stunted          
Birth       PROVIDE          BANGLADESH                     0                  0      365    539  stunted          
Birth       PROVIDE          BANGLADESH                     0                  1       31    539  stunted          
Birth       PROVIDE          BANGLADESH                     1                  0      126    539  stunted          
Birth       PROVIDE          BANGLADESH                     1                  1       17    539  stunted          
Birth       ResPak           PAKISTAN                       0                  0       18     42  stunted          
Birth       ResPak           PAKISTAN                       0                  1       10     42  stunted          
Birth       ResPak           PAKISTAN                       1                  0       10     42  stunted          
Birth       ResPak           PAKISTAN                       1                  1        4     42  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                  0      120    365  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                  1       57    365  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                  0      134    365  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                  1       54    365  stunted          
6 months    CMIN             BANGLADESH                     0                  0      125    243  stunted          
6 months    CMIN             BANGLADESH                     0                  1       76    243  stunted          
6 months    CMIN             BANGLADESH                     1                  0       25    243  stunted          
6 months    CMIN             BANGLADESH                     1                  1       17    243  stunted          
6 months    CONTENT          PERU                           0                  0      202    215  stunted          
6 months    CONTENT          PERU                           0                  1        9    215  stunted          
6 months    CONTENT          PERU                           1                  0        4    215  stunted          
6 months    CONTENT          PERU                           1                  1        0    215  stunted          
6 months    EE               PAKISTAN                       0                  0      131    373  stunted          
6 months    EE               PAKISTAN                       0                  1      118    373  stunted          
6 months    EE               PAKISTAN                       1                  0       59    373  stunted          
6 months    EE               PAKISTAN                       1                  1       65    373  stunted          
6 months    GMS-Nepal        NEPAL                          0                  0      259    564  stunted          
6 months    GMS-Nepal        NEPAL                          0                  1       77    564  stunted          
6 months    GMS-Nepal        NEPAL                          1                  0      183    564  stunted          
6 months    GMS-Nepal        NEPAL                          1                  1       45    564  stunted          
6 months    Guatemala BSC    GUATEMALA                      0                  0      192    280  stunted          
6 months    Guatemala BSC    GUATEMALA                      0                  1       78    280  stunted          
6 months    Guatemala BSC    GUATEMALA                      1                  0        2    280  stunted          
6 months    Guatemala BSC    GUATEMALA                      1                  1        8    280  stunted          
6 months    IRC              INDIA                          0                  0      131    407  stunted          
6 months    IRC              INDIA                          0                  1       49    407  stunted          
6 months    IRC              INDIA                          1                  0      176    407  stunted          
6 months    IRC              INDIA                          1                  1       51    407  stunted          
6 months    Keneba           GAMBIA                         0                  0     1252   2056  stunted          
6 months    Keneba           GAMBIA                         0                  1      189   2056  stunted          
6 months    Keneba           GAMBIA                         1                  0      512   2056  stunted          
6 months    Keneba           GAMBIA                         1                  1      103   2056  stunted          
6 months    MAL-ED           BANGLADESH                     0                  0      151    241  stunted          
6 months    MAL-ED           BANGLADESH                     0                  1       32    241  stunted          
6 months    MAL-ED           BANGLADESH                     1                  0       46    241  stunted          
6 months    MAL-ED           BANGLADESH                     1                  1       12    241  stunted          
6 months    MAL-ED           BRAZIL                         0                  0      188    209  stunted          
6 months    MAL-ED           BRAZIL                         0                  1        6    209  stunted          
6 months    MAL-ED           BRAZIL                         1                  0       15    209  stunted          
6 months    MAL-ED           BRAZIL                         1                  1        0    209  stunted          
6 months    MAL-ED           INDIA                          0                  0      128    236  stunted          
6 months    MAL-ED           INDIA                          0                  1       31    236  stunted          
6 months    MAL-ED           INDIA                          1                  0       63    236  stunted          
6 months    MAL-ED           INDIA                          1                  1       14    236  stunted          
6 months    MAL-ED           NEPAL                          0                  0      181    236  stunted          
6 months    MAL-ED           NEPAL                          0                  1        7    236  stunted          
6 months    MAL-ED           NEPAL                          1                  0       43    236  stunted          
6 months    MAL-ED           NEPAL                          1                  1        5    236  stunted          
6 months    MAL-ED           PERU                           0                  0      204    273  stunted          
6 months    MAL-ED           PERU                           0                  1       59    273  stunted          
6 months    MAL-ED           PERU                           1                  0        9    273  stunted          
6 months    MAL-ED           PERU                           1                  1        1    273  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                  0      178    254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                  1       45    254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                  0       26    254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                  1        5    254  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      179    247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       55    247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        9    247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        4    247  stunted          
6 months    PROVIDE          BANGLADESH                     0                  0      381    604  stunted          
6 months    PROVIDE          BANGLADESH                     0                  1       69    604  stunted          
6 months    PROVIDE          BANGLADESH                     1                  0      127    604  stunted          
6 months    PROVIDE          BANGLADESH                     1                  1       27    604  stunted          
6 months    ResPak           PAKISTAN                       0                  0       80    239  stunted          
6 months    ResPak           PAKISTAN                       0                  1       63    239  stunted          
6 months    ResPak           PAKISTAN                       1                  0       73    239  stunted          
6 months    ResPak           PAKISTAN                       1                  1       23    239  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1559   2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1      169   2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      273   2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       28   2029  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                  0       48    366  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                  1      128    366  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                  0       56    366  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                  1      134    366  stunted          
24 months   CMIN             BANGLADESH                     0                  0       64    242  stunted          
24 months   CMIN             BANGLADESH                     0                  1      136    242  stunted          
24 months   CMIN             BANGLADESH                     1                  0       13    242  stunted          
24 months   CMIN             BANGLADESH                     1                  1       29    242  stunted          
24 months   CONTENT          PERU                           0                  0      149    164  stunted          
24 months   CONTENT          PERU                           0                  1       13    164  stunted          
24 months   CONTENT          PERU                           1                  0        2    164  stunted          
24 months   CONTENT          PERU                           1                  1        0    164  stunted          
24 months   EE               PAKISTAN                       0                  0       32    167  stunted          
24 months   EE               PAKISTAN                       0                  1       77    167  stunted          
24 months   EE               PAKISTAN                       1                  0       17    167  stunted          
24 months   EE               PAKISTAN                       1                  1       41    167  stunted          
24 months   GMS-Nepal        NEPAL                          0                  0      166    488  stunted          
24 months   GMS-Nepal        NEPAL                          0                  1      134    488  stunted          
24 months   GMS-Nepal        NEPAL                          1                  0      103    488  stunted          
24 months   GMS-Nepal        NEPAL                          1                  1       85    488  stunted          
24 months   IRC              INDIA                          0                  0      104    409  stunted          
24 months   IRC              INDIA                          0                  1       77    409  stunted          
24 months   IRC              INDIA                          1                  0      133    409  stunted          
24 months   IRC              INDIA                          1                  1       95    409  stunted          
24 months   Keneba           GAMBIA                         0                  0      739   1563  stunted          
24 months   Keneba           GAMBIA                         0                  1      352   1563  stunted          
24 months   Keneba           GAMBIA                         1                  0      301   1563  stunted          
24 months   Keneba           GAMBIA                         1                  1      171   1563  stunted          
24 months   MAL-ED           BANGLADESH                     0                  0       82    212  stunted          
24 months   MAL-ED           BANGLADESH                     0                  1       80    212  stunted          
24 months   MAL-ED           BANGLADESH                     1                  0       29    212  stunted          
24 months   MAL-ED           BANGLADESH                     1                  1       21    212  stunted          
24 months   MAL-ED           BRAZIL                         0                  0      150    169  stunted          
24 months   MAL-ED           BRAZIL                         0                  1        6    169  stunted          
24 months   MAL-ED           BRAZIL                         1                  0       12    169  stunted          
24 months   MAL-ED           BRAZIL                         1                  1        1    169  stunted          
24 months   MAL-ED           INDIA                          0                  0       80    227  stunted          
24 months   MAL-ED           INDIA                          0                  1       71    227  stunted          
24 months   MAL-ED           INDIA                          1                  0       50    227  stunted          
24 months   MAL-ED           INDIA                          1                  1       26    227  stunted          
24 months   MAL-ED           NEPAL                          0                  0      143    228  stunted          
24 months   MAL-ED           NEPAL                          0                  1       39    228  stunted          
24 months   MAL-ED           NEPAL                          1                  0       35    228  stunted          
24 months   MAL-ED           NEPAL                          1                  1       11    228  stunted          
24 months   MAL-ED           PERU                           0                  0      122    201  stunted          
24 months   MAL-ED           PERU                           0                  1       71    201  stunted          
24 months   MAL-ED           PERU                           1                  0        5    201  stunted          
24 months   MAL-ED           PERU                           1                  1        3    201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                  0      135    238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                  1       77    238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                  0       19    238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                  1        7    238  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       55    214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1      147    214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        4    214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        8    214  stunted          
24 months   PROVIDE          BANGLADESH                     0                  0      290    578  stunted          
24 months   PROVIDE          BANGLADESH                     0                  1      142    578  stunted          
24 months   PROVIDE          BANGLADESH                     1                  0       98    578  stunted          
24 months   PROVIDE          BANGLADESH                     1                  1       48    578  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        4      6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        1      6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        1      6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0      6  stunted          


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
