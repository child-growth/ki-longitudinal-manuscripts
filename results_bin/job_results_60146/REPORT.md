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

**Intervention Variable:** impfloor

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
* W_nrooms
* W_nchldlt5
* W_parity
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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        impfloor    stunted   n_cell       n
----------  ---------------  -----------------------------  ---------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 0       58      72
Birth       CMC-V-BCS-2002   INDIA                          1                 1       14      72
Birth       CMC-V-BCS-2002   INDIA                          0                 0        0      72
Birth       CMC-V-BCS-2002   INDIA                          0                 1        0      72
Birth       CONTENT          PERU                           1                 0        2       2
Birth       CONTENT          PERU                           1                 1        0       2
Birth       CONTENT          PERU                           0                 0        0       2
Birth       CONTENT          PERU                           0                 1        0       2
Birth       GMS-Nepal        NEPAL                          1                 0       91     544
Birth       GMS-Nepal        NEPAL                          1                 1        9     544
Birth       GMS-Nepal        NEPAL                          0                 0      361     544
Birth       GMS-Nepal        NEPAL                          0                 1       83     544
Birth       IRC              INDIA                          1                 0      255     287
Birth       IRC              INDIA                          1                 1       32     287
Birth       IRC              INDIA                          0                 0        0     287
Birth       IRC              INDIA                          0                 1        0     287
Birth       JiVitA-3         BANGLADESH                     1                 0     1054   22399
Birth       JiVitA-3         BANGLADESH                     1                 1      340   22399
Birth       JiVitA-3         BANGLADESH                     0                 0    13973   22399
Birth       JiVitA-3         BANGLADESH                     0                 1     7032   22399
Birth       JiVitA-4         BANGLADESH                     1                 0      226    2820
Birth       JiVitA-4         BANGLADESH                     1                 1       81    2820
Birth       JiVitA-4         BANGLADESH                     0                 0     1738    2820
Birth       JiVitA-4         BANGLADESH                     0                 1      775    2820
Birth       MAL-ED           BANGLADESH                     1                 0      161     213
Birth       MAL-ED           BANGLADESH                     1                 1       35     213
Birth       MAL-ED           BANGLADESH                     0                 0       15     213
Birth       MAL-ED           BANGLADESH                     0                 1        2     213
Birth       MAL-ED           BRAZIL                         1                 0       49      60
Birth       MAL-ED           BRAZIL                         1                 1        9      60
Birth       MAL-ED           BRAZIL                         0                 0        2      60
Birth       MAL-ED           BRAZIL                         0                 1        0      60
Birth       MAL-ED           INDIA                          1                 0       27      41
Birth       MAL-ED           INDIA                          1                 1        8      41
Birth       MAL-ED           INDIA                          0                 0        6      41
Birth       MAL-ED           INDIA                          0                 1        0      41
Birth       MAL-ED           NEPAL                          1                 0        8      25
Birth       MAL-ED           NEPAL                          1                 1        1      25
Birth       MAL-ED           NEPAL                          0                 0       15      25
Birth       MAL-ED           NEPAL                          0                 1        1      25
Birth       MAL-ED           PERU                           1                 0       30     215
Birth       MAL-ED           PERU                           1                 1        9     215
Birth       MAL-ED           PERU                           0                 0      159     215
Birth       MAL-ED           PERU                           0                 1       17     215
Birth       MAL-ED           SOUTH AFRICA                   1                 0       80      96
Birth       MAL-ED           SOUTH AFRICA                   1                 1        7      96
Birth       MAL-ED           SOUTH AFRICA                   0                 0        8      96
Birth       MAL-ED           SOUTH AFRICA                   0                 1        1      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        5     119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        2     119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0       93     119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1       19     119
Birth       NIH-Birth        BANGLADESH                     1                 0      452     605
Birth       NIH-Birth        BANGLADESH                     1                 1       81     605
Birth       NIH-Birth        BANGLADESH                     0                 0       58     605
Birth       NIH-Birth        BANGLADESH                     0                 1       14     605
Birth       NIH-Crypto       BANGLADESH                     1                 0      482     732
Birth       NIH-Crypto       BANGLADESH                     1                 1       76     732
Birth       NIH-Crypto       BANGLADESH                     0                 0      149     732
Birth       NIH-Crypto       BANGLADESH                     0                 1       25     732
Birth       PROVIDE          BANGLADESH                     1                 0      447     539
Birth       PROVIDE          BANGLADESH                     1                 1       44     539
Birth       PROVIDE          BANGLADESH                     0                 0       44     539
Birth       PROVIDE          BANGLADESH                     0                 1        4     539
6 months    CMC-V-BCS-2002   INDIA                          1                 0      170     257
6 months    CMC-V-BCS-2002   INDIA                          1                 1       87     257
6 months    CMC-V-BCS-2002   INDIA                          0                 0        0     257
6 months    CMC-V-BCS-2002   INDIA                          0                 1        0     257
6 months    CONTENT          PERU                           1                 0      192     215
6 months    CONTENT          PERU                           1                 1        9     215
6 months    CONTENT          PERU                           0                 0       14     215
6 months    CONTENT          PERU                           0                 1        0     215
6 months    GMS-Nepal        NEPAL                          1                 0       68     441
6 months    GMS-Nepal        NEPAL                          1                 1       10     441
6 months    GMS-Nepal        NEPAL                          0                 0      283     441
6 months    GMS-Nepal        NEPAL                          0                 1       80     441
6 months    IRC              INDIA                          1                 0      235     303
6 months    IRC              INDIA                          1                 1       68     303
6 months    IRC              INDIA                          0                 0        0     303
6 months    IRC              INDIA                          0                 1        0     303
6 months    JiVitA-3         BANGLADESH                     1                 0     1267   16773
6 months    JiVitA-3         BANGLADESH                     1                 1      198   16773
6 months    JiVitA-3         BANGLADESH                     0                 0    11289   16773
6 months    JiVitA-3         BANGLADESH                     0                 1     4019   16773
6 months    JiVitA-4         BANGLADESH                     1                 0      494    4824
6 months    JiVitA-4         BANGLADESH                     1                 1       96    4824
6 months    JiVitA-4         BANGLADESH                     0                 0     3112    4824
6 months    JiVitA-4         BANGLADESH                     0                 1     1122    4824
6 months    MAL-ED           BANGLADESH                     1                 0      179     240
6 months    MAL-ED           BANGLADESH                     1                 1       42     240
6 months    MAL-ED           BANGLADESH                     0                 0       17     240
6 months    MAL-ED           BANGLADESH                     0                 1        2     240
6 months    MAL-ED           BRAZIL                         1                 0      201     209
6 months    MAL-ED           BRAZIL                         1                 1        6     209
6 months    MAL-ED           BRAZIL                         0                 0        2     209
6 months    MAL-ED           BRAZIL                         0                 1        0     209
6 months    MAL-ED           INDIA                          1                 0      180     235
6 months    MAL-ED           INDIA                          1                 1       40     235
6 months    MAL-ED           INDIA                          0                 0       11     235
6 months    MAL-ED           INDIA                          0                 1        4     235
6 months    MAL-ED           NEPAL                          1                 0       97     229
6 months    MAL-ED           NEPAL                          1                 1        6     229
6 months    MAL-ED           NEPAL                          0                 0      121     229
6 months    MAL-ED           NEPAL                          0                 1        5     229
6 months    MAL-ED           PERU                           1                 0       38     270
6 months    MAL-ED           PERU                           1                 1       20     270
6 months    MAL-ED           PERU                           0                 0      172     270
6 months    MAL-ED           PERU                           0                 1       40     270
6 months    MAL-ED           SOUTH AFRICA                   1                 0      184     249
6 months    MAL-ED           SOUTH AFRICA                   1                 1       45     249
6 months    MAL-ED           SOUTH AFRICA                   0                 0       16     249
6 months    MAL-ED           SOUTH AFRICA                   0                 1        4     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       12     245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        2     245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      174     245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1       57     245
6 months    NIH-Birth        BANGLADESH                     1                 0      361     535
6 months    NIH-Birth        BANGLADESH                     1                 1      116     535
6 months    NIH-Birth        BANGLADESH                     0                 0       31     535
6 months    NIH-Birth        BANGLADESH                     0                 1       27     535
6 months    NIH-Crypto       BANGLADESH                     1                 0      423     715
6 months    NIH-Crypto       BANGLADESH                     1                 1      114     715
6 months    NIH-Crypto       BANGLADESH                     0                 0      142     715
6 months    NIH-Crypto       BANGLADESH                     0                 1       36     715
6 months    PROVIDE          BANGLADESH                     1                 0      477     604
6 months    PROVIDE          BANGLADESH                     1                 1       80     604
6 months    PROVIDE          BANGLADESH                     0                 0       31     604
6 months    PROVIDE          BANGLADESH                     0                 1       16     604
24 months   CMC-V-BCS-2002   INDIA                          1                 0       79     259
24 months   CMC-V-BCS-2002   INDIA                          1                 1      180     259
24 months   CMC-V-BCS-2002   INDIA                          0                 0        0     259
24 months   CMC-V-BCS-2002   INDIA                          0                 1        0     259
24 months   CONTENT          PERU                           1                 0      143     164
24 months   CONTENT          PERU                           1                 1       11     164
24 months   CONTENT          PERU                           0                 0        8     164
24 months   CONTENT          PERU                           0                 1        2     164
24 months   GMS-Nepal        NEPAL                          1                 0       48     374
24 months   GMS-Nepal        NEPAL                          1                 1       24     374
24 months   GMS-Nepal        NEPAL                          0                 0      170     374
24 months   GMS-Nepal        NEPAL                          0                 1      132     374
24 months   IRC              INDIA                          1                 0      188     305
24 months   IRC              INDIA                          1                 1      117     305
24 months   IRC              INDIA                          0                 0        0     305
24 months   IRC              INDIA                          0                 1        0     305
24 months   JiVitA-3         BANGLADESH                     1                 0      481    8609
24 months   JiVitA-3         BANGLADESH                     1                 1      193    8609
24 months   JiVitA-3         BANGLADESH                     0                 0     3901    8609
24 months   JiVitA-3         BANGLADESH                     0                 1     4034    8609
24 months   JiVitA-4         BANGLADESH                     1                 0      418    4746
24 months   JiVitA-4         BANGLADESH                     1                 1      148    4746
24 months   JiVitA-4         BANGLADESH                     0                 0     2425    4746
24 months   JiVitA-4         BANGLADESH                     0                 1     1755    4746
24 months   MAL-ED           BANGLADESH                     1                 0      103     212
24 months   MAL-ED           BANGLADESH                     1                 1       92     212
24 months   MAL-ED           BANGLADESH                     0                 0        8     212
24 months   MAL-ED           BANGLADESH                     0                 1        9     212
24 months   MAL-ED           BRAZIL                         1                 0      160     169
24 months   MAL-ED           BRAZIL                         1                 1        7     169
24 months   MAL-ED           BRAZIL                         0                 0        2     169
24 months   MAL-ED           BRAZIL                         0                 1        0     169
24 months   MAL-ED           INDIA                          1                 0      123     227
24 months   MAL-ED           INDIA                          1                 1       89     227
24 months   MAL-ED           INDIA                          0                 0        7     227
24 months   MAL-ED           INDIA                          0                 1        8     227
24 months   MAL-ED           NEPAL                          1                 0       82     221
24 months   MAL-ED           NEPAL                          1                 1       16     221
24 months   MAL-ED           NEPAL                          0                 0       90     221
24 months   MAL-ED           NEPAL                          0                 1       33     221
24 months   MAL-ED           PERU                           1                 0       32     201
24 months   MAL-ED           PERU                           1                 1       17     201
24 months   MAL-ED           PERU                           0                 0       95     201
24 months   MAL-ED           PERU                           0                 1       57     201
24 months   MAL-ED           SOUTH AFRICA                   1                 0      142     238
24 months   MAL-ED           SOUTH AFRICA                   1                 1       78     238
24 months   MAL-ED           SOUTH AFRICA                   0                 0       12     238
24 months   MAL-ED           SOUTH AFRICA                   0                 1        6     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        2     212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1       10     212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0       57     212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1      143     212
24 months   NIH-Birth        BANGLADESH                     1                 0      171     427
24 months   NIH-Birth        BANGLADESH                     1                 1      206     427
24 months   NIH-Birth        BANGLADESH                     0                 0       12     427
24 months   NIH-Birth        BANGLADESH                     0                 1       38     427
24 months   NIH-Crypto       BANGLADESH                     1                 0      260     514
24 months   NIH-Crypto       BANGLADESH                     1                 1       86     514
24 months   NIH-Crypto       BANGLADESH                     0                 0      122     514
24 months   NIH-Crypto       BANGLADESH                     0                 1       46     514
24 months   PROVIDE          BANGLADESH                     1                 0      365     578
24 months   PROVIDE          BANGLADESH                     1                 1      168     578
24 months   PROVIDE          BANGLADESH                     0                 0       23     578
24 months   PROVIDE          BANGLADESH                     0                 1       22     578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/49173530-bbdb-4fc1-9c18-e4f90aaa84be/8746f14e-3e6b-4968-b4da-3b4c8ff7fdeb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/49173530-bbdb-4fc1-9c18-e4f90aaa84be/8746f14e-3e6b-4968-b4da-3b4c8ff7fdeb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/49173530-bbdb-4fc1-9c18-e4f90aaa84be/8746f14e-3e6b-4968-b4da-3b4c8ff7fdeb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/49173530-bbdb-4fc1-9c18-e4f90aaa84be/8746f14e-3e6b-4968-b4da-3b4c8ff7fdeb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL          1                    NA                0.0900000   0.0338578   0.1461422
Birth       GMS-Nepal    NEPAL          0                    NA                0.1869369   0.1506403   0.2232335
Birth       JiVitA-3     BANGLADESH     1                    NA                0.3087705   0.2827439   0.3347972
Birth       JiVitA-3     BANGLADESH     0                    NA                0.3288986   0.3212527   0.3365445
Birth       JiVitA-4     BANGLADESH     1                    NA                0.3034793   0.2106936   0.3962651
Birth       JiVitA-4     BANGLADESH     0                    NA                0.3063298   0.2836257   0.3290340
Birth       MAL-ED       PERU           1                    NA                0.2307692   0.0982297   0.3633088
Birth       MAL-ED       PERU           0                    NA                0.0965909   0.0528473   0.1403345
Birth       NIH-Birth    BANGLADESH     1                    NA                0.1530774   0.1225155   0.1836393
Birth       NIH-Birth    BANGLADESH     0                    NA                0.1940655   0.0948554   0.2932756
Birth       NIH-Crypto   BANGLADESH     1                    NA                0.1361582   0.1076635   0.1646529
Birth       NIH-Crypto   BANGLADESH     0                    NA                0.1417153   0.0893286   0.1941021
6 months    GMS-Nepal    NEPAL          1                    NA                0.1411283   0.0535032   0.2287534
6 months    GMS-Nepal    NEPAL          0                    NA                0.2165087   0.1740312   0.2589862
6 months    JiVitA-3     BANGLADESH     1                    NA                0.2315677   0.2035615   0.2595739
6 months    JiVitA-3     BANGLADESH     0                    NA                0.2545031   0.2460541   0.2629521
6 months    JiVitA-4     BANGLADESH     1                    NA                0.1752091   0.1256599   0.2247582
6 months    JiVitA-4     BANGLADESH     0                    NA                0.2603043   0.2442230   0.2763857
6 months    MAL-ED       NEPAL          1                    NA                0.0582524   0.0129205   0.1035843
6 months    MAL-ED       NEPAL          0                    NA                0.0396825   0.0055223   0.0738427
6 months    MAL-ED       PERU           1                    NA                0.3465911   0.2262818   0.4669005
6 months    MAL-ED       PERU           0                    NA                0.1877724   0.1347071   0.2408378
6 months    NIH-Birth    BANGLADESH     1                    NA                0.2452154   0.2068886   0.2835422
6 months    NIH-Birth    BANGLADESH     0                    NA                0.4267018   0.2873596   0.5660441
6 months    NIH-Crypto   BANGLADESH     1                    NA                0.2127193   0.1783049   0.2471336
6 months    NIH-Crypto   BANGLADESH     0                    NA                0.2034183   0.1435896   0.2632469
6 months    PROVIDE      BANGLADESH     1                    NA                0.1438109   0.1146388   0.1729830
6 months    PROVIDE      BANGLADESH     0                    NA                0.3698924   0.2335717   0.5062132
24 months   GMS-Nepal    NEPAL          1                    NA                0.3429301   0.2307046   0.4551556
24 months   GMS-Nepal    NEPAL          0                    NA                0.4348975   0.3786655   0.4911296
24 months   JiVitA-3     BANGLADESH     1                    NA                0.4372529   0.3823376   0.4921683
24 months   JiVitA-3     BANGLADESH     0                    NA                0.4960486   0.4822742   0.5098230
24 months   JiVitA-4     BANGLADESH     1                    NA                0.3177438   0.2374506   0.3980369
24 months   JiVitA-4     BANGLADESH     0                    NA                0.4074841   0.3892101   0.4257582
24 months   MAL-ED       BANGLADESH     1                    NA                0.4717949   0.4015628   0.5420269
24 months   MAL-ED       BANGLADESH     0                    NA                0.5294118   0.2915812   0.7672423
24 months   MAL-ED       INDIA          1                    NA                0.4198113   0.3532303   0.4863924
24 months   MAL-ED       INDIA          0                    NA                0.5333333   0.2803080   0.7863586
24 months   MAL-ED       NEPAL          1                    NA                0.1574809   0.0829599   0.2320019
24 months   MAL-ED       NEPAL          0                    NA                0.2605450   0.1812518   0.3398383
24 months   MAL-ED       PERU           1                    NA                0.3447312   0.2144041   0.4750583
24 months   MAL-ED       PERU           0                    NA                0.3720981   0.2949856   0.4492107
24 months   MAL-ED       SOUTH AFRICA   1                    NA                0.3545455   0.2911994   0.4178915
24 months   MAL-ED       SOUTH AFRICA   0                    NA                0.3333333   0.1151006   0.5515661
24 months   NIH-Birth    BANGLADESH     1                    NA                0.5509583   0.5008354   0.6010812
24 months   NIH-Birth    BANGLADESH     0                    NA                0.7172795   0.6082873   0.8262716
24 months   NIH-Crypto   BANGLADESH     1                    NA                0.2478119   0.2024430   0.2931809
24 months   NIH-Crypto   BANGLADESH     0                    NA                0.2718886   0.2040227   0.3397544
24 months   PROVIDE      BANGLADESH     1                    NA                0.3190131   0.2795003   0.3585259
24 months   PROVIDE      BANGLADESH     0                    NA                0.4145309   0.2643213   0.5647405


### Parameter: E(Y)


agecat      studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL          NA                   NA                0.1691176   0.1375885   0.2006468
Birth       JiVitA-3     BANGLADESH     NA                   NA                0.3291218   0.3217144   0.3365293
Birth       JiVitA-4     BANGLADESH     NA                   NA                0.3035461   0.2835868   0.3235054
Birth       MAL-ED       PERU           NA                   NA                0.1209302   0.0772464   0.1646140
Birth       NIH-Birth    BANGLADESH     NA                   NA                0.1570248   0.1280099   0.1860397
Birth       NIH-Crypto   BANGLADESH     NA                   NA                0.1379781   0.1129774   0.1629789
6 months    GMS-Nepal    NEPAL          NA                   NA                0.2040816   0.1664236   0.2417397
6 months    JiVitA-3     BANGLADESH     NA                   NA                0.2514160   0.2432636   0.2595684
6 months    JiVitA-4     BANGLADESH     NA                   NA                0.2524876   0.2384257   0.2665494
6 months    MAL-ED       NEPAL          NA                   NA                0.0480349   0.0202781   0.0757918
6 months    MAL-ED       PERU           NA                   NA                0.2222222   0.1725409   0.2719036
6 months    NIH-Birth    BANGLADESH     NA                   NA                0.2672897   0.2297549   0.3048246
6 months    NIH-Crypto   BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROVIDE      BANGLADESH     NA                   NA                0.1589404   0.1297581   0.1881227
24 months   GMS-Nepal    NEPAL          NA                   NA                0.4171123   0.3670728   0.4671518
24 months   JiVitA-3     BANGLADESH     NA                   NA                0.4909978   0.4779033   0.5040923
24 months   JiVitA-4     BANGLADESH     NA                   NA                0.4009692   0.3839829   0.4179556
24 months   MAL-ED       BANGLADESH     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   MAL-ED       INDIA          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   MAL-ED       NEPAL          NA                   NA                0.2217195   0.1668277   0.2766112
24 months   MAL-ED       PERU           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   NIH-Birth    BANGLADESH     NA                   NA                0.5714286   0.5244353   0.6184219
24 months   NIH-Crypto   BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROVIDE      BANGLADESH     NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal    NEPAL          0                    1                 2.0770771   1.0807333   3.9919648
Birth       JiVitA-3     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3     BANGLADESH     0                    1                 1.0651878   0.9764668   1.1619699
Birth       JiVitA-4     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-4     BANGLADESH     0                    1                 1.0093927   0.7384947   1.3796627
Birth       MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED       PERU           0                    1                 0.4185606   0.2014240   0.8697720
Birth       NIH-Birth    BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       NIH-Birth    BANGLADESH     0                    1                 1.2677604   0.7327683   2.1933486
Birth       NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto   BANGLADESH     0                    1                 1.0408133   0.6808160   1.5911677
6 months    GMS-Nepal    NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal    NEPAL          0                    1                 1.5341270   0.7997665   2.9427909
6 months    JiVitA-3     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3     BANGLADESH     0                    1                 1.0990438   0.9715447   1.2432750
6 months    JiVitA-4     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-4     BANGLADESH     0                    1                 1.4856786   1.1115304   1.9857676
6 months    MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED       NEPAL          0                    1                 0.6812169   0.2134571   2.1740031
6 months    MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED       PERU           0                    1                 0.5417692   0.3478962   0.8436824
6 months    NIH-Birth    BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    NIH-Birth    BANGLADESH     0                    1                 1.7401102   1.2150155   2.4921357
6 months    NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto   BANGLADESH     0                    1                 0.9562756   0.6839093   1.3371115
6 months    PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE      BANGLADESH     0                    1                 2.5720748   1.6886197   3.9177376
24 months   GMS-Nepal    NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal    NEPAL          0                    1                 1.2681812   0.8921853   1.8026340
24 months   JiVitA-3     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3     BANGLADESH     0                    1                 1.1344660   0.9985871   1.2888341
24 months   JiVitA-4     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4     BANGLADESH     0                    1                 1.2824299   0.9924136   1.6571986
24 months   MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED       BANGLADESH     0                    1                 1.1221228   0.6990487   1.8012472
24 months   MAL-ED       INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED       INDIA          0                    1                 1.2704120   0.7703668   2.0950365
24 months   MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED       NEPAL          0                    1                 1.6544551   0.9405509   2.9102322
24 months   MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED       PERU           0                    1                 1.0793862   0.7065301   1.6490091
24 months   MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED       SOUTH AFRICA   0                    1                 0.9401709   0.4769548   1.8532602
24 months   NIH-Birth    BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   NIH-Birth    BANGLADESH     0                    1                 1.3018761   1.0949302   1.5479355
24 months   NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto   BANGLADESH     0                    1                 1.0971570   0.8069152   1.4917967
24 months   PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE      BANGLADESH     0                    1                 1.2994165   0.8890697   1.8991575


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          1                    NA                 0.0791176    0.0244621    0.1337732
Birth       JiVitA-3     BANGLADESH     1                    NA                 0.0203513   -0.0053885    0.0460911
Birth       JiVitA-4     BANGLADESH     1                    NA                 0.0000668   -0.0898402    0.0899737
Birth       MAL-ED       PERU           1                    NA                -0.1098390   -0.2243028    0.0046248
Birth       NIH-Birth    BANGLADESH     1                    NA                 0.0039474   -0.0075572    0.0154519
Birth       NIH-Crypto   BANGLADESH     1                    NA                 0.0018199   -0.0123081    0.0159479
6 months    GMS-Nepal    NEPAL          1                    NA                 0.0629533   -0.0204327    0.1463394
6 months    JiVitA-3     BANGLADESH     1                    NA                 0.0198483   -0.0078538    0.0475503
6 months    JiVitA-4     BANGLADESH     1                    NA                 0.0772785    0.0284507    0.1261063
6 months    MAL-ED       NEPAL          1                    NA                -0.0102175   -0.0414719    0.0210369
6 months    MAL-ED       PERU           1                    NA                -0.1243689   -0.2276232   -0.0211146
6 months    NIH-Birth    BANGLADESH     1                    NA                 0.0220743    0.0070929    0.0370557
6 months    NIH-Crypto   BANGLADESH     1                    NA                -0.0029291   -0.0200374    0.0141793
6 months    PROVIDE      BANGLADESH     1                    NA                 0.0151295    0.0035376    0.0267214
24 months   GMS-Nepal    NEPAL          1                    NA                 0.0741822   -0.0280886    0.1764530
24 months   JiVitA-3     BANGLADESH     1                    NA                 0.0537449   -0.0006326    0.1081223
24 months   JiVitA-4     BANGLADESH     1                    NA                 0.0832255    0.0047397    0.1617112
24 months   MAL-ED       BANGLADESH     1                    NA                 0.0046202   -0.0153770    0.0246175
24 months   MAL-ED       INDIA          1                    NA                 0.0075015   -0.0101741    0.0251770
24 months   MAL-ED       NEPAL          1                    NA                 0.0642386    0.0029978    0.1254794
24 months   MAL-ED       PERU           1                    NA                 0.0234280   -0.0900354    0.1368914
24 months   MAL-ED       SOUTH AFRICA   1                    NA                -0.0016043   -0.0188054    0.0155968
24 months   NIH-Birth    BANGLADESH     1                    NA                 0.0204703    0.0060737    0.0348669
24 months   NIH-Crypto   BANGLADESH     1                    NA                 0.0089974   -0.0173959    0.0353907
24 months   PROVIDE      BANGLADESH     1                    NA                 0.0097066   -0.0020677    0.0214809


### Parameter: PAF


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          1                    NA                 0.4678261    0.0402469    0.7049147
Birth       JiVitA-3     BANGLADESH     1                    NA                 0.0618352   -0.0195791    0.1367485
Birth       JiVitA-4     BANGLADESH     1                    NA                 0.0002199   -0.3445166    0.2565654
Birth       MAL-ED       PERU           1                    NA                -0.9082840   -2.0890152   -0.1788702
Birth       NIH-Birth    BANGLADESH     1                    NA                 0.0251386   -0.0508078    0.0955961
Birth       NIH-Crypto   BANGLADESH     1                    NA                 0.0131897   -0.0946876    0.1104362
6 months    GMS-Nepal    NEPAL          1                    NA                 0.3084714   -0.2443840    0.6157039
6 months    JiVitA-3     BANGLADESH     1                    NA                 0.0789459   -0.0378166    0.1825717
6 months    JiVitA-4     BANGLADESH     1                    NA                 0.3060686    0.0841355    0.4742226
6 months    MAL-ED       NEPAL          1                    NA                -0.2127096   -1.0563292    0.2848107
6 months    MAL-ED       PERU           1                    NA                -0.5596601   -1.1015363   -0.1575055
6 months    NIH-Birth    BANGLADESH     1                    NA                 0.0825857    0.0253173    0.1364893
6 months    NIH-Crypto   BANGLADESH     1                    NA                -0.0139619   -0.0989077    0.0644175
6 months    PROVIDE      BANGLADESH     1                    NA                 0.0951897    0.0207602    0.1639620
24 months   GMS-Nepal    NEPAL          1                    NA                 0.1778471   -0.1080389    0.3899714
24 months   JiVitA-3     BANGLADESH     1                    NA                 0.1094605   -0.0082513    0.2134296
24 months   JiVitA-4     BANGLADESH     1                    NA                 0.2075607   -0.0147201    0.3811495
24 months   MAL-ED       BANGLADESH     1                    NA                 0.0096979   -0.0331976    0.0508125
24 months   MAL-ED       INDIA          1                    NA                 0.0175550   -0.0247338    0.0580986
24 months   MAL-ED       NEPAL          1                    NA                 0.2897291   -0.0425513    0.5161056
24 months   MAL-ED       PERU           1                    NA                 0.0636354   -0.3012514    0.3262036
24 months   MAL-ED       SOUTH AFRICA   1                    NA                -0.0045455   -0.0544841    0.0430282
24 months   NIH-Birth    BANGLADESH     1                    NA                 0.0358229    0.0099069    0.0610607
24 months   NIH-Crypto   BANGLADESH     1                    NA                 0.0350354   -0.0733611    0.1324852
24 months   PROVIDE      BANGLADESH     1                    NA                 0.0295286   -0.0069471    0.0646830
