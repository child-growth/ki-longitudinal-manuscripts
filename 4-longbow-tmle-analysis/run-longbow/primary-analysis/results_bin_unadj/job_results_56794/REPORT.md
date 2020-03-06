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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        mbmi             ever_stunted   n_cell       n
------------  ---------------  -----------------------------  --------------  -------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               0     1803    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               1      959    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 0      266    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 1      188    3216
0-24 months   LCNI-5           MALAWI                         Normal weight               0      259     837
0-24 months   LCNI-5           MALAWI                         Normal weight               1      433     837
0-24 months   LCNI-5           MALAWI                         Underweight                 0       46     837
0-24 months   LCNI-5           MALAWI                         Underweight                 1       99     837
0-24 months   MAL-ED           BANGLADESH                     Normal weight               0       89     254
0-24 months   MAL-ED           BANGLADESH                     Normal weight               1      133     254
0-24 months   MAL-ED           BANGLADESH                     Underweight                 0        9     254
0-24 months   MAL-ED           BANGLADESH                     Underweight                 1       23     254
0-24 months   MAL-ED           BRAZIL                         Normal weight               0      158     221
0-24 months   MAL-ED           BRAZIL                         Normal weight               1       53     221
0-24 months   MAL-ED           BRAZIL                         Underweight                 0        6     221
0-24 months   MAL-ED           BRAZIL                         Underweight                 1        4     221
0-24 months   MAL-ED           INDIA                          Normal weight               0       74     242
0-24 months   MAL-ED           INDIA                          Normal weight               1      119     242
0-24 months   MAL-ED           INDIA                          Underweight                 0       19     242
0-24 months   MAL-ED           INDIA                          Underweight                 1       30     242
0-24 months   MAL-ED           NEPAL                          Normal weight               0      155     238
0-24 months   MAL-ED           NEPAL                          Normal weight               1       83     238
0-24 months   MAL-ED           NEPAL                          Underweight                 0        0     238
0-24 months   MAL-ED           NEPAL                          Underweight                 1        0     238
0-24 months   MAL-ED           PERU                           Normal weight               0      102     290
0-24 months   MAL-ED           PERU                           Normal weight               1      183     290
0-24 months   MAL-ED           PERU                           Underweight                 0        2     290
0-24 months   MAL-ED           PERU                           Underweight                 1        3     290
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight               0      107     270
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight               1      155     270
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                 0        1     270
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                 1        7     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               0       32     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               1      210     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 0        3     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 1       11     256
0-24 months   NIH-Birth        BANGLADESH                     Normal weight               0      190     629
0-24 months   NIH-Birth        BANGLADESH                     Normal weight               1      333     629
0-24 months   NIH-Birth        BANGLADESH                     Underweight                 0       21     629
0-24 months   NIH-Birth        BANGLADESH                     Underweight                 1       85     629
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight               0      365     755
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight               1      322     755
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                 0       28     755
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                 1       40     755
0-24 months   PROBIT           BELARUS                        Normal weight               0    11530   13728
0-24 months   PROBIT           BELARUS                        Normal weight               1     1675   13728
0-24 months   PROBIT           BELARUS                        Underweight                 0      434   13728
0-24 months   PROBIT           BELARUS                        Underweight                 1       89   13728
0-24 months   PROVIDE          BANGLADESH                     Normal weight               0      305     669
0-24 months   PROVIDE          BANGLADESH                     Normal weight               1      237     669
0-24 months   PROVIDE          BANGLADESH                     Underweight                 0       61     669
0-24 months   PROVIDE          BANGLADESH                     Underweight                 1       66     669
0-24 months   SAS-CompFeed     INDIA                          Normal weight               0      360    1406
0-24 months   SAS-CompFeed     INDIA                          Normal weight               1      691    1406
0-24 months   SAS-CompFeed     INDIA                          Underweight                 0       81    1406
0-24 months   SAS-CompFeed     INDIA                          Underweight                 1      274    1406
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1511    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      796    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       24    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1       14    2345
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               0     5091    9819
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               1     4211    9819
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 0      222    9819
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 1      295    9819
0-6 months    LCNI-5           MALAWI                         Normal weight               0      143     271
0-6 months    LCNI-5           MALAWI                         Normal weight               1       81     271
0-6 months    LCNI-5           MALAWI                         Underweight                 0       31     271
0-6 months    LCNI-5           MALAWI                         Underweight                 1       16     271
0-6 months    MAL-ED           BANGLADESH                     Normal weight               0      147     254
0-6 months    MAL-ED           BANGLADESH                     Normal weight               1       75     254
0-6 months    MAL-ED           BANGLADESH                     Underweight                 0       18     254
0-6 months    MAL-ED           BANGLADESH                     Underweight                 1       14     254
0-6 months    MAL-ED           BRAZIL                         Normal weight               0      168     221
0-6 months    MAL-ED           BRAZIL                         Normal weight               1       43     221
0-6 months    MAL-ED           BRAZIL                         Underweight                 0        7     221
0-6 months    MAL-ED           BRAZIL                         Underweight                 1        3     221
0-6 months    MAL-ED           INDIA                          Normal weight               0      128     242
0-6 months    MAL-ED           INDIA                          Normal weight               1       65     242
0-6 months    MAL-ED           INDIA                          Underweight                 0       30     242
0-6 months    MAL-ED           INDIA                          Underweight                 1       19     242
0-6 months    MAL-ED           NEPAL                          Normal weight               0      196     238
0-6 months    MAL-ED           NEPAL                          Normal weight               1       42     238
0-6 months    MAL-ED           NEPAL                          Underweight                 0        0     238
0-6 months    MAL-ED           NEPAL                          Underweight                 1        0     238
0-6 months    MAL-ED           PERU                           Normal weight               0      160     290
0-6 months    MAL-ED           PERU                           Normal weight               1      125     290
0-6 months    MAL-ED           PERU                           Underweight                 0        2     290
0-6 months    MAL-ED           PERU                           Underweight                 1        3     290
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight               0      163     270
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight               1       99     270
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                 0        3     270
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                 1        5     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               0      142     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               1      100     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 0        6     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 1        8     256
0-6 months    NIH-Birth        BANGLADESH                     Normal weight               0      353     629
0-6 months    NIH-Birth        BANGLADESH                     Normal weight               1      170     629
0-6 months    NIH-Birth        BANGLADESH                     Underweight                 0       56     629
0-6 months    NIH-Birth        BANGLADESH                     Underweight                 1       50     629
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight               0      485     755
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight               1      202     755
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                 0       41     755
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                 1       27     755
0-6 months    PROBIT           BELARUS                        Normal weight               0    12359   13728
0-6 months    PROBIT           BELARUS                        Normal weight               1      846   13728
0-6 months    PROBIT           BELARUS                        Underweight                 0      468   13728
0-6 months    PROBIT           BELARUS                        Underweight                 1       55   13728
0-6 months    PROVIDE          BANGLADESH                     Normal weight               0      414     669
0-6 months    PROVIDE          BANGLADESH                     Normal weight               1      128     669
0-6 months    PROVIDE          BANGLADESH                     Underweight                 0       89     669
0-6 months    PROVIDE          BANGLADESH                     Underweight                 1       38     669
0-6 months    SAS-CompFeed     INDIA                          Normal weight               0      634    1403
0-6 months    SAS-CompFeed     INDIA                          Normal weight               1      415    1403
0-6 months    SAS-CompFeed     INDIA                          Underweight                 0      170    1403
0-6 months    SAS-CompFeed     INDIA                          Underweight                 1      184    1403
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1864    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      443    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       29    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        9    2345
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight               0     6669    9808
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight               1     2622    9808
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                 0      325    9808
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                 1      192    9808
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               0     1803    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               1      959    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 0      266    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 1      188    3216
6-24 months   LCNI-5           MALAWI                         Normal weight               0      252     727
6-24 months   LCNI-5           MALAWI                         Normal weight               1      352     727
6-24 months   LCNI-5           MALAWI                         Underweight                 0       40     727
6-24 months   LCNI-5           MALAWI                         Underweight                 1       83     727
6-24 months   MAL-ED           BANGLADESH                     Normal weight               0       83     158
6-24 months   MAL-ED           BANGLADESH                     Normal weight               1       58     158
6-24 months   MAL-ED           BANGLADESH                     Underweight                 0        8     158
6-24 months   MAL-ED           BANGLADESH                     Underweight                 1        9     158
6-24 months   MAL-ED           BRAZIL                         Normal weight               0      147     163
6-24 months   MAL-ED           BRAZIL                         Normal weight               1       10     163
6-24 months   MAL-ED           BRAZIL                         Underweight                 0        5     163
6-24 months   MAL-ED           BRAZIL                         Underweight                 1        1     163
6-24 months   MAL-ED           INDIA                          Normal weight               0       70     154
6-24 months   MAL-ED           INDIA                          Normal weight               1       54     154
6-24 months   MAL-ED           INDIA                          Underweight                 0       19     154
6-24 months   MAL-ED           INDIA                          Underweight                 1       11     154
6-24 months   MAL-ED           NEPAL                          Normal weight               0      153     194
6-24 months   MAL-ED           NEPAL                          Normal weight               1       41     194
6-24 months   MAL-ED           NEPAL                          Underweight                 0        0     194
6-24 months   MAL-ED           NEPAL                          Underweight                 1        0     194
6-24 months   MAL-ED           PERU                           Normal weight               0       88     148
6-24 months   MAL-ED           PERU                           Normal weight               1       58     148
6-24 months   MAL-ED           PERU                           Underweight                 0        2     148
6-24 months   MAL-ED           PERU                           Underweight                 1        0     148
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight               0       97     155
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight               1       56     155
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight                 0        0     155
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight                 1        2     155
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               0       29     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               1      110     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 0        2     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 1        3     144
6-24 months   NIH-Birth        BANGLADESH                     Normal weight               0      133     345
6-24 months   NIH-Birth        BANGLADESH                     Normal weight               1      163     345
6-24 months   NIH-Birth        BANGLADESH                     Underweight                 0       14     345
6-24 months   NIH-Birth        BANGLADESH                     Underweight                 1       35     345
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight               0      345     506
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight               1      120     506
6-24 months   NIH-Crypto       BANGLADESH                     Underweight                 0       28     506
6-24 months   NIH-Crypto       BANGLADESH                     Underweight                 1       13     506
6-24 months   PROBIT           BELARUS                        Normal weight               0    11522   12819
6-24 months   PROBIT           BELARUS                        Normal weight               1      829   12819
6-24 months   PROBIT           BELARUS                        Underweight                 0      434   12819
6-24 months   PROBIT           BELARUS                        Underweight                 1       34   12819
6-24 months   PROVIDE          BANGLADESH                     Normal weight               0      275     456
6-24 months   PROVIDE          BANGLADESH                     Normal weight               1      109     456
6-24 months   PROVIDE          BANGLADESH                     Underweight                 0       44     456
6-24 months   PROVIDE          BANGLADESH                     Underweight                 1       28     456
6-24 months   SAS-CompFeed     INDIA                          Normal weight               0      309     742
6-24 months   SAS-CompFeed     INDIA                          Normal weight               1      276     742
6-24 months   SAS-CompFeed     INDIA                          Underweight                 0       67     742
6-24 months   SAS-CompFeed     INDIA                          Underweight                 1       90     742
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1193    1570
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      353    1570
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       19    1570
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        5    1570
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               0     4582    6470
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               1     1589    6470
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 0      196    6470
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 1      103    6470


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/fec0c187-0d4c-4beb-bc9b-5ab2a386f53e/58846704-4b72-433d-9557-2626e93519b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fec0c187-0d4c-4beb-bc9b-5ab2a386f53e/58846704-4b72-433d-9557-2626e93519b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fec0c187-0d4c-4beb-bc9b-5ab2a386f53e/58846704-4b72-433d-9557-2626e93519b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fec0c187-0d4c-4beb-bc9b-5ab2a386f53e/58846704-4b72-433d-9557-2626e93519b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.3472122   0.2944498   0.3999745
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.4140969   0.3111351   0.5170587
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.6257225   0.5896446   0.6618005
0-24 months   LCNI-5           MALAWI                         Underweight          NA                0.6827586   0.6069616   0.7585557
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.5990991   0.5345045   0.6636937
0-24 months   MAL-ED           BANGLADESH                     Underweight          NA                0.7187500   0.5626637   0.8748363
0-24 months   MAL-ED           INDIA                          Normal weight        NA                0.6165803   0.5478417   0.6853189
0-24 months   MAL-ED           INDIA                          Underweight          NA                0.6122449   0.4755380   0.7489518
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.6367113   0.5954598   0.6779628
0-24 months   NIH-Birth        BANGLADESH                     Underweight          NA                0.8018868   0.7259497   0.8778239
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.4687045   0.4313644   0.5060446
0-24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                0.5882353   0.4711826   0.7052880
0-24 months   PROBIT           BELARUS                        Normal weight        NA                0.1268459   0.1103845   0.1433073
0-24 months   PROBIT           BELARUS                        Underweight          NA                0.1701721   0.1333432   0.2070010
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.4372694   0.3954769   0.4790618
0-24 months   PROVIDE          BANGLADESH                     Underweight          NA                0.5196850   0.4327281   0.6066420
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.6574691   0.6128565   0.7020817
0-24 months   SAS-CompFeed     INDIA                          Underweight          NA                0.7718310   0.7257077   0.8179543
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.3450368   0.3254593   0.3646144
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.3684211   0.2689869   0.4678552
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.4526983   0.4425826   0.4628141
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                0.5705996   0.5279297   0.6132695
0-6 months    LCNI-5           MALAWI                         Normal weight        NA                0.3616071   0.2985710   0.4246432
0-6 months    LCNI-5           MALAWI                         Underweight          NA                0.3404255   0.2047052   0.4761459
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                0.3378378   0.2754982   0.4001775
0-6 months    MAL-ED           BANGLADESH                     Underweight          NA                0.4375000   0.2652814   0.6097186
0-6 months    MAL-ED           INDIA                          Normal weight        NA                0.3367876   0.2699727   0.4036024
0-6 months    MAL-ED           INDIA                          Underweight          NA                0.3877551   0.2510482   0.5244620
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.4132231   0.3510620   0.4753843
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.5714286   0.3116959   0.8311612
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                0.3250478   0.2848731   0.3652225
0-6 months    NIH-Birth        BANGLADESH                     Underweight          NA                0.4716981   0.3765908   0.5668054
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                0.2940320   0.2599404   0.3281236
0-6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                0.3970588   0.2806874   0.5134302
0-6 months    PROBIT           BELARUS                        Normal weight        NA                0.0640666   0.0533879   0.0747453
0-6 months    PROBIT           BELARUS                        Underweight          NA                0.1051625   0.0751437   0.1351814
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                0.2361624   0.2003792   0.2719456
0-6 months    PROVIDE          BANGLADESH                     Underweight          NA                0.2992126   0.2195134   0.3789118
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                0.3956149   0.3624388   0.4287909
0-6 months    SAS-CompFeed     INDIA                          Underweight          NA                0.5197740   0.4625236   0.5770244
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1920243   0.1758027   0.2082459
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2368421   0.1492053   0.3244789
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2822086   0.2730564   0.2913607
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3713733   0.3297222   0.4130244
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.3472122   0.2944498   0.3999745
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.4140969   0.3111351   0.5170587
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.5827815   0.5434298   0.6221331
6-24 months   LCNI-5           MALAWI                         Underweight          NA                0.6747967   0.5919533   0.7576402
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.4113475   0.3298675   0.4928275
6-24 months   MAL-ED           BANGLADESH                     Underweight          NA                0.5294118   0.2913884   0.7674352
6-24 months   MAL-ED           INDIA                          Normal weight        NA                0.4354839   0.3479298   0.5230379
6-24 months   MAL-ED           INDIA                          Underweight          NA                0.3666667   0.1936635   0.5396698
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.5506757   0.4939264   0.6074250
6-24 months   NIH-Birth        BANGLADESH                     Underweight          NA                0.7142857   0.5876132   0.8409582
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.2580645   0.2182539   0.2978751
6-24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                0.3170732   0.1744952   0.4596512
6-24 months   PROBIT           BELARUS                        Normal weight        NA                0.0671201   0.0544214   0.0798187
6-24 months   PROBIT           BELARUS                        Underweight          NA                0.0726496   0.0471177   0.0981814
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.2838542   0.2387094   0.3289990
6-24 months   PROVIDE          BANGLADESH                     Underweight          NA                0.3888889   0.2761610   0.5016168
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.4717949   0.4223046   0.5212851
6-24 months   SAS-CompFeed     INDIA                          Underweight          NA                0.5732484   0.5204676   0.6260292
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.2283312   0.2071921   0.2494702
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2083333   0.1089524   0.3077142
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2574947   0.2465844   0.2684051
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3444816   0.2906148   0.3983484


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.6356033   0.6029802   0.6682264
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6141732   0.5541901   0.6741564
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6157025   0.5542897   0.6771153
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.4794702   0.4438115   0.5151289
0-24 months   PROBIT           BELARUS                        NA                   NA                0.1284965   0.1123633   0.1446297
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4529148   0.4151667   0.4906629
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.6863442   0.6430946   0.7295939
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3454158   0.3261661   0.3646654
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.4589062   0.4490494   0.4687630
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.3503937   0.2916054   0.4091820
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3471074   0.2870050   0.4072099
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4218750   0.3612599   0.4824901
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.3033113   0.2704998   0.3361228
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0656323   0.0549927   0.0762719
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2481315   0.2153770   0.2808861
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.4269423   0.3929328   0.4609518
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1927505   0.1767818   0.2087193
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.2869086   0.2779566   0.2958607
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.5983494   0.5626894   0.6340094
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months   MAL-ED           INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0673219   0.0549549   0.0796890
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.4932615   0.4489809   0.5375420
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2280255   0.2072654   0.2487856
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2615147   0.2508057   0.2722237


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.1926337   0.9162253   1.552429
0-24 months   LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         Underweight          Normal weight     1.0911523   0.9628462   1.236556
0-24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     1.1997180   0.9414164   1.528891
0-24 months   MAL-ED           INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          Underweight          Normal weight     0.9929686   0.7736559   1.274451
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.2594198   1.1228962   1.412542
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     1.2550237   1.0128922   1.555037
0-24 months   PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Underweight          Normal weight     1.3415656   1.0683502   1.684652
0-24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     1.1884780   0.9801738   1.441051
0-24 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          Underweight          Normal weight     1.1739426   1.1074074   1.244476
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.0677731   0.8104080   1.406871
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.2604411   1.1658072   1.362757
0-6 months    LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    LCNI-5           MALAWI                         Underweight          Normal weight     0.9414237   0.6092749   1.454645
0-6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     1.2950000   0.8384207   2.000219
0-6 months    MAL-ED           INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          Underweight          Normal weight     1.1513344   0.7682628   1.725413
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.3828571   0.8567351   2.232071
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.4511654   1.1455357   1.838337
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     1.3503931   0.9853201   1.850730
0-6 months    PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Underweight          Normal weight     1.6414552   1.2400367   2.172819
0-6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     1.2669783   0.9325724   1.721297
0-6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     1.3138384   1.1855852   1.455966
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.2333967   0.8438583   1.802752
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.3159532   1.1709464   1.478917
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.1926337   0.9162253   1.552429
6-24 months   LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         Underweight          Normal weight     1.1578899   1.0065080   1.332040
6-24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     1.2870183   0.7874368   2.103554
6-24 months   MAL-ED           INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           INDIA                          Underweight          Normal weight     0.8419753   0.5041505   1.406172
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.2971078   1.0565691   1.592407
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     1.2286585   0.7637827   1.976481
6-24 months   PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        Underweight          Normal weight     1.0823822   0.7396011   1.584031
6-24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     1.3700306   0.9843215   1.906881
6-24 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          Underweight          Normal weight     1.2150374   1.0791690   1.368012
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     0.9124174   0.5612510   1.483303
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.3378200   1.1377263   1.573104


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0094421   -0.0050462   0.0239303
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0098808   -0.0047351   0.0244967
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                 0.0150741   -0.0067628   0.0369110
0-24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0008778   -0.0318611   0.0301055
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0278356    0.0124904   0.0431808
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0107657   -0.0005666   0.0220979
0-24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0016506    0.0001827   0.0031185
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0156454   -0.0028329   0.0341238
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                 0.0288752    0.0179019   0.0398484
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0003789   -0.0021575   0.0029153
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0062079    0.0038409   0.0085748
0-6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0036736   -0.0296443   0.0222972
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                 0.0125559   -0.0108758   0.0359875
0-6 months    MAL-ED           INDIA                          Normal weight        NA                 0.0103199   -0.0205979   0.0412377
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0086519   -0.0066061   0.0239098
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0247137    0.0067929   0.0426345
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0092792   -0.0018435   0.0204019
0-6 months    PROBIT           BELARUS                        Normal weight        NA                 0.0015656    0.0004058   0.0027255
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                 0.0119692   -0.0047212   0.0286596
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                 0.0313274    0.0159407   0.0467141
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0007263   -0.0015136   0.0029661
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0047001    0.0024178   0.0069823
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0094421   -0.0050462   0.0239303
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0155679   -0.0001508   0.0312866
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                 0.0127031   -0.0149643   0.0403705
6-24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0134059   -0.0514241   0.0246122
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0232374    0.0026201   0.0438546
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0047813   -0.0072953   0.0168579
6-24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0002019   -0.0007926   0.0011964
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0165844   -0.0029093   0.0360781
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                 0.0214666    0.0085703   0.0343629
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0003057   -0.0028487   0.0022373
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0040199    0.0014413   0.0065986


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0264740   -0.0154665   0.0666822
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0155455   -0.0077549   0.0383073
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                 0.0245438   -0.0118432   0.0596222
0-24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0014257   -0.0530338   0.0476531
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0418866    0.0181811   0.0650197
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0224533   -0.0015181   0.0458509
0-24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0128456    0.0009529   0.0245966
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0345439   -0.0071926   0.0745508
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                 0.0420710    0.0257287   0.0581391
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0010970   -0.0062773   0.0084173
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0135275    0.0083506   0.0186774
0-6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0102633   -0.0854924   0.0597522
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                 0.0358336   -0.0334239   0.1004496
0-6 months    MAL-ED           INDIA                          Normal weight        NA                 0.0297311   -0.0635634   0.1148419
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0205081   -0.0163884   0.0560652
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0706588    0.0179830   0.1205091
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0305931   -0.0067560   0.0665566
0-6 months    PROBIT           BELARUS                        Normal weight        NA                 0.0238548    0.0056757   0.0417015
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                 0.0482372   -0.0213406   0.1130751
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                 0.0733762    0.0378531   0.1075877
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0037679   -0.0079388   0.0153386
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0163817    0.0083984   0.0243008
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0264740   -0.0154665   0.0666822
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0260181   -0.0006987   0.0520217
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                 0.0299566   -0.0376377   0.0931477
6-24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0317618   -0.1259906   0.0545815
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0404894    0.0035743   0.0760368
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0181906   -0.0288228   0.0630557
6-24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0029986   -0.0120593   0.0178324
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0552007   -0.0118700   0.1178258
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                 0.0435197    0.0156167   0.0706318
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0013406   -0.0125449   0.0097397
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0153718    0.0054681   0.0251768
