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

**Outcome Variable:** sstunted

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

agecat      studyid          country                        mbmi             sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------------  ---------  -------  ------  -----------------
Birth       JiVitA-3         BANGLADESH                     Normal weight           0    12158   22355  sstunted         
Birth       JiVitA-3         BANGLADESH                     Normal weight           1     1562   22355  sstunted         
Birth       JiVitA-3         BANGLADESH                     Underweight             0     7761   22355  sstunted         
Birth       JiVitA-3         BANGLADESH                     Underweight             1      874   22355  sstunted         
Birth       MAL-ED           BANGLADESH                     Normal weight           0      188     222  sstunted         
Birth       MAL-ED           BANGLADESH                     Normal weight           1        6     222  sstunted         
Birth       MAL-ED           BANGLADESH                     Underweight             0       27     222  sstunted         
Birth       MAL-ED           BANGLADESH                     Underweight             1        1     222  sstunted         
Birth       MAL-ED           BRAZIL                         Normal weight           0       56      64  sstunted         
Birth       MAL-ED           BRAZIL                         Normal weight           1        3      64  sstunted         
Birth       MAL-ED           BRAZIL                         Underweight             0        5      64  sstunted         
Birth       MAL-ED           BRAZIL                         Underweight             1        0      64  sstunted         
Birth       MAL-ED           INDIA                          Normal weight           0       33      43  sstunted         
Birth       MAL-ED           INDIA                          Normal weight           1        2      43  sstunted         
Birth       MAL-ED           INDIA                          Underweight             0        8      43  sstunted         
Birth       MAL-ED           INDIA                          Underweight             1        0      43  sstunted         
Birth       MAL-ED           NEPAL                          Normal weight           0       26      27  sstunted         
Birth       MAL-ED           NEPAL                          Normal weight           1        1      27  sstunted         
Birth       MAL-ED           NEPAL                          Underweight             0        0      27  sstunted         
Birth       MAL-ED           NEPAL                          Underweight             1        0      27  sstunted         
Birth       MAL-ED           PERU                           Normal weight           0      218     226  sstunted         
Birth       MAL-ED           PERU                           Normal weight           1        3     226  sstunted         
Birth       MAL-ED           PERU                           Underweight             0        4     226  sstunted         
Birth       MAL-ED           PERU                           Underweight             1        1     226  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Normal weight           0       97     101  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Normal weight           1        1     101  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Underweight             0        3     101  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Underweight             1        0     101  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight           0      107     122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight           1        8     122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight             0        6     122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight             1        1     122  sstunted         
Birth       NIH-Birth        BANGLADESH                     Normal weight           0      494     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     Normal weight           1       12     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     Underweight             0       95     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     Underweight             1        7     608  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Normal weight           0      654     729  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Normal weight           1        9     729  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Underweight             0       65     729  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Underweight             1        1     729  sstunted         
Birth       PROBIT           BELARUS                        Normal weight           0    13198   13726  sstunted         
Birth       PROBIT           BELARUS                        Normal weight           1        5   13726  sstunted         
Birth       PROBIT           BELARUS                        Underweight             0      523   13726  sstunted         
Birth       PROBIT           BELARUS                        Underweight             1        0   13726  sstunted         
Birth       PROVIDE          BANGLADESH                     Normal weight           0      414     517  sstunted         
Birth       PROVIDE          BANGLADESH                     Normal weight           1        4     517  sstunted         
Birth       PROVIDE          BANGLADESH                     Underweight             0       99     517  sstunted         
Birth       PROVIDE          BANGLADESH                     Underweight             1        0     517  sstunted         
Birth       SAS-CompFeed     INDIA                          Normal weight           0      768    1135  sstunted         
Birth       SAS-CompFeed     INDIA                          Normal weight           1       62    1135  sstunted         
Birth       SAS-CompFeed     INDIA                          Underweight             0      280    1135  sstunted         
Birth       SAS-CompFeed     INDIA                          Underweight             1       25    1135  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Normal weight           0     8905    9672  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Normal weight           1      257    9672  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Underweight             0      484    9672  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Underweight             1       26    9672  sstunted         
6 months    JiVitA-3         BANGLADESH                     Normal weight           0     9641   16760  sstunted         
6 months    JiVitA-3         BANGLADESH                     Normal weight           1      670   16760  sstunted         
6 months    JiVitA-3         BANGLADESH                     Underweight             0     6102   16760  sstunted         
6 months    JiVitA-3         BANGLADESH                     Underweight             1      347   16760  sstunted         
6 months    LCNI-5           MALAWI                         Normal weight           0      630     836  sstunted         
6 months    LCNI-5           MALAWI                         Normal weight           1       61     836  sstunted         
6 months    LCNI-5           MALAWI                         Underweight             0      135     836  sstunted         
6 months    LCNI-5           MALAWI                         Underweight             1       10     836  sstunted         
6 months    MAL-ED           BANGLADESH                     Normal weight           0      203     241  sstunted         
6 months    MAL-ED           BANGLADESH                     Normal weight           1        6     241  sstunted         
6 months    MAL-ED           BANGLADESH                     Underweight             0       30     241  sstunted         
6 months    MAL-ED           BANGLADESH                     Underweight             1        2     241  sstunted         
6 months    MAL-ED           BRAZIL                         Normal weight           0      199     208  sstunted         
6 months    MAL-ED           BRAZIL                         Normal weight           1        0     208  sstunted         
6 months    MAL-ED           BRAZIL                         Underweight             0        9     208  sstunted         
6 months    MAL-ED           BRAZIL                         Underweight             1        0     208  sstunted         
6 months    MAL-ED           INDIA                          Normal weight           0      180     235  sstunted         
6 months    MAL-ED           INDIA                          Normal weight           1        6     235  sstunted         
6 months    MAL-ED           INDIA                          Underweight             0       46     235  sstunted         
6 months    MAL-ED           INDIA                          Underweight             1        3     235  sstunted         
6 months    MAL-ED           NEPAL                          Normal weight           0      235     236  sstunted         
6 months    MAL-ED           NEPAL                          Normal weight           1        1     236  sstunted         
6 months    MAL-ED           NEPAL                          Underweight             0        0     236  sstunted         
6 months    MAL-ED           NEPAL                          Underweight             1        0     236  sstunted         
6 months    MAL-ED           PERU                           Normal weight           0      259     272  sstunted         
6 months    MAL-ED           PERU                           Normal weight           1        8     272  sstunted         
6 months    MAL-ED           PERU                           Underweight             0        3     272  sstunted         
6 months    MAL-ED           PERU                           Underweight             1        2     272  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Normal weight           0      237     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Normal weight           1        5     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Underweight             0        6     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Underweight             1        1     249  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight           0      221     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight           1       12     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight             0       12     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight             1        2     247  sstunted         
6 months    NIH-Birth        BANGLADESH                     Normal weight           0      419     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     Normal weight           1       25     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     Underweight             0       83     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     Underweight             1       10     537  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Normal weight           0      631     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Normal weight           1       17     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Underweight             0       61     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Underweight             1        6     715  sstunted         
6 months    PROBIT           BELARUS                        Normal weight           0    12393   13025  sstunted         
6 months    PROBIT           BELARUS                        Normal weight           1      127   13025  sstunted         
6 months    PROBIT           BELARUS                        Underweight             0      498   13025  sstunted         
6 months    PROBIT           BELARUS                        Underweight             1        7   13025  sstunted         
6 months    PROVIDE          BANGLADESH                     Normal weight           0      486     603  sstunted         
6 months    PROVIDE          BANGLADESH                     Normal weight           1       12     603  sstunted         
6 months    PROVIDE          BANGLADESH                     Underweight             0      103     603  sstunted         
6 months    PROVIDE          BANGLADESH                     Underweight             1        2     603  sstunted         
6 months    SAS-CompFeed     INDIA                          Normal weight           0      822    1228  sstunted         
6 months    SAS-CompFeed     INDIA                          Normal weight           1       82    1228  sstunted         
6 months    SAS-CompFeed     INDIA                          Underweight             0      287    1228  sstunted         
6 months    SAS-CompFeed     INDIA                          Underweight             1       37    1228  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           0     1930    1983  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           1       19    1983  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             0       34    1983  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             1        0    1983  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Normal weight           0     6728    7375  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Normal weight           1      271    7375  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Underweight             0      359    7375  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Underweight             1       17    7375  sstunted         
24 months   JiVitA-3         BANGLADESH                     Normal weight           0     4400    8599  sstunted         
24 months   JiVitA-3         BANGLADESH                     Normal weight           1      889    8599  sstunted         
24 months   JiVitA-3         BANGLADESH                     Underweight             0     2857    8599  sstunted         
24 months   JiVitA-3         BANGLADESH                     Underweight             1      453    8599  sstunted         
24 months   LCNI-5           MALAWI                         Normal weight           0      427     577  sstunted         
24 months   LCNI-5           MALAWI                         Normal weight           1       55     577  sstunted         
24 months   LCNI-5           MALAWI                         Underweight             0       80     577  sstunted         
24 months   LCNI-5           MALAWI                         Underweight             1       15     577  sstunted         
24 months   MAL-ED           BANGLADESH                     Normal weight           0      163     212  sstunted         
24 months   MAL-ED           BANGLADESH                     Normal weight           1       20     212  sstunted         
24 months   MAL-ED           BANGLADESH                     Underweight             0       21     212  sstunted         
24 months   MAL-ED           BANGLADESH                     Underweight             1        8     212  sstunted         
24 months   MAL-ED           BRAZIL                         Normal weight           0      162     168  sstunted         
24 months   MAL-ED           BRAZIL                         Normal weight           1        0     168  sstunted         
24 months   MAL-ED           BRAZIL                         Underweight             0        5     168  sstunted         
24 months   MAL-ED           BRAZIL                         Underweight             1        1     168  sstunted         
24 months   MAL-ED           INDIA                          Normal weight           0      154     226  sstunted         
24 months   MAL-ED           INDIA                          Normal weight           1       26     226  sstunted         
24 months   MAL-ED           INDIA                          Underweight             0       42     226  sstunted         
24 months   MAL-ED           INDIA                          Underweight             1        4     226  sstunted         
24 months   MAL-ED           NEPAL                          Normal weight           0      221     228  sstunted         
24 months   MAL-ED           NEPAL                          Normal weight           1        7     228  sstunted         
24 months   MAL-ED           NEPAL                          Underweight             0        0     228  sstunted         
24 months   MAL-ED           NEPAL                          Underweight             1        0     228  sstunted         
24 months   MAL-ED           PERU                           Normal weight           0      184     201  sstunted         
24 months   MAL-ED           PERU                           Normal weight           1       13     201  sstunted         
24 months   MAL-ED           PERU                           Underweight             0        2     201  sstunted         
24 months   MAL-ED           PERU                           Underweight             1        2     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Normal weight           0      202     234  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Normal weight           1       25     234  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Underweight             0        5     234  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Underweight             1        2     234  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight           0      137     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight           1       66     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight             0        7     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight             1        4     214  sstunted         
24 months   NIH-Birth        BANGLADESH                     Normal weight           0      280     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     Normal weight           1       69     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     Underweight             0       54     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     Underweight             1       26     429  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Normal weight           0      442     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Normal weight           1       29     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Underweight             0       36     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Underweight             1        7     514  sstunted         
24 months   PROBIT           BELARUS                        Normal weight           0     3802    4005  sstunted         
24 months   PROBIT           BELARUS                        Normal weight           1       61    4005  sstunted         
24 months   PROBIT           BELARUS                        Underweight             0      138    4005  sstunted         
24 months   PROBIT           BELARUS                        Underweight             1        4    4005  sstunted         
24 months   PROVIDE          BANGLADESH                     Normal weight           0      440     577  sstunted         
24 months   PROVIDE          BANGLADESH                     Normal weight           1       37     577  sstunted         
24 months   PROVIDE          BANGLADESH                     Underweight             0       85     577  sstunted         
24 months   PROVIDE          BANGLADESH                     Underweight             1       15     577  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           0        5       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           1        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             1        0       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Normal weight           0     1167    1373  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Normal weight           1      145    1373  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Underweight             0       56    1373  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Underweight             1        5    1373  sstunted         


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

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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
