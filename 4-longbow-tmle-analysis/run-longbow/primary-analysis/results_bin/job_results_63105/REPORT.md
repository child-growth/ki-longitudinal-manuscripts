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

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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

agecat      studyid          country                        mbmi             stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------------  --------  -------  ------  -----------------
Birth       JiVitA-3         BANGLADESH                     Normal weight          0     9101   22355  stunted          
Birth       JiVitA-3         BANGLADESH                     Normal weight          1     4619   22355  stunted          
Birth       JiVitA-3         BANGLADESH                     Underweight            0     5903   22355  stunted          
Birth       JiVitA-3         BANGLADESH                     Underweight            1     2732   22355  stunted          
Birth       MAL-ED           BANGLADESH                     Normal weight          0      159     222  stunted          
Birth       MAL-ED           BANGLADESH                     Normal weight          1       35     222  stunted          
Birth       MAL-ED           BANGLADESH                     Underweight            0       23     222  stunted          
Birth       MAL-ED           BANGLADESH                     Underweight            1        5     222  stunted          
Birth       MAL-ED           BRAZIL                         Normal weight          0       52      64  stunted          
Birth       MAL-ED           BRAZIL                         Normal weight          1        7      64  stunted          
Birth       MAL-ED           BRAZIL                         Underweight            0        3      64  stunted          
Birth       MAL-ED           BRAZIL                         Underweight            1        2      64  stunted          
Birth       MAL-ED           INDIA                          Normal weight          0       27      43  stunted          
Birth       MAL-ED           INDIA                          Normal weight          1        8      43  stunted          
Birth       MAL-ED           INDIA                          Underweight            0        7      43  stunted          
Birth       MAL-ED           INDIA                          Underweight            1        1      43  stunted          
Birth       MAL-ED           NEPAL                          Normal weight          0       25      27  stunted          
Birth       MAL-ED           NEPAL                          Normal weight          1        2      27  stunted          
Birth       MAL-ED           NEPAL                          Underweight            0        0      27  stunted          
Birth       MAL-ED           NEPAL                          Underweight            1        0      27  stunted          
Birth       MAL-ED           PERU                           Normal weight          0      197     226  stunted          
Birth       MAL-ED           PERU                           Normal weight          1       24     226  stunted          
Birth       MAL-ED           PERU                           Underweight            0        3     226  stunted          
Birth       MAL-ED           PERU                           Underweight            1        2     226  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Normal weight          0       89     101  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Normal weight          1        9     101  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Underweight            0        3     101  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Underweight            1        0     101  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0       96     122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1       19     122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0        4     122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     122  stunted          
Birth       NIH-Birth        BANGLADESH                     Normal weight          0      437     608  stunted          
Birth       NIH-Birth        BANGLADESH                     Normal weight          1       69     608  stunted          
Birth       NIH-Birth        BANGLADESH                     Underweight            0       74     608  stunted          
Birth       NIH-Birth        BANGLADESH                     Underweight            1       28     608  stunted          
Birth       NIH-Crypto       BANGLADESH                     Normal weight          0      575     729  stunted          
Birth       NIH-Crypto       BANGLADESH                     Normal weight          1       88     729  stunted          
Birth       NIH-Crypto       BANGLADESH                     Underweight            0       53     729  stunted          
Birth       NIH-Crypto       BANGLADESH                     Underweight            1       13     729  stunted          
Birth       PROBIT           BELARUS                        Normal weight          0    13173   13726  stunted          
Birth       PROBIT           BELARUS                        Normal weight          1       30   13726  stunted          
Birth       PROBIT           BELARUS                        Underweight            0      519   13726  stunted          
Birth       PROBIT           BELARUS                        Underweight            1        4   13726  stunted          
Birth       PROVIDE          BANGLADESH                     Normal weight          0      381     517  stunted          
Birth       PROVIDE          BANGLADESH                     Normal weight          1       37     517  stunted          
Birth       PROVIDE          BANGLADESH                     Underweight            0       89     517  stunted          
Birth       PROVIDE          BANGLADESH                     Underweight            1       10     517  stunted          
Birth       SAS-CompFeed     INDIA                          Normal weight          0      615    1135  stunted          
Birth       SAS-CompFeed     INDIA                          Normal weight          1      215    1135  stunted          
Birth       SAS-CompFeed     INDIA                          Underweight            0      200    1135  stunted          
Birth       SAS-CompFeed     INDIA                          Underweight            1      105    1135  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Normal weight          0     8283    9672  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Normal weight          1      879    9672  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Underweight            0      432    9672  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Underweight            1       78    9672  stunted          
6 months    JiVitA-3         BANGLADESH                     Normal weight          0     7574   16760  stunted          
6 months    JiVitA-3         BANGLADESH                     Normal weight          1     2737   16760  stunted          
6 months    JiVitA-3         BANGLADESH                     Underweight            0     4970   16760  stunted          
6 months    JiVitA-3         BANGLADESH                     Underweight            1     1479   16760  stunted          
6 months    LCNI-5           MALAWI                         Normal weight          0      446     836  stunted          
6 months    LCNI-5           MALAWI                         Normal weight          1      245     836  stunted          
6 months    LCNI-5           MALAWI                         Underweight            0       83     836  stunted          
6 months    LCNI-5           MALAWI                         Underweight            1       62     836  stunted          
6 months    MAL-ED           BANGLADESH                     Normal weight          0      174     241  stunted          
6 months    MAL-ED           BANGLADESH                     Normal weight          1       35     241  stunted          
6 months    MAL-ED           BANGLADESH                     Underweight            0       23     241  stunted          
6 months    MAL-ED           BANGLADESH                     Underweight            1        9     241  stunted          
6 months    MAL-ED           BRAZIL                         Normal weight          0      193     208  stunted          
6 months    MAL-ED           BRAZIL                         Normal weight          1        6     208  stunted          
6 months    MAL-ED           BRAZIL                         Underweight            0        9     208  stunted          
6 months    MAL-ED           BRAZIL                         Underweight            1        0     208  stunted          
6 months    MAL-ED           INDIA                          Normal weight          0      150     235  stunted          
6 months    MAL-ED           INDIA                          Normal weight          1       36     235  stunted          
6 months    MAL-ED           INDIA                          Underweight            0       41     235  stunted          
6 months    MAL-ED           INDIA                          Underweight            1        8     235  stunted          
6 months    MAL-ED           NEPAL                          Normal weight          0      224     236  stunted          
6 months    MAL-ED           NEPAL                          Normal weight          1       12     236  stunted          
6 months    MAL-ED           NEPAL                          Underweight            0        0     236  stunted          
6 months    MAL-ED           NEPAL                          Underweight            1        0     236  stunted          
6 months    MAL-ED           PERU                           Normal weight          0      209     272  stunted          
6 months    MAL-ED           PERU                           Normal weight          1       58     272  stunted          
6 months    MAL-ED           PERU                           Underweight            0        3     272  stunted          
6 months    MAL-ED           PERU                           Underweight            1        2     272  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Normal weight          0      195     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Normal weight          1       47     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Underweight            0        4     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Underweight            1        3     249  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0      177     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1       56     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0       11     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     247  stunted          
6 months    NIH-Birth        BANGLADESH                     Normal weight          0      335     537  stunted          
6 months    NIH-Birth        BANGLADESH                     Normal weight          1      109     537  stunted          
6 months    NIH-Birth        BANGLADESH                     Underweight            0       58     537  stunted          
6 months    NIH-Birth        BANGLADESH                     Underweight            1       35     537  stunted          
6 months    NIH-Crypto       BANGLADESH                     Normal weight          0      523     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Normal weight          1      125     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Underweight            0       42     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Underweight            1       25     715  stunted          
6 months    PROBIT           BELARUS                        Normal weight          0    12069   13025  stunted          
6 months    PROBIT           BELARUS                        Normal weight          1      451   13025  stunted          
6 months    PROBIT           BELARUS                        Underweight            0      476   13025  stunted          
6 months    PROBIT           BELARUS                        Underweight            1       29   13025  stunted          
6 months    PROVIDE          BANGLADESH                     Normal weight          0      423     603  stunted          
6 months    PROVIDE          BANGLADESH                     Normal weight          1       75     603  stunted          
6 months    PROVIDE          BANGLADESH                     Underweight            0       85     603  stunted          
6 months    PROVIDE          BANGLADESH                     Underweight            1       20     603  stunted          
6 months    SAS-CompFeed     INDIA                          Normal weight          0      658    1228  stunted          
6 months    SAS-CompFeed     INDIA                          Normal weight          1      246    1228  stunted          
6 months    SAS-CompFeed     INDIA                          Underweight            0      216    1228  stunted          
6 months    SAS-CompFeed     INDIA                          Underweight            1      108    1228  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     1764    1983  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1      185    1983  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       30    1983  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        4    1983  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Normal weight          0     5875    7375  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Normal weight          1     1124    7375  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Underweight            0      297    7375  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Underweight            1       79    7375  stunted          
24 months   JiVitA-3         BANGLADESH                     Normal weight          0     2606    8599  stunted          
24 months   JiVitA-3         BANGLADESH                     Normal weight          1     2683    8599  stunted          
24 months   JiVitA-3         BANGLADESH                     Underweight            0     1767    8599  stunted          
24 months   JiVitA-3         BANGLADESH                     Underweight            1     1543    8599  stunted          
24 months   LCNI-5           MALAWI                         Normal weight          0      272     577  stunted          
24 months   LCNI-5           MALAWI                         Normal weight          1      210     577  stunted          
24 months   LCNI-5           MALAWI                         Underweight            0       49     577  stunted          
24 months   LCNI-5           MALAWI                         Underweight            1       46     577  stunted          
24 months   MAL-ED           BANGLADESH                     Normal weight          0      101     212  stunted          
24 months   MAL-ED           BANGLADESH                     Normal weight          1       82     212  stunted          
24 months   MAL-ED           BANGLADESH                     Underweight            0       10     212  stunted          
24 months   MAL-ED           BANGLADESH                     Underweight            1       19     212  stunted          
24 months   MAL-ED           BRAZIL                         Normal weight          0      156     168  stunted          
24 months   MAL-ED           BRAZIL                         Normal weight          1        6     168  stunted          
24 months   MAL-ED           BRAZIL                         Underweight            0        5     168  stunted          
24 months   MAL-ED           BRAZIL                         Underweight            1        1     168  stunted          
24 months   MAL-ED           INDIA                          Normal weight          0      104     226  stunted          
24 months   MAL-ED           INDIA                          Normal weight          1       76     226  stunted          
24 months   MAL-ED           INDIA                          Underweight            0       26     226  stunted          
24 months   MAL-ED           INDIA                          Underweight            1       20     226  stunted          
24 months   MAL-ED           NEPAL                          Normal weight          0      178     228  stunted          
24 months   MAL-ED           NEPAL                          Normal weight          1       50     228  stunted          
24 months   MAL-ED           NEPAL                          Underweight            0        0     228  stunted          
24 months   MAL-ED           NEPAL                          Underweight            1        0     228  stunted          
24 months   MAL-ED           PERU                           Normal weight          0      125     201  stunted          
24 months   MAL-ED           PERU                           Normal weight          1       72     201  stunted          
24 months   MAL-ED           PERU                           Underweight            0        2     201  stunted          
24 months   MAL-ED           PERU                           Underweight            1        2     201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Normal weight          0      150     234  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Normal weight          1       77     234  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Underweight            0        2     234  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Underweight            1        5     234  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0       56     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1      147     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0        3     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        8     214  stunted          
24 months   NIH-Birth        BANGLADESH                     Normal weight          0      162     429  stunted          
24 months   NIH-Birth        BANGLADESH                     Normal weight          1      187     429  stunted          
24 months   NIH-Birth        BANGLADESH                     Underweight            0       23     429  stunted          
24 months   NIH-Birth        BANGLADESH                     Underweight            1       57     429  stunted          
24 months   NIH-Crypto       BANGLADESH                     Normal weight          0      355     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Normal weight          1      116     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Underweight            0       27     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Underweight            1       16     514  stunted          
24 months   PROBIT           BELARUS                        Normal weight          0     3605    4005  stunted          
24 months   PROBIT           BELARUS                        Normal weight          1      258    4005  stunted          
24 months   PROBIT           BELARUS                        Underweight            0      128    4005  stunted          
24 months   PROBIT           BELARUS                        Underweight            1       14    4005  stunted          
24 months   PROVIDE          BANGLADESH                     Normal weight          0      330     577  stunted          
24 months   PROVIDE          BANGLADESH                     Normal weight          1      147     577  stunted          
24 months   PROVIDE          BANGLADESH                     Underweight            0       58     577  stunted          
24 months   PROVIDE          BANGLADESH                     Underweight            1       42     577  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0        5       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Normal weight          0      861    1373  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Normal weight          1      451    1373  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Underweight            0       36    1373  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Underweight            1       25    1373  stunted          


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
