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

**Outcome Variable:** ever_swasted

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

agecat        studyid          country                        mbmi             ever_swasted   n_cell       n
------------  ---------------  -----------------------------  --------------  -------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               0     2647    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               1      116    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 0      416    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 1       38    3217
0-24 months   LCNI-5           MALAWI                         Normal weight               0      686     837
0-24 months   LCNI-5           MALAWI                         Normal weight               1        6     837
0-24 months   LCNI-5           MALAWI                         Underweight                 0      143     837
0-24 months   LCNI-5           MALAWI                         Underweight                 1        2     837
0-24 months   MAL-ED           BANGLADESH                     Normal weight               0      209     254
0-24 months   MAL-ED           BANGLADESH                     Normal weight               1       13     254
0-24 months   MAL-ED           BANGLADESH                     Underweight                 0       24     254
0-24 months   MAL-ED           BANGLADESH                     Underweight                 1        8     254
0-24 months   MAL-ED           BRAZIL                         Normal weight               0      207     221
0-24 months   MAL-ED           BRAZIL                         Normal weight               1        4     221
0-24 months   MAL-ED           BRAZIL                         Underweight                 0       10     221
0-24 months   MAL-ED           BRAZIL                         Underweight                 1        0     221
0-24 months   MAL-ED           INDIA                          Normal weight               0      175     242
0-24 months   MAL-ED           INDIA                          Normal weight               1       18     242
0-24 months   MAL-ED           INDIA                          Underweight                 0       41     242
0-24 months   MAL-ED           INDIA                          Underweight                 1        8     242
0-24 months   MAL-ED           NEPAL                          Normal weight               0      229     238
0-24 months   MAL-ED           NEPAL                          Normal weight               1        9     238
0-24 months   MAL-ED           NEPAL                          Underweight                 0        0     238
0-24 months   MAL-ED           NEPAL                          Underweight                 1        0     238
0-24 months   MAL-ED           PERU                           Normal weight               0      281     290
0-24 months   MAL-ED           PERU                           Normal weight               1        4     290
0-24 months   MAL-ED           PERU                           Underweight                 0        5     290
0-24 months   MAL-ED           PERU                           Underweight                 1        0     290
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight               0      247     270
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight               1       15     270
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                 0        8     270
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                 1        0     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               0      234     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               1        8     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 0       13     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 1        1     256
0-24 months   NIH-Birth        BANGLADESH                     Normal weight               0      448     624
0-24 months   NIH-Birth        BANGLADESH                     Normal weight               1       72     624
0-24 months   NIH-Birth        BANGLADESH                     Underweight                 0       77     624
0-24 months   NIH-Birth        BANGLADESH                     Underweight                 1       27     624
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight               0      632     755
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight               1       55     755
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                 0       57     755
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                 1       11     755
0-24 months   PROBIT           BELARUS                        Normal weight               0    12054   13728
0-24 months   PROBIT           BELARUS                        Normal weight               1     1151   13728
0-24 months   PROBIT           BELARUS                        Underweight                 0      469   13728
0-24 months   PROBIT           BELARUS                        Underweight                 1       54   13728
0-24 months   PROVIDE          BANGLADESH                     Normal weight               0      512     669
0-24 months   PROVIDE          BANGLADESH                     Normal weight               1       30     669
0-24 months   PROVIDE          BANGLADESH                     Underweight                 0      116     669
0-24 months   PROVIDE          BANGLADESH                     Underweight                 1       11     669
0-24 months   SAS-CompFeed     INDIA                          Normal weight               0      927    1389
0-24 months   SAS-CompFeed     INDIA                          Normal weight               1      115    1389
0-24 months   SAS-CompFeed     INDIA                          Underweight                 0      259    1389
0-24 months   SAS-CompFeed     INDIA                          Underweight                 1       88    1389
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     2155    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      152    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       34    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        4    2345
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               0     8415    9797
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               1      866    9797
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 0      437    9797
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 1       79    9797
0-6 months    LCNI-5           MALAWI                         Normal weight               0      224     271
0-6 months    LCNI-5           MALAWI                         Normal weight               1        0     271
0-6 months    LCNI-5           MALAWI                         Underweight                 0       47     271
0-6 months    LCNI-5           MALAWI                         Underweight                 1        0     271
0-6 months    MAL-ED           BANGLADESH                     Normal weight               0      211     254
0-6 months    MAL-ED           BANGLADESH                     Normal weight               1       11     254
0-6 months    MAL-ED           BANGLADESH                     Underweight                 0       27     254
0-6 months    MAL-ED           BANGLADESH                     Underweight                 1        5     254
0-6 months    MAL-ED           BRAZIL                         Normal weight               0      208     221
0-6 months    MAL-ED           BRAZIL                         Normal weight               1        3     221
0-6 months    MAL-ED           BRAZIL                         Underweight                 0       10     221
0-6 months    MAL-ED           BRAZIL                         Underweight                 1        0     221
0-6 months    MAL-ED           INDIA                          Normal weight               0      179     242
0-6 months    MAL-ED           INDIA                          Normal weight               1       14     242
0-6 months    MAL-ED           INDIA                          Underweight                 0       42     242
0-6 months    MAL-ED           INDIA                          Underweight                 1        7     242
0-6 months    MAL-ED           NEPAL                          Normal weight               0      231     238
0-6 months    MAL-ED           NEPAL                          Normal weight               1        7     238
0-6 months    MAL-ED           NEPAL                          Underweight                 0        0     238
0-6 months    MAL-ED           NEPAL                          Underweight                 1        0     238
0-6 months    MAL-ED           PERU                           Normal weight               0      284     290
0-6 months    MAL-ED           PERU                           Normal weight               1        1     290
0-6 months    MAL-ED           PERU                           Underweight                 0        5     290
0-6 months    MAL-ED           PERU                           Underweight                 1        0     290
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight               0      257     270
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight               1        5     270
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                 0        8     270
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                 1        0     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               0      238     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               1        4     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 0       14     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 1        0     256
0-6 months    NIH-Birth        BANGLADESH                     Normal weight               0      477     622
0-6 months    NIH-Birth        BANGLADESH                     Normal weight               1       42     622
0-6 months    NIH-Birth        BANGLADESH                     Underweight                 0       89     622
0-6 months    NIH-Birth        BANGLADESH                     Underweight                 1       14     622
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight               0      643     755
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight               1       44     755
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                 0       62     755
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                 1        6     755
0-6 months    PROBIT           BELARUS                        Normal weight               0    12062   13728
0-6 months    PROBIT           BELARUS                        Normal weight               1     1143   13728
0-6 months    PROBIT           BELARUS                        Underweight                 0      470   13728
0-6 months    PROBIT           BELARUS                        Underweight                 1       53   13728
0-6 months    PROVIDE          BANGLADESH                     Normal weight               0      522     669
0-6 months    PROVIDE          BANGLADESH                     Normal weight               1       20     669
0-6 months    PROVIDE          BANGLADESH                     Underweight                 0      119     669
0-6 months    PROVIDE          BANGLADESH                     Underweight                 1        8     669
0-6 months    SAS-CompFeed     INDIA                          Normal weight               0      987    1382
0-6 months    SAS-CompFeed     INDIA                          Normal weight               1       51    1382
0-6 months    SAS-CompFeed     INDIA                          Underweight                 0      307    1382
0-6 months    SAS-CompFeed     INDIA                          Underweight                 1       37    1382
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     2230    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1       77    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       36    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        2    2345
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight               0     8637    9760
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight               1      614    9760
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                 0      456    9760
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                 1       53    9760
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               0     2647    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               1      116    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 0      416    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 1       38    3217
6-24 months   LCNI-5           MALAWI                         Normal weight               0      678     823
6-24 months   LCNI-5           MALAWI                         Normal weight               1        6     823
6-24 months   LCNI-5           MALAWI                         Underweight                 0      137     823
6-24 months   LCNI-5           MALAWI                         Underweight                 1        2     823
6-24 months   MAL-ED           BANGLADESH                     Normal weight               0      207     240
6-24 months   MAL-ED           BANGLADESH                     Normal weight               1        2     240
6-24 months   MAL-ED           BANGLADESH                     Underweight                 0       28     240
6-24 months   MAL-ED           BANGLADESH                     Underweight                 1        3     240
6-24 months   MAL-ED           BRAZIL                         Normal weight               0      196     206
6-24 months   MAL-ED           BRAZIL                         Normal weight               1        1     206
6-24 months   MAL-ED           BRAZIL                         Underweight                 0        9     206
6-24 months   MAL-ED           BRAZIL                         Underweight                 1        0     206
6-24 months   MAL-ED           INDIA                          Normal weight               0      182     234
6-24 months   MAL-ED           INDIA                          Normal weight               1        4     234
6-24 months   MAL-ED           INDIA                          Underweight                 0       46     234
6-24 months   MAL-ED           INDIA                          Underweight                 1        2     234
6-24 months   MAL-ED           NEPAL                          Normal weight               0      233     235
6-24 months   MAL-ED           NEPAL                          Normal weight               1        2     235
6-24 months   MAL-ED           NEPAL                          Underweight                 0        0     235
6-24 months   MAL-ED           NEPAL                          Underweight                 1        0     235
6-24 months   MAL-ED           PERU                           Normal weight               0      261     269
6-24 months   MAL-ED           PERU                           Normal weight               1        3     269
6-24 months   MAL-ED           PERU                           Underweight                 0        5     269
6-24 months   MAL-ED           PERU                           Underweight                 1        0     269
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight               0      237     254
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight               1       10     254
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight                 0        7     254
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight                 1        0     254
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               0      228     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               1        4     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 0       12     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 1        1     245
6-24 months   NIH-Birth        BANGLADESH                     Normal weight               0      417     542
6-24 months   NIH-Birth        BANGLADESH                     Normal weight               1       32     542
6-24 months   NIH-Birth        BANGLADESH                     Underweight                 0       77     542
6-24 months   NIH-Birth        BANGLADESH                     Underweight                 1       16     542
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight               0      649     730
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight               1       14     730
6-24 months   NIH-Crypto       BANGLADESH                     Underweight                 0       61     730
6-24 months   NIH-Crypto       BANGLADESH                     Underweight                 1        6     730
6-24 months   PROBIT           BELARUS                        Normal weight               0    13189   13720
6-24 months   PROBIT           BELARUS                        Normal weight               1        8   13720
6-24 months   PROBIT           BELARUS                        Underweight                 0      522   13720
6-24 months   PROBIT           BELARUS                        Underweight                 1        1   13720
6-24 months   PROVIDE          BANGLADESH                     Normal weight               0      496     614
6-24 months   PROVIDE          BANGLADESH                     Normal weight               1       10     614
6-24 months   PROVIDE          BANGLADESH                     Underweight                 0      105     614
6-24 months   PROVIDE          BANGLADESH                     Underweight                 1        3     614
6-24 months   SAS-CompFeed     INDIA                          Normal weight               0      889    1276
6-24 months   SAS-CompFeed     INDIA                          Normal weight               1       66    1276
6-24 months   SAS-CompFeed     INDIA                          Underweight                 0      263    1276
6-24 months   SAS-CompFeed     INDIA                          Underweight                 1       58    1276
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1863    1972
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1       79    1972
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       28    1972
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        2    1972
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               0     7872    8597
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               1      267    8597
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 0      428    8597
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 1       30    8597


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

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/049afa26-6cf4-4f71-8578-49dbb70358d1/7da3e9a8-7a96-44c2-a4ac-c54576fbc2be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/049afa26-6cf4-4f71-8578-49dbb70358d1/7da3e9a8-7a96-44c2-a4ac-c54576fbc2be/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/049afa26-6cf4-4f71-8578-49dbb70358d1/7da3e9a8-7a96-44c2-a4ac-c54576fbc2be/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/049afa26-6cf4-4f71-8578-49dbb70358d1/7da3e9a8-7a96-44c2-a4ac-c54576fbc2be/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.0419834   0.0294984   0.0544683
0-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          NA                0.0837004   0.0573680   0.1100329
0-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.0585586   0.0276115   0.0895057
0-24 months   MAL-ED         BANGLADESH     Underweight          NA                0.2500000   0.0996753   0.4003247
0-24 months   MAL-ED         INDIA          Normal weight        NA                0.0932642   0.0521524   0.1343761
0-24 months   MAL-ED         INDIA          Underweight          NA                0.1632653   0.0595626   0.2669680
0-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.1384615   0.1087520   0.1681711
0-24 months   NIH-Birth      BANGLADESH     Underweight          NA                0.2596154   0.1752870   0.3439437
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0800582   0.0597515   0.1003650
0-24 months   NIH-Crypto     BANGLADESH     Underweight          NA                0.1617647   0.0741844   0.2493450
0-24 months   PROBIT         BELARUS        Normal weight        NA                0.0871640   0.0519859   0.1223420
0-24 months   PROBIT         BELARUS        Underweight          NA                0.1032505   0.0573524   0.1491486
0-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.0553506   0.0360855   0.0746156
0-24 months   PROVIDE        BANGLADESH     Underweight          NA                0.0866142   0.0376597   0.1355687
0-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.1103647   0.0848905   0.1358388
0-24 months   SAS-CompFeed   INDIA          Underweight          NA                0.2536023   0.2074304   0.2997742
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0933089   0.0873911   0.0992268
0-24 months   ZVITAMBO       ZIMBABWE       Underweight          NA                0.1531008   0.1220302   0.1841714
0-6 months    MAL-ED         BANGLADESH     Normal weight        NA                0.0495495   0.0209465   0.0781526
0-6 months    MAL-ED         BANGLADESH     Underweight          NA                0.1562500   0.0301989   0.2823011
0-6 months    MAL-ED         INDIA          Normal weight        NA                0.0725389   0.0358696   0.1092081
0-6 months    MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446763   0.2410380
0-6 months    NIH-Birth      BANGLADESH     Normal weight        NA                0.0809249   0.0574431   0.1044066
0-6 months    NIH-Birth      BANGLADESH     Underweight          NA                0.1359223   0.0696853   0.2021593
0-6 months    NIH-Crypto     BANGLADESH     Normal weight        NA                0.0640466   0.0457263   0.0823669
0-6 months    NIH-Crypto     BANGLADESH     Underweight          NA                0.0882353   0.0207757   0.1556949
0-6 months    PROBIT         BELARUS        Normal weight        NA                0.0865581   0.0513957   0.1217206
0-6 months    PROBIT         BELARUS        Underweight          NA                0.1013384   0.0553380   0.1473388
0-6 months    PROVIDE        BANGLADESH     Normal weight        NA                0.0369004   0.0210177   0.0527831
0-6 months    PROVIDE        BANGLADESH     Underweight          NA                0.0629921   0.0207072   0.1052771
0-6 months    SAS-CompFeed   INDIA          Normal weight        NA                0.0491329   0.0323045   0.0659614
0-6 months    SAS-CompFeed   INDIA          Underweight          NA                0.1075581   0.0597169   0.1553994
0-6 months    ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0663712   0.0612983   0.0714441
0-6 months    ZVITAMBO       ZIMBABWE       Underweight          NA                0.1041257   0.0775910   0.1306604
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.0419834   0.0294984   0.0544683
6-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          NA                0.0837004   0.0573680   0.1100329
6-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.0712695   0.0474505   0.0950884
6-24 months   NIH-Birth      BANGLADESH     Underweight          NA                0.1720430   0.0952662   0.2488198
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0211161   0.0101649   0.0320673
6-24 months   NIH-Crypto     BANGLADESH     Underweight          NA                0.0895522   0.0211337   0.1579708
6-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.0691099   0.0460423   0.0921776
6-24 months   SAS-CompFeed   INDIA          Underweight          NA                0.1806854   0.1445723   0.2167984
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0328050   0.0289350   0.0366750
6-24 months   ZVITAMBO       ZIMBABWE       Underweight          NA                0.0655022   0.0428423   0.0881621


### Parameter: E(Y)


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   NA                   NA                0.0478707   0.0359037   0.0598376
0-24 months   MAL-ED         BANGLADESH     NA                   NA                0.0826772   0.0487426   0.1166117
0-24 months   MAL-ED         INDIA          NA                   NA                0.1074380   0.0683415   0.1465345
0-24 months   NIH-Birth      BANGLADESH     NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   NIH-Crypto     BANGLADESH     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   PROBIT         BELARUS        NA                   NA                0.0877768   0.0530196   0.1225340
0-24 months   PROVIDE        BANGLADESH     NA                   NA                0.0612855   0.0430966   0.0794744
0-24 months   SAS-CompFeed   INDIA          NA                   NA                0.1461483   0.1147335   0.1775631
0-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0964581   0.0906120   0.1023042
0-6 months    MAL-ED         BANGLADESH     NA                   NA                0.0629921   0.0330555   0.0929287
0-6 months    MAL-ED         INDIA          NA                   NA                0.0867769   0.0512358   0.1223179
0-6 months    NIH-Birth      BANGLADESH     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    NIH-Crypto     BANGLADESH     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    PROBIT         BELARUS        NA                   NA                0.0871212   0.0523702   0.1218722
0-6 months    PROVIDE        BANGLADESH     NA                   NA                0.0418535   0.0266676   0.0570395
0-6 months    SAS-CompFeed   INDIA          NA                   NA                0.0636758   0.0409275   0.0864242
0-6 months    ZVITAMBO       ZIMBABWE       NA                   NA                0.0683402   0.0633339   0.0733464
6-24 months   iLiNS-Zinc     BURKINA FASO   NA                   NA                0.0478707   0.0359037   0.0598376
6-24 months   NIH-Birth      BANGLADESH     NA                   NA                0.0885609   0.0646203   0.1125014
6-24 months   NIH-Crypto     BANGLADESH     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months   SAS-CompFeed   INDIA          NA                   NA                0.0971787   0.0698067   0.1245507
6-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0345469   0.0306862   0.0384077


### Parameter: RR


agecat        studyid        country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ---------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          Normal weight     1.993658   1.3184236    3.014715
0-24 months   MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   MAL-ED         BANGLADESH     Underweight          Normal weight     4.269231   1.9172672    9.506412
0-24 months   MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   MAL-ED         INDIA          Underweight          Normal weight     1.750567   0.8079836    3.792756
0-24 months   NIH-Birth      BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   NIH-Birth      BANGLADESH     Underweight          Normal weight     1.875000   1.2703809    2.767379
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   NIH-Crypto     BANGLADESH     Underweight          Normal weight     2.020588   1.1112781    3.673947
0-24 months   PROBIT         BELARUS        Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   PROBIT         BELARUS        Underweight          Normal weight     1.184555   0.7798287    1.799331
0-24 months   PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   PROVIDE        BANGLADESH     Underweight          Normal weight     1.564829   0.8057378    3.039067
0-24 months   SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   SAS-CompFeed   INDIA          Underweight          Normal weight     2.297857   1.8767927    2.813389
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ZVITAMBO       ZIMBABWE       Underweight          Normal weight     1.640795   1.3265202    2.029526
0-6 months    MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    MAL-ED         BANGLADESH     Underweight          Normal weight     3.153409   1.1694063    8.503450
0-6 months    MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    MAL-ED         INDIA          Underweight          Normal weight     1.969388   0.8390927    4.622240
0-6 months    NIH-Birth      BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    NIH-Birth      BANGLADESH     Underweight          Normal weight     1.679612   0.9525624    2.961586
0-6 months    NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    NIH-Crypto     BANGLADESH     Underweight          Normal weight     1.377674   0.6090195    3.116460
0-6 months    PROBIT         BELARUS        Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    PROBIT         BELARUS        Underweight          Normal weight     1.170756   0.7667530    1.787628
0-6 months    PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    PROVIDE        BANGLADESH     Underweight          Normal weight     1.707087   0.7690289    3.789382
0-6 months    SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    SAS-CompFeed   INDIA          Underweight          Normal weight     2.189125   1.5149992    3.163214
0-6 months    ZVITAMBO       ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ZVITAMBO       ZIMBABWE       Underweight          Normal weight     1.568839   1.2023615    2.047018
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          Normal weight     1.993658   1.3184236    3.014715
6-24 months   NIH-Birth      BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   NIH-Birth      BANGLADESH     Underweight          Normal weight     2.413978   1.3822853    4.215694
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.240938   1.6843541   10.678014
6-24 months   SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   SAS-CompFeed   INDIA          Underweight          Normal weight     2.614462   2.0897610    3.270907
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ZVITAMBO       ZIMBABWE       Underweight          Normal weight     1.996713   1.3854146    2.877739


### Parameter: PAR


agecat        studyid        country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.0058873    0.0019629   0.0098118
0-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.0241186    0.0032585   0.0449787
0-24 months   MAL-ED         INDIA          Normal weight        NA                0.0141738   -0.0086912   0.0370388
0-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.0201923    0.0048749   0.0355097
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0073590   -0.0009086   0.0156266
0-24 months   PROBIT         BELARUS        Normal weight        NA                0.0006129   -0.0009643   0.0021900
0-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.0059349   -0.0040953   0.0159652
0-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.0357836    0.0240391   0.0475281
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0031492    0.0014624   0.0048359
0-6 months    MAL-ED         BANGLADESH     Normal weight        NA                0.0134426   -0.0034159   0.0303011
0-6 months    MAL-ED         INDIA          Normal weight        NA                0.0142380   -0.0072807   0.0357567
0-6 months    NIH-Birth      BANGLADESH     Normal weight        NA                0.0091073   -0.0026406   0.0208552
0-6 months    NIH-Crypto     BANGLADESH     Normal weight        NA                0.0021786   -0.0041367   0.0084939
0-6 months    PROBIT         BELARUS        Normal weight        NA                0.0005631   -0.0010102   0.0021364
0-6 months    PROVIDE        BANGLADESH     Normal weight        NA                0.0049531   -0.0036567   0.0135629
0-6 months    SAS-CompFeed   INDIA          Normal weight        NA                0.0145429    0.0032991   0.0257867
0-6 months    ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0019690    0.0005503   0.0033877
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.0058873    0.0019629   0.0098118
6-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.0172914    0.0031314   0.0314514
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0062811   -0.0002381   0.0128003
6-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.0280687    0.0216132   0.0345242
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0017419    0.0005075   0.0029764


### Parameter: PAF


agecat        studyid        country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.1229841    0.0318389   0.2055487
0-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.2917203    0.0252675   0.4853356
0-24 months   MAL-ED         INDIA          Normal weight        NA                0.1319251   -0.1037369   0.3172702
0-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.1272727    0.0272569   0.2170051
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0841824   -0.0136139   0.1725431
0-24 months   PROBIT         BELARUS        Normal weight        NA                0.0069820   -0.0120365   0.0256430
0-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.0968410   -0.0799060   0.2446600
0-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.2448446    0.1808573   0.3038335
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0326483    0.0150931   0.0498905
0-6 months    MAL-ED         BANGLADESH     Normal weight        NA                0.2134009   -0.0806932   0.4274618
0-6 months    MAL-ED         INDIA          Normal weight        NA                0.1640760   -0.1141862   0.3728437
0-6 months    NIH-Birth      BANGLADESH     Normal weight        NA                0.1011561   -0.0369306   0.2208539
0-6 months    NIH-Crypto     BANGLADESH     Normal weight        NA                0.0328967   -0.0669351   0.1233873
0-6 months    PROBIT         BELARUS        Normal weight        NA                0.0064633   -0.0125617   0.0251308
0-6 months    PROVIDE        BANGLADESH     Normal weight        NA                0.1183448   -0.1080833   0.2985040
0-6 months    SAS-CompFeed   INDIA          Normal weight        NA                0.2283894    0.0839990   0.3500194
0-6 months    ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0288112    0.0079226   0.0492600
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.1229841    0.0318389   0.2055487
6-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.1952487    0.0275072   0.3340571
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.2292609   -0.0217519   0.4186077
6-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.2888363    0.2307587   0.3425292
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0504219    0.0144403   0.0850898
