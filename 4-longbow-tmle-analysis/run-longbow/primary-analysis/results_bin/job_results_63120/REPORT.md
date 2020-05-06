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

agecat      studyid          country                        impfloor    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                 0       58      72  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1                 1       14      72  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0                 0        0      72  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0                 1        0      72  stunted          
Birth       CONTENT          PERU                           1                 0        2       2  stunted          
Birth       CONTENT          PERU                           1                 1        0       2  stunted          
Birth       CONTENT          PERU                           0                 0        0       2  stunted          
Birth       CONTENT          PERU                           0                 1        0       2  stunted          
Birth       GMS-Nepal        NEPAL                          1                 0       91     544  stunted          
Birth       GMS-Nepal        NEPAL                          1                 1        9     544  stunted          
Birth       GMS-Nepal        NEPAL                          0                 0      361     544  stunted          
Birth       GMS-Nepal        NEPAL                          0                 1       83     544  stunted          
Birth       IRC              INDIA                          1                 0      255     287  stunted          
Birth       IRC              INDIA                          1                 1       32     287  stunted          
Birth       IRC              INDIA                          0                 0        0     287  stunted          
Birth       IRC              INDIA                          0                 1        0     287  stunted          
Birth       JiVitA-3         BANGLADESH                     1                 0     1054   22399  stunted          
Birth       JiVitA-3         BANGLADESH                     1                 1      340   22399  stunted          
Birth       JiVitA-3         BANGLADESH                     0                 0    13973   22399  stunted          
Birth       JiVitA-3         BANGLADESH                     0                 1     7032   22399  stunted          
Birth       JiVitA-4         BANGLADESH                     1                 0      226    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     1                 1       81    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     0                 0     1738    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     0                 1      775    2820  stunted          
Birth       MAL-ED           BANGLADESH                     1                 0      161     213  stunted          
Birth       MAL-ED           BANGLADESH                     1                 1       35     213  stunted          
Birth       MAL-ED           BANGLADESH                     0                 0       15     213  stunted          
Birth       MAL-ED           BANGLADESH                     0                 1        2     213  stunted          
Birth       MAL-ED           BRAZIL                         1                 0       49      60  stunted          
Birth       MAL-ED           BRAZIL                         1                 1        9      60  stunted          
Birth       MAL-ED           BRAZIL                         0                 0        2      60  stunted          
Birth       MAL-ED           BRAZIL                         0                 1        0      60  stunted          
Birth       MAL-ED           INDIA                          1                 0       27      41  stunted          
Birth       MAL-ED           INDIA                          1                 1        8      41  stunted          
Birth       MAL-ED           INDIA                          0                 0        6      41  stunted          
Birth       MAL-ED           INDIA                          0                 1        0      41  stunted          
Birth       MAL-ED           NEPAL                          1                 0        8      25  stunted          
Birth       MAL-ED           NEPAL                          1                 1        1      25  stunted          
Birth       MAL-ED           NEPAL                          0                 0       15      25  stunted          
Birth       MAL-ED           NEPAL                          0                 1        1      25  stunted          
Birth       MAL-ED           PERU                           1                 0       30     215  stunted          
Birth       MAL-ED           PERU                           1                 1        9     215  stunted          
Birth       MAL-ED           PERU                           0                 0      159     215  stunted          
Birth       MAL-ED           PERU                           0                 1       17     215  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                 0       80      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                 1        7      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                 0        8      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                 1        1      96  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        5     119  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        2     119  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0       93     119  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1       19     119  stunted          
Birth       NIH-Birth        BANGLADESH                     1                 0      452     605  stunted          
Birth       NIH-Birth        BANGLADESH                     1                 1       81     605  stunted          
Birth       NIH-Birth        BANGLADESH                     0                 0       58     605  stunted          
Birth       NIH-Birth        BANGLADESH                     0                 1       14     605  stunted          
Birth       NIH-Crypto       BANGLADESH                     1                 0      482     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     1                 1       76     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     0                 0      149     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     0                 1       25     732  stunted          
Birth       PROVIDE          BANGLADESH                     1                 0      447     539  stunted          
Birth       PROVIDE          BANGLADESH                     1                 1       44     539  stunted          
Birth       PROVIDE          BANGLADESH                     0                 0       44     539  stunted          
Birth       PROVIDE          BANGLADESH                     0                 1        4     539  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                 0      170     257  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                 1       87     257  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                 0        0     257  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                 1        0     257  stunted          
6 months    CONTENT          PERU                           1                 0      192     215  stunted          
6 months    CONTENT          PERU                           1                 1        9     215  stunted          
6 months    CONTENT          PERU                           0                 0       14     215  stunted          
6 months    CONTENT          PERU                           0                 1        0     215  stunted          
6 months    GMS-Nepal        NEPAL                          1                 0       68     441  stunted          
6 months    GMS-Nepal        NEPAL                          1                 1       10     441  stunted          
6 months    GMS-Nepal        NEPAL                          0                 0      283     441  stunted          
6 months    GMS-Nepal        NEPAL                          0                 1       80     441  stunted          
6 months    IRC              INDIA                          1                 0      235     303  stunted          
6 months    IRC              INDIA                          1                 1       68     303  stunted          
6 months    IRC              INDIA                          0                 0        0     303  stunted          
6 months    IRC              INDIA                          0                 1        0     303  stunted          
6 months    JiVitA-3         BANGLADESH                     1                 0     1267   16773  stunted          
6 months    JiVitA-3         BANGLADESH                     1                 1      198   16773  stunted          
6 months    JiVitA-3         BANGLADESH                     0                 0    11289   16773  stunted          
6 months    JiVitA-3         BANGLADESH                     0                 1     4019   16773  stunted          
6 months    JiVitA-4         BANGLADESH                     1                 0      494    4824  stunted          
6 months    JiVitA-4         BANGLADESH                     1                 1       96    4824  stunted          
6 months    JiVitA-4         BANGLADESH                     0                 0     3112    4824  stunted          
6 months    JiVitA-4         BANGLADESH                     0                 1     1122    4824  stunted          
6 months    MAL-ED           BANGLADESH                     1                 0      179     240  stunted          
6 months    MAL-ED           BANGLADESH                     1                 1       42     240  stunted          
6 months    MAL-ED           BANGLADESH                     0                 0       17     240  stunted          
6 months    MAL-ED           BANGLADESH                     0                 1        2     240  stunted          
6 months    MAL-ED           BRAZIL                         1                 0      201     209  stunted          
6 months    MAL-ED           BRAZIL                         1                 1        6     209  stunted          
6 months    MAL-ED           BRAZIL                         0                 0        2     209  stunted          
6 months    MAL-ED           BRAZIL                         0                 1        0     209  stunted          
6 months    MAL-ED           INDIA                          1                 0      180     235  stunted          
6 months    MAL-ED           INDIA                          1                 1       40     235  stunted          
6 months    MAL-ED           INDIA                          0                 0       11     235  stunted          
6 months    MAL-ED           INDIA                          0                 1        4     235  stunted          
6 months    MAL-ED           NEPAL                          1                 0       97     229  stunted          
6 months    MAL-ED           NEPAL                          1                 1        6     229  stunted          
6 months    MAL-ED           NEPAL                          0                 0      121     229  stunted          
6 months    MAL-ED           NEPAL                          0                 1        5     229  stunted          
6 months    MAL-ED           PERU                           1                 0       38     270  stunted          
6 months    MAL-ED           PERU                           1                 1       20     270  stunted          
6 months    MAL-ED           PERU                           0                 0      172     270  stunted          
6 months    MAL-ED           PERU                           0                 1       40     270  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                 0      184     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                 1       45     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                 0       16     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                 1        4     249  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       12     245  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        2     245  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      174     245  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1       57     245  stunted          
6 months    NIH-Birth        BANGLADESH                     1                 0      361     535  stunted          
6 months    NIH-Birth        BANGLADESH                     1                 1      116     535  stunted          
6 months    NIH-Birth        BANGLADESH                     0                 0       31     535  stunted          
6 months    NIH-Birth        BANGLADESH                     0                 1       27     535  stunted          
6 months    NIH-Crypto       BANGLADESH                     1                 0      423     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     1                 1      114     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     0                 0      142     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     0                 1       36     715  stunted          
6 months    PROVIDE          BANGLADESH                     1                 0      477     604  stunted          
6 months    PROVIDE          BANGLADESH                     1                 1       80     604  stunted          
6 months    PROVIDE          BANGLADESH                     0                 0       31     604  stunted          
6 months    PROVIDE          BANGLADESH                     0                 1       16     604  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                 0       79     259  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                 1      180     259  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                 0        0     259  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                 1        0     259  stunted          
24 months   CONTENT          PERU                           1                 0      143     164  stunted          
24 months   CONTENT          PERU                           1                 1       11     164  stunted          
24 months   CONTENT          PERU                           0                 0        8     164  stunted          
24 months   CONTENT          PERU                           0                 1        2     164  stunted          
24 months   GMS-Nepal        NEPAL                          1                 0       48     374  stunted          
24 months   GMS-Nepal        NEPAL                          1                 1       24     374  stunted          
24 months   GMS-Nepal        NEPAL                          0                 0      170     374  stunted          
24 months   GMS-Nepal        NEPAL                          0                 1      132     374  stunted          
24 months   IRC              INDIA                          1                 0      188     305  stunted          
24 months   IRC              INDIA                          1                 1      117     305  stunted          
24 months   IRC              INDIA                          0                 0        0     305  stunted          
24 months   IRC              INDIA                          0                 1        0     305  stunted          
24 months   JiVitA-3         BANGLADESH                     1                 0      481    8609  stunted          
24 months   JiVitA-3         BANGLADESH                     1                 1      193    8609  stunted          
24 months   JiVitA-3         BANGLADESH                     0                 0     3901    8609  stunted          
24 months   JiVitA-3         BANGLADESH                     0                 1     4034    8609  stunted          
24 months   JiVitA-4         BANGLADESH                     1                 0      418    4746  stunted          
24 months   JiVitA-4         BANGLADESH                     1                 1      148    4746  stunted          
24 months   JiVitA-4         BANGLADESH                     0                 0     2425    4746  stunted          
24 months   JiVitA-4         BANGLADESH                     0                 1     1755    4746  stunted          
24 months   MAL-ED           BANGLADESH                     1                 0      103     212  stunted          
24 months   MAL-ED           BANGLADESH                     1                 1       92     212  stunted          
24 months   MAL-ED           BANGLADESH                     0                 0        8     212  stunted          
24 months   MAL-ED           BANGLADESH                     0                 1        9     212  stunted          
24 months   MAL-ED           BRAZIL                         1                 0      160     169  stunted          
24 months   MAL-ED           BRAZIL                         1                 1        7     169  stunted          
24 months   MAL-ED           BRAZIL                         0                 0        2     169  stunted          
24 months   MAL-ED           BRAZIL                         0                 1        0     169  stunted          
24 months   MAL-ED           INDIA                          1                 0      123     227  stunted          
24 months   MAL-ED           INDIA                          1                 1       89     227  stunted          
24 months   MAL-ED           INDIA                          0                 0        7     227  stunted          
24 months   MAL-ED           INDIA                          0                 1        8     227  stunted          
24 months   MAL-ED           NEPAL                          1                 0       82     221  stunted          
24 months   MAL-ED           NEPAL                          1                 1       16     221  stunted          
24 months   MAL-ED           NEPAL                          0                 0       90     221  stunted          
24 months   MAL-ED           NEPAL                          0                 1       33     221  stunted          
24 months   MAL-ED           PERU                           1                 0       32     201  stunted          
24 months   MAL-ED           PERU                           1                 1       17     201  stunted          
24 months   MAL-ED           PERU                           0                 0       95     201  stunted          
24 months   MAL-ED           PERU                           0                 1       57     201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                 0      142     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                 1       78     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                 0       12     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                 1        6     238  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        2     212  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1       10     212  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0       57     212  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1      143     212  stunted          
24 months   NIH-Birth        BANGLADESH                     1                 0      171     427  stunted          
24 months   NIH-Birth        BANGLADESH                     1                 1      206     427  stunted          
24 months   NIH-Birth        BANGLADESH                     0                 0       12     427  stunted          
24 months   NIH-Birth        BANGLADESH                     0                 1       38     427  stunted          
24 months   NIH-Crypto       BANGLADESH                     1                 0      260     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     1                 1       86     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     0                 0      122     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     0                 1       46     514  stunted          
24 months   PROVIDE          BANGLADESH                     1                 0      365     578  stunted          
24 months   PROVIDE          BANGLADESH                     1                 1      168     578  stunted          
24 months   PROVIDE          BANGLADESH                     0                 0       23     578  stunted          
24 months   PROVIDE          BANGLADESH                     0                 1       22     578  stunted          


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
